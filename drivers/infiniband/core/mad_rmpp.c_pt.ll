; ModuleID = '/llk/IR_all_yes/drivers/infiniband/core/mad_rmpp.c_pt.bc'
source_filename = "../drivers/infiniband/core/mad_rmpp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ib_mad_agent_private = type { %struct.ib_mad_agent, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.delayed_work, i32, %struct.list_head, %struct.work_struct, %struct.list_head, %struct.refcount_struct, %union.anon.173 }
%struct.ib_mad_agent = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.list_head, i8, i8, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.173 = type { %struct.completion }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ib_mad_port_private = type { %struct.list_head, ptr, i32, ptr, ptr, %struct.spinlock, [131 x %struct.ib_mad_mgmt_version_table], ptr, [2 x %struct.ib_mad_qp_info] }
%struct.ib_mad_mgmt_version_table = type { ptr, ptr }
%struct.ib_mad_qp_info = type { ptr, ptr, %struct.ib_mad_queue, %struct.ib_mad_queue, %struct.list_head, %struct.spinlock, ptr, i32, %struct.atomic_t }
%struct.ib_mad_queue = type { %struct.spinlock, %struct.list_head, i32, i32, ptr }
%struct.mad_rmpp_recv = type { ptr, %struct.list_head, %struct.delayed_work, %struct.delayed_work, %struct.completion, i32, %struct.spinlock, %struct.refcount_struct, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i8, i8, i8, i8 }
%struct.ib_mad_send_buf = type { ptr, ptr, ptr, ptr, [2 x ptr], i32, i32, i32, i32, i32, i32, i32 }
%struct.ib_mad_send_wc = type { ptr, i32, i32 }
%struct.ib_mad_recv_wc = type { ptr, %struct.ib_mad_recv_buf, %struct.list_head, i32, i32 }
%struct.ib_mad_recv_buf = type { %struct.list_head, ptr, %union.anon.172 }
%union.anon.172 = type { ptr }
%struct.ib_rmpp_mad = type { %struct.ib_mad_hdr, %struct.ib_rmpp_hdr, [220 x i8] }
%struct.ib_mad_hdr = type { i8, i8, i8, i8, i16, i16, i64, i16, i16, i32 }
%struct.ib_rmpp_hdr = type { i8, i8, i8, i8, i32, i32 }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.ib_wc = type { %union.anon.137, i32, i32, i32, i32, ptr, %union.anon.138, i32, i32, i32, i16, i8, i8, i32, [6 x i8], i16, i8 }
%union.anon.137 = type { i64 }
%union.anon.138 = type { i32 }
%struct.ib_mad_send_wr_private = type { %struct.ib_mad_list_head, %struct.list_head, ptr, %struct.ib_mad_send_buf, i64, i64, %struct.ib_ud_wr, [2 x %struct.ib_sge], i64, i32, i32, i32, i32, i32, i32, %struct.list_head, ptr, ptr, i32, i32, i32, i32 }
%struct.ib_mad_list_head = type { %struct.list_head, %struct.ib_cqe, ptr }
%struct.ib_cqe = type { ptr }
%struct.ib_ud_wr = type { %struct.ib_send_wr, ptr, ptr, i32, i32, i32, i32, i16, i32 }
%struct.ib_send_wr = type { ptr, %union.anon.159, ptr, i32, i32, i32, %union.anon.160 }
%union.anon.159 = type { i64 }
%union.anon.160 = type { i32 }
%struct.ib_sge = type { i64, i32, i32 }
%struct.ib_rmpp_segment = type { %struct.list_head, i32, [0 x i8] }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.163 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.ib_gid = type { %struct.anon.158 }
%struct.anon.158 = type { i64, i64 }
%union.anon.163 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ib_port_data = type { ptr, %struct.ib_port_immutable, %struct.spinlock, %struct.spinlock, %struct.list_head, %struct.ib_port_cache, ptr, %struct.hlist_node, %struct.rdma_port_counter, ptr }
%struct.ib_port_immutable = type { i32, i32, i32, i32 }
%struct.ib_port_cache = type { i64, ptr, ptr, i8, i32 }
%struct.rdma_port_counter = type { %struct.rdma_counter_mode, ptr, i32, %struct.mutex }
%struct.rdma_counter_mode = type { i32, i32, %struct.auto_mode_param }
%struct.auto_mode_param = type { i32 }

@rdma_destroy_ah.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/rdma/ib_verbs.h\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Destroy of kernel AH shouldn't fail\00", [60 x i8] zeroinitializer }, align 32
@create_rmpp_recv.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"(work_completion)(&(&rmpp_recv->timeout_work)->work)\00", [43 x i8] zeroinitializer }, align 32
@create_rmpp_recv.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"&(&rmpp_recv->timeout_work)->timer\00", [61 x i8] zeroinitializer }, align 32
@create_rmpp_recv.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"(work_completion)(&(&rmpp_recv->cleanup_work)->work)\00", [43 x i8] zeroinitializer }, align 32
@create_rmpp_recv.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"&(&rmpp_recv->cleanup_work)->timer\00", [61 x i8] zeroinitializer }, align 32
@create_rmpp_recv.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&rmpp_recv->lock\00", [47 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.17 = private unnamed_addr constant [27 x i8] c"../include/rdma/ib_verbs.h\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 3630, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 295, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 296, i32 2 }
@___asan_gen_.47 = private constant [38 x i8] c"../drivers/infiniband/core/mad_rmpp.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 297, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 87, i32 2 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @.str, ptr @.str.1, ptr @create_rmpp_recv.__key, ptr @.str.2, ptr @create_rmpp_recv.__key.3, ptr @.str.4, ptr @create_rmpp_recv.__key.5, ptr @.str.6, ptr @create_rmpp_recv.__key.7, ptr @.str.8, ptr @create_rmpp_recv.__key.9, ptr @.str.10, ptr @init_completion.__key, ptr @.str.11], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_rmpp_recv.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_rmpp_recv.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_rmpp_recv.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_rmpp_recv.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_rmpp_recv.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ib_cancel_rmpp_recvs(ptr noundef %agent) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.ib_mad_agent_private, ptr %agent, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %rmpp_list = getelementptr inbounds %struct.ib_mad_agent_private, ptr %agent, i32 0, i32 11
  %0 = ptrtoint ptr %rmpp_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn62 = load ptr, ptr %rmpp_list, align 4
  %cmp7.not63 = icmp eq ptr %.pn62, %rmpp_list
  br i1 %cmp7.not63, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn64 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn62, %entry.for.body_crit_edge ]
  %timeout_work = getelementptr i8, ptr %.pn64, i32 8
  %call9 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work) #7
  %cleanup_work = getelementptr i8, ptr %.pn64, i32 108
  %call10 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %cleanup_work) #7
  %1 = ptrtoint ptr %.pn64 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn64, align 4
  %cmp7.not = icmp eq ptr %.pn, %rmpp_list
  br i1 %cmp7.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #7
  %qp_info = getelementptr inbounds %struct.ib_mad_agent_private, ptr %agent, i32 0, i32 2
  %2 = ptrtoint ptr %qp_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qp_info, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %wq = getelementptr inbounds %struct.ib_mad_port_private, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wq, align 4
  tail call void @flush_workqueue(ptr noundef %7) #7
  %8 = ptrtoint ptr %rmpp_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmpp_list, align 4
  %cmp30.not67 = icmp eq ptr %9, %rmpp_list
  br i1 %cmp30.not67, label %for.end.for.end43_crit_edge, label %for.end.for.body33_crit_edge

for.end.for.body33_crit_edge:                     ; preds = %for.end
  br label %for.body33

for.end.for.end43_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end43

for.body33:                                       ; preds = %if.end.for.body33_crit_edge, %for.end.for.body33_crit_edge
  %.pn60.in68 = phi ptr [ %.pn6071, %if.end.for.body33_crit_edge ], [ %9, %for.end.for.body33_crit_edge ]
  %rmpp_recv.170 = getelementptr i8, ptr %.pn60.in68, i32 -4
  %10 = ptrtoint ptr %.pn60.in68 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn6071 = load ptr, ptr %.pn60.in68, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn60.in68) #7
  br i1 %call.i.i, label %if.end.i.i, label %for.body33.list_del.exit_crit_edge

for.body33.list_del.exit_crit_edge:               ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn60.in68, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %.pn60.in68 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %.pn60.in68, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body33.list_del.exit_crit_edge
  %17 = ptrtoint ptr %.pn60.in68 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn60.in68, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn60.in68, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %state = getelementptr i8, ptr %.pn60.in68, i32 264
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp35.not = icmp eq i32 %20, 2
  br i1 %cmp35.not, label %list_del.exit.if.end_crit_edge, label %if.then

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  %rmpp_wc = getelementptr i8, ptr %.pn60.in68, i32 320
  %21 = ptrtoint ptr %rmpp_wc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rmpp_wc, align 4
  tail call void @ib_free_recv_mad(ptr noundef %22) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del.exit.if.end_crit_edge
  tail call fastcc void @destroy_rmpp_recv(ptr noundef %rmpp_recv.170)
  %cmp30.not = icmp eq ptr %.pn6071, %rmpp_list
  br i1 %cmp30.not, label %if.end.for.end43_crit_edge, label %if.end.for.body33_crit_edge

if.end.for.body33_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body33

if.end.for.end43_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end43

for.end43:                                        ; preds = %if.end.for.end43_crit_edge, %for.end.for.end43_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_free_recv_mad(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @destroy_rmpp_recv(ptr noundef %rmpp_recv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount.i = getelementptr inbounds %struct.mad_rmpp_recv, ptr %rmpp_recv, i32 0, i32 7
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !29
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #7, !srcloc !30
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.deref_rmpp_recv.exit_crit_edge, label %if.then10.i.i.i.i, !prof !31

if.end5.i.i.i.i.deref_rmpp_recv.exit_crit_edge:   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %deref_rmpp_recv.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #7
  br label %deref_rmpp_recv.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !32
  %comp.i = getelementptr inbounds %struct.mad_rmpp_recv, ptr %rmpp_recv, i32 0, i32 4
  tail call void @complete(ptr noundef %comp.i) #7
  br label %deref_rmpp_recv.exit

deref_rmpp_recv.exit:                             ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.deref_rmpp_recv.exit_crit_edge
  %comp = getelementptr inbounds %struct.mad_rmpp_recv, ptr %rmpp_recv, i32 0, i32 4
  tail call void @wait_for_completion(ptr noundef %comp) #7
  %ah = getelementptr inbounds %struct.mad_rmpp_recv, ptr %rmpp_recv, i32 0, i32 8
  %1 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ah, align 8
  %call.i = tail call i32 @rdma_destroy_ah_user(ptr noundef %2, i32 noundef 1, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %deref_rmpp_recv.exit.rdma_destroy_ah.exit_crit_edge, label %land.rhs.i

deref_rmpp_recv.exit.rdma_destroy_ah.exit_crit_edge: ; preds = %deref_rmpp_recv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rdma_destroy_ah.exit

land.rhs.i:                                       ; preds = %deref_rmpp_recv.exit
  %.b1.i = load i1, ptr @rdma_destroy_ah.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.rdma_destroy_ah.exit_crit_edge, label %if.then.i4, !prof !31

land.rhs.i.rdma_destroy_ah.exit_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rdma_destroy_ah.exit

if.then.i4:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rdma_destroy_ah.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3630, i32 noundef 9, ptr noundef nonnull @.str.1) #7
  br label %rdma_destroy_ah.exit

rdma_destroy_ah.exit:                             ; preds = %if.then.i4, %land.rhs.i.rdma_destroy_ah.exit_crit_edge, %deref_rmpp_recv.exit.rdma_destroy_ah.exit_crit_edge
  tail call void @kfree(ptr noundef %rmpp_recv) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ib_rmpp_send_handler(ptr nocapture noundef readonly %mad_send_wc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mad_send_wc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mad_send_wc, align 4
  %context = getelementptr inbounds %struct.ib_mad_send_buf, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context, align 4
  %ah = getelementptr inbounds %struct.ib_mad_send_buf, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ah, align 4
  %cmp = icmp eq ptr %3, %5
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @rdma_destroy_ah_user(ptr noundef %3, i32 noundef 1, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %land.rhs.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs.i:                                       ; preds = %if.then
  %.b1.i = load i1, ptr @rdma_destroy_ah.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.end_crit_edge, label %if.then.i, !prof !31

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rdma_destroy_ah.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3630, i32 noundef 9, ptr noundef nonnull @.str.1) #7
  br label %if.end

if.end:                                           ; preds = %if.then.i, %land.rhs.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %mad_send_wc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mad_send_wc, align 4
  tail call void @ib_free_send_mad(ptr noundef %7) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_free_send_mad(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ib_process_rmpp_recv_wc(ptr noundef %agent, ptr noundef %mad_recv_wc) local_unnamed_addr #0 align 64 {
entry:
  %wc.i = alloca %struct.ib_mad_send_wc, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ib_mad_recv_wc, ptr %mad_recv_wc, i32 0, i32 1, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %rmpp_rtime_flags = getelementptr inbounds %struct.ib_rmpp_mad, ptr %2, i32 0, i32 1, i32 2
  %3 = ptrtoint ptr %rmpp_rtime_flags to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %rmpp_rtime_flags, align 2
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %rmpp_hdr = getelementptr inbounds %struct.ib_rmpp_mad, ptr %2, i32 0, i32 1
  %6 = ptrtoint ptr %rmpp_hdr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rmpp_hdr, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp.not = icmp eq i8 %7, 1
  br i1 %cmp.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @abort_send(ptr noundef %agent, ptr noundef %mad_recv_wc, i8 noundef zeroext 125)
  tail call fastcc void @nack_recv(ptr noundef %agent, ptr noundef %mad_recv_wc, i8 noundef zeroext 125)
  br label %out

if.end5:                                          ; preds = %if.end
  %rmpp_type = getelementptr inbounds %struct.ib_rmpp_mad, ptr %2, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %rmpp_type to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rmpp_type, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i8 %9, label %sw.default [
    i8 1, label %sw.bb
    i8 2, label %sw.bb8
    i8 3, label %sw.bb9
    i8 4, label %sw.bb10
  ]

sw.bb:                                            ; preds = %if.end5
  %rmpp_status2.i = getelementptr inbounds %struct.ib_rmpp_mad, ptr %2, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %rmpp_status2.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rmpp_status2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.bad.i_crit_edge

sw.bb.bad.i_crit_edge:                            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %bad.i

if.end.i:                                         ; preds = %sw.bb
  %seg_num.i = getelementptr inbounds %struct.ib_rmpp_mad, ptr %2, i32 0, i32 1, i32 4
  %13 = ptrtoint ptr %seg_num.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %seg_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp.i = icmp eq i32 %14, 1
  %15 = and i8 %4, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool4.not.i = icmp eq i8 %15, 0
  br i1 %cmp.i, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %if.end.i
  br i1 %tobool4.not.i, label %if.then3.i.bad.i_crit_edge, label %if.end6.i

if.then3.i.bad.i_crit_edge:                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bad.i

if.end6.i:                                        ; preds = %if.then3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3264, i32 noundef 376) #10
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end6.i.if.then.i.i_crit_edge, label %if.end.i.i.i

if.end6.i.if.then.i.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.end.i.i.i:                                     ; preds = %if.end6.i
  %qp.i.i.i = getelementptr inbounds %struct.ib_mad_agent, ptr %agent, i32 0, i32 1
  %17 = ptrtoint ptr %qp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %qp.i.i.i, align 4
  %pd.i.i.i = getelementptr inbounds %struct.ib_qp, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %pd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pd.i.i.i, align 4
  %21 = ptrtoint ptr %mad_recv_wc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mad_recv_wc, align 4
  %grh.i.i.i = getelementptr inbounds %struct.ib_mad_recv_wc, ptr %mad_recv_wc, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %grh.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %grh.i.i.i, align 4
  %port_num.i.i.i = getelementptr inbounds %struct.ib_mad_agent, ptr %agent, i32 0, i32 9
  %25 = ptrtoint ptr %port_num.i.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %port_num.i.i.i, align 4
  %conv.i.i.i = zext i8 %26 to i32
  %call3.i.i.i = tail call ptr @ib_create_ah_from_wc(ptr noundef %20, ptr noundef %22, ptr noundef %24, i32 noundef %conv.i.i.i) #7
  %ah.i.i.i = getelementptr inbounds %struct.mad_rmpp_recv, ptr %call7.i.i.i.i, i32 0, i32 8
  %27 = ptrtoint ptr %ah.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call3.i.i.i, ptr %ah.i.i.i, align 8
  %cmp.i.i.i.i = icmp ugt ptr %call3.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i, label %error.i.i.i, label %do.body1.i.i

error.i.i.i:                                      ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #7
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %error.i.i.i, %if.end6.i.if.then.i.i_crit_edge
  tail call void @ib_free_recv_mad(ptr noundef %mad_recv_wc) #7
  br label %cleanup

do.body1.i.i:                                     ; preds = %if.end.i.i.i
  %recv_buf.i.i.i = getelementptr inbounds %struct.ib_mad_recv_wc, ptr %mad_recv_wc, i32 0, i32 1
  %28 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %agent, ptr %call7.i.i.i.i, align 8
  %comp.i.i.i = getelementptr inbounds %struct.mad_rmpp_recv, ptr %call7.i.i.i.i, i32 0, i32 4
  %29 = ptrtoint ptr %comp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %comp.i.i.i, align 4
  %wait.i.i.i.i = getelementptr inbounds %struct.mad_rmpp_recv, ptr %call7.i.i.i.i, i32 0, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i.i.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @init_completion.__key) #7
  %timeout_work.i.i.i = getelementptr inbounds %struct.mad_rmpp_recv, ptr %call7.i.i.i.i, i32 0, i32 2
  tail call void @__init_work(ptr noundef %timeout_work.i.i.i, i32 noundef 0) #7
  %30 = ptrtoint ptr %timeout_work.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -64, ptr %timeout_work.i.i.i, align 4
  %lockdep_map.i.i.i = getelementptr inbounds %struct.mad_rmpp_recv, ptr %call7.i.i.i.i, i32 0, i32 2, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @create_rmpp_recv.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry16.i.i.i = getelementptr inbounds %struct.mad_rmpp_recv, ptr %call7.i.i.i.i, i32 0, i32 2, i32 0, i32 1
  %31 = ptrtoint ptr %entry16.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %entry16.i.i.i, ptr %entry16.i.i.i, align 8
  %prev.i.i.i.i = getelementptr inbounds %struct.mad_rmpp_recv, ptr %call7.i.i.i.i, i32 0, i32 2, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %entry16.i.i.i, ptr %prev.i.i.i.i, align 4
  %func.i.i.i = getelementptr inbounds %struct.mad_rmpp_recv, ptr %call7.i.i.i.i, i32 0, i32 2, i32 0, i32 2
  %33 = ptrtoint ptr %func.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @recv_timeout_handler, ptr %func.i.i.i, align 8
  %timer.i.i.i = getelementptr inbounds %struct.mad_rmpp_recv, ptr %call7.i.i.i.i, i32 0, i32 2, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i.i.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.4, ptr noundef nonnull @create_rmpp_recv.__key.3) #7
  %cleanup_work.i.i.i = getelementptr inbounds %struct.mad_rmpp_recv, ptr %call7.i.i.i.i, i32 0, i32 3
  tail call void @__init_work(ptr noundef %cleanup_work.i.i.i, i32 noundef 0) #7
  %34 = ptrtoint ptr %cleanup_work.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -64, ptr %cleanup_work.i.i.i, align 8
  %lockdep_map35.i.i.i = getelementptr inbounds %struct.mad_rmpp_recv, ptr %call7.i.i.i.i, i32 0, i32 3, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map35.i.i.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @create_rmpp_recv.__key.5, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry38.i.i.i = getelementptr inbounds %struct.mad_rmpp_recv, ptr %call7.i.i.i.i, i32 0, i32 3, i32 0, i32 1
  %35 = ptrtoint ptr %entry38.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %entry38.i.i.i, ptr %entry38.i.i.i, align 4
  %prev.i114.i.i.i = getelementptr inbounds %struct.mad_rmpp_recv, ptr %call7.i.i.i.i, i32 0, i32 3, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %prev.i114.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %entry38.i.i.i, ptr %prev.i114.i.i.i, align 8
  %func41.i.i.i = getelementptr inbounds %struct.mad_rmpp_recv, ptr %call7.i.i.i.i, i32 0, i32 3, i32 0, i32 2
  %37 = ptrtoint ptr %func41.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @recv_cleanup_handler, ptr %func41.i.i.i, align 4
  %timer46.i.i.i = getelementptr inbounds %struct.mad_rmpp_recv, ptr %call7.i.i.i.i, i32 0, i32 3, i32 1
  tail call void @init_timer_key(ptr noundef %timer46.i.i.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.8, ptr noundef nonnull @create_rmpp_recv.__key.7) #7
  %lock.i.i.i = getelementptr inbounds %struct.mad_rmpp_recv, ptr %call7.i.i.i.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @create_rmpp_recv.__key.9, i16 noundef signext 3) #7
  %state.i.i.i = getelementptr inbounds %struct.mad_rmpp_recv, ptr %call7.i.i.i.i, i32 0, i32 5
  %38 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %state.i.i.i, align 4
  %refcount.i.i.i = getelementptr inbounds %struct.mad_rmpp_recv, ptr %call7.i.i.i.i, i32 0, i32 7
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i.i, i32 noundef 4) #7
  %39 = ptrtoint ptr %refcount.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 1, ptr %refcount.i.i.i, align 4
  %rmpp_wc.i.i.i = getelementptr inbounds %struct.mad_rmpp_recv, ptr %call7.i.i.i.i, i32 0, i32 9
  %40 = ptrtoint ptr %rmpp_wc.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %mad_recv_wc, ptr %rmpp_wc.i.i.i, align 4
  %cur_seg_buf.i.i.i = getelementptr inbounds %struct.mad_rmpp_recv, ptr %call7.i.i.i.i, i32 0, i32 10
  %41 = ptrtoint ptr %cur_seg_buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %recv_buf.i.i.i, ptr %cur_seg_buf.i.i.i, align 8
  %newwin.i.i.i = getelementptr inbounds %struct.mad_rmpp_recv, ptr %call7.i.i.i.i, i32 0, i32 13
  %42 = ptrtoint ptr %newwin.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %newwin.i.i.i, align 4
  %seg_num.i.i.i = getelementptr inbounds %struct.mad_rmpp_recv, ptr %call7.i.i.i.i, i32 0, i32 12
  %43 = ptrtoint ptr %seg_num.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %seg_num.i.i.i, align 8
  %last_ack.i.i.i = getelementptr inbounds %struct.mad_rmpp_recv, ptr %call7.i.i.i.i, i32 0, i32 11
  %44 = ptrtoint ptr %last_ack.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %last_ack.i.i.i, align 4
  %repwin.i.i.i = getelementptr inbounds %struct.mad_rmpp_recv, ptr %call7.i.i.i.i, i32 0, i32 14
  %45 = ptrtoint ptr %repwin.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %repwin.i.i.i, align 8
  %46 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %0, align 4
  %tid.i.i.i = getelementptr inbounds %struct.ib_mad_hdr, ptr %47, i32 0, i32 6
  %48 = ptrtoint ptr %tid.i.i.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %tid.i.i.i, align 8
  %tid58.i.i.i = getelementptr inbounds %struct.mad_rmpp_recv, ptr %call7.i.i.i.i, i32 0, i32 15
  %50 = ptrtoint ptr %tid58.i.i.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %tid58.i.i.i, align 8
  %51 = ptrtoint ptr %mad_recv_wc to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mad_recv_wc, align 4
  %src_qp.i.i.i = getelementptr inbounds %struct.ib_wc, ptr %52, i32 0, i32 7
  %53 = ptrtoint ptr %src_qp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %src_qp.i.i.i, align 8
  %src_qp60.i.i.i = getelementptr inbounds %struct.mad_rmpp_recv, ptr %call7.i.i.i.i, i32 0, i32 16
  %55 = ptrtoint ptr %src_qp60.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %src_qp60.i.i.i, align 8
  %slid.i.i.i = getelementptr inbounds %struct.ib_wc, ptr %52, i32 0, i32 8
  %56 = ptrtoint ptr %slid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %slid.i.i.i, align 4
  %slid62.i.i.i = getelementptr inbounds %struct.mad_rmpp_recv, ptr %call7.i.i.i.i, i32 0, i32 17
  %58 = ptrtoint ptr %slid62.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %slid62.i.i.i, align 4
  %mgmt_class.i.i.i = getelementptr inbounds %struct.ib_mad_hdr, ptr %47, i32 0, i32 1
  %59 = ptrtoint ptr %mgmt_class.i.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %mgmt_class.i.i.i, align 1
  %mgmt_class63.i.i.i = getelementptr inbounds %struct.mad_rmpp_recv, ptr %call7.i.i.i.i, i32 0, i32 18
  %61 = ptrtoint ptr %mgmt_class63.i.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %mgmt_class63.i.i.i, align 8
  %class_version.i.i.i = getelementptr inbounds %struct.ib_mad_hdr, ptr %47, i32 0, i32 2
  %62 = ptrtoint ptr %class_version.i.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %class_version.i.i.i, align 2
  %class_version64.i.i.i = getelementptr inbounds %struct.mad_rmpp_recv, ptr %call7.i.i.i.i, i32 0, i32 19
  %64 = ptrtoint ptr %class_version64.i.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %class_version64.i.i.i, align 1
  %method.i.i.i = getelementptr inbounds %struct.ib_mad_hdr, ptr %47, i32 0, i32 3
  %65 = ptrtoint ptr %method.i.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %method.i.i.i, align 1
  %method65.i.i.i = getelementptr inbounds %struct.mad_rmpp_recv, ptr %call7.i.i.i.i, i32 0, i32 20
  %67 = ptrtoint ptr %method65.i.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %method65.i.i.i, align 2
  %68 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %47, align 8
  %base_version66.i.i.i = getelementptr inbounds %struct.mad_rmpp_recv, ptr %call7.i.i.i.i, i32 0, i32 21
  %70 = ptrtoint ptr %base_version66.i.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %base_version66.i.i.i, align 1
  %lock.i.i = getelementptr inbounds %struct.ib_mad_agent_private, ptr %agent, i32 0, i32 3
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #7
  %71 = ptrtoint ptr %rmpp_wc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rmpp_wc.i.i.i, align 4
  %rmpp_list.i.i.i.i = getelementptr inbounds %struct.ib_mad_agent_private, ptr %agent, i32 0, i32 11
  %73 = ptrtoint ptr %rmpp_list.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %.pn50.i.i.i.i = load ptr, ptr %rmpp_list.i.i.i.i, align 4
  %cmp.not51.i.i.i.i = icmp eq ptr %.pn50.i.i.i.i, %rmpp_list.i.i.i.i
  br i1 %cmp.not51.i.i.i.i, label %do.body1.i.i.if.then.i.i.i_crit_edge, label %for.body.lr.ph.i.i.i.i

do.body1.i.i.if.then.i.i.i_crit_edge:             ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

for.body.lr.ph.i.i.i.i:                           ; preds = %do.body1.i.i
  %74 = getelementptr inbounds %struct.ib_mad_recv_wc, ptr %72, i32 0, i32 1, i32 2
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %tid3.i.i.i.i = getelementptr inbounds %struct.ib_mad_hdr, ptr %76, i32 0, i32 6
  %77 = ptrtoint ptr %tid3.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %tid3.i.i.i.i, align 8
  %mgmt_class12.i.i.i.i = getelementptr inbounds %struct.ib_mad_hdr, ptr %76, i32 0, i32 1
  %class_version18.i.i.i.i = getelementptr inbounds %struct.ib_mad_hdr, ptr %76, i32 0, i32 2
  %method24.i.i.i.i = getelementptr inbounds %struct.ib_mad_hdr, ptr %76, i32 0, i32 3
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.body.lr.ph.i.i.i.i
  %.pn52.i.i.i.i = phi ptr [ %.pn50.i.i.i.i, %for.body.lr.ph.i.i.i.i ], [ %.pn.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %tid.i.i.i.i = getelementptr i8, ptr %.pn52.i.i.i.i, i32 348
  %79 = ptrtoint ptr %tid.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %tid.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %80, i64 %78)
  %cmp4.i.i.i.i = icmp eq i64 %80, %78
  br i1 %cmp4.i.i.i.i, label %land.lhs.true.i.i.i.i, label %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge

for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %for.body.i.i.i.i
  %src_qp.i.i.i.i = getelementptr i8, ptr %.pn52.i.i.i.i, i32 356
  %81 = ptrtoint ptr %src_qp.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %src_qp.i.i.i.i, align 8
  %83 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %72, align 4
  %src_qp5.i.i.i.i = getelementptr inbounds %struct.ib_wc, ptr %84, i32 0, i32 7
  %85 = ptrtoint ptr %src_qp5.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %src_qp5.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %86)
  %cmp6.i.i.i.i = icmp eq i32 %82, %86
  br i1 %cmp6.i.i.i.i, label %land.lhs.true7.i.i.i.i, label %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge:  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i.i

land.lhs.true7.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %slid.i.i.i.i = getelementptr i8, ptr %.pn52.i.i.i.i, i32 360
  %87 = ptrtoint ptr %slid.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %slid.i.i.i.i, align 4
  %slid9.i.i.i.i = getelementptr inbounds %struct.ib_wc, ptr %84, i32 0, i32 8
  %89 = ptrtoint ptr %slid9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %slid9.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %90)
  %cmp10.i.i.i.i = icmp eq i32 %88, %90
  br i1 %cmp10.i.i.i.i, label %land.lhs.true11.i.i.i.i, label %land.lhs.true7.i.i.i.i.for.inc.i.i.i.i_crit_edge

land.lhs.true7.i.i.i.i.for.inc.i.i.i.i_crit_edge: ; preds = %land.lhs.true7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i.i

land.lhs.true11.i.i.i.i:                          ; preds = %land.lhs.true7.i.i.i.i
  %mgmt_class.i.i.i.i = getelementptr i8, ptr %.pn52.i.i.i.i, i32 364
  %91 = ptrtoint ptr %mgmt_class.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %mgmt_class.i.i.i.i, align 8
  %93 = ptrtoint ptr %mgmt_class12.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %mgmt_class12.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %92, i8 %94)
  %cmp14.i.i.i.i = icmp eq i8 %92, %94
  br i1 %cmp14.i.i.i.i, label %land.lhs.true16.i.i.i.i, label %land.lhs.true11.i.i.i.i.for.inc.i.i.i.i_crit_edge

land.lhs.true11.i.i.i.i.for.inc.i.i.i.i_crit_edge: ; preds = %land.lhs.true11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i.i

land.lhs.true16.i.i.i.i:                          ; preds = %land.lhs.true11.i.i.i.i
  %class_version.i.i.i.i = getelementptr i8, ptr %.pn52.i.i.i.i, i32 365
  %95 = ptrtoint ptr %class_version.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %class_version.i.i.i.i, align 1
  %97 = ptrtoint ptr %class_version18.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %class_version18.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %96, i8 %98)
  %cmp20.i.i.i.i = icmp eq i8 %96, %98
  br i1 %cmp20.i.i.i.i, label %land.lhs.true22.i.i.i.i, label %land.lhs.true16.i.i.i.i.for.inc.i.i.i.i_crit_edge

land.lhs.true16.i.i.i.i.for.inc.i.i.i.i_crit_edge: ; preds = %land.lhs.true16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i.i

land.lhs.true22.i.i.i.i:                          ; preds = %land.lhs.true16.i.i.i.i
  %method.i.i.i.i = getelementptr i8, ptr %.pn52.i.i.i.i, i32 366
  %99 = ptrtoint ptr %method.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %method.i.i.i.i, align 2
  %101 = ptrtoint ptr %method24.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %method24.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %100, i8 %102)
  %cmp26.i.i.i.i = icmp eq i8 %100, %102
  br i1 %cmp26.i.i.i.i, label %find_rmpp_recv.exit.i.i.i, label %land.lhs.true22.i.i.i.i.for.inc.i.i.i.i_crit_edge

land.lhs.true22.i.i.i.i.for.inc.i.i.i.i_crit_edge: ; preds = %land.lhs.true22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %land.lhs.true22.i.i.i.i.for.inc.i.i.i.i_crit_edge, %land.lhs.true16.i.i.i.i.for.inc.i.i.i.i_crit_edge, %land.lhs.true11.i.i.i.i.for.inc.i.i.i.i_crit_edge, %land.lhs.true7.i.i.i.i.for.inc.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge, %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge
  %103 = ptrtoint ptr %.pn52.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %.pn.i.i.i.i = load ptr, ptr %.pn52.i.i.i.i, align 4
  %cmp.not.i.i.i.i = icmp eq ptr %.pn.i.i.i.i, %rmpp_list.i.i.i.i
  br i1 %cmp.not.i.i.i.i, label %for.inc.i.i.i.i.if.then.i.i.i_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.if.then.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

find_rmpp_recv.exit.i.i.i:                        ; preds = %land.lhs.true22.i.i.i.i
  %rmpp_recv.0.le.i.i.i.i = getelementptr i8, ptr %.pn52.i.i.i.i, i32 -4
  %tobool.not.i48.i.i = icmp eq ptr %rmpp_recv.0.le.i.i.i.i, null
  br i1 %tobool.not.i48.i.i, label %find_rmpp_recv.exit.i.i.i.if.then.i.i.i_crit_edge, label %if.then8.i.i

find_rmpp_recv.exit.i.i.i.if.then.i.i.i_crit_edge: ; preds = %find_rmpp_recv.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %find_rmpp_recv.exit.i.i.i.if.then.i.i.i_crit_edge, %for.inc.i.i.i.i.if.then.i.i.i_crit_edge, %do.body1.i.i.if.then.i.i.i_crit_edge
  %list.i.i.i = getelementptr inbounds %struct.mad_rmpp_recv, ptr %call7.i.i.i.i, i32 0, i32 1
  %prev.i.i49.i.i = getelementptr inbounds %struct.ib_mad_agent_private, ptr %agent, i32 0, i32 11, i32 1
  %104 = ptrtoint ptr %prev.i.i49.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %prev.i.i49.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i.i.i, ptr noundef %105, ptr noundef %rmpp_list.i.i.i.i) #7
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then.i.i.i.if.end11.i.i_crit_edge

if.then.i.i.i.if.end11.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %106 = ptrtoint ptr %prev.i.i49.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %list.i.i.i, ptr %prev.i.i49.i.i, align 4
  %107 = ptrtoint ptr %list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %rmpp_list.i.i.i.i, ptr %list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.mad_rmpp_recv, ptr %call7.i.i.i.i, i32 0, i32 1, i32 1
  %108 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %105, ptr %prev3.i.i.i.i.i, align 8
  %109 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %109)
  store volatile ptr %list.i.i.i, ptr %105, align 4
  br label %if.end11.i.i

if.then8.i.i:                                     ; preds = %find_rmpp_recv.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call3.i.i) #7
  tail call fastcc void @destroy_rmpp_recv(ptr noundef nonnull %call7.i.i.i.i) #7
  %call10.i.i = tail call fastcc ptr @continue_rmpp(ptr noundef %agent, ptr noundef %mad_recv_wc) #7
  br label %cleanup

if.end11.i.i:                                     ; preds = %if.end.i.i.i.i.i, %if.then.i.i.i.if.end11.i.i_crit_edge
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i.i, i32 1, i32 3, i32 1) #7
  %110 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i.i, ptr %refcount.i.i.i, i32 1, ptr elementtype(i32) %refcount.i.i.i) #7, !srcloc !33
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %110, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end11.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !34

if.end11.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end11.i.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %111 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %111)
  %.not.i.i.i.i.i = icmp sgt i32 %111, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.refcount_inc.exit.i.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !31

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.refcount_inc.exit.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %refcount_inc.exit.i.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end11.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end11.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i.i, i32 noundef %.sink.i.i.i.i.i) #7
  br label %refcount_inc.exit.i.i

refcount_inc.exit.i.i:                            ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.refcount_inc.exit.i.i_crit_edge
  %112 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %0, align 4
  %rmpp_rtime_flags.i.i.i.i = getelementptr inbounds %struct.ib_rmpp_mad, ptr %113, i32 0, i32 1, i32 2
  %114 = ptrtoint ptr %rmpp_rtime_flags.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %rmpp_rtime_flags.i.i.i.i, align 2
  %116 = and i8 %115, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool13.not.i.i = icmp eq i8 %116, 0
  br i1 %tobool13.not.i.i, label %if.else.i.i, label %if.then14.i.i

if.then14.i.i:                                    ; preds = %refcount_inc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %117 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 2, ptr %state.i.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call3.i.i) #7
  %call16.i.i = tail call fastcc ptr @complete_rmpp(ptr noundef nonnull %call7.i.i.i.i) #7
  br label %if.end21.i.i

if.else.i.i:                                      ; preds = %refcount_inc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call3.i.i) #7
  %qp_info.i.i = getelementptr inbounds %struct.ib_mad_agent_private, ptr %agent, i32 0, i32 2
  %118 = ptrtoint ptr %qp_info.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %qp_info.i.i, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %119, align 4
  %wq.i.i = getelementptr inbounds %struct.ib_mad_port_private, ptr %121, i32 0, i32 7
  %122 = ptrtoint ptr %wq.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %wq.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %123, ptr noundef %timeout_work.i.i.i, i32 noundef 4000) #7
  %124 = ptrtoint ptr %qp_info.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %qp_info.i.i, align 4
  %max_active.i.i.i = getelementptr inbounds %struct.ib_mad_qp_info, ptr %125, i32 0, i32 3, i32 3
  %126 = ptrtoint ptr %max_active.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %max_active.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %127)
  %cmp.i.i.i = icmp sgt i32 %127, 15
  %shr.i.i.i = ashr i32 %127, 3
  %cond.i.i.i = select i1 %cmp.i.i.i, i32 %shr.i.i.i, i32 1
  %128 = ptrtoint ptr %newwin.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %newwin.i.i.i, align 4
  %add.i.i = add i32 %cond.i.i.i, %129
  store i32 %add.i.i, ptr %newwin.i.i.i, align 4
  tail call fastcc void @ack_recv(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %mad_recv_wc) #7
  br label %if.end21.i.i

if.end21.i.i:                                     ; preds = %if.else.i.i, %if.then14.i.i
  %mad_recv_wc.addr.0.i.i = phi ptr [ %mad_recv_wc, %if.then14.i.i ], [ null, %if.else.i.i ]
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !29
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i.i, i32 1, i32 3, i32 1) #7
  %130 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i.i, ptr %refcount.i.i.i, i32 1, ptr elementtype(i32) %refcount.i.i.i) #7, !srcloc !30
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %130, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i53.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !31

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i.i, i32 noundef 3) #7
  br label %cleanup

if.then.i53.i.i:                                  ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !32
  tail call void @complete(ptr noundef %comp.i.i.i) #7
  br label %cleanup

if.else.i:                                        ; preds = %if.end.i
  br i1 %tobool4.not.i, label %if.end13.i, label %if.else.i.bad.i_crit_edge

if.else.i.bad.i_crit_edge:                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bad.i

if.end13.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %call14.i = tail call fastcc ptr @continue_rmpp(ptr noundef %agent, ptr noundef %mad_recv_wc) #7
  br label %cleanup

bad.i:                                            ; preds = %if.else.i.bad.i_crit_edge, %if.then3.i.bad.i_crit_edge, %sw.bb.bad.i_crit_edge
  %rmpp_status.0.i = phi i8 [ 124, %sw.bb.bad.i_crit_edge ], [ 120, %if.then3.i.bad.i_crit_edge ], [ 120, %if.else.i.bad.i_crit_edge ]
  tail call fastcc void @nack_recv(ptr noundef %agent, ptr noundef %mad_recv_wc, i8 noundef zeroext %rmpp_status.0.i) #7
  tail call void @ib_free_recv_mad(ptr noundef %mad_recv_wc) #7
  br label %cleanup

sw.bb8:                                           ; preds = %if.end5
  %rmpp_status.i = getelementptr inbounds %struct.ib_rmpp_mad, ptr %2, i32 0, i32 1, i32 3
  %131 = ptrtoint ptr %rmpp_status.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %rmpp_status.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool.not.i30 = icmp eq i8 %132, 0
  br i1 %tobool.not.i30, label %if.end.i32, label %if.then.i

if.then.i:                                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @abort_send(ptr noundef %agent, ptr noundef %mad_recv_wc, i8 noundef zeroext 124) #7
  tail call fastcc void @nack_recv(ptr noundef %agent, ptr noundef %mad_recv_wc, i8 noundef zeroext 124) #7
  br label %out

if.end.i32:                                       ; preds = %sw.bb8
  %seg_num2.i = getelementptr inbounds %struct.ib_rmpp_mad, ptr %2, i32 0, i32 1, i32 4
  %133 = ptrtoint ptr %seg_num2.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %seg_num2.i, align 4
  %paylen_newwin.i = getelementptr inbounds %struct.ib_rmpp_mad, ptr %2, i32 0, i32 1, i32 5
  %135 = ptrtoint ptr %paylen_newwin.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %paylen_newwin.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %134)
  %cmp.i31 = icmp slt i32 %136, %134
  br i1 %cmp.i31, label %if.then4.i, label %do.body6.i

if.then4.i:                                       ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @abort_send(ptr noundef %agent, ptr noundef %mad_recv_wc, i8 noundef zeroext 122) #7
  tail call fastcc void @nack_recv(ptr noundef %agent, ptr noundef %mad_recv_wc, i8 noundef zeroext 122) #7
  br label %out

do.body6.i:                                       ; preds = %if.end.i32
  %lock.i = getelementptr inbounds %struct.ib_mad_agent_private, ptr %agent, i32 0, i32 3
  %call8.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %call11.i = tail call ptr @ib_find_send_mad(ptr noundef %agent, ptr noundef %mad_recv_wc) #7
  %tobool12.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool12.not.i, label %if.then13.i, label %if.end17.i

if.then13.i:                                      ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool14.not.i = icmp eq i32 %134, 0
  br i1 %tobool14.not.i, label %if.then15.i, label %if.then13.i.out.i_crit_edge

if.then13.i.out.i_crit_edge:                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.then15.i:                                      ; preds = %if.then13.i
  %rmpp_list.i.i.i = getelementptr inbounds %struct.ib_mad_agent_private, ptr %agent, i32 0, i32 11
  %137 = ptrtoint ptr %rmpp_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %.pn50.i.i.i = load ptr, ptr %rmpp_list.i.i.i, align 4
  %cmp.not51.i.i.i = icmp eq ptr %.pn50.i.i.i, %rmpp_list.i.i.i
  br i1 %cmp.not51.i.i.i, label %if.then15.i.out.i_crit_edge, label %for.body.lr.ph.i.i.i

if.then15.i.out.i_crit_edge:                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

for.body.lr.ph.i.i.i:                             ; preds = %if.then15.i
  %138 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %0, align 4
  %tid3.i.i.i = getelementptr inbounds %struct.ib_mad_hdr, ptr %139, i32 0, i32 6
  %140 = ptrtoint ptr %tid3.i.i.i to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %tid3.i.i.i, align 8
  %mgmt_class12.i.i.i = getelementptr inbounds %struct.ib_mad_hdr, ptr %139, i32 0, i32 1
  %class_version18.i.i.i = getelementptr inbounds %struct.ib_mad_hdr, ptr %139, i32 0, i32 2
  %method24.i.i.i = getelementptr inbounds %struct.ib_mad_hdr, ptr %139, i32 0, i32 3
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %.pn52.i.i.i = phi ptr [ %.pn50.i.i.i, %for.body.lr.ph.i.i.i ], [ %.pn.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %tid.i.i.i33 = getelementptr i8, ptr %.pn52.i.i.i, i32 348
  %142 = ptrtoint ptr %tid.i.i.i33 to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %tid.i.i.i33, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %143, i64 %141)
  %cmp4.i.i.i = icmp eq i64 %143, %141
  br i1 %cmp4.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %src_qp.i.i.i34 = getelementptr i8, ptr %.pn52.i.i.i, i32 356
  %144 = ptrtoint ptr %src_qp.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %src_qp.i.i.i34, align 8
  %146 = ptrtoint ptr %mad_recv_wc to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %mad_recv_wc, align 4
  %src_qp5.i.i.i = getelementptr inbounds %struct.ib_wc, ptr %147, i32 0, i32 7
  %148 = ptrtoint ptr %src_qp5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %src_qp5.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %145, i32 %149)
  %cmp6.i.i.i = icmp eq i32 %145, %149
  br i1 %cmp6.i.i.i, label %land.lhs.true7.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

land.lhs.true7.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %slid.i.i.i35 = getelementptr i8, ptr %.pn52.i.i.i, i32 360
  %150 = ptrtoint ptr %slid.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %slid.i.i.i35, align 4
  %slid9.i.i.i = getelementptr inbounds %struct.ib_wc, ptr %147, i32 0, i32 8
  %152 = ptrtoint ptr %slid9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %slid9.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %151, i32 %153)
  %cmp10.i.i.i = icmp eq i32 %151, %153
  br i1 %cmp10.i.i.i, label %land.lhs.true11.i.i.i, label %land.lhs.true7.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true7.i.i.i.for.inc.i.i.i_crit_edge:     ; preds = %land.lhs.true7.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

land.lhs.true11.i.i.i:                            ; preds = %land.lhs.true7.i.i.i
  %mgmt_class.i.i.i36 = getelementptr i8, ptr %.pn52.i.i.i, i32 364
  %154 = ptrtoint ptr %mgmt_class.i.i.i36 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %mgmt_class.i.i.i36, align 8
  %156 = ptrtoint ptr %mgmt_class12.i.i.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %mgmt_class12.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %155, i8 %157)
  %cmp14.i.i.i = icmp eq i8 %155, %157
  br i1 %cmp14.i.i.i, label %land.lhs.true16.i.i.i, label %land.lhs.true11.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true11.i.i.i.for.inc.i.i.i_crit_edge:    ; preds = %land.lhs.true11.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

land.lhs.true16.i.i.i:                            ; preds = %land.lhs.true11.i.i.i
  %class_version.i.i.i37 = getelementptr i8, ptr %.pn52.i.i.i, i32 365
  %158 = ptrtoint ptr %class_version.i.i.i37 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %class_version.i.i.i37, align 1
  %160 = ptrtoint ptr %class_version18.i.i.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %class_version18.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %159, i8 %161)
  %cmp20.i.i.i = icmp eq i8 %159, %161
  br i1 %cmp20.i.i.i, label %land.lhs.true22.i.i.i, label %land.lhs.true16.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true16.i.i.i.for.inc.i.i.i_crit_edge:    ; preds = %land.lhs.true16.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

land.lhs.true22.i.i.i:                            ; preds = %land.lhs.true16.i.i.i
  %method.i.i.i38 = getelementptr i8, ptr %.pn52.i.i.i, i32 366
  %162 = ptrtoint ptr %method.i.i.i38 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %method.i.i.i38, align 2
  %164 = ptrtoint ptr %method24.i.i.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %method24.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %163, i8 %165)
  %cmp26.i.i.i = icmp eq i8 %163, %165
  br i1 %cmp26.i.i.i, label %find_rmpp_recv.exit.i.i, label %land.lhs.true22.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true22.i.i.i.for.inc.i.i.i_crit_edge:    ; preds = %land.lhs.true22.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true22.i.i.i.for.inc.i.i.i_crit_edge, %land.lhs.true16.i.i.i.for.inc.i.i.i_crit_edge, %land.lhs.true11.i.i.i.for.inc.i.i.i_crit_edge, %land.lhs.true7.i.i.i.for.inc.i.i.i_crit_edge, %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %166 = ptrtoint ptr %.pn52.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %.pn.i.i.i = load ptr, ptr %.pn52.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %rmpp_list.i.i.i
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.out.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

for.inc.i.i.i.out.i_crit_edge:                    ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

find_rmpp_recv.exit.i.i:                          ; preds = %land.lhs.true22.i.i.i
  %rmpp_recv.0.le.i.i.i = getelementptr i8, ptr %.pn52.i.i.i, i32 -4
  %tobool.not.i.i = icmp eq ptr %rmpp_recv.0.le.i.i.i, null
  br i1 %tobool.not.i.i, label %find_rmpp_recv.exit.i.i.out.i_crit_edge, label %land.lhs.true.i.i

find_rmpp_recv.exit.i.i.out.i_crit_edge:          ; preds = %find_rmpp_recv.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

land.lhs.true.i.i:                                ; preds = %find_rmpp_recv.exit.i.i
  %state.i.i = getelementptr i8, ptr %.pn52.i.i.i, i32 264
  %167 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %168)
  %cmp.i.i = icmp eq i32 %168, 2
  br i1 %cmp.i.i, label %if.then.i.i39, label %land.lhs.true.i.i.out.i_crit_edge

land.lhs.true.i.i.out.i_crit_edge:                ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.then.i.i39:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %repwin.i.i = getelementptr i8, ptr %.pn52.i.i.i, i32 340
  %169 = ptrtoint ptr %repwin.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %136, ptr %repwin.i.i, align 8
  br label %out.i

if.end17.i:                                       ; preds = %do.body6.i
  %last_ack.i = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %call11.i, i32 0, i32 18
  %170 = ptrtoint ptr %last_ack.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %last_ack.i, align 8
  %send_buf.i = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %call11.i, i32 0, i32 3
  %seg_count.i = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %call11.i, i32 0, i32 3, i32 7
  %172 = ptrtoint ptr %seg_count.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %seg_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %171, i32 %173)
  %cmp18.i = icmp eq i32 %171, %173
  %timeout.i = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %call11.i, i32 0, i32 9
  %174 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %timeout.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %tobool20.not.i = icmp eq i32 %175, 0
  br i1 %cmp18.i, label %land.lhs.true.i, label %lor.lhs.false.i

land.lhs.true.i:                                  ; preds = %if.end17.i
  br i1 %tobool20.not.i, label %land.lhs.true.i.out.i_crit_edge, label %if.then21.i

land.lhs.true.i.out.i_crit_edge:                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.then21.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call8.i) #7
  tail call fastcc void @ack_ds_ack(ptr noundef %agent, ptr noundef %mad_recv_wc) #7
  br label %out

lor.lhs.false.i:                                  ; preds = %if.end17.i
  br i1 %tobool20.not.i, label %lor.lhs.false.i.out.i_crit_edge, label %lor.lhs.false31.i

lor.lhs.false.i.out.i_crit_edge:                  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

lor.lhs.false31.i:                                ; preds = %lor.lhs.false.i
  %status.i = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %call11.i, i32 0, i32 14
  %176 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %cmp32.not.i = icmp eq i32 %177, 0
  br i1 %cmp32.not.i, label %if.end35.i, label %lor.lhs.false31.i.out.i_crit_edge

lor.lhs.false31.i.out.i_crit_edge:                ; preds = %lor.lhs.false31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.end35.i:                                       ; preds = %lor.lhs.false31.i
  call void @__sanitizer_cov_trace_cmp4(i32 %134, i32 %173)
  %cmp38.i = icmp sgt i32 %134, %173
  br i1 %cmp38.i, label %if.end35.i.if.then44.i_crit_edge, label %lor.lhs.false40.i

if.end35.i.if.then44.i_crit_edge:                 ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then44.i

lor.lhs.false40.i:                                ; preds = %if.end35.i
  %newwin41.i = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %call11.i, i32 0, i32 20
  %178 = ptrtoint ptr %newwin41.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %newwin41.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %134, i32 %179)
  %cmp42.i = icmp sgt i32 %134, %179
  br i1 %cmp42.i, label %lor.lhs.false40.i.if.then44.i_crit_edge, label %if.end46.i

lor.lhs.false40.i.if.then44.i_crit_edge:          ; preds = %lor.lhs.false40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then44.i

if.then44.i:                                      ; preds = %lor.lhs.false40.i.if.then44.i_crit_edge, %if.end35.i.if.then44.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call8.i) #7
  tail call fastcc void @abort_send(ptr noundef %agent, ptr noundef %mad_recv_wc, i8 noundef zeroext 123) #7
  tail call fastcc void @nack_recv(ptr noundef %agent, ptr noundef %mad_recv_wc, i8 noundef zeroext 123) #7
  br label %out

if.end46.i:                                       ; preds = %lor.lhs.false40.i
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %179)
  %cmp48.i = icmp slt i32 %136, %179
  call void @__sanitizer_cov_trace_cmp4(i32 %134, i32 %171)
  %cmp52.i = icmp slt i32 %134, %171
  %or.cond.i = select i1 %cmp48.i, i1 true, i1 %cmp52.i
  br i1 %or.cond.i, label %if.end46.i.out.i_crit_edge, label %if.end55.i

if.end46.i.out.i_crit_edge:                       ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.end55.i:                                       ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_cmp4(i32 %134, i32 %171)
  %cmp57.i = icmp sgt i32 %134, %171
  br i1 %cmp57.i, label %if.then59.i, label %if.end55.i.if.end60.i_crit_edge

if.end55.i.if.end60.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60.i

if.then59.i:                                      ; preds = %if.end55.i
  %180 = ptrtoint ptr %last_ack.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %134, ptr %last_ack.i, align 8
  %last_ack_seg.i.i = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %call11.i, i32 0, i32 16
  %181 = ptrtoint ptr %last_ack_seg.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %last_ack_seg.i.i, align 8
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.then59.i
  %storemerge.in.i.i = phi ptr [ %182, %if.then59.i ], [ %storemerge.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %183 = ptrtoint ptr %storemerge.in.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %storemerge.i.i = load ptr, ptr %storemerge.in.i.i, align 4
  %184 = ptrtoint ptr %last_ack_seg.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %storemerge.i.i, ptr %last_ack_seg.i.i, align 8
  %cmp.not.i.i = icmp eq ptr %storemerge.i.i, %182
  br i1 %cmp.not.i.i, label %for.cond.i.i.adjust_last_ack.exit.i_crit_edge, label %for.body.i.i

for.cond.i.i.adjust_last_ack.exit.i_crit_edge:    ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adjust_last_ack.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %num.i.i = getelementptr inbounds %struct.ib_rmpp_segment, ptr %storemerge.i.i, i32 0, i32 1
  %185 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %num.i.i, align 4
  %cmp6.i.i = icmp eq i32 %186, %134
  br i1 %cmp6.i.i, label %for.body.i.i.adjust_last_ack.exit.i_crit_edge, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

for.body.i.i.adjust_last_ack.exit.i_crit_edge:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adjust_last_ack.exit.i

adjust_last_ack.exit.i:                           ; preds = %for.body.i.i.adjust_last_ack.exit.i_crit_edge, %for.cond.i.i.adjust_last_ack.exit.i_crit_edge
  %max_retries.i = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %call11.i, i32 0, i32 10
  %187 = ptrtoint ptr %max_retries.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %max_retries.i, align 4
  %retries_left.i = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %call11.i, i32 0, i32 11
  %189 = ptrtoint ptr %retries_left.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %188, ptr %retries_left.i, align 8
  br label %if.end60.i

if.end60.i:                                       ; preds = %adjust_last_ack.exit.i, %if.end55.i.if.end60.i_crit_edge
  %190 = ptrtoint ptr %newwin41.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %136, ptr %newwin41.i, align 8
  %191 = ptrtoint ptr %last_ack.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %last_ack.i, align 8
  %193 = ptrtoint ptr %seg_count.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %seg_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %192, i32 %194)
  %cmp65.i = icmp eq i32 %192, %194
  br i1 %cmp65.i, label %if.then67.i, label %if.else.i40

if.then67.i:                                      ; preds = %if.end60.i
  %timeout_ms.i = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %call11.i, i32 0, i32 3, i32 10
  %195 = ptrtoint ptr %timeout_ms.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %timeout_ms.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %tobool69.not.i = icmp eq i32 %196, 0
  br i1 %tobool69.not.i, label %if.then70.i, label %if.end75.i

if.then70.i:                                      ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %wc.i) #7
  %197 = getelementptr inbounds %struct.ib_mad_send_wc, ptr %wc.i, i32 0, i32 1
  %198 = getelementptr inbounds %struct.ib_mad_send_wc, ptr %wc.i, i32 0, i32 2
  tail call void @ib_mark_mad_done(ptr noundef nonnull %call11.i) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call8.i) #7
  %199 = ptrtoint ptr %197 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 0, ptr %197, align 4
  %200 = ptrtoint ptr %198 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 0, ptr %198, align 4
  %201 = ptrtoint ptr %wc.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr %send_buf.i, ptr %wc.i, align 4
  call void @ib_mad_complete_send_wr(ptr noundef nonnull %call11.i, ptr noundef nonnull %wc.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %wc.i) #7
  br label %out

if.end75.i:                                       ; preds = %if.then67.i
  %refcount.i = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %call11.i, i32 0, i32 13
  %202 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %refcount.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %203)
  %cmp76.i = icmp eq i32 %203, 1
  br i1 %cmp76.i, label %if.then78.i, label %if.end75.i.if.end81.i_crit_edge

if.end75.i.if.end81.i_crit_edge:                  ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81.i

if.then78.i:                                      ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ib_reset_mad_timeout(ptr noundef nonnull %call11.i, i32 noundef %196) #7
  br label %if.end81.i

if.end81.i:                                       ; preds = %if.then78.i, %if.end75.i.if.end81.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call8.i) #7
  tail call fastcc void @ack_ds_ack(ptr noundef %agent, ptr noundef %mad_recv_wc) #7
  br label %out

if.else.i40:                                      ; preds = %if.end60.i
  %refcount83.i = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %call11.i, i32 0, i32 13
  %204 = ptrtoint ptr %refcount83.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %refcount83.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %205)
  %cmp84.i = icmp eq i32 %205, 1
  br i1 %cmp84.i, label %land.lhs.true86.i, label %if.else.i40.out.i_crit_edge

if.else.i40.out.i_crit_edge:                      ; preds = %if.else.i40
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

land.lhs.true86.i:                                ; preds = %if.else.i40
  %seg_num87.i = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %call11.i, i32 0, i32 19
  %206 = ptrtoint ptr %seg_num87.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %seg_num87.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %207, i32 %136)
  %cmp89.i = icmp slt i32 %207, %136
  call void @__sanitizer_cov_trace_cmp4(i32 %207, i32 %194)
  %cmp95.i = icmp slt i32 %207, %194
  %or.cond192.i = select i1 %cmp89.i, i1 %cmp95.i, i1 false
  br i1 %or.cond192.i, label %if.then97.i, label %land.lhs.true86.i.out.i_crit_edge

land.lhs.true86.i.out.i_crit_edge:                ; preds = %land.lhs.true86.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.then97.i:                                      ; preds = %land.lhs.true86.i
  %call98.i = tail call fastcc i32 @send_next_seg(ptr noundef nonnull %call11.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98.i)
  %tobool99.not.i = icmp eq i32 %call98.i, 0
  br i1 %tobool99.not.i, label %if.end101.i, label %if.then97.i.out.i_crit_edge

if.then97.i.out.i_crit_edge:                      ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.end101.i:                                      ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_pc() #9
  %208 = ptrtoint ptr %refcount83.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %refcount83.i, align 8
  %inc.i = add i32 %209, 1
  store i32 %inc.i, ptr %refcount83.i, align 8
  %agent_list.i = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %call11.i, i32 0, i32 1
  %mad_agent_priv.i = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %call11.i, i32 0, i32 2
  %210 = ptrtoint ptr %mad_agent_priv.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %mad_agent_priv.i, align 8
  %send_list.i = getelementptr inbounds %struct.ib_mad_agent_private, ptr %211, i32 0, i32 4
  tail call fastcc void @list_move_tail(ptr noundef %agent_list.i, ptr noundef %send_list.i) #7
  br label %out.i

out.i:                                            ; preds = %if.end101.i, %if.then97.i.out.i_crit_edge, %land.lhs.true86.i.out.i_crit_edge, %if.else.i40.out.i_crit_edge, %if.end46.i.out.i_crit_edge, %lor.lhs.false31.i.out.i_crit_edge, %lor.lhs.false.i.out.i_crit_edge, %land.lhs.true.i.out.i_crit_edge, %if.then.i.i39, %land.lhs.true.i.i.out.i_crit_edge, %find_rmpp_recv.exit.i.i.out.i_crit_edge, %for.inc.i.i.i.out.i_crit_edge, %if.then15.i.out.i_crit_edge, %if.then13.i.out.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call8.i) #7
  br label %out

sw.bb9:                                           ; preds = %if.end5
  %rmpp_status.i41 = getelementptr inbounds %struct.ib_rmpp_mad, ptr %2, i32 0, i32 1, i32 3
  %212 = ptrtoint ptr %rmpp_status.i41 to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %rmpp_status.i41, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %213)
  %cmp.not.i = icmp eq i8 %213, 1
  br i1 %cmp.not.i, label %if.else.i43, label %if.then.i42

if.then.i42:                                      ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @abort_send(ptr noundef %agent, ptr noundef %mad_recv_wc, i8 noundef zeroext 124) #7
  tail call fastcc void @nack_recv(ptr noundef %agent, ptr noundef %mad_recv_wc, i8 noundef zeroext 124) #7
  br label %out

if.else.i43:                                      ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @abort_send(ptr noundef %agent, ptr noundef %mad_recv_wc, i8 noundef zeroext 1) #7
  br label %out

sw.bb10:                                          ; preds = %if.end5
  %rmpp_status.i45 = getelementptr inbounds %struct.ib_rmpp_mad, ptr %2, i32 0, i32 1, i32 3
  %214 = ptrtoint ptr %rmpp_status.i45 to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %rmpp_status.i45, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 118, i8 %215)
  %216 = icmp slt i8 %215, 118
  br i1 %216, label %if.then.i46, label %if.else.i47

if.then.i46:                                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @abort_send(ptr noundef %agent, ptr noundef %mad_recv_wc, i8 noundef zeroext 124) #7
  tail call fastcc void @nack_recv(ptr noundef %agent, ptr noundef %mad_recv_wc, i8 noundef zeroext 124) #7
  br label %out

if.else.i47:                                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @abort_send(ptr noundef %agent, ptr noundef %mad_recv_wc, i8 noundef zeroext %215) #7
  br label %out

sw.default:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @abort_send(ptr noundef %agent, ptr noundef %mad_recv_wc, i8 noundef zeroext 121)
  tail call fastcc void @nack_recv(ptr noundef %agent, ptr noundef %mad_recv_wc, i8 noundef zeroext 121)
  br label %out

out:                                              ; preds = %sw.default, %if.else.i47, %if.then.i46, %if.else.i43, %if.then.i42, %out.i, %if.end81.i, %if.then70.i, %if.then44.i, %if.then21.i, %if.then4.i, %if.then.i, %if.then4
  call void @ib_free_recv_mad(ptr noundef %mad_recv_wc) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %bad.i, %if.end13.i, %if.then.i53.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %if.then8.i.i, %if.then.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %out ], [ %mad_recv_wc, %entry.cleanup_crit_edge ], [ null, %bad.i ], [ %call14.i, %if.end13.i ], [ %call10.i.i, %if.then8.i.i ], [ null, %if.then.i.i ], [ %mad_recv_wc.addr.0.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %mad_recv_wc.addr.0.i.i, %if.then10.i.i.i.i.i.i ], [ %mad_recv_wc.addr.0.i.i, %if.then.i53.i.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @abort_send(ptr noundef %agent, ptr noundef %mad_recv_wc, i8 noundef zeroext %rmpp_status) unnamed_addr #0 align 64 {
entry:
  %wc = alloca %struct.ib_mad_send_wc, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %wc) #7
  %0 = getelementptr inbounds %struct.ib_mad_send_wc, ptr %wc, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ib_mad_send_wc, ptr %wc, i32 0, i32 2
  %lock = getelementptr inbounds %struct.ib_mad_agent_private, ptr %agent, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %call5 = tail call ptr @ib_find_send_mad(ptr noundef %agent, ptr noundef %mad_recv_wc) #7
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %last_ack = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %call5, i32 0, i32 18
  %2 = ptrtoint ptr %last_ack to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_ack, align 8
  %send_buf = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %call5, i32 0, i32 3
  %seg_count = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %call5, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %seg_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %seg_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp6 = icmp eq i32 %3, %5
  br i1 %cmp6, label %if.end.out_crit_edge, label %lor.lhs.false

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false:                                    ; preds = %if.end
  %timeout = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %call5, i32 0, i32 9
  %6 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool8.not = icmp eq i32 %7, 0
  br i1 %tobool8.not, label %lor.lhs.false.out_crit_edge, label %lor.lhs.false9

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %status = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %call5, i32 0, i32 14
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp10.not = icmp eq i32 %9, 0
  br i1 %cmp10.not, label %if.end13, label %lor.lhs.false9.out_crit_edge

lor.lhs.false9.out_crit_edge:                     ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end13:                                         ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ib_mark_mad_done(ptr noundef nonnull %call5) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #7
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 16, ptr %0, align 4
  %conv16 = zext i8 %rmpp_status to i32
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv16, ptr %1, align 4
  %12 = ptrtoint ptr %wc to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %send_buf, ptr %wc, align 4
  call void @ib_mad_complete_send_wr(ptr noundef nonnull %call5, ptr noundef nonnull %wc) #7
  br label %cleanup

out:                                              ; preds = %lor.lhs.false9.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %wc) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nack_recv(ptr noundef %agent, ptr nocapture noundef readonly %recv_wc, i8 noundef zeroext %rmpp_status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @alloc_response_msg(ptr noundef %agent, ptr noundef %recv_wc)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mad = getelementptr inbounds %struct.ib_mad_send_buf, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %mad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mad, align 4
  %2 = getelementptr inbounds %struct.ib_mad_recv_wc, ptr %recv_wc, i32 0, i32 1, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %hdr_len = getelementptr inbounds %struct.ib_mad_send_buf, ptr %call, i32 0, i32 5
  %5 = ptrtoint ptr %hdr_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hdr_len, align 4
  %7 = call ptr @memcpy(ptr %1, ptr %4, i32 %6)
  %method = getelementptr inbounds %struct.ib_mad_hdr, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %method to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %method, align 1
  %10 = xor i8 %9, -128
  store i8 %10, ptr %method, align 1
  %rmpp_hdr = getelementptr inbounds %struct.ib_rmpp_mad, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %rmpp_hdr to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %rmpp_hdr, align 8
  %rmpp_type = getelementptr inbounds %struct.ib_rmpp_mad, ptr %1, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %rmpp_type to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 4, ptr %rmpp_type, align 1
  %rmpp_rtime_flags.i = getelementptr inbounds %struct.ib_rmpp_mad, ptr %1, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %rmpp_rtime_flags.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %rmpp_rtime_flags.i, align 2
  %15 = and i8 %14, -8
  %16 = or i8 %15, 1
  store i8 %16, ptr %rmpp_rtime_flags.i, align 2
  %rmpp_status7 = getelementptr inbounds %struct.ib_rmpp_mad, ptr %1, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %rmpp_status7 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %rmpp_status, ptr %rmpp_status7, align 1
  %seg_num = getelementptr inbounds %struct.ib_rmpp_mad, ptr %1, i32 0, i32 1, i32 4
  %18 = ptrtoint ptr %seg_num to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %seg_num, align 4
  %paylen_newwin = getelementptr inbounds %struct.ib_rmpp_mad, ptr %1, i32 0, i32 1, i32 5
  %19 = ptrtoint ptr %paylen_newwin to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %paylen_newwin, align 8
  %call10 = tail call i32 @ib_post_send_mad(ptr noundef %call, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then11:                                        ; preds = %if.end
  %ah = getelementptr inbounds %struct.ib_mad_send_buf, ptr %call, i32 0, i32 3
  %20 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ah, align 4
  %call.i = tail call i32 @rdma_destroy_ah_user(ptr noundef %21, i32 noundef 1, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then11.rdma_destroy_ah.exit_crit_edge, label %land.rhs.i

if.then11.rdma_destroy_ah.exit_crit_edge:         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %rdma_destroy_ah.exit

land.rhs.i:                                       ; preds = %if.then11
  %.b1.i = load i1, ptr @rdma_destroy_ah.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.rdma_destroy_ah.exit_crit_edge, label %if.then.i, !prof !31

land.rhs.i.rdma_destroy_ah.exit_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rdma_destroy_ah.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rdma_destroy_ah.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3630, i32 noundef 9, ptr noundef nonnull @.str.1) #7
  br label %rdma_destroy_ah.exit

rdma_destroy_ah.exit:                             ; preds = %if.then.i, %land.rhs.i.rdma_destroy_ah.exit_crit_edge, %if.then11.rdma_destroy_ah.exit_crit_edge
  tail call void @ib_free_send_mad(ptr noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %rdma_destroy_ah.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_send_rmpp_mad(ptr noundef %mad_send_wr) local_unnamed_addr #0 align 64 {
entry:
  %ah_attr.i = alloca %struct.rdma_ah_attr, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mad = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %mad_send_wr, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %mad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mad, align 4
  %rmpp_rtime_flags.i = getelementptr inbounds %struct.ib_rmpp_mad, ptr %1, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %rmpp_rtime_flags.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rmpp_rtime_flags.i, align 2
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %rmpp_type = getelementptr inbounds %struct.ib_rmpp_mad, ptr %1, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %rmpp_type to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %rmpp_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp.not = icmp eq i8 %6, 1
  br i1 %cmp.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %seg_num = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %mad_send_wr, i32 0, i32 19
  %7 = ptrtoint ptr %seg_num to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %seg_num, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %mad_agent_priv.i = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %mad_send_wr, i32 0, i32 2
  %8 = ptrtoint ptr %mad_agent_priv.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mad_agent_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %ah_attr.i) #7
  %10 = call ptr @memset(ptr %ah_attr.i, i32 255, i32 56)
  %method.i = getelementptr inbounds %struct.ib_mad_hdr, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %method.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %method.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %tobool.not.i = icmp sgt i8 %12, -1
  br i1 %tobool.not.i, label %if.end5.init_newwin.exit_crit_edge, label %do.body1.i

if.end5.init_newwin.exit_crit_edge:               ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %init_newwin.exit

do.body1.i:                                       ; preds = %if.end5
  %lock.i = getelementptr inbounds %struct.ib_mad_agent_private, ptr %9, i32 0, i32 3
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %rmpp_list.i = getelementptr inbounds %struct.ib_mad_agent_private, ptr %9, i32 0, i32 11
  %13 = ptrtoint ptr %rmpp_list.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn63.i = load ptr, ptr %rmpp_list.i, align 4
  %cmp8.not64.i = icmp eq ptr %.pn63.i, %rmpp_list.i
  br i1 %cmp8.not64.i, label %do.body1.i.for.end.i_crit_edge, label %for.body.lr.ph.i

do.body1.i.for.end.i_crit_edge:                   ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %do.body1.i
  %tid10.i = getelementptr inbounds %struct.ib_mad_hdr, ptr %1, i32 0, i32 6
  %mgmt_class14.i = getelementptr inbounds %struct.ib_mad_hdr, ptr %1, i32 0, i32 1
  %class_version20.i = getelementptr inbounds %struct.ib_mad_hdr, ptr %1, i32 0, i32 2
  %ah.i = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %mad_send_wr, i32 0, i32 3, i32 3
  %type.i.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr.i, i32 0, i32 5
  %14 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr.i, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn65.i = phi ptr [ %.pn63.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %tid.i = getelementptr i8, ptr %.pn65.i, i32 348
  %15 = ptrtoint ptr %tid.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %tid.i, align 8
  %17 = ptrtoint ptr %tid10.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %tid10.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %18)
  %cmp11.not.i = icmp eq i64 %16, %18
  br i1 %cmp11.not.i, label %lor.lhs.false.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %mgmt_class.i = getelementptr i8, ptr %.pn65.i, i32 364
  %19 = ptrtoint ptr %mgmt_class.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %mgmt_class.i, align 8
  %21 = ptrtoint ptr %mgmt_class14.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %mgmt_class14.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %22)
  %cmp16.not.i = icmp eq i8 %20, %22
  br i1 %cmp16.not.i, label %lor.lhs.false18.i, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

lor.lhs.false18.i:                                ; preds = %lor.lhs.false.i
  %class_version.i = getelementptr i8, ptr %.pn65.i, i32 365
  %23 = ptrtoint ptr %class_version.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %class_version.i, align 1
  %25 = ptrtoint ptr %class_version20.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %class_version20.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %26)
  %cmp22.not.i = icmp eq i8 %24, %26
  br i1 %cmp22.not.i, label %lor.lhs.false24.i, label %lor.lhs.false18.i.for.inc.i_crit_edge

lor.lhs.false18.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

lor.lhs.false24.i:                                ; preds = %lor.lhs.false18.i
  %method25.i = getelementptr i8, ptr %.pn65.i, i32 366
  %27 = ptrtoint ptr %method25.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %method25.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %28)
  %tobool28.not.i = icmp sgt i8 %28, -1
  br i1 %tobool28.not.i, label %if.end30.i, label %lor.lhs.false24.i.for.inc.i_crit_edge

lor.lhs.false24.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end30.i:                                       ; preds = %lor.lhs.false24.i
  %29 = ptrtoint ptr %ah.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ah.i, align 4
  %call32.i = call i32 @rdma_query_ah(ptr noundef %30, ptr noundef nonnull %ah_attr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %if.end35.i, label %if.end30.i.for.inc.i_crit_edge

if.end30.i.for.inc.i_crit_edge:                   ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end35.i:                                       ; preds = %if.end30.i
  %slid.i = getelementptr i8, ptr %.pn65.i, i32 360
  %31 = ptrtoint ptr %slid.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %slid.i, align 4
  %33 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %type.i.i, align 4
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %34, label %if.end35.i.rdma_ah_get_dlid.exit.i_crit_edge [
    i32 1, label %if.then.i.i
    i32 3, label %if.then4.i.i
  ]

if.end35.i.rdma_ah_get_dlid.exit.i_crit_edge:     ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rdma_ah_get_dlid.exit.i

if.then.i.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %14, align 8
  %conv.i.i = zext i16 %37 to i32
  br label %rdma_ah_get_dlid.exit.i

if.then4.i.i:                                     ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %14, align 8
  br label %rdma_ah_get_dlid.exit.i

rdma_ah_get_dlid.exit.i:                          ; preds = %if.then4.i.i, %if.then.i.i, %if.end35.i.rdma_ah_get_dlid.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %conv.i.i, %if.then.i.i ], [ %39, %if.then4.i.i ], [ 0, %if.end35.i.rdma_ah_get_dlid.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %retval.0.i.i)
  %cmp37.i = icmp eq i32 %32, %retval.0.i.i
  br i1 %cmp37.i, label %if.then39.i, label %rdma_ah_get_dlid.exit.i.for.inc.i_crit_edge

rdma_ah_get_dlid.exit.i.for.inc.i_crit_edge:      ; preds = %rdma_ah_get_dlid.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then39.i:                                      ; preds = %rdma_ah_get_dlid.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %repwin.i = getelementptr i8, ptr %.pn65.i, i32 340
  %40 = ptrtoint ptr %repwin.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %repwin.i, align 8
  br label %for.end.i

for.inc.i:                                        ; preds = %rdma_ah_get_dlid.exit.i.for.inc.i_crit_edge, %if.end30.i.for.inc.i_crit_edge, %lor.lhs.false24.i.for.inc.i_crit_edge, %lor.lhs.false18.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %42 = ptrtoint ptr %.pn65.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pn.i = load ptr, ptr %.pn65.i, align 4
  %cmp8.not.i = icmp eq ptr %.pn.i, %rmpp_list.i
  br i1 %cmp8.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then39.i, %do.body1.i.for.end.i_crit_edge
  %newwin.0.i = phi i32 [ %41, %if.then39.i ], [ 1, %do.body1.i.for.end.i_crit_edge ], [ 1, %for.inc.i.for.end.i_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #7
  br label %init_newwin.exit

init_newwin.exit:                                 ; preds = %for.end.i, %if.end5.init_newwin.exit_crit_edge
  %newwin.1.i = phi i32 [ %newwin.0.i, %for.end.i ], [ 1, %if.end5.init_newwin.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %ah_attr.i) #7
  %newwin = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %mad_send_wr, i32 0, i32 20
  %43 = ptrtoint ptr %newwin to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %newwin.1.i, ptr %newwin, align 8
  %timeout = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %mad_send_wr, i32 0, i32 9
  %44 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp7 = icmp eq i32 %45, 0
  %conv8 = zext i1 %cmp7 to i32
  %refcount = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %mad_send_wr, i32 0, i32 13
  %46 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %refcount, align 8
  %add = add i32 %47, %conv8
  store i32 %add, ptr %refcount, align 8
  %48 = ptrtoint ptr %mad to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mad, align 4
  %rmpp_rtime_flags.i.i = getelementptr inbounds %struct.ib_rmpp_mad, ptr %49, i32 0, i32 1, i32 2
  %50 = ptrtoint ptr %rmpp_rtime_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %rmpp_rtime_flags.i.i, align 2
  %52 = and i8 %51, -8
  %53 = or i8 %52, 1
  store i8 %53, ptr %rmpp_rtime_flags.i.i, align 2
  %seg_num.i = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %mad_send_wr, i32 0, i32 19
  %54 = ptrtoint ptr %seg_num.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %seg_num.i, align 4
  %inc.i = add i32 %55, 1
  store i32 %inc.i, ptr %seg_num.i, align 4
  %seg_num2.i = getelementptr inbounds %struct.ib_rmpp_mad, ptr %49, i32 0, i32 1, i32 4
  %56 = ptrtoint ptr %seg_num2.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %inc.i, ptr %seg_num2.i, align 4
  %57 = load i32, ptr %seg_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %57)
  %cmp.i = icmp eq i32 %57, 1
  br i1 %cmp.i, label %if.then.i, label %init_newwin.exit.if.end.i_crit_edge

init_newwin.exit.if.end.i_crit_edge:              ; preds = %init_newwin.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %init_newwin.exit
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %rmpp_rtime_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %rmpp_rtime_flags.i.i, align 2
  %60 = or i8 %59, 2
  store i8 %60, ptr %rmpp_rtime_flags.i.i, align 2
  %seg_count.i = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %mad_send_wr, i32 0, i32 3, i32 7
  %61 = ptrtoint ptr %seg_count.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %seg_count.i, align 4
  %seg_rmpp_size.i = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %mad_send_wr, i32 0, i32 3, i32 9
  %63 = ptrtoint ptr %seg_rmpp_size.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %seg_rmpp_size.i, align 4
  %mul.i = mul i32 %64, %62
  %pad.i = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %mad_send_wr, i32 0, i32 21
  %65 = ptrtoint ptr %pad.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %pad.i, align 4
  %sub.i = sub i32 %mul.i, %66
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %init_newwin.exit.if.end.i_crit_edge
  %paylen.0.i = phi i32 [ %sub.i, %if.then.i ], [ 0, %init_newwin.exit.if.end.i_crit_edge ]
  %67 = ptrtoint ptr %seg_num.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %seg_num.i, align 4
  %seg_count10.i = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %mad_send_wr, i32 0, i32 3, i32 7
  %69 = ptrtoint ptr %seg_count10.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %seg_count10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %70)
  %cmp11.i = icmp eq i32 %68, %70
  br i1 %cmp11.i, label %if.then13.i, label %if.end.i.if.end23.i_crit_edge

if.end.i.if.end23.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %rmpp_rtime_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %rmpp_rtime_flags.i.i, align 2
  %73 = or i8 %72, 4
  store i8 %73, ptr %rmpp_rtime_flags.i.i, align 2
  %seg_rmpp_size20.i = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %mad_send_wr, i32 0, i32 3, i32 9
  %74 = ptrtoint ptr %seg_rmpp_size20.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %seg_rmpp_size20.i, align 4
  %pad21.i = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %mad_send_wr, i32 0, i32 21
  %76 = ptrtoint ptr %pad21.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %pad21.i, align 4
  %sub22.i = sub i32 %75, %77
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then13.i, %if.end.i.if.end23.i_crit_edge
  %paylen.1.i = phi i32 [ %sub22.i, %if.then13.i ], [ %paylen.0.i, %if.end.i.if.end23.i_crit_edge ]
  %paylen_newwin.i = getelementptr inbounds %struct.ib_rmpp_mad, ptr %49, i32 0, i32 1, i32 5
  %78 = ptrtoint ptr %paylen_newwin.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %paylen.1.i, ptr %paylen_newwin.i, align 8
  %timeout_ms.i = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %mad_send_wr, i32 0, i32 3, i32 10
  %79 = ptrtoint ptr %timeout_ms.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %timeout_ms.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i23 = icmp eq i32 %80, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %80)
  %cmp26.i = icmp sgt i32 %80, 2000
  %or.cond.i = or i1 %tobool.not.i23, %cmp26.i
  br i1 %or.cond.i, label %if.then28.i, label %if.end23.i.send_next_seg.exit_crit_edge

if.end23.i.send_next_seg.exit_crit_edge:          ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %send_next_seg.exit

if.then28.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  %81 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 200, ptr %timeout, align 8
  br label %send_next_seg.exit

send_next_seg.exit:                               ; preds = %if.then28.i, %if.end23.i.send_next_seg.exit_crit_edge
  %call31.i = call i32 @ib_send_mad(ptr noundef %mad_send_wr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool10.not = icmp eq i32 %call31.i, 0
  %.call9 = select i1 %tobool10.not, i32 1, i32 %call31.i
  br label %cleanup

cleanup:                                          ; preds = %send_next_seg.exit, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.then4 ], [ 3, %entry.cleanup_crit_edge ], [ %.call9, %send_next_seg.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @send_next_seg(ptr noundef %mad_send_wr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mad = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %mad_send_wr, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %mad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mad, align 4
  %rmpp_rtime_flags.i = getelementptr inbounds %struct.ib_rmpp_mad, ptr %1, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %rmpp_rtime_flags.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rmpp_rtime_flags.i, align 2
  %4 = and i8 %3, -8
  %5 = or i8 %4, 1
  store i8 %5, ptr %rmpp_rtime_flags.i, align 2
  %seg_num = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %mad_send_wr, i32 0, i32 19
  %6 = ptrtoint ptr %seg_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %seg_num, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %seg_num, align 4
  %seg_num2 = getelementptr inbounds %struct.ib_rmpp_mad, ptr %1, i32 0, i32 1, i32 4
  %8 = ptrtoint ptr %seg_num2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %inc, ptr %seg_num2, align 4
  %9 = load i32, ptr %seg_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %rmpp_rtime_flags.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rmpp_rtime_flags.i, align 2
  %12 = or i8 %11, 2
  store i8 %12, ptr %rmpp_rtime_flags.i, align 2
  %seg_count = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %mad_send_wr, i32 0, i32 3, i32 7
  %13 = ptrtoint ptr %seg_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %seg_count, align 4
  %seg_rmpp_size = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %mad_send_wr, i32 0, i32 3, i32 9
  %15 = ptrtoint ptr %seg_rmpp_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %seg_rmpp_size, align 4
  %mul = mul i32 %16, %14
  %pad = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %mad_send_wr, i32 0, i32 21
  %17 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pad, align 4
  %sub = sub i32 %mul, %18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %paylen.0 = phi i32 [ %sub, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %19 = ptrtoint ptr %seg_num to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %seg_num, align 4
  %seg_count10 = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %mad_send_wr, i32 0, i32 3, i32 7
  %21 = ptrtoint ptr %seg_count10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %seg_count10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp11 = icmp eq i32 %20, %22
  br i1 %cmp11, label %if.then13, label %if.end.if.end23_crit_edge

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %rmpp_rtime_flags.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %rmpp_rtime_flags.i, align 2
  %25 = or i8 %24, 4
  store i8 %25, ptr %rmpp_rtime_flags.i, align 2
  %seg_rmpp_size20 = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %mad_send_wr, i32 0, i32 3, i32 9
  %26 = ptrtoint ptr %seg_rmpp_size20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %seg_rmpp_size20, align 4
  %pad21 = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %mad_send_wr, i32 0, i32 21
  %28 = ptrtoint ptr %pad21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pad21, align 4
  %sub22 = sub i32 %27, %29
  br label %if.end23

if.end23:                                         ; preds = %if.then13, %if.end.if.end23_crit_edge
  %paylen.1 = phi i32 [ %sub22, %if.then13 ], [ %paylen.0, %if.end.if.end23_crit_edge ]
  %paylen_newwin = getelementptr inbounds %struct.ib_rmpp_mad, ptr %1, i32 0, i32 1, i32 5
  %30 = ptrtoint ptr %paylen_newwin to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %paylen.1, ptr %paylen_newwin, align 8
  %timeout_ms = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %mad_send_wr, i32 0, i32 3, i32 10
  %31 = ptrtoint ptr %timeout_ms to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %timeout_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not = icmp eq i32 %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %32)
  %cmp26 = icmp sgt i32 %32, 2000
  %or.cond = or i1 %tobool.not, %cmp26
  br i1 %or.cond, label %if.then28, label %if.end23.if.end30_crit_edge

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then28:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %timeout29 = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %mad_send_wr, i32 0, i32 9
  %33 = ptrtoint ptr %timeout29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 200, ptr %timeout29, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end23.if.end30_crit_edge
  %call31 = tail call i32 @ib_send_mad(ptr noundef %mad_send_wr) #7
  ret i32 %call31
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_process_rmpp_send_wc(ptr noundef %mad_send_wr, ptr nocapture noundef %mad_send_wc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mad = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %mad_send_wr, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %mad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mad, align 4
  %rmpp_rtime_flags.i = getelementptr inbounds %struct.ib_rmpp_mad, ptr %1, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %rmpp_rtime_flags.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rmpp_rtime_flags.i, align 2
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %rmpp_type = getelementptr inbounds %struct.ib_rmpp_mad, ptr %1, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %rmpp_type to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %rmpp_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp.not = icmp eq i8 %6, 1
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %status = getelementptr inbounds %struct.ib_mad_send_wc, ptr %mad_send_wc, i32 0, i32 1
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp6.not = icmp eq i32 %8, 0
  br i1 %cmp6.not, label %lor.lhs.false, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end5
  %status8 = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %mad_send_wr, i32 0, i32 14
  %9 = ptrtoint ptr %status8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp9.not = icmp eq i32 %10, 0
  br i1 %cmp9.not, label %if.end12, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false
  %timeout = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %mad_send_wr, i32 0, i32 9
  %11 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool13.not = icmp eq i32 %12, 0
  br i1 %tobool13.not, label %if.end12.cleanup_crit_edge, label %if.end15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  %last_ack = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %mad_send_wr, i32 0, i32 18
  %13 = ptrtoint ptr %last_ack to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %last_ack, align 8
  %seg_count = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %mad_send_wr, i32 0, i32 3, i32 7
  %15 = ptrtoint ptr %seg_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %seg_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp17 = icmp eq i32 %14, %16
  br i1 %cmp17, label %if.else.i, label %if.end23

if.else.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %timeout_ms = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %mad_send_wr, i32 0, i32 3, i32 10
  %17 = ptrtoint ptr %timeout_ms to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %timeout_ms, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %18) #7
  %19 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call2.i, ptr %timeout, align 8
  br label %cleanup

if.end23:                                         ; preds = %if.end15
  %seg_num = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %mad_send_wr, i32 0, i32 19
  %20 = ptrtoint ptr %seg_num to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %seg_num, align 4
  %newwin = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %mad_send_wr, i32 0, i32 20
  %22 = ptrtoint ptr %newwin to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %newwin, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp24 = icmp eq i32 %21, %23
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %16)
  %cmp30 = icmp eq i32 %21, %16
  %or.cond = select i1 %cmp24, i1 true, i1 %cmp30
  br i1 %or.cond, label %if.end23.cleanup_crit_edge, label %if.end33

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end33:                                         ; preds = %if.end23
  %call34 = tail call fastcc i32 @send_next_seg(ptr noundef %mad_send_wr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end33.cleanup_crit_edge, label %if.then36

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 21, ptr %status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %if.end33.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.else.i, %if.end12.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else.i ], [ 0, %if.then36 ], [ 3, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ], [ 1, %if.end33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_retry_rmpp(ptr noundef %mad_send_wr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mad = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %mad_send_wr, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %mad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mad, align 4
  %rmpp_rtime_flags.i = getelementptr inbounds %struct.ib_rmpp_mad, ptr %1, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %rmpp_rtime_flags.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rmpp_rtime_flags.i, align 2
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %last_ack = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %mad_send_wr, i32 0, i32 18
  %5 = ptrtoint ptr %last_ack to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %last_ack, align 8
  %seg_count = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %mad_send_wr, i32 0, i32 3, i32 7
  %7 = ptrtoint ptr %seg_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %seg_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp = icmp eq i32 %6, %8
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %seg_num = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %mad_send_wr, i32 0, i32 19
  %9 = ptrtoint ptr %seg_num to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %seg_num, align 4
  %last_ack_seg = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %mad_send_wr, i32 0, i32 16
  %10 = ptrtoint ptr %last_ack_seg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %last_ack_seg, align 8
  %cur_seg = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %mad_send_wr, i32 0, i32 17
  %12 = ptrtoint ptr %cur_seg to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %cur_seg, align 4
  %13 = ptrtoint ptr %rmpp_rtime_flags.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %rmpp_rtime_flags.i, align 2
  %15 = and i8 %14, -8
  %16 = or i8 %15, 1
  store i8 %16, ptr %rmpp_rtime_flags.i, align 2
  %17 = load i32, ptr %seg_num, align 4
  %inc.i = add i32 %17, 1
  store i32 %inc.i, ptr %seg_num, align 4
  %seg_num2.i = getelementptr inbounds %struct.ib_rmpp_mad, ptr %1, i32 0, i32 1, i32 4
  %18 = ptrtoint ptr %seg_num2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %inc.i, ptr %seg_num2.i, align 4
  %19 = load i32, ptr %seg_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp.i = icmp eq i32 %19, 1
  br i1 %cmp.i, label %if.then.i, label %if.end4.if.end.i_crit_edge

if.end4.if.end.i_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %rmpp_rtime_flags.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %rmpp_rtime_flags.i, align 2
  %22 = or i8 %21, 2
  store i8 %22, ptr %rmpp_rtime_flags.i, align 2
  %23 = ptrtoint ptr %seg_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %seg_count, align 4
  %seg_rmpp_size.i = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %mad_send_wr, i32 0, i32 3, i32 9
  %25 = ptrtoint ptr %seg_rmpp_size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %seg_rmpp_size.i, align 4
  %mul.i = mul i32 %26, %24
  %pad.i = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %mad_send_wr, i32 0, i32 21
  %27 = ptrtoint ptr %pad.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pad.i, align 4
  %sub.i = sub i32 %mul.i, %28
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end4.if.end.i_crit_edge
  %paylen.0.i = phi i32 [ %sub.i, %if.then.i ], [ 0, %if.end4.if.end.i_crit_edge ]
  %29 = ptrtoint ptr %seg_num to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %seg_num, align 4
  %31 = ptrtoint ptr %seg_count to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %seg_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp11.i = icmp eq i32 %30, %32
  br i1 %cmp11.i, label %if.then13.i, label %if.end.i.if.end23.i_crit_edge

if.end.i.if.end23.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %rmpp_rtime_flags.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %rmpp_rtime_flags.i, align 2
  %35 = or i8 %34, 4
  store i8 %35, ptr %rmpp_rtime_flags.i, align 2
  %seg_rmpp_size20.i = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %mad_send_wr, i32 0, i32 3, i32 9
  %36 = ptrtoint ptr %seg_rmpp_size20.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %seg_rmpp_size20.i, align 4
  %pad21.i = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %mad_send_wr, i32 0, i32 21
  %38 = ptrtoint ptr %pad21.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pad21.i, align 4
  %sub22.i = sub i32 %37, %39
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then13.i, %if.end.i.if.end23.i_crit_edge
  %paylen.1.i = phi i32 [ %sub22.i, %if.then13.i ], [ %paylen.0.i, %if.end.i.if.end23.i_crit_edge ]
  %paylen_newwin.i = getelementptr inbounds %struct.ib_rmpp_mad, ptr %1, i32 0, i32 1, i32 5
  %40 = ptrtoint ptr %paylen_newwin.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %paylen.1.i, ptr %paylen_newwin.i, align 8
  %timeout_ms.i = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %mad_send_wr, i32 0, i32 3, i32 10
  %41 = ptrtoint ptr %timeout_ms.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %timeout_ms.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i = icmp eq i32 %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %42)
  %cmp26.i = icmp sgt i32 %42, 2000
  %or.cond.i = or i1 %tobool.not.i, %cmp26.i
  br i1 %or.cond.i, label %if.then28.i, label %if.end23.i.send_next_seg.exit_crit_edge

if.end23.i.send_next_seg.exit_crit_edge:          ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %send_next_seg.exit

if.then28.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  %timeout29.i = getelementptr inbounds %struct.ib_mad_send_wr_private, ptr %mad_send_wr, i32 0, i32 9
  %43 = ptrtoint ptr %timeout29.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 200, ptr %timeout29.i, align 8
  br label %send_next_seg.exit

send_next_seg.exit:                               ; preds = %if.then28.i, %if.end23.i.send_next_seg.exit_crit_edge
  %call31.i = tail call i32 @ib_send_mad(ptr noundef %mad_send_wr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool7.not = icmp eq i32 %call31.i, 0
  %. = zext i1 %tobool7.not to i32
  br label %cleanup

cleanup:                                          ; preds = %send_next_seg.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %., %send_next_seg.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_destroy_ah_user(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_find_send_mad(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_mark_mad_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_mad_complete_send_wr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @alloc_response_msg(ptr noundef %agent, ptr nocapture noundef readonly %recv_wc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %qp = getelementptr inbounds %struct.ib_mad_agent, ptr %agent, i32 0, i32 1
  %0 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qp, align 4
  %pd = getelementptr inbounds %struct.ib_qp, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pd, align 4
  %4 = ptrtoint ptr %recv_wc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %recv_wc, align 4
  %grh = getelementptr inbounds %struct.ib_mad_recv_wc, ptr %recv_wc, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %grh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %grh, align 4
  %port_num = getelementptr inbounds %struct.ib_mad_agent, ptr %agent, i32 0, i32 9
  %8 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %port_num, align 4
  %conv = zext i8 %9 to i32
  %call = tail call ptr @ib_create_ah_from_wc(ptr noundef %3, ptr noundef %5, ptr noundef %7, i32 noundef %conv) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = getelementptr inbounds %struct.ib_mad_recv_wc, ptr %recv_wc, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %mgmt_class = getelementptr inbounds %struct.ib_mad_hdr, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %mgmt_class to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mgmt_class, align 1
  %call3 = tail call i32 @ib_get_mad_data_offset(i8 noundef zeroext %14) #7
  %15 = ptrtoint ptr %recv_wc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %recv_wc, align 4
  %src_qp = getelementptr inbounds %struct.ib_wc, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %src_qp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %src_qp, align 8
  %pkey_index = getelementptr inbounds %struct.ib_wc, ptr %16, i32 0, i32 10
  %19 = ptrtoint ptr %pkey_index to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %pkey_index, align 4
  %call6 = tail call ptr @ib_create_send_mad(ptr noundef %agent, i32 noundef %18, i16 noundef zeroext %20, i32 noundef 1, i32 noundef %call3, i32 noundef 0, i32 noundef 3264, i8 noundef zeroext 1) #7
  %cmp.i26 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i26, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  %call.i = tail call i32 @rdma_destroy_ah_user(ptr noundef %call, i32 noundef 1, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then8.cleanup_crit_edge, label %land.rhs.i

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.rhs.i:                                       ; preds = %if.then8
  %.b1.i = load i1, ptr @rdma_destroy_ah.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.cleanup_crit_edge, label %if.then.i, !prof !31

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rdma_destroy_ah.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3630, i32 noundef 9, ptr noundef nonnull @.str.1) #7
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %ah9 = getelementptr inbounds %struct.ib_mad_send_buf, ptr %call6, i32 0, i32 3
  %21 = ptrtoint ptr %ah9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call, ptr %ah9, align 4
  %context = getelementptr inbounds %struct.ib_mad_send_buf, ptr %call6, i32 0, i32 4
  %22 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call, ptr %context, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then.i, %land.rhs.i.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %entry.cleanup_crit_edge ], [ %call6, %if.else ], [ %call6, %if.then8.cleanup_crit_edge ], [ %call6, %land.rhs.i.cleanup_crit_edge ], [ %call6, %if.then.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_post_send_mad(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_create_ah_from_wc(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_get_mad_data_offset(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_create_send_mad(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @continue_rmpp(ptr noundef %agent, ptr noundef %mad_recv_wc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr inbounds %struct.ib_mad_agent_private, ptr %agent, i32 0, i32 3
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %rmpp_list.i.i = getelementptr inbounds %struct.ib_mad_agent_private, ptr %agent, i32 0, i32 11
  %0 = ptrtoint ptr %rmpp_list.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn50.i.i = load ptr, ptr %rmpp_list.i.i, align 4
  %cmp.not51.i.i = icmp eq ptr %.pn50.i.i, %rmpp_list.i.i
  br i1 %cmp.not51.i.i, label %entry.acquire_rmpp_recv.exit.thread_crit_edge, label %for.body.lr.ph.i.i

entry.acquire_rmpp_recv.exit.thread_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %acquire_rmpp_recv.exit.thread

for.body.lr.ph.i.i:                               ; preds = %entry
  %1 = getelementptr inbounds %struct.ib_mad_recv_wc, ptr %mad_recv_wc, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tid3.i.i = getelementptr inbounds %struct.ib_mad_hdr, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %tid3.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %tid3.i.i, align 8
  %mgmt_class12.i.i = getelementptr inbounds %struct.ib_mad_hdr, ptr %3, i32 0, i32 1
  %class_version18.i.i = getelementptr inbounds %struct.ib_mad_hdr, ptr %3, i32 0, i32 2
  %method24.i.i = getelementptr inbounds %struct.ib_mad_hdr, ptr %3, i32 0, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %.pn52.i.i = phi ptr [ %.pn50.i.i, %for.body.lr.ph.i.i ], [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %tid.i.i = getelementptr i8, ptr %.pn52.i.i, i32 348
  %6 = ptrtoint ptr %tid.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %tid.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %5)
  %cmp4.i.i = icmp eq i64 %7, %5
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %src_qp.i.i = getelementptr i8, ptr %.pn52.i.i, i32 356
  %8 = ptrtoint ptr %src_qp.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %src_qp.i.i, align 8
  %10 = ptrtoint ptr %mad_recv_wc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mad_recv_wc, align 4
  %src_qp5.i.i = getelementptr inbounds %struct.ib_wc, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %src_qp5.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %src_qp5.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %13)
  %cmp6.i.i = icmp eq i32 %9, %13
  br i1 %cmp6.i.i, label %land.lhs.true7.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

land.lhs.true7.i.i:                               ; preds = %land.lhs.true.i.i
  %slid.i.i = getelementptr i8, ptr %.pn52.i.i, i32 360
  %14 = ptrtoint ptr %slid.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %slid.i.i, align 4
  %slid9.i.i = getelementptr inbounds %struct.ib_wc, ptr %11, i32 0, i32 8
  %16 = ptrtoint ptr %slid9.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %slid9.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp10.i.i = icmp eq i32 %15, %17
  br i1 %cmp10.i.i, label %land.lhs.true11.i.i, label %land.lhs.true7.i.i.for.inc.i.i_crit_edge

land.lhs.true7.i.i.for.inc.i.i_crit_edge:         ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

land.lhs.true11.i.i:                              ; preds = %land.lhs.true7.i.i
  %mgmt_class.i.i = getelementptr i8, ptr %.pn52.i.i, i32 364
  %18 = ptrtoint ptr %mgmt_class.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %mgmt_class.i.i, align 8
  %20 = ptrtoint ptr %mgmt_class12.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %mgmt_class12.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %21)
  %cmp14.i.i = icmp eq i8 %19, %21
  br i1 %cmp14.i.i, label %land.lhs.true16.i.i, label %land.lhs.true11.i.i.for.inc.i.i_crit_edge

land.lhs.true11.i.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

land.lhs.true16.i.i:                              ; preds = %land.lhs.true11.i.i
  %class_version.i.i = getelementptr i8, ptr %.pn52.i.i, i32 365
  %22 = ptrtoint ptr %class_version.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %class_version.i.i, align 1
  %24 = ptrtoint ptr %class_version18.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %class_version18.i.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %25)
  %cmp20.i.i = icmp eq i8 %23, %25
  br i1 %cmp20.i.i, label %land.lhs.true22.i.i, label %land.lhs.true16.i.i.for.inc.i.i_crit_edge

land.lhs.true16.i.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

land.lhs.true22.i.i:                              ; preds = %land.lhs.true16.i.i
  %method.i.i = getelementptr i8, ptr %.pn52.i.i, i32 366
  %26 = ptrtoint ptr %method.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %method.i.i, align 2
  %28 = ptrtoint ptr %method24.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %method24.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %29)
  %cmp26.i.i = icmp eq i8 %27, %29
  br i1 %cmp26.i.i, label %find_rmpp_recv.exit.i, label %land.lhs.true22.i.i.for.inc.i.i_crit_edge

land.lhs.true22.i.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true22.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true22.i.i.for.inc.i.i_crit_edge, %land.lhs.true16.i.i.for.inc.i.i_crit_edge, %land.lhs.true11.i.i.for.inc.i.i_crit_edge, %land.lhs.true7.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %30 = ptrtoint ptr %.pn52.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn.i.i = load ptr, ptr %.pn52.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %rmpp_list.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.acquire_rmpp_recv.exit.thread_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.acquire_rmpp_recv.exit.thread_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %acquire_rmpp_recv.exit.thread

find_rmpp_recv.exit.i:                            ; preds = %land.lhs.true22.i.i
  %rmpp_recv.0.le.i.i = getelementptr i8, ptr %.pn52.i.i, i32 -4
  %tobool.not.i = icmp eq ptr %rmpp_recv.0.le.i.i, null
  br i1 %tobool.not.i, label %find_rmpp_recv.exit.i.acquire_rmpp_recv.exit.thread_crit_edge, label %if.then.i

find_rmpp_recv.exit.i.acquire_rmpp_recv.exit.thread_crit_edge: ; preds = %find_rmpp_recv.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %acquire_rmpp_recv.exit.thread

if.then.i:                                        ; preds = %find_rmpp_recv.exit.i
  %refcount.i = getelementptr i8, ptr %.pn52.i.i, i32 312
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #7
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #7, !srcloc !33
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !34

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %32 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %.not.i.i.i.i = icmp sgt i32 %32, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !31

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end_crit_edge:                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i) #7
  br label %if.end

acquire_rmpp_recv.exit.thread:                    ; preds = %find_rmpp_recv.exit.i.acquire_rmpp_recv.exit.thread_crit_edge, %for.inc.i.i.acquire_rmpp_recv.exit.thread_crit_edge, %entry.acquire_rmpp_recv.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #7
  br label %drop1

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #7
  %recv_buf = getelementptr inbounds %struct.ib_mad_recv_wc, ptr %mad_recv_wc, i32 0, i32 1
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %seg_num.i = getelementptr inbounds %struct.ib_rmpp_mad, ptr %34, i32 0, i32 1, i32 4
  %35 = ptrtoint ptr %seg_num.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %seg_num.i, align 4
  %lock = getelementptr i8, ptr %.pn52.i.i, i32 268
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %state = getelementptr i8, ptr %.pn52.i.i, i32 264
  %37 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp7 = icmp eq i32 %38, 1
  br i1 %cmp7, label %if.end.drop3_crit_edge, label %lor.lhs.false

if.end.drop3_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %drop3

lor.lhs.false:                                    ; preds = %if.end
  %newwin = getelementptr i8, ptr %.pn52.i.i, i32 336
  %39 = ptrtoint ptr %newwin to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %newwin, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %40)
  %cmp9 = icmp sgt i32 %36, %40
  br i1 %cmp9, label %lor.lhs.false.drop3_crit_edge, label %if.end12

lor.lhs.false.drop3_crit_edge:                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %drop3

if.end12:                                         ; preds = %lor.lhs.false
  %last_ack = getelementptr i8, ptr %.pn52.i.i, i32 328
  %41 = ptrtoint ptr %last_ack to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %last_ack, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %42)
  %cmp13.not = icmp sle i32 %36, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %38)
  %cmp17 = icmp eq i32 %38, 2
  %or.cond = select i1 %cmp13.not, i1 true, i1 %cmp17
  br i1 %or.cond, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  tail call fastcc void @ack_recv(ptr noundef nonnull %rmpp_recv.0.le.i.i, ptr noundef %mad_recv_wc)
  br label %drop2

if.end21:                                         ; preds = %if.end12
  %rmpp_wc = getelementptr i8, ptr %.pn52.i.i, i32 320
  %43 = ptrtoint ptr %rmpp_wc to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rmpp_wc, align 4
  %rmpp_list = getelementptr inbounds %struct.ib_mad_recv_wc, ptr %44, i32 0, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end.i.for.cond.i_crit_edge, %if.end21
  %rmpp_list.pn.i = phi ptr [ %rmpp_list, %if.end21 ], [ %seg_buf.0.i, %if.end.i.for.cond.i_crit_edge ]
  %seg_buf.0.in.i = getelementptr inbounds %struct.list_head, ptr %rmpp_list.pn.i, i32 0, i32 1
  %45 = ptrtoint ptr %seg_buf.0.in.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %seg_buf.0.i = load ptr, ptr %seg_buf.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %seg_buf.0.i, %rmpp_list
  br i1 %cmp.not.i, label %for.cond.i.drop3_crit_edge, label %for.body.i

for.cond.i.drop3_crit_edge:                       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drop3

for.body.i:                                       ; preds = %for.cond.i
  %46 = getelementptr inbounds %struct.ib_mad_recv_buf, ptr %seg_buf.0.i, i32 0, i32 2
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %seg_num.i.i = getelementptr inbounds %struct.ib_rmpp_mad, ptr %48, i32 0, i32 1, i32 4
  %49 = ptrtoint ptr %seg_num.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %seg_num.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %36)
  %cmp1.i = icmp slt i32 %50, %36
  br i1 %cmp1.i, label %find_seg_location.exit, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  %cmp2.i = icmp eq i32 %50, %36
  br i1 %cmp2.i, label %if.end.i.drop3_crit_edge, label %if.end.i.for.cond.i_crit_edge

if.end.i.for.cond.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

if.end.i.drop3_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drop3

find_seg_location.exit:                           ; preds = %for.body.i
  %tobool23.not = icmp eq ptr %seg_buf.0.i, null
  br i1 %tobool23.not, label %find_seg_location.exit.drop3_crit_edge, label %if.end25

find_seg_location.exit.drop3_crit_edge:           ; preds = %find_seg_location.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %drop3

if.end25:                                         ; preds = %find_seg_location.exit
  %51 = ptrtoint ptr %seg_buf.0.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %seg_buf.0.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %recv_buf, ptr noundef nonnull %seg_buf.0.i, ptr noundef %52) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end25.list_add.exit_crit_edge

if.end25.list_add.exit_crit_edge:                 ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %recv_buf, ptr %prev1.i.i, align 4
  %54 = ptrtoint ptr %recv_buf to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %52, ptr %recv_buf, align 4
  %prev3.i.i = getelementptr inbounds %struct.ib_mad_recv_wc, ptr %mad_recv_wc, i32 0, i32 1, i32 0, i32 1
  %55 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %seg_buf.0.i, ptr %prev3.i.i, align 4
  %56 = ptrtoint ptr %seg_buf.0.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %recv_buf, ptr %seg_buf.0.i, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end25.list_add.exit_crit_edge
  %cur_seg_buf = getelementptr i8, ptr %.pn52.i.i, i32 324
  %57 = ptrtoint ptr %cur_seg_buf to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cur_seg_buf, align 8
  %cmp28 = icmp eq ptr %58, %seg_buf.0.i
  br i1 %cmp28, label %if.then30, label %list_add.exit.if.end49_crit_edge

list_add.exit.if.end49_crit_edge:                 ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then30:                                        ; preds = %list_add.exit
  %59 = ptrtoint ptr %rmpp_wc to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rmpp_wc, align 4
  %rmpp_list1.i = getelementptr inbounds %struct.ib_mad_recv_wc, ptr %60, i32 0, i32 2
  %tobool.not10.i = icmp eq ptr %recv_buf, null
  br i1 %tobool.not10.i, label %if.then30.update_seg_num.exit_crit_edge, label %land.rhs.lr.ph.i

if.then30.update_seg_num.exit_crit_edge:          ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %update_seg_num.exit

land.rhs.lr.ph.i:                                 ; preds = %if.then30
  %seg_num.i94 = getelementptr i8, ptr %.pn52.i.i, i32 332
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %new_buf.addr.011.i = phi ptr [ %recv_buf, %land.rhs.lr.ph.i ], [ %71, %while.body.i.land.rhs.i_crit_edge ]
  %61 = getelementptr inbounds %struct.ib_mad_recv_buf, ptr %new_buf.addr.011.i, i32 0, i32 2
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %seg_num.i.i95 = getelementptr inbounds %struct.ib_rmpp_mad, ptr %63, i32 0, i32 1, i32 4
  %64 = ptrtoint ptr %seg_num.i.i95 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %seg_num.i.i95, align 4
  %66 = ptrtoint ptr %seg_num.i94 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %seg_num.i94, align 8
  %add.i = add i32 %67, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %add.i)
  %cmp.i = icmp eq i32 %65, %add.i
  br i1 %cmp.i, label %while.body.i, label %land.rhs.i.update_seg_num.exit_crit_edge

land.rhs.i.update_seg_num.exit_crit_edge:         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %update_seg_num.exit

while.body.i:                                     ; preds = %land.rhs.i
  %68 = ptrtoint ptr %cur_seg_buf to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %new_buf.addr.011.i, ptr %cur_seg_buf, align 8
  %69 = ptrtoint ptr %seg_num.i94 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %65, ptr %seg_num.i94, align 8
  %70 = ptrtoint ptr %new_buf.addr.011.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %new_buf.addr.011.i, align 4
  %cmp.i.i = icmp eq ptr %71, %rmpp_list1.i
  %tobool.not12.i = icmp eq ptr %71, null
  %tobool.not.i96 = or i1 %cmp.i.i, %tobool.not12.i
  br i1 %tobool.not.i96, label %while.body.i.update_seg_num.exit_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

while.body.i.update_seg_num.exit_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %update_seg_num.exit

update_seg_num.exit:                              ; preds = %while.body.i.update_seg_num.exit_crit_edge, %land.rhs.i.update_seg_num.exit_crit_edge, %if.then30.update_seg_num.exit_crit_edge
  %72 = ptrtoint ptr %cur_seg_buf to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cur_seg_buf, align 8
  %74 = getelementptr inbounds %struct.ib_mad_recv_buf, ptr %73, i32 0, i32 2
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %rmpp_rtime_flags.i.i = getelementptr inbounds %struct.ib_rmpp_mad, ptr %76, i32 0, i32 1, i32 2
  %77 = ptrtoint ptr %rmpp_rtime_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %rmpp_rtime_flags.i.i, align 2
  %79 = and i8 %78, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool34.not = icmp eq i8 %79, 0
  br i1 %tobool34.not, label %if.else, label %if.then35

if.then35:                                        ; preds = %update_seg_num.exit
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 2, ptr %state, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  %call38 = tail call fastcc ptr @complete_rmpp(ptr noundef nonnull %rmpp_recv.0.le.i.i)
  br label %out

if.else:                                          ; preds = %update_seg_num.exit
  %seg_num39 = getelementptr i8, ptr %.pn52.i.i, i32 332
  %81 = ptrtoint ptr %seg_num39 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %seg_num39, align 8
  %83 = ptrtoint ptr %newwin to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %newwin, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %84)
  %cmp41 = icmp eq i32 %82, %84
  br i1 %cmp41, label %if.then43, label %if.else.if.end49_crit_edge

if.else.if.end49_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then43:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %qp_info.i = getelementptr inbounds %struct.ib_mad_agent_private, ptr %agent, i32 0, i32 2
  %85 = ptrtoint ptr %qp_info.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %qp_info.i, align 4
  %max_active.i = getelementptr inbounds %struct.ib_mad_qp_info, ptr %86, i32 0, i32 3, i32 3
  %87 = ptrtoint ptr %max_active.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %max_active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %88)
  %cmp.i97 = icmp sgt i32 %88, 15
  %shr.i = ashr i32 %88, 3
  %cond.i = select i1 %cmp.i97, i32 %shr.i, i32 1
  %add = add i32 %cond.i, %82
  %89 = ptrtoint ptr %newwin to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %add, ptr %newwin, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  tail call fastcc void @ack_recv(ptr noundef nonnull %rmpp_recv.0.le.i.i, ptr noundef %mad_recv_wc)
  br label %out

if.end49:                                         ; preds = %if.else.if.end49_crit_edge, %list_add.exit.if.end49_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  br label %out

out:                                              ; preds = %if.end49, %if.then43, %if.then35
  %done_wc.0 = phi ptr [ %call38, %if.then35 ], [ null, %if.then43 ], [ null, %if.end49 ]
  %call.i.i.i.i.i.i99 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !29
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #7
  %90 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #7, !srcloc !30
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %90, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i101, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i100 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i100, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !31

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #7
  br label %cleanup

if.then.i101:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !32
  %comp.i = getelementptr i8, ptr %.pn52.i.i, i32 208
  tail call void @complete(ptr noundef %comp.i) #7
  br label %cleanup

drop3:                                            ; preds = %find_seg_location.exit.drop3_crit_edge, %if.end.i.drop3_crit_edge, %for.cond.i.drop3_crit_edge, %lor.lhs.false.drop3_crit_edge, %if.end.drop3_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  br label %drop2

drop2:                                            ; preds = %drop3, %if.then19
  %call.i.i.i.i.i.i104 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !29
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #7
  %91 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #7, !srcloc !30
  %asmresult.i.i.i.i.i.i.i105 = extractvalue { i32, i32, i32 } %91, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i105)
  %cmp.i.i.i.i106 = icmp eq i32 %asmresult.i.i.i.i.i.i.i105, 1
  br i1 %cmp.i.i.i.i106, label %if.then.i111, label %if.end5.i.i.i.i108

if.end5.i.i.i.i108:                               ; preds = %drop2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i105)
  %.not.i.i.i.i107 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i105, 0
  br i1 %.not.i.i.i.i107, label %if.end5.i.i.i.i108.drop1_crit_edge, label %if.then10.i.i.i.i109, !prof !31

if.end5.i.i.i.i108.drop1_crit_edge:               ; preds = %if.end5.i.i.i.i108
  call void @__sanitizer_cov_trace_pc() #9
  br label %drop1

if.then10.i.i.i.i109:                             ; preds = %if.end5.i.i.i.i108
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #7
  br label %drop1

if.then.i111:                                     ; preds = %drop2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !32
  %comp.i110 = getelementptr i8, ptr %.pn52.i.i, i32 208
  tail call void @complete(ptr noundef %comp.i110) #7
  br label %drop1

drop1:                                            ; preds = %if.then.i111, %if.then10.i.i.i.i109, %if.end5.i.i.i.i108.drop1_crit_edge, %acquire_rmpp_recv.exit.thread
  tail call void @ib_free_recv_mad(ptr noundef %mad_recv_wc) #7
  br label %cleanup

cleanup:                                          ; preds = %drop1, %if.then.i101, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %drop1 ], [ %done_wc.0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %done_wc.0, %if.then10.i.i.i.i ], [ %done_wc.0, %if.then.i101 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @complete_rmpp(ptr noundef %rmpp_recv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rmpp_wc1 = getelementptr inbounds %struct.mad_rmpp_recv, ptr %rmpp_recv, i32 0, i32 9
  %0 = ptrtoint ptr %rmpp_wc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmpp_wc1, align 4
  tail call fastcc void @ack_recv(ptr noundef %rmpp_recv, ptr noundef %1)
  %seg_num = getelementptr inbounds %struct.mad_rmpp_recv, ptr %rmpp_recv, i32 0, i32 12
  %2 = ptrtoint ptr %seg_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %seg_num, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp sgt i32 %3, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %timeout_work = getelementptr inbounds %struct.mad_rmpp_recv, ptr %rmpp_recv, i32 0, i32 2
  %call = tail call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %rmpp_wc1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmpp_wc1, align 4
  %6 = ptrtoint ptr %rmpp_recv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmpp_recv, align 8
  %qp_info.i = getelementptr inbounds %struct.ib_mad_agent_private, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %qp_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %qp_info.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %device.i = getelementptr inbounds %struct.ib_mad_port_private, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device.i, align 4
  %port_num.i = getelementptr inbounds %struct.ib_mad_port_private, ptr %11, i32 0, i32 2
  %14 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port_num.i, align 4
  %port_data.i.i = getelementptr inbounds %struct.ib_device, ptr %13, i32 0, i32 11
  %16 = ptrtoint ptr %port_data.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %port_data.i.i, align 8
  %core_cap_flags.i.i = getelementptr %struct.ib_port_data, ptr %17, i32 %15, i32 1, i32 2
  %18 = ptrtoint ptr %core_cap_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %core_cap_flags.i.i, align 4
  %and.i.i = and i32 %19, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  %cur_seg_buf.i = getelementptr inbounds %struct.mad_rmpp_recv, ptr %rmpp_recv, i32 0, i32 10
  %20 = ptrtoint ptr %cur_seg_buf.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cur_seg_buf.i, align 8
  %22 = getelementptr inbounds %struct.ib_mad_recv_buf, ptr %21, i32 0, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %mgmt_class.i = getelementptr inbounds %struct.ib_mad_hdr, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %mgmt_class.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %mgmt_class.i, align 1
  %call4.i = tail call i32 @ib_get_mad_data_offset(i8 noundef zeroext %26) #7
  br i1 %tobool.i.not.i, label %if.end.if.else.i_crit_edge, label %land.lhs.true.i

if.end.if.else.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end
  %base_version.i = getelementptr inbounds %struct.mad_rmpp_recv, ptr %rmpp_recv, i32 0, i32 21
  %27 = ptrtoint ptr %base_version.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %base_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %28)
  %cmp.i = icmp eq i8 %28, -128
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %paylen_newwin.i = getelementptr inbounds %struct.ib_rmpp_mad, ptr %24, i32 0, i32 1, i32 5
  %29 = ptrtoint ptr %paylen_newwin.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %paylen_newwin.i, align 8
  %31 = tail call i32 @llvm.usub.sat.i32(i32 2012, i32 %30) #7
  br label %get_mad_len.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.if.else.i_crit_edge
  %paylen_newwin14.i = getelementptr inbounds %struct.ib_rmpp_mad, ptr %24, i32 0, i32 1, i32 5
  %32 = ptrtoint ptr %paylen_newwin14.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %paylen_newwin14.i, align 8
  %34 = tail call i32 @llvm.usub.sat.i32(i32 220, i32 %33) #7
  br label %get_mad_len.exit

get_mad_len.exit:                                 ; preds = %if.else.i, %if.then.i
  %.pn.i = phi i32 [ 2048, %if.then.i ], [ 256, %if.else.i ]
  %pad.0.i = phi i32 [ %31, %if.then.i ], [ %34, %if.else.i ]
  %data_size.0.i = sub i32 %.pn.i, %call4.i
  %35 = ptrtoint ptr %seg_num to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %seg_num, align 8
  %mul.i = mul i32 %36, %data_size.0.i
  %add.i = sub i32 %call4.i, %pad.0.i
  %sub24.i = add i32 %add.i, %mul.i
  %mad_len = getelementptr inbounds %struct.ib_mad_recv_wc, ptr %5, i32 0, i32 3
  %37 = ptrtoint ptr %mad_len to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %sub24.i, ptr %mad_len, align 4
  %38 = ptrtoint ptr %rmpp_recv to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rmpp_recv, align 8
  %qp_info = getelementptr inbounds %struct.ib_mad_agent_private, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %qp_info to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %qp_info, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %wq = getelementptr inbounds %struct.ib_mad_port_private, ptr %43, i32 0, i32 7
  %44 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %wq, align 4
  %cleanup_work = getelementptr inbounds %struct.mad_rmpp_recv, ptr %rmpp_recv, i32 0, i32 3
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %45, ptr noundef %cleanup_work, i32 noundef 1000) #7
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ack_recv(ptr noundef %rmpp_recv, ptr nocapture noundef readonly %recv_wc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ib_mad_recv_wc, ptr %recv_wc, i32 0, i32 1, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %mgmt_class = getelementptr inbounds %struct.ib_mad_hdr, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %mgmt_class to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %mgmt_class, align 1
  %call = tail call i32 @ib_get_mad_data_offset(i8 noundef zeroext %4) #7
  %5 = ptrtoint ptr %rmpp_recv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rmpp_recv, align 8
  %7 = ptrtoint ptr %recv_wc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %recv_wc, align 4
  %src_qp = getelementptr inbounds %struct.ib_wc, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %src_qp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %src_qp, align 8
  %pkey_index = getelementptr inbounds %struct.ib_wc, ptr %8, i32 0, i32 10
  %11 = ptrtoint ptr %pkey_index to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %pkey_index, align 4
  %call3 = tail call ptr @ib_create_send_mad(ptr noundef %6, i32 noundef %10, i16 noundef zeroext %12, i32 noundef 1, i32 noundef %call, i32 noundef 0, i32 noundef 3264, i8 noundef zeroext 1) #7
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %0, align 4
  %mad.i = getelementptr inbounds %struct.ib_mad_send_buf, ptr %call3, i32 0, i32 1
  %15 = ptrtoint ptr %mad.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mad.i, align 4
  %hdr_len.i = getelementptr inbounds %struct.ib_mad_send_buf, ptr %call3, i32 0, i32 5
  %17 = ptrtoint ptr %hdr_len.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hdr_len.i, align 4
  %19 = call ptr @memcpy(ptr %16, ptr %14, i32 %18)
  %method.i = getelementptr inbounds %struct.ib_mad_hdr, ptr %16, i32 0, i32 3
  %20 = ptrtoint ptr %method.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %method.i, align 1
  %22 = xor i8 %21, -128
  store i8 %22, ptr %method.i, align 1
  %rmpp_type.i = getelementptr inbounds %struct.ib_rmpp_mad, ptr %16, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %rmpp_type.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 2, ptr %rmpp_type.i, align 1
  %rmpp_rtime_flags.i.i = getelementptr inbounds %struct.ib_rmpp_mad, ptr %16, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %rmpp_rtime_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %rmpp_rtime_flags.i.i, align 2
  %26 = and i8 %25, -8
  %27 = or i8 %26, 1
  store i8 %27, ptr %rmpp_rtime_flags.i.i, align 2
  %lock.i = getelementptr inbounds %struct.mad_rmpp_recv, ptr %rmpp_recv, i32 0, i32 6
  %call6.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %seg_num.i = getelementptr inbounds %struct.mad_rmpp_recv, ptr %rmpp_recv, i32 0, i32 12
  %28 = ptrtoint ptr %seg_num.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %seg_num.i, align 8
  %last_ack.i = getelementptr inbounds %struct.mad_rmpp_recv, ptr %rmpp_recv, i32 0, i32 11
  %30 = ptrtoint ptr %last_ack.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %last_ack.i, align 4
  %seg_num11.i = getelementptr inbounds %struct.ib_rmpp_mad, ptr %16, i32 0, i32 1, i32 4
  %31 = ptrtoint ptr %seg_num11.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %29, ptr %seg_num11.i, align 4
  %newwin.i = getelementptr inbounds %struct.mad_rmpp_recv, ptr %rmpp_recv, i32 0, i32 13
  %32 = ptrtoint ptr %newwin.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %newwin.i, align 4
  %paylen_newwin.i = getelementptr inbounds %struct.ib_rmpp_mad, ptr %16, i32 0, i32 1, i32 5
  %34 = ptrtoint ptr %paylen_newwin.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %paylen_newwin.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call6.i) #7
  %ah = getelementptr inbounds %struct.mad_rmpp_recv, ptr %rmpp_recv, i32 0, i32 8
  %35 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ah, align 8
  %ah6 = getelementptr inbounds %struct.ib_mad_send_buf, ptr %call3, i32 0, i32 3
  %37 = ptrtoint ptr %ah6 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %ah6, align 4
  %call7 = tail call i32 @ib_post_send_mad(ptr noundef %call3, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ib_free_send_mad(ptr noundef %call3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @recv_timeout_handler(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -12
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %lock = getelementptr inbounds %struct.ib_mad_agent_private, ptr %1, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %state = getelementptr i8, ptr %work, i32 256
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6.not = icmp eq i32 %3, 0
  br i1 %cmp6.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %lock9 = getelementptr inbounds %struct.ib_mad_agent_private, ptr %5, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock9, i32 noundef %call3) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %state, align 4
  %list = getelementptr i8, ptr %work, i32 -8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr i8, ptr %work, i32 -4
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %13 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr i8, ptr %work, i32 -4
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr, align 8
  %lock12 = getelementptr inbounds %struct.ib_mad_agent_private, ptr %16, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock12, i32 noundef %call3) #7
  %rmpp_wc13 = getelementptr i8, ptr %work, i32 312
  %17 = ptrtoint ptr %rmpp_wc13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmpp_wc13, align 4
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr, align 8
  tail call fastcc void @nack_recv(ptr noundef %20, ptr noundef %18, i8 noundef zeroext 118)
  tail call fastcc void @destroy_rmpp_recv(ptr noundef %add.ptr)
  tail call void @ib_free_recv_mad(ptr noundef %18) #7
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @recv_cleanup_handler(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -112
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %lock = getelementptr inbounds %struct.ib_mad_agent_private, ptr %1, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %list = getelementptr i8, ptr %work, i32 -108
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #7
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr i8, ptr %work, i32 -104
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr i8, ptr %work, i32 -104
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 8
  %lock7 = getelementptr inbounds %struct.ib_mad_agent_private, ptr %11, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock7, i32 noundef %call3) #7
  tail call fastcc void @destroy_rmpp_recv(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ack_ds_ack(ptr noundef %agent, ptr nocapture noundef readonly %recv_wc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @alloc_response_msg(ptr noundef %agent, ptr noundef %recv_wc)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mad = getelementptr inbounds %struct.ib_mad_send_buf, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %mad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mad, align 4
  %2 = getelementptr inbounds %struct.ib_mad_recv_wc, ptr %recv_wc, i32 0, i32 1, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %hdr_len = getelementptr inbounds %struct.ib_mad_send_buf, ptr %call, i32 0, i32 5
  %5 = ptrtoint ptr %hdr_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hdr_len, align 4
  %7 = call ptr @memcpy(ptr %1, ptr %4, i32 %6)
  %method = getelementptr inbounds %struct.ib_mad_hdr, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %method to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %method, align 1
  %10 = xor i8 %9, -128
  store i8 %10, ptr %method, align 1
  %rmpp_rtime_flags.i = getelementptr inbounds %struct.ib_rmpp_mad, ptr %1, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %rmpp_rtime_flags.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rmpp_rtime_flags.i, align 2
  %13 = and i8 %12, -8
  %14 = or i8 %13, 1
  store i8 %14, ptr %rmpp_rtime_flags.i, align 2
  %seg_num = getelementptr inbounds %struct.ib_rmpp_mad, ptr %1, i32 0, i32 1, i32 4
  %15 = ptrtoint ptr %seg_num to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %seg_num, align 4
  %paylen_newwin = getelementptr inbounds %struct.ib_rmpp_mad, ptr %1, i32 0, i32 1, i32 5
  %16 = ptrtoint ptr %paylen_newwin to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %paylen_newwin, align 8
  %call6 = tail call i32 @ib_post_send_mad(ptr noundef %call, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then7:                                         ; preds = %if.end
  %ah = getelementptr inbounds %struct.ib_mad_send_buf, ptr %call, i32 0, i32 3
  %17 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ah, align 4
  %call.i = tail call i32 @rdma_destroy_ah_user(ptr noundef %18, i32 noundef 1, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then7.rdma_destroy_ah.exit_crit_edge, label %land.rhs.i

if.then7.rdma_destroy_ah.exit_crit_edge:          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %rdma_destroy_ah.exit

land.rhs.i:                                       ; preds = %if.then7
  %.b1.i = load i1, ptr @rdma_destroy_ah.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.rdma_destroy_ah.exit_crit_edge, label %if.then.i, !prof !31

land.rhs.i.rdma_destroy_ah.exit_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rdma_destroy_ah.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rdma_destroy_ah.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3630, i32 noundef 9, ptr noundef nonnull @.str.1) #7
  br label %rdma_destroy_ah.exit

rdma_destroy_ah.exit:                             ; preds = %if.then.i, %land.rhs.i.rdma_destroy_ah.exit_crit_edge, %if.then7.rdma_destroy_ah.exit_crit_edge
  tail call void @ib_free_send_mad(ptr noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %rdma_destroy_ah.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_reset_mad_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @list_move_tail(ptr noundef %list, ptr noundef %head) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #7
  br i1 %call.i, label %if.end.i, label %entry.__list_del_entry.exit_crit_edge

entry.__list_del_entry.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %__list_del_entry.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list, align 4
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %__list_del_entry.exit

__list_del_entry.exit:                            ; preds = %if.end.i, %entry.__list_del_entry.exit_crit_edge
  %prev.i2 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i2, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %7, ptr noundef %head) #7
  br i1 %call.i.i, label %if.end.i.i, label %__list_del_entry.exit.list_add_tail.exit_crit_edge

__list_del_entry.exit.list_add_tail.exit_crit_edge: ; preds = %__list_del_entry.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %__list_del_entry.exit
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %prev.i2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %prev.i2, align 4
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %head, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %list, ptr %7, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %__list_del_entry.exit.list_add_tail.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_query_ah(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_send_mad(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !9, !11, !12, !13, !14, !16, !17, !19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../include/rdma/ib_verbs.h", i32 3630, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @create_rmpp_recv.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/infiniband/core/mad_rmpp.c", i32 295, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @create_rmpp_recv.__key.3, !5, !"__key", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @create_rmpp_recv.__key.5, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/infiniband/core/mad_rmpp.c", i32 296, i32 2}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @create_rmpp_recv.__key.7, !10, !"__key", i1 false, i1 false}
!13 = !{ptr @.str.8, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @create_rmpp_recv.__key.9, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/infiniband/core/mad_rmpp.c", i32 297, i32 2}
!16 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @init_completion.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../include/linux/completion.h", i32 87, i32 2}
!19 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{i64 2148696299}
!30 = !{i64 2148610739, i64 2148610771, i64 2148610800, i64 2148610834, i64 2148610865, i64 2148610888}
!31 = !{!"branch_weights", i32 2000, i32 1}
!32 = !{i64 2149894072}
!33 = !{i64 2148608274, i64 2148608306, i64 2148608335, i64 2148608369, i64 2148608400, i64 2148608423}
!34 = !{!"branch_weights", i32 1, i32 2000}
