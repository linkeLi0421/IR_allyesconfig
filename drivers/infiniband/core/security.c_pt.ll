; ModuleID = '/llk/IR_all_yes/drivers/infiniband/core/security.c_pt.bc'
source_filename = "../drivers/infiniband/core/security.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ib_create_qp_security\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_create_qp_security\09\09\09\09"
module asm "\09.long\09__crc_ib_create_qp_security\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_create_qp_security:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_create_qp_security\22\09\09\09\09\09"
module asm "__kstrtabns_ib_create_qp_security:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.ib_event = type { ptr, %union.anon.130, i32 }
%union.anon.130 = type { ptr }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
%struct.atomic_t = type { i32 }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ib_qp_security = type { ptr, ptr, %struct.mutex, ptr, %struct.list_head, ptr, i8, %struct.atomic_t, %struct.completion, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.173, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.173 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.ib_odp_caps = type { i64, %struct.anon.146 }
%struct.anon.146 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ib_port_data = type { ptr, %struct.ib_port_immutable, %struct.spinlock, %struct.spinlock, %struct.list_head, %struct.ib_port_cache, ptr, %struct.hlist_node, %struct.rdma_port_counter, ptr }
%struct.ib_port_immutable = type { i32, i32, i32, i32 }
%struct.ib_port_cache = type { i64, ptr, ptr, i8, i32 }
%struct.rdma_port_counter = type { %struct.rdma_counter_mode, ptr, i32, %struct.mutex }
%struct.rdma_counter_mode = type { i32, i32, %struct.auto_mode_param }
%struct.auto_mode_param = type { i32 }
%struct.ib_port_pkey = type { i32, i16, i32, %struct.list_head, %struct.list_head, ptr }
%struct.ib_ports_pkeys = type { %struct.ib_port_pkey, %struct.ib_port_pkey }
%struct.pkey_index_qp_list = type { %struct.list_head, i16, %struct.spinlock, %struct.list_head }
%struct.ib_qp_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ib_qp_cap, %struct.rdma_ah_attr, %struct.rdma_ah_attr, i16, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, i32, i8, i32, ptr }
%struct.ib_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.165 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.ib_gid = type { %struct.anon.145 }
%struct.anon.145 = type { i64, i64 }
%union.anon.165 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%struct.ib_mad_agent = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.list_head, i8, i8, i8 }

@ib_create_qp_security.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&qp->qp_sec->mutex\00", [45 x i8] zeroinitializer }, align 32
@__kstrtab_ib_create_qp_security = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_create_qp_security = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_create_qp_security = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_create_qp_security to i32), ptr @__kstrtab_ib_create_qp_security, ptr @__kstrtabns_ib_create_qp_security }, section "___ksymtab+ib_create_qp_security", align 4
@ib_security_modify_qp.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/infiniband/core/security.c\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: QP security is not initialized for IB QP: %u\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.ib_security_modify_qp = private unnamed_addr constant [22 x i8] c"ib_security_modify_qp\00", align 1
@mad_agent_list_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@mad_agent_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @mad_agent_list, ptr @mad_agent_list }, [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@port_pkey_list_insert.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&pkey->qp_list_lock\00", [44 x i8] zeroinitializer }, align 32
@__const.qp_to_error.event = private unnamed_addr constant %struct.ib_event { ptr null, %union.anon.130 zeroinitializer, i32 1 }, align 4
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mad_agent_list_lock\00", [44 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 437, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 586, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant [20 x i8] c"mad_agent_list_lock\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [15 x i8] c"mad_agent_list\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 42, i32 8 }
@___asan_gen_.28 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 87, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 282, i32 4 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private constant [38 x i8] c"../drivers/infiniband/core/security.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 44, i32 8 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__ksymtab_ib_create_qp_security, ptr @ib_create_qp_security.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @mad_agent_list_lock, ptr @mad_agent_list, ptr @init_completion.__key, ptr @.str.3, ptr @port_pkey_list_insert.__key, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_create_qp_security.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mad_agent_list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mad_agent_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_pkey_list_insert.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_open_shared_qp_security(ptr noundef %qp, ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %real_qp1 = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 13
  %0 = ptrtoint ptr %real_qp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %real_qp1, align 4
  %call = tail call i32 @ib_create_qp_security(ptr noundef %qp, ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %qp_sec = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 24
  %2 = ptrtoint ptr %qp_sec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qp_sec, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %qp_sec5 = getelementptr inbounds %struct.ib_qp, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %qp_sec5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qp_sec5, align 4
  %mutex = getelementptr inbounds %struct.ib_qp_security, ptr %5, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %6 = ptrtoint ptr %qp_sec5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %qp_sec5, align 4
  %ports_pkeys = getelementptr inbounds %struct.ib_qp_security, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %ports_pkeys to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ports_pkeys, align 4
  %10 = ptrtoint ptr %qp_sec to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qp_sec, align 4
  %call8 = tail call fastcc i32 @check_qp_port_pkey_settings(ptr noundef %9, ptr noundef %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  %tobool9.not.not = xor i1 %tobool9.not, true
  %cmp.not = icmp eq ptr %1, %qp
  %or.cond = select i1 %tobool9.not.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %if.end4.ret17_crit_edge, label %if.then12

if.end4.ret17_crit_edge:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %ret17

if.then12:                                        ; preds = %if.end4
  %12 = ptrtoint ptr %qp_sec to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %qp_sec, align 4
  %shared_qp_list = getelementptr inbounds %struct.ib_qp_security, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %qp_sec5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %qp_sec5, align 4
  %shared_qp_list15 = getelementptr inbounds %struct.ib_qp_security, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %shared_qp_list15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %shared_qp_list15, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %shared_qp_list, ptr noundef %shared_qp_list15, ptr noundef %17) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.then12.ret17_crit_edge

if.then12.ret17_crit_edge:                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %ret17

if.end.i.i:                                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %shared_qp_list, ptr %prev1.i.i, align 4
  %19 = ptrtoint ptr %shared_qp_list to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %shared_qp_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.ib_qp_security, ptr %13, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %shared_qp_list15, ptr %prev3.i.i, align 4
  %21 = ptrtoint ptr %shared_qp_list15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %shared_qp_list, ptr %shared_qp_list15, align 4
  br label %ret17

ret17:                                            ; preds = %if.end.i.i, %if.then12.ret17_crit_edge, %if.end4.ret17_crit_edge
  %22 = ptrtoint ptr %qp_sec5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %qp_sec5, align 4
  %mutex19 = getelementptr inbounds %struct.ib_qp_security, ptr %23, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %mutex19) #5
  br i1 %tobool9.not, label %ret17.cleanup_crit_edge, label %if.then21

ret17.cleanup_crit_edge:                          ; preds = %ret17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then21:                                        ; preds = %ret17
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %qp_sec to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %qp_sec, align 4
  %security.i = getelementptr inbounds %struct.ib_qp_security, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %security.i, align 4
  tail call void @security_ib_free_security(ptr noundef %27) #5
  %ports_pkeys.i = getelementptr inbounds %struct.ib_qp_security, ptr %25, i32 0, i32 3
  %28 = ptrtoint ptr %ports_pkeys.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ports_pkeys.i, align 4
  tail call void @kfree(ptr noundef %29) #5
  tail call void @kfree(ptr noundef %25) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %ret17.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call8, %if.then21 ], [ 0, %ret17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_create_qp_security(ptr noundef %qp, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %is_switch.i.i = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %is_switch.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i.i = load i8, ptr %is_switch.i.i, align 4
  %1 = xor i8 %bf.load.i.i, -1
  %2 = lshr i8 %1, 7
  %.not.i = zext i8 %2 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i.i)
  %tobool.i.i = icmp slt i8 %bf.load.i.i, 0
  %phys_port_cnt.i = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 21
  %port_data.i = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 11
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %i.0 = phi i32 [ %.not.i, %entry ], [ %inc, %for.body.for.cond_crit_edge ]
  br i1 %tobool.i.i, label %for.cond.rdma_end_port.exit_crit_edge, label %cond.false.i

for.cond.rdma_end_port.exit_crit_edge:            ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %rdma_end_port.exit

cond.false.i:                                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %phys_port_cnt.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %phys_port_cnt.i, align 8
  br label %rdma_end_port.exit

rdma_end_port.exit:                               ; preds = %cond.false.i, %for.cond.rdma_end_port.exit_crit_edge
  %cond.i = phi i32 [ %4, %cond.false.i ], [ 0, %for.cond.rdma_end_port.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %cond.i)
  %cmp.not = icmp ugt i32 %i.0, %cond.i
  br i1 %cmp.not, label %rdma_end_port.exit.cleanup_crit_edge, label %for.body

rdma_end_port.exit.cleanup_crit_edge:             ; preds = %rdma_end_port.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %rdma_end_port.exit
  %5 = ptrtoint ptr %port_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %port_data.i, align 8
  %core_cap_flags.i = getelementptr %struct.ib_port_data, ptr %6, i32 %i.0, i32 1, i32 2
  %7 = ptrtoint ptr %core_cap_flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %core_cap_flags.i, align 4
  %and.i = and i32 %8, 1048576
  %tobool.i.not = icmp eq i32 %and.i, 0
  %inc = add i32 %i.0, 1
  br i1 %tobool.i.not, label %for.body.for.cond_crit_edge, label %if.end5

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

if.end5:                                          ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 184) #8
  %qp_sec = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 24
  %10 = ptrtoint ptr %qp_sec to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %qp_sec, align 4
  %tobool8.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %qp, ptr %call7.i.i, align 8
  %dev14 = getelementptr inbounds %struct.ib_qp_security, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %dev14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev, ptr %dev14, align 4
  %mutex = getelementptr inbounds %struct.ib_qp_security, ptr %call7.i.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str, ptr noundef nonnull @ib_create_qp_security.__key) #5
  %13 = ptrtoint ptr %qp_sec to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %qp_sec, align 4
  %shared_qp_list = getelementptr inbounds %struct.ib_qp_security, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %shared_qp_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %shared_qp_list, ptr %shared_qp_list, align 4
  %prev.i = getelementptr inbounds %struct.ib_qp_security, ptr %14, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %shared_qp_list, ptr %prev.i, align 4
  %17 = load ptr, ptr %qp_sec, align 4
  %error_list_count = getelementptr inbounds %struct.ib_qp_security, ptr %17, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %error_list_count, i32 noundef 4) #5
  %18 = ptrtoint ptr %error_list_count to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 0, ptr %error_list_count, align 4
  %19 = ptrtoint ptr %qp_sec to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %qp_sec, align 4
  %error_complete = getelementptr inbounds %struct.ib_qp_security, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %error_complete to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %error_complete, align 4
  %wait.i = getelementptr inbounds %struct.ib_qp_security, ptr %20, i32 0, i32 8, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @init_completion.__key) #5
  %22 = ptrtoint ptr %qp_sec to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %qp_sec, align 4
  %security = getelementptr inbounds %struct.ib_qp_security, ptr %23, i32 0, i32 5
  %call20 = tail call i32 @security_ib_alloc_security(ptr noundef %security) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end10.cleanup_crit_edge, label %if.then22

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then22:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %qp_sec to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %qp_sec, align 4
  tail call void @kfree(ptr noundef %25) #5
  %26 = ptrtoint ptr %qp_sec to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %qp_sec, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %if.end10.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %rdma_end_port.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end5.cleanup_crit_edge ], [ %call20, %if.then22 ], [ 0, %if.end10.cleanup_crit_edge ], [ 0, %rdma_end_port.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_qp_port_pkey_settings(ptr noundef readonly %pps, ptr noundef readonly %sec) unnamed_addr #0 align 64 {
entry:
  %subnet_prefix = alloca i64, align 8
  %pkey = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %subnet_prefix) #5
  %0 = ptrtoint ptr %subnet_prefix to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %subnet_prefix, align 8, !annotation !30
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pkey) #5
  %1 = ptrtoint ptr %pkey to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %pkey, align 2, !annotation !30
  %tobool.not = icmp eq ptr %pps, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %pps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end.if.end10_crit_edge, label %if.then1

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then1:                                         ; preds = %if.end
  %sec.i = getelementptr inbounds %struct.ib_port_pkey, ptr %pps, i32 0, i32 5
  %4 = ptrtoint ptr %sec.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sec.i, align 4
  %dev1.i = getelementptr inbounds %struct.ib_qp_security, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1.i, align 4
  %port_num.i = getelementptr inbounds %struct.ib_port_pkey, ptr %pps, i32 0, i32 2
  %8 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_num.i, align 4
  %pkey_index.i = getelementptr inbounds %struct.ib_port_pkey, ptr %pps, i32 0, i32 1
  %10 = ptrtoint ptr %pkey_index.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %pkey_index.i, align 4
  %conv.i = zext i16 %11 to i32
  %call.i = call i32 @ib_get_cached_pkey(ptr noundef %7, i32 noundef %9, i32 noundef %conv.i, ptr noundef nonnull %pkey) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end5, label %if.then1.cleanup_crit_edge

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.then1
  %12 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port_num.i, align 4
  call void @ib_get_cached_subnet_prefix(ptr noundef %7, i32 noundef %13, ptr noundef nonnull %subnet_prefix) #5
  %14 = ptrtoint ptr %pkey to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %pkey, align 2
  %16 = ptrtoint ptr %subnet_prefix to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %subnet_prefix, align 8
  %security.i = getelementptr inbounds %struct.ib_qp_security, ptr %sec, i32 0, i32 5
  %18 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %security.i, align 4
  %call.i34 = call i32 @security_ib_pkey_access(ptr noundef %19, i64 noundef %17, i16 noundef zeroext %15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %tobool.not.i35 = icmp eq i32 %call.i34, 0
  br i1 %tobool.not.i35, label %if.end.i36, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i36:                                       ; preds = %if.end5
  %shared_qp_list.i = getelementptr inbounds %struct.ib_qp_security, ptr %sec, i32 0, i32 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i36
  %.pn.in.i = phi ptr [ %shared_qp_list.i, %if.end.i36 ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %20 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %shared_qp_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.end10_crit_edge, label %for.body.i

for.cond.i.if.end10_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

for.body.i:                                       ; preds = %for.cond.i
  %security3.i = getelementptr i8, ptr %.pn.i, i32 8
  %21 = ptrtoint ptr %security3.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %security3.i, align 4
  %call4.i = call i32 @security_ib_pkey_access(ptr noundef %22, i64 noundef %17, i16 noundef zeroext %15) #5
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

if.end10:                                         ; preds = %for.cond.i.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %alt = getelementptr inbounds %struct.ib_ports_pkeys, ptr %pps, i32 0, i32 1
  %23 = ptrtoint ptr %alt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %alt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp12.not = icmp eq i32 %24, 0
  br i1 %cmp12.not, label %if.end10.cleanup_crit_edge, label %if.then13

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then13:                                        ; preds = %if.end10
  %sec.i37 = getelementptr inbounds %struct.ib_ports_pkeys, ptr %pps, i32 0, i32 1, i32 5
  %25 = ptrtoint ptr %sec.i37 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sec.i37, align 4
  %dev1.i38 = getelementptr inbounds %struct.ib_qp_security, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %dev1.i38 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev1.i38, align 4
  %port_num.i39 = getelementptr inbounds %struct.ib_ports_pkeys, ptr %pps, i32 0, i32 1, i32 2
  %29 = ptrtoint ptr %port_num.i39 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %port_num.i39, align 4
  %pkey_index.i40 = getelementptr inbounds %struct.ib_ports_pkeys, ptr %pps, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %pkey_index.i40 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %pkey_index.i40, align 4
  %conv.i41 = zext i16 %32 to i32
  %call.i42 = call i32 @ib_get_cached_pkey(ptr noundef %28, i32 noundef %30, i32 noundef %conv.i41, ptr noundef nonnull %pkey) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42)
  %tobool.not.i43 = icmp eq i32 %call.i42, 0
  br i1 %tobool.not.i43, label %if.end18, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18:                                         ; preds = %if.then13
  %33 = ptrtoint ptr %port_num.i39 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %port_num.i39, align 4
  call void @ib_get_cached_subnet_prefix(ptr noundef %28, i32 noundef %34, ptr noundef nonnull %subnet_prefix) #5
  %35 = ptrtoint ptr %pkey to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %pkey, align 2
  %37 = ptrtoint ptr %subnet_prefix to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %subnet_prefix, align 8
  %security.i46 = getelementptr inbounds %struct.ib_qp_security, ptr %sec, i32 0, i32 5
  %39 = ptrtoint ptr %security.i46 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %security.i46, align 4
  %call.i47 = call i32 @security_ib_pkey_access(ptr noundef %40, i64 noundef %38, i16 noundef zeroext %36) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %tobool.not.i48 = icmp eq i32 %call.i47, 0
  br i1 %tobool.not.i48, label %if.end.i50, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i50:                                       ; preds = %if.end18
  %shared_qp_list.i49 = getelementptr inbounds %struct.ib_qp_security, ptr %sec, i32 0, i32 4
  br label %for.cond.i54

for.cond.i54:                                     ; preds = %for.body.i58.for.cond.i54_crit_edge, %if.end.i50
  %.pn.in.i51 = phi ptr [ %shared_qp_list.i49, %if.end.i50 ], [ %.pn.i52, %for.body.i58.for.cond.i54_crit_edge ]
  %41 = ptrtoint ptr %.pn.in.i51 to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pn.i52 = load ptr, ptr %.pn.in.i51, align 4
  %cmp.not.i53 = icmp eq ptr %.pn.i52, %shared_qp_list.i49
  br i1 %cmp.not.i53, label %for.cond.i54.cleanup_crit_edge, label %for.body.i58

for.cond.i54.cleanup_crit_edge:                   ; preds = %for.cond.i54
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i58:                                     ; preds = %for.cond.i54
  %security3.i55 = getelementptr i8, ptr %.pn.i52, i32 8
  %42 = ptrtoint ptr %security3.i55 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %security3.i55, align 4
  %call4.i56 = call i32 @security_ib_pkey_access(ptr noundef %43, i64 noundef %38, i16 noundef zeroext %36) #5
  %tobool5.not.i57 = icmp eq i32 %call4.i56, 0
  br i1 %tobool5.not.i57, label %for.body.i58.for.cond.i54_crit_edge, label %for.body.i58.cleanup_crit_edge

for.body.i58.cleanup_crit_edge:                   ; preds = %for.body.i58
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i58.for.cond.i54_crit_edge:              ; preds = %for.body.i58
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i54

cleanup:                                          ; preds = %for.body.i58.cleanup_crit_edge, %for.cond.i54.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ], [ %call.i, %if.then1.cleanup_crit_edge ], [ %call.i42, %if.then13.cleanup_crit_edge ], [ %call.i47, %if.end18.cleanup_crit_edge ], [ %call.i34, %if.end5.cleanup_crit_edge ], [ %call4.i56, %for.body.i58.cleanup_crit_edge ], [ 0, %for.cond.i54.cleanup_crit_edge ], [ %call4.i, %for.body.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pkey) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %subnet_prefix) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ib_close_shared_qp_security(ptr noundef %sec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sec, align 4
  %real_qp1 = getelementptr inbounds %struct.ib_qp, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %real_qp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %real_qp1, align 4
  %qp_sec = getelementptr inbounds %struct.ib_qp, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %qp_sec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qp_sec, align 4
  %mutex = getelementptr inbounds %struct.ib_qp_security, ptr %5, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %shared_qp_list = getelementptr inbounds %struct.ib_qp_security, ptr %sec, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %shared_qp_list) #5
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.ib_qp_security, ptr %sec, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %shared_qp_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %shared_qp_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %12 = ptrtoint ptr %shared_qp_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %shared_qp_list, align 4
  %prev.i = getelementptr inbounds %struct.ib_qp_security, ptr %sec, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %14 = ptrtoint ptr %qp_sec to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %qp_sec, align 4
  %mutex3 = getelementptr inbounds %struct.ib_qp_security, ptr %15, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %mutex3) #5
  %security.i = getelementptr inbounds %struct.ib_qp_security, ptr %sec, i32 0, i32 5
  %16 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %security.i, align 4
  tail call void @security_ib_free_security(ptr noundef %17) #5
  %ports_pkeys.i = getelementptr inbounds %struct.ib_qp_security, ptr %sec, i32 0, i32 3
  %18 = ptrtoint ptr %ports_pkeys.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ports_pkeys.i, align 4
  tail call void @kfree(ptr noundef %19) #5
  tail call void @kfree(ptr noundef %sec) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_ib_alloc_security(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ib_destroy_qp_security_begin(ptr noundef %sec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sec, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.ib_qp_security, ptr %sec, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %ports_pkeys = getelementptr inbounds %struct.ib_qp_security, ptr %sec, i32 0, i32 3
  %0 = ptrtoint ptr %ports_pkeys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ports_pkeys, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @port_pkey_list_remove(ptr noundef nonnull %1)
  %2 = ptrtoint ptr %ports_pkeys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ports_pkeys, align 4
  %alt = getelementptr inbounds %struct.ib_ports_pkeys, ptr %3, i32 0, i32 1
  tail call fastcc void @port_pkey_list_remove(ptr noundef %alt)
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %destroying = getelementptr inbounds %struct.ib_qp_security, ptr %sec, i32 0, i32 6
  %4 = ptrtoint ptr %destroying to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %destroying, align 4
  %error_list_count = getelementptr inbounds %struct.ib_qp_security, ptr %sec, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %error_list_count, i32 noundef 4) #5
  %5 = ptrtoint ptr %error_list_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %error_list_count, align 4
  %error_comps_pending = getelementptr inbounds %struct.ib_qp_security, ptr %sec, i32 0, i32 9
  %7 = ptrtoint ptr %error_comps_pending to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %error_comps_pending, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  br label %return

return:                                           ; preds = %if.end5, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @port_pkey_list_remove(ptr noundef %pp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %sec.i = getelementptr inbounds %struct.ib_port_pkey, ptr %pp, i32 0, i32 5
  %2 = ptrtoint ptr %sec.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sec.i, align 4
  %dev1.i = getelementptr inbounds %struct.ib_qp_security, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1.i, align 4
  %port_data.i = getelementptr inbounds %struct.ib_device, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %port_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port_data.i, align 8
  %port_num.i = getelementptr inbounds %struct.ib_port_pkey, ptr %pp, i32 0, i32 2
  %8 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_num.i, align 4
  %pkey_list_lock.i = getelementptr %struct.ib_port_data, ptr %7, i32 %9, i32 2
  tail call void @_raw_spin_lock(ptr noundef %pkey_list_lock.i) #5
  %10 = ptrtoint ptr %port_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port_data.i, align 8
  %12 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port_num.i, align 4
  %pkey_list.i = getelementptr %struct.ib_port_data, ptr %11, i32 %13, i32 4
  %pkey_index9.i = getelementptr inbounds %struct.ib_port_pkey, ptr %pp, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %tmp_pkey.0.in.i = phi ptr [ %pkey_list.i, %if.end ], [ %tmp_pkey.0.i, %for.body.i.for.cond.i_crit_edge ]
  %14 = ptrtoint ptr %tmp_pkey.0.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %tmp_pkey.0.i = load ptr, ptr %tmp_pkey.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %tmp_pkey.0.i, %pkey_list.i
  br i1 %cmp.not.i, label %for.cond.i.get_pkey_idx_qp_list.exit_crit_edge, label %for.body.i

for.cond.i.get_pkey_idx_qp_list.exit_crit_edge:   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_pkey_idx_qp_list.exit

for.body.i:                                       ; preds = %for.cond.i
  %pkey_index.i = getelementptr inbounds %struct.pkey_index_qp_list, ptr %tmp_pkey.0.i, i32 0, i32 1
  %15 = ptrtoint ptr %pkey_index.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %pkey_index.i, align 4
  %17 = ptrtoint ptr %pkey_index9.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %pkey_index9.i, align 4
  %cmp11.i = icmp eq i16 %16, %18
  br i1 %cmp11.i, label %for.body.i.get_pkey_idx_qp_list.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

for.body.i.get_pkey_idx_qp_list.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_pkey_idx_qp_list.exit

get_pkey_idx_qp_list.exit:                        ; preds = %for.body.i.get_pkey_idx_qp_list.exit_crit_edge, %for.cond.i.get_pkey_idx_qp_list.exit_crit_edge
  %pkey.0.i = phi ptr [ null, %for.cond.i.get_pkey_idx_qp_list.exit_crit_edge ], [ %tmp_pkey.0.i, %for.body.i.get_pkey_idx_qp_list.exit_crit_edge ]
  %pkey_list_lock21.i = getelementptr %struct.ib_port_data, ptr %11, i32 %13, i32 2
  tail call void @_raw_spin_unlock(ptr noundef %pkey_list_lock21.i) #5
  %qp_list_lock = getelementptr inbounds %struct.pkey_index_qp_list, ptr %pkey.0.i, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %qp_list_lock) #5
  %qp_list = getelementptr inbounds %struct.ib_port_pkey, ptr %pp, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %qp_list) #5
  br i1 %call.i.i, label %if.end.i.i, label %get_pkey_idx_qp_list.exit.list_del.exit_crit_edge

get_pkey_idx_qp_list.exit.list_del.exit_crit_edge: ; preds = %get_pkey_idx_qp_list.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %get_pkey_idx_qp_list.exit
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.ib_port_pkey, ptr %pp, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %qp_list to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %qp_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %get_pkey_idx_qp_list.exit.list_del.exit_crit_edge
  %25 = ptrtoint ptr %qp_list to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %qp_list, align 4
  %prev.i = getelementptr inbounds %struct.ib_port_pkey, ptr %pp, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %qp_list_lock) #5
  %27 = ptrtoint ptr %pp to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %pp, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ib_destroy_qp_security_abort(ptr noundef %sec) local_unnamed_addr #0 align 64 {
entry:
  %attr.i = alloca %struct.ib_qp_attr, align 8
  %event.i = alloca %struct.ib_event, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sec, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %error_comps_pending = getelementptr inbounds %struct.ib_qp_security, ptr %sec, i32 0, i32 9
  %0 = ptrtoint ptr %error_comps_pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %error_comps_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp26 = icmp sgt i32 %1, 0
  br i1 %cmp26, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %error_complete = getelementptr inbounds %struct.ib_qp_security, ptr %sec, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.027 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  tail call void @wait_for_completion(ptr noundef %error_complete) #5
  %inc = add nuw nsw i32 %i.027, 1
  %2 = ptrtoint ptr %error_comps_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %error_comps_pending, align 4
  %cmp = icmp slt i32 %inc, %3
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %mutex = getelementptr inbounds %struct.ib_qp_security, ptr %sec, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %destroying = getelementptr inbounds %struct.ib_qp_security, ptr %sec, i32 0, i32 6
  %4 = ptrtoint ptr %destroying to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %destroying, align 4
  %ports_pkeys = getelementptr inbounds %struct.ib_qp_security, ptr %sec, i32 0, i32 3
  %5 = ptrtoint ptr %ports_pkeys to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ports_pkeys, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %for.end.if.end6_crit_edge, label %if.then2

for.end.if.end6_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then2:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call fastcc i32 @port_pkey_list_insert(ptr noundef nonnull %6)
  %7 = ptrtoint ptr %ports_pkeys to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ports_pkeys, align 4
  %alt = getelementptr inbounds %struct.ib_ports_pkeys, ptr %8, i32 0, i32 1
  %call5 = tail call fastcc i32 @port_pkey_list_insert(ptr noundef %alt)
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %for.end.if.end6_crit_edge
  %9 = ptrtoint ptr %ports_pkeys to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ports_pkeys, align 4
  %call8 = tail call fastcc i32 @check_qp_port_pkey_settings(ptr noundef %10, ptr noundef nonnull %sec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end6.if.end11_crit_edge, label %if.then10

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then10:                                        ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %attr.i) #5
  %11 = call ptr @memset(ptr %attr.i, i32 0, i32 216)
  %12 = ptrtoint ptr %attr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 6, ptr %attr.i, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %event.i) #5
  %13 = call ptr @memcpy(ptr %event.i, ptr @__const.qp_to_error.event, i32 12)
  %14 = ptrtoint ptr %destroying to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %destroying, align 4, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then10.qp_to_error.exit_crit_edge

if.then10.qp_to_error.exit_crit_edge:             ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %qp_to_error.exit

if.end.i:                                         ; preds = %if.then10
  %16 = ptrtoint ptr %sec to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sec, align 4
  %call.i = call i32 @ib_modify_qp(ptr noundef %17, ptr noundef nonnull %attr.i, i32 noundef 1) #5
  %18 = ptrtoint ptr %sec to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sec, align 4
  %event_handler.i = getelementptr inbounds %struct.ib_qp, ptr %19, i32 0, i32 15
  %20 = ptrtoint ptr %event_handler.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %event_handler.i, align 4
  %tobool2.not.i = icmp eq ptr %21, null
  br i1 %tobool2.not.i, label %if.end.i.if.end11.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %qp_context.i = getelementptr inbounds %struct.ib_qp, ptr %19, i32 0, i32 16
  %22 = ptrtoint ptr %qp_context.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %qp_context.i, align 4
  %tobool4.not.i = icmp eq ptr %23, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end11.i_crit_edge, label %if.then5.i

land.lhs.true.i.if.end11.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11.i

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %element.i = getelementptr inbounds %struct.ib_event, ptr %event.i, i32 0, i32 1
  %24 = ptrtoint ptr %element.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %19, ptr %element.i, align 4
  call void %21(ptr noundef nonnull %event.i, ptr noundef nonnull %23) #5
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then5.i, %land.lhs.true.i.if.end11.i_crit_edge, %if.end.i.if.end11.i_crit_edge
  %shared_qp_list.i = getelementptr inbounds %struct.ib_qp_security, ptr %sec, i32 0, i32 4
  %25 = ptrtoint ptr %shared_qp_list.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn49.i = load ptr, ptr %shared_qp_list.i, align 4
  %cmp.not50.i = icmp eq ptr %.pn49.i, %shared_qp_list.i
  br i1 %cmp.not50.i, label %if.end11.i.qp_to_error.exit_crit_edge, label %for.body.lr.ph.i

if.end11.i.qp_to_error.exit_crit_edge:            ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qp_to_error.exit

for.body.lr.ph.i:                                 ; preds = %if.end11.i
  %element22.i = getelementptr inbounds %struct.ib_event, ptr %event.i, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end26.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn51.i = phi ptr [ %.pn49.i, %for.body.lr.ph.i ], [ %.pn.i, %if.end26.i.for.body.i_crit_edge ]
  %shared_qp_sec.0.i = getelementptr i8, ptr %.pn51.i, i32 -104
  %26 = ptrtoint ptr %shared_qp_sec.0.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %shared_qp_sec.0.i, align 4
  %event_handler16.i = getelementptr inbounds %struct.ib_qp, ptr %27, i32 0, i32 15
  %28 = ptrtoint ptr %event_handler16.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %event_handler16.i, align 4
  %tobool17.not.i = icmp eq ptr %29, null
  br i1 %tobool17.not.i, label %for.body.i.if.end26.i_crit_edge, label %land.lhs.true18.i

for.body.i.if.end26.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26.i

land.lhs.true18.i:                                ; preds = %for.body.i
  %qp_context19.i = getelementptr inbounds %struct.ib_qp, ptr %27, i32 0, i32 16
  %30 = ptrtoint ptr %qp_context19.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %qp_context19.i, align 4
  %tobool20.not.i = icmp eq ptr %31, null
  br i1 %tobool20.not.i, label %land.lhs.true18.i.if.end26.i_crit_edge, label %if.then21.i

land.lhs.true18.i.if.end26.i_crit_edge:           ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26.i

if.then21.i:                                      ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %element22.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %27, ptr %element22.i, align 4
  %33 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %27, align 4
  %35 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %event.i, align 4
  call void %29(ptr noundef nonnull %event.i, ptr noundef nonnull %31) #5
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then21.i, %land.lhs.true18.i.if.end26.i_crit_edge, %for.body.i.if.end26.i_crit_edge
  %36 = ptrtoint ptr %.pn51.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn.i = load ptr, ptr %.pn51.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %shared_qp_list.i
  br i1 %cmp.not.i, label %if.end26.i.qp_to_error.exit_crit_edge, label %if.end26.i.for.body.i_crit_edge

if.end26.i.for.body.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.end26.i.qp_to_error.exit_crit_edge:            ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qp_to_error.exit

qp_to_error.exit:                                 ; preds = %if.end26.i.qp_to_error.exit_crit_edge, %if.end11.i.qp_to_error.exit_crit_edge, %if.then10.qp_to_error.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %event.i) #5
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %attr.i) #5
  br label %if.end11

if.end11:                                         ; preds = %qp_to_error.exit, %if.end6.if.end11_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @port_pkey_list_insert(ptr noundef %pp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %port_num1 = getelementptr inbounds %struct.ib_port_pkey, ptr %pp, i32 0, i32 2
  %0 = ptrtoint ptr %port_num1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port_num1, align 4
  %2 = ptrtoint ptr %pp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup44_crit_edge

entry.cleanup44_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup44

if.end:                                           ; preds = %entry
  %sec = getelementptr inbounds %struct.ib_port_pkey, ptr %pp, i32 0, i32 5
  %4 = ptrtoint ptr %sec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sec, align 4
  %dev2 = getelementptr inbounds %struct.ib_qp_security, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev2, align 4
  %port_data.i = getelementptr inbounds %struct.ib_device, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %port_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port_data.i, align 8
  %pkey_list_lock.i = getelementptr %struct.ib_port_data, ptr %9, i32 %1, i32 2
  tail call void @_raw_spin_lock(ptr noundef %pkey_list_lock.i) #5
  %10 = ptrtoint ptr %port_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port_data.i, align 8
  %12 = ptrtoint ptr %port_num1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port_num1, align 4
  %pkey_list.i = getelementptr %struct.ib_port_data, ptr %11, i32 %13, i32 4
  %pkey_index9.i = getelementptr inbounds %struct.ib_port_pkey, ptr %pp, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %tmp_pkey.0.in.i = phi ptr [ %pkey_list.i, %if.end ], [ %tmp_pkey.0.i, %for.body.i.for.cond.i_crit_edge ]
  %14 = ptrtoint ptr %tmp_pkey.0.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %tmp_pkey.0.i = load ptr, ptr %tmp_pkey.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %tmp_pkey.0.i, %pkey_list.i
  br i1 %cmp.not.i, label %get_pkey_idx_qp_list.exit.thread, label %for.body.i

get_pkey_idx_qp_list.exit.thread:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  %pkey_list_lock21.i82 = getelementptr %struct.ib_port_data, ptr %11, i32 %13, i32 2
  tail call void @_raw_spin_unlock(ptr noundef %pkey_list_lock21.i82) #5
  br label %if.then3

for.body.i:                                       ; preds = %for.cond.i
  %pkey_index.i = getelementptr inbounds %struct.pkey_index_qp_list, ptr %tmp_pkey.0.i, i32 0, i32 1
  %15 = ptrtoint ptr %pkey_index.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %pkey_index.i, align 4
  %17 = ptrtoint ptr %pkey_index9.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %pkey_index9.i, align 4
  %cmp11.i = icmp eq i16 %16, %18
  br i1 %cmp11.i, label %get_pkey_idx_qp_list.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

get_pkey_idx_qp_list.exit:                        ; preds = %for.body.i
  %pkey_list_lock21.i = getelementptr %struct.ib_port_data, ptr %11, i32 %13, i32 2
  tail call void @_raw_spin_unlock(ptr noundef %pkey_list_lock21.i) #5
  %tobool.not = icmp eq ptr %tmp_pkey.0.i, null
  br i1 %tobool.not, label %get_pkey_idx_qp_list.exit.if.then3_crit_edge, label %get_pkey_idx_qp_list.exit.if.end38_crit_edge

get_pkey_idx_qp_list.exit.if.end38_crit_edge:     ; preds = %get_pkey_idx_qp_list.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

get_pkey_idx_qp_list.exit.if.then3_crit_edge:     ; preds = %get_pkey_idx_qp_list.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

if.then3:                                         ; preds = %get_pkey_idx_qp_list.exit.if.then3_crit_edge, %get_pkey_idx_qp_list.exit.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 64) #8
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %if.then3.cleanup44_crit_edge, label %if.end7

if.then3.cleanup44_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup44

if.end7:                                          ; preds = %if.then3
  %20 = ptrtoint ptr %port_data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %port_data.i, align 8
  %pkey_list_lock = getelementptr %struct.ib_port_data, ptr %21, i32 %1, i32 2
  tail call void @_raw_spin_lock(ptr noundef %pkey_list_lock) #5
  %22 = ptrtoint ptr %port_data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %port_data.i, align 8
  %pkey_list = getelementptr %struct.ib_port_data, ptr %23, i32 %1, i32 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end7
  %tmp_pkey.0.in = phi ptr [ %pkey_list, %if.end7 ], [ %tmp_pkey.0, %for.body.for.cond_crit_edge ]
  %24 = ptrtoint ptr %tmp_pkey.0.in to i32
  call void @__asan_load4_noabort(i32 %24)
  %tmp_pkey.0 = load ptr, ptr %tmp_pkey.0.in, align 4
  %cmp13.not = icmp eq ptr %tmp_pkey.0, %pkey_list
  br i1 %cmp13.not, label %if.then26, label %for.body

for.body:                                         ; preds = %for.cond
  %pkey_index = getelementptr inbounds %struct.pkey_index_qp_list, ptr %tmp_pkey.0, i32 0, i32 1
  %25 = ptrtoint ptr %pkey_index to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %pkey_index, align 4
  %27 = ptrtoint ptr %pkey_index9.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %pkey_index9.i, align 4
  %cmp16 = icmp eq i16 %26, %28
  br i1 %cmp16, label %for.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

if.then26:                                        ; preds = %for.cond
  %29 = ptrtoint ptr %pkey_index9.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %pkey_index9.i, align 4
  %pkey_index28 = getelementptr inbounds %struct.pkey_index_qp_list, ptr %call7.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %pkey_index28 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %pkey_index28, align 8
  %qp_list_lock = getelementptr inbounds %struct.pkey_index_qp_list, ptr %call7.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %qp_list_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @port_pkey_list_insert.__key, i16 noundef signext 3) #5
  %qp_list = getelementptr inbounds %struct.pkey_index_qp_list, ptr %call7.i.i, i32 0, i32 3
  %32 = ptrtoint ptr %qp_list to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %qp_list, ptr %qp_list, align 8
  %prev.i = getelementptr inbounds %struct.pkey_index_qp_list, ptr %call7.i.i, i32 0, i32 3, i32 1
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %qp_list, ptr %prev.i, align 4
  %34 = ptrtoint ptr %port_data.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %port_data.i, align 8
  %pkey_list33 = getelementptr %struct.ib_port_data, ptr %35, i32 %1, i32 4
  %36 = ptrtoint ptr %pkey_list33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pkey_list33, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %pkey_list33, ptr noundef %37) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.then26.cleanup_crit_edge

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %39 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %37, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %pkey_list33, ptr %prev3.i.i, align 4
  %41 = ptrtoint ptr %pkey_list33 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %call7.i.i, ptr %pkey_list33, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.then26.cleanup_crit_edge, %for.end
  %pkey.085 = phi ptr [ %tmp_pkey.0, %for.end ], [ %call7.i.i, %if.then26.cleanup_crit_edge ], [ %call7.i.i, %if.end.i.i ]
  %42 = ptrtoint ptr %port_data.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %port_data.i, align 8
  %pkey_list_lock37 = getelementptr %struct.ib_port_data, ptr %43, i32 %1, i32 2
  tail call void @_raw_spin_unlock(ptr noundef %pkey_list_lock37) #5
  br label %if.end38

if.end38:                                         ; preds = %cleanup, %get_pkey_idx_qp_list.exit.if.end38_crit_edge
  %pkey.2 = phi ptr [ %tmp_pkey.0.i, %get_pkey_idx_qp_list.exit.if.end38_crit_edge ], [ %pkey.085, %cleanup ]
  %qp_list_lock39 = getelementptr inbounds %struct.pkey_index_qp_list, ptr %pkey.2, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %qp_list_lock39) #5
  %qp_list40 = getelementptr inbounds %struct.ib_port_pkey, ptr %pp, i32 0, i32 3
  %qp_list41 = getelementptr inbounds %struct.pkey_index_qp_list, ptr %pkey.2, i32 0, i32 3
  %44 = ptrtoint ptr %qp_list41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %qp_list41, align 4
  %call.i.i76 = tail call zeroext i1 @__list_add_valid(ptr noundef %qp_list40, ptr noundef %qp_list41, ptr noundef %45) #5
  br i1 %call.i.i76, label %if.end.i.i79, label %if.end38.list_add.exit80_crit_edge

if.end38.list_add.exit80_crit_edge:               ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add.exit80

if.end.i.i79:                                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i77 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev1.i.i77 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %qp_list40, ptr %prev1.i.i77, align 4
  %47 = ptrtoint ptr %qp_list40 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %45, ptr %qp_list40, align 4
  %prev3.i.i78 = getelementptr inbounds %struct.ib_port_pkey, ptr %pp, i32 0, i32 3, i32 1
  %48 = ptrtoint ptr %prev3.i.i78 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %qp_list41, ptr %prev3.i.i78, align 4
  %49 = ptrtoint ptr %qp_list41 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %qp_list40, ptr %qp_list41, align 4
  br label %list_add.exit80

list_add.exit80:                                  ; preds = %if.end.i.i79, %if.end38.list_add.exit80_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %qp_list_lock39) #5
  %50 = ptrtoint ptr %pp to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 2, ptr %pp, align 4
  br label %cleanup44

cleanup44:                                        ; preds = %list_add.exit80, %if.then3.cleanup44_crit_edge, %entry.cleanup44_crit_edge
  %retval.1 = phi i32 [ 0, %list_add.exit80 ], [ 0, %entry.cleanup44_crit_edge ], [ -12, %if.then3.cleanup44_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ib_destroy_qp_security_end(ptr noundef %sec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sec, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %error_comps_pending = getelementptr inbounds %struct.ib_qp_security, ptr %sec, i32 0, i32 9
  %0 = ptrtoint ptr %error_comps_pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %error_comps_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5 = icmp sgt i32 %1, 0
  br i1 %cmp5, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %error_complete = getelementptr inbounds %struct.ib_qp_security, ptr %sec, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.06 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  tail call void @wait_for_completion(ptr noundef %error_complete) #5
  %inc = add nuw nsw i32 %i.06, 1
  %2 = ptrtoint ptr %error_comps_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %error_comps_pending, align 4
  %cmp = icmp slt i32 %inc, %3
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %security.i = getelementptr inbounds %struct.ib_qp_security, ptr %sec, i32 0, i32 5
  %4 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %security.i, align 4
  tail call void @security_ib_free_security(ptr noundef %5) #5
  %ports_pkeys.i = getelementptr inbounds %struct.ib_qp_security, ptr %sec, i32 0, i32 3
  %6 = ptrtoint ptr %ports_pkeys.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ports_pkeys.i, align 4
  tail call void @kfree(ptr noundef %7) #5
  tail call void @kfree(ptr noundef nonnull %sec) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ib_security_cache_change(ptr noundef %device, i32 noundef %port_num, i64 noundef %subnet_prefix) local_unnamed_addr #0 align 64 {
entry:
  %attr.i.i = alloca %struct.ib_qp_attr, align 8
  %event.i.i = alloca %struct.ib_event, align 4
  %to_error_list.i = alloca %struct.list_head, align 4
  %pkey_val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %port_data = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 11
  %0 = ptrtoint ptr %port_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_data, align 8
  %pkey_list = getelementptr %struct.ib_port_data, ptr %1, i32 %port_num, i32 4
  %2 = ptrtoint ptr %pkey_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %pkey.015 = load ptr, ptr %pkey_list, align 4
  %cmp.not17 = icmp eq ptr %pkey.015, %pkey_list
  br i1 %cmp.not17, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %3 = getelementptr inbounds %struct.list_head, ptr %to_error_list.i, i32 0, i32 1
  %element.i.i = getelementptr inbounds %struct.ib_event, ptr %event.i.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %check_pkey_qps.exit.for.body_crit_edge, %for.body.lr.ph
  %pkey.018 = phi ptr [ %pkey.015, %for.body.lr.ph ], [ %pkey.0, %check_pkey_qps.exit.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %to_error_list.i) #5
  %4 = ptrtoint ptr %to_error_list.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %to_error_list.i, ptr %to_error_list.i, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %to_error_list.i, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pkey_val.i) #5
  %6 = ptrtoint ptr %pkey_val.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %pkey_val.i, align 2, !annotation !30
  %pkey_index.i = getelementptr inbounds %struct.pkey_index_qp_list, ptr %pkey.018, i32 0, i32 1
  %7 = ptrtoint ptr %pkey_index.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %pkey_index.i, align 4
  %conv.i = zext i16 %8 to i32
  %call.i = call i32 @ib_get_cached_pkey(ptr noundef %device, i32 noundef %port_num, i32 noundef %conv.i, ptr noundef nonnull %pkey_val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.body.if.end22.i_crit_edge

for.body.if.end22.i_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22.i

if.then.i:                                        ; preds = %for.body
  %qp_list_lock.i = getelementptr inbounds %struct.pkey_index_qp_list, ptr %pkey.018, i32 0, i32 2
  call void @_raw_spin_lock(ptr noundef %qp_list_lock.i) #5
  %qp_list.i = getelementptr inbounds %struct.pkey_index_qp_list, ptr %pkey.018, i32 0, i32 3
  %9 = ptrtoint ptr %qp_list.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn93.i = load ptr, ptr %qp_list.i, align 4
  %cmp.not94.i = icmp eq ptr %.pn93.i, %qp_list.i
  br i1 %cmp.not94.i, label %if.then.i.for.end.i_crit_edge, label %if.then.i.for.body.i_crit_edge

if.then.i.for.body.i_crit_edge:                   ; preds = %if.then.i
  br label %for.body.i

if.then.i.for.end.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.i.for.body.i_crit_edge
  %.pn95.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn93.i, %if.then.i.for.body.i_crit_edge ]
  %sec.i = getelementptr i8, ptr %.pn95.i, i32 16
  %10 = ptrtoint ptr %sec.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sec.i, align 4
  %error_list_count.i = getelementptr inbounds %struct.ib_qp_security, ptr %11, i32 0, i32 7
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %error_list_count.i, i32 noundef 4) #5
  %12 = ptrtoint ptr %error_list_count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %error_list_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool6.not.i = icmp eq i32 %13, 0
  br i1 %tobool6.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %14 = ptrtoint ptr %pkey_val.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %pkey_val.i, align 2
  %16 = ptrtoint ptr %sec.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sec.i, align 4
  %security.i.i = getelementptr inbounds %struct.ib_qp_security, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %security.i.i, align 4
  %call.i.i = call i32 @security_ib_pkey_access(ptr noundef %19, i64 noundef %subnet_prefix, i16 noundef zeroext %15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.if.then11.i_crit_edge

if.end.i.if.then11.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i

if.end.i.i:                                       ; preds = %if.end.i
  %shared_qp_list.i.i = getelementptr inbounds %struct.ib_qp_security, ptr %17, i32 0, i32 4
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end.i.i
  %.pn.in.i.i = phi ptr [ %shared_qp_list.i.i, %if.end.i.i ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %20 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %shared_qp_list.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.for.inc.i_crit_edge, label %for.body.i.i

for.cond.i.i.for.inc.i_crit_edge:                 ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %security3.i.i = getelementptr i8, ptr %.pn.i.i, i32 8
  %21 = ptrtoint ptr %security3.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %security3.i.i, align 4
  %call4.i.i = call i32 @security_ib_pkey_access(ptr noundef %22, i64 noundef %subnet_prefix, i16 noundef zeroext %15) #5
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %for.body.i.i.for.cond.i.i_crit_edge, label %for.body.i.i.if.then11.i_crit_edge

for.body.i.i.if.then11.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.i

if.then11.i:                                      ; preds = %for.body.i.i.if.then11.i_crit_edge, %if.end.i.if.then11.i_crit_edge
  %23 = ptrtoint ptr %sec.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sec.i, align 4
  %error_list_count13.i = getelementptr inbounds %struct.ib_qp_security, ptr %24, i32 0, i32 7
  %call.i.i79.i = call zeroext i1 @__kasan_check_write(ptr noundef %error_list_count13.i, i32 noundef 4) #5
  call void @llvm.prefetch.p0(ptr %error_list_count13.i, i32 1, i32 3, i32 1) #5
  %25 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %error_list_count13.i, ptr %error_list_count13.i, i32 1, ptr elementtype(i32) %error_list_count13.i) #5, !srcloc !32
  %to_error_list14.i = getelementptr i8, ptr %.pn95.i, i32 8
  %26 = ptrtoint ptr %to_error_list.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %to_error_list.i, align 4
  %call.i.i81.i = call zeroext i1 @__list_add_valid(ptr noundef %to_error_list14.i, ptr noundef nonnull %to_error_list.i, ptr noundef %27) #5
  br i1 %call.i.i81.i, label %if.end.i.i.i, label %if.then11.i.for.inc.i_crit_edge

if.then11.i.for.inc.i_crit_edge:                  ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end.i.i.i:                                     ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %to_error_list14.i, ptr %prev1.i.i.i, align 4
  %29 = ptrtoint ptr %to_error_list14.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %27, ptr %to_error_list14.i, align 4
  %prev3.i.i.i = getelementptr i8, ptr %.pn95.i, i32 12
  %30 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %to_error_list.i, ptr %prev3.i.i.i, align 4
  %31 = ptrtoint ptr %to_error_list.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %to_error_list14.i, ptr %to_error_list.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.i.i, %if.then11.i.for.inc.i_crit_edge, %for.cond.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %32 = ptrtoint ptr %.pn95.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn.i = load ptr, ptr %.pn95.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %qp_list.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then.i.for.end.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %qp_list_lock.i) #5
  br label %if.end22.i

if.end22.i:                                       ; preds = %for.end.i, %for.body.if.end22.i_crit_edge
  %33 = ptrtoint ptr %to_error_list.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %to_error_list.i, align 4
  %cmp34.not97.i = icmp eq ptr %34, %to_error_list.i
  br i1 %cmp34.not97.i, label %if.end22.i.check_pkey_qps.exit_crit_edge, label %if.end22.i.for.body37.i_crit_edge

if.end22.i.for.body37.i_crit_edge:                ; preds = %if.end22.i
  br label %for.body37.i

if.end22.i.check_pkey_qps.exit_crit_edge:         ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %check_pkey_qps.exit

for.body37.i:                                     ; preds = %for.inc51.i.for.body37.i_crit_edge, %if.end22.i.for.body37.i_crit_edge
  %.pn77.in98.i = phi ptr [ %.pn77100.i, %for.inc51.i.for.body37.i_crit_edge ], [ %34, %if.end22.i.for.body37.i_crit_edge ]
  %35 = ptrtoint ptr %.pn77.in98.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn77100.i = load ptr, ptr %.pn77.in98.i, align 4
  %sec38.i = getelementptr i8, ptr %.pn77.in98.i, i32 8
  %36 = ptrtoint ptr %sec38.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sec38.i, align 4
  %mutex.i = getelementptr inbounds %struct.ib_qp_security, ptr %37, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %38 = ptrtoint ptr %sec38.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sec38.i, align 4
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %attr.i.i) #5
  %40 = call ptr @memset(ptr %attr.i.i, i32 0, i32 216)
  %41 = ptrtoint ptr %attr.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 6, ptr %attr.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %event.i.i) #5
  %42 = call ptr @memcpy(ptr %event.i.i, ptr @__const.qp_to_error.event, i32 12)
  %destroying.i.i = getelementptr inbounds %struct.ib_qp_security, ptr %39, i32 0, i32 6
  %43 = ptrtoint ptr %destroying.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %destroying.i.i, align 4, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i82.i = icmp eq i8 %44, 0
  br i1 %tobool.not.i82.i, label %if.end.i84.i, label %for.body37.i.qp_to_error.exit.i_crit_edge

for.body37.i.qp_to_error.exit.i_crit_edge:        ; preds = %for.body37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qp_to_error.exit.i

if.end.i84.i:                                     ; preds = %for.body37.i
  %45 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %39, align 4
  %call.i83.i = call i32 @ib_modify_qp(ptr noundef %46, ptr noundef nonnull %attr.i.i, i32 noundef 1) #5
  %47 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %39, align 4
  %event_handler.i.i = getelementptr inbounds %struct.ib_qp, ptr %48, i32 0, i32 15
  %49 = ptrtoint ptr %event_handler.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %event_handler.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %50, null
  br i1 %tobool2.not.i.i, label %if.end.i84.i.if.end11.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i84.i.if.end11.i.i_crit_edge:              ; preds = %if.end.i84.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i84.i
  %qp_context.i.i = getelementptr inbounds %struct.ib_qp, ptr %48, i32 0, i32 16
  %51 = ptrtoint ptr %qp_context.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %qp_context.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %52, null
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.if.end11.i.i_crit_edge, label %if.then5.i.i

land.lhs.true.i.i.if.end11.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11.i.i

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %element.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %48, ptr %element.i.i, align 4
  call void %50(ptr noundef nonnull %event.i.i, ptr noundef nonnull %52) #5
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then5.i.i, %land.lhs.true.i.i.if.end11.i.i_crit_edge, %if.end.i84.i.if.end11.i.i_crit_edge
  %shared_qp_list.i85.i = getelementptr inbounds %struct.ib_qp_security, ptr %39, i32 0, i32 4
  %54 = ptrtoint ptr %shared_qp_list.i85.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pn49.i.i = load ptr, ptr %shared_qp_list.i85.i, align 4
  %cmp.not50.i.i = icmp eq ptr %.pn49.i.i, %shared_qp_list.i85.i
  br i1 %cmp.not50.i.i, label %if.end11.i.i.qp_to_error.exit.i_crit_edge, label %if.end11.i.i.for.body.i86.i_crit_edge

if.end11.i.i.for.body.i86.i_crit_edge:            ; preds = %if.end11.i.i
  br label %for.body.i86.i

if.end11.i.i.qp_to_error.exit.i_crit_edge:        ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qp_to_error.exit.i

for.body.i86.i:                                   ; preds = %if.end26.i.i.for.body.i86.i_crit_edge, %if.end11.i.i.for.body.i86.i_crit_edge
  %.pn51.i.i = phi ptr [ %.pn.i87.i, %if.end26.i.i.for.body.i86.i_crit_edge ], [ %.pn49.i.i, %if.end11.i.i.for.body.i86.i_crit_edge ]
  %shared_qp_sec.0.i.i = getelementptr i8, ptr %.pn51.i.i, i32 -104
  %55 = ptrtoint ptr %shared_qp_sec.0.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %shared_qp_sec.0.i.i, align 4
  %event_handler16.i.i = getelementptr inbounds %struct.ib_qp, ptr %56, i32 0, i32 15
  %57 = ptrtoint ptr %event_handler16.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %event_handler16.i.i, align 4
  %tobool17.not.i.i = icmp eq ptr %58, null
  br i1 %tobool17.not.i.i, label %for.body.i86.i.if.end26.i.i_crit_edge, label %land.lhs.true18.i.i

for.body.i86.i.if.end26.i.i_crit_edge:            ; preds = %for.body.i86.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26.i.i

land.lhs.true18.i.i:                              ; preds = %for.body.i86.i
  %qp_context19.i.i = getelementptr inbounds %struct.ib_qp, ptr %56, i32 0, i32 16
  %59 = ptrtoint ptr %qp_context19.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %qp_context19.i.i, align 4
  %tobool20.not.i.i = icmp eq ptr %60, null
  br i1 %tobool20.not.i.i, label %land.lhs.true18.i.i.if.end26.i.i_crit_edge, label %if.then21.i.i

land.lhs.true18.i.i.if.end26.i.i_crit_edge:       ; preds = %land.lhs.true18.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26.i.i

if.then21.i.i:                                    ; preds = %land.lhs.true18.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %element.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %56, ptr %element.i.i, align 4
  %62 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %56, align 4
  %64 = ptrtoint ptr %event.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %63, ptr %event.i.i, align 4
  call void %58(ptr noundef nonnull %event.i.i, ptr noundef nonnull %60) #5
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.then21.i.i, %land.lhs.true18.i.i.if.end26.i.i_crit_edge, %for.body.i86.i.if.end26.i.i_crit_edge
  %65 = ptrtoint ptr %.pn51.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %.pn.i87.i = load ptr, ptr %.pn51.i.i, align 4
  %cmp.not.i88.i = icmp eq ptr %.pn.i87.i, %shared_qp_list.i85.i
  br i1 %cmp.not.i88.i, label %if.end26.i.i.qp_to_error.exit.i_crit_edge, label %if.end26.i.i.for.body.i86.i_crit_edge

if.end26.i.i.for.body.i86.i_crit_edge:            ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i86.i

if.end26.i.i.qp_to_error.exit.i_crit_edge:        ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qp_to_error.exit.i

qp_to_error.exit.i:                               ; preds = %if.end26.i.i.qp_to_error.exit.i_crit_edge, %if.end11.i.i.qp_to_error.exit.i_crit_edge, %for.body37.i.qp_to_error.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %event.i.i) #5
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %attr.i.i) #5
  %call.i.i89.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn77.in98.i) #5
  br i1 %call.i.i89.i, label %if.end.i.i90.i, label %qp_to_error.exit.i.list_del.exit.i_crit_edge

qp_to_error.exit.i.list_del.exit.i_crit_edge:     ; preds = %qp_to_error.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit.i

if.end.i.i90.i:                                   ; preds = %qp_to_error.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn77.in98.i, i32 0, i32 1
  %66 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %prev.i.i.i, align 4
  %68 = ptrtoint ptr %.pn77.in98.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %.pn77.in98.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %67, ptr %prev1.i.i.i.i, align 4
  %71 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %69, ptr %67, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i90.i, %qp_to_error.exit.i.list_del.exit.i_crit_edge
  %72 = ptrtoint ptr %.pn77.in98.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn77.in98.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn77.in98.i, i32 0, i32 1
  %73 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %74 = ptrtoint ptr %sec38.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sec38.i, align 4
  %error_list_count42.i = getelementptr inbounds %struct.ib_qp_security, ptr %75, i32 0, i32 7
  %call.i.i80.i = call zeroext i1 @__kasan_check_write(ptr noundef %error_list_count42.i, i32 noundef 4) #5
  call void @llvm.prefetch.p0(ptr %error_list_count42.i, i32 1, i32 3, i32 1) #5
  %76 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %error_list_count42.i, ptr %error_list_count42.i, i32 1, ptr elementtype(i32) %error_list_count42.i) #5, !srcloc !33
  %77 = ptrtoint ptr %sec38.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %sec38.i, align 4
  %destroying.i = getelementptr inbounds %struct.ib_qp_security, ptr %78, i32 0, i32 6
  %79 = ptrtoint ptr %destroying.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %destroying.i, align 4, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool44.not.i = icmp eq i8 %80, 0
  %mutex46.i = getelementptr inbounds %struct.ib_qp_security, ptr %78, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %mutex46.i) #5
  br i1 %tobool44.not.i, label %list_del.exit.i.for.inc51.i_crit_edge, label %if.then48.i

list_del.exit.i.for.inc51.i_crit_edge:            ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc51.i

if.then48.i:                                      ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %81 = ptrtoint ptr %sec38.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %sec38.i, align 4
  %error_complete.i = getelementptr inbounds %struct.ib_qp_security, ptr %82, i32 0, i32 8
  call void @complete(ptr noundef %error_complete.i) #5
  br label %for.inc51.i

for.inc51.i:                                      ; preds = %if.then48.i, %list_del.exit.i.for.inc51.i_crit_edge
  %cmp34.not.i = icmp eq ptr %.pn77100.i, %to_error_list.i
  br i1 %cmp34.not.i, label %for.inc51.i.check_pkey_qps.exit_crit_edge, label %for.inc51.i.for.body37.i_crit_edge

for.inc51.i.for.body37.i_crit_edge:               ; preds = %for.inc51.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body37.i

for.inc51.i.check_pkey_qps.exit_crit_edge:        ; preds = %for.inc51.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %check_pkey_qps.exit

check_pkey_qps.exit:                              ; preds = %for.inc51.i.check_pkey_qps.exit_crit_edge, %if.end22.i.check_pkey_qps.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pkey_val.i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %to_error_list.i) #5
  %83 = ptrtoint ptr %pkey.018 to i32
  call void @__asan_load4_noabort(i32 %83)
  %pkey.0 = load ptr, ptr %pkey.018, align 4
  %84 = ptrtoint ptr %port_data to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %port_data, align 8
  %pkey_list3 = getelementptr %struct.ib_port_data, ptr %85, i32 %port_num, i32 4
  %cmp.not = icmp eq ptr %pkey.0, %pkey_list3
  br i1 %cmp.not, label %check_pkey_qps.exit.for.end_crit_edge, label %check_pkey_qps.exit.for.body_crit_edge

check_pkey_qps.exit.for.body_crit_edge:           ; preds = %check_pkey_qps.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

check_pkey_qps.exit.for.end_crit_edge:            ; preds = %check_pkey_qps.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %check_pkey_qps.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ib_security_release_port_pkey_list(ptr nocapture noundef readonly %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %is_switch.i.i = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 19
  %0 = ptrtoint ptr %is_switch.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i.i = load i8, ptr %is_switch.i.i, align 4
  %1 = xor i8 %bf.load.i.i, -1
  %2 = lshr i8 %1, 7
  %.not.i = zext i8 %2 to i32
  %phys_port_cnt.i = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 21
  %port_data = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 11
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %bf.load.i.i33 = phi i8 [ %bf.load.i.i33.pr, %for.inc20 ], [ %bf.load.i.i, %entry ]
  %i.0 = phi i32 [ %inc, %for.inc20 ], [ %.not.i, %entry ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i.i33)
  %tobool.i.i = icmp slt i8 %bf.load.i.i33, 0
  br i1 %tobool.i.i, label %for.cond.rdma_end_port.exit_crit_edge, label %cond.false.i

for.cond.rdma_end_port.exit_crit_edge:            ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %rdma_end_port.exit

cond.false.i:                                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %phys_port_cnt.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %phys_port_cnt.i, align 8
  br label %rdma_end_port.exit

rdma_end_port.exit:                               ; preds = %cond.false.i, %for.cond.rdma_end_port.exit_crit_edge
  %cond.i = phi i32 [ %4, %cond.false.i ], [ 0, %for.cond.rdma_end_port.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %cond.i)
  %cmp.not = icmp ugt i32 %i.0, %cond.i
  br i1 %cmp.not, label %for.end21, label %for.body

for.body:                                         ; preds = %rdma_end_port.exit
  %5 = ptrtoint ptr %port_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %port_data, align 8
  %pkey_list = getelementptr %struct.ib_port_data, ptr %6, i32 %i.0, i32 4
  %7 = ptrtoint ptr %pkey_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pkey_list, align 4
  %cmp12.not35 = icmp eq ptr %8, %pkey_list
  br i1 %cmp12.not35, label %for.body.for.inc20_crit_edge, label %for.body.for.body13_crit_edge

for.body.for.body13_crit_edge:                    ; preds = %for.body
  br label %for.body13

for.body.for.inc20_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc20

for.body13:                                       ; preds = %list_del.exit.for.body13_crit_edge, %for.body.for.body13_crit_edge
  %pkey.036 = phi ptr [ %tmp_pkey.0, %list_del.exit.for.body13_crit_edge ], [ %8, %for.body.for.body13_crit_edge ]
  %9 = ptrtoint ptr %pkey.036 to i32
  call void @__asan_load4_noabort(i32 %9)
  %tmp_pkey.0 = load ptr, ptr %pkey.036, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pkey.036) #5
  br i1 %call.i.i, label %if.end.i.i, label %for.body13.list_del.exit_crit_edge

for.body13.list_del.exit_crit_edge:               ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pkey.036, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %pkey.036 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pkey.036, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body13.list_del.exit_crit_edge
  %16 = ptrtoint ptr %pkey.036 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %pkey.036, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %pkey.036, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %pkey.036) #5
  %18 = ptrtoint ptr %port_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %port_data, align 8
  %pkey_list11 = getelementptr %struct.ib_port_data, ptr %19, i32 %i.0, i32 4
  %cmp12.not = icmp eq ptr %tmp_pkey.0, %pkey_list11
  br i1 %cmp12.not, label %list_del.exit.for.inc20_crit_edge, label %list_del.exit.for.body13_crit_edge

list_del.exit.for.body13_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body13

list_del.exit.for.inc20_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc20

for.inc20:                                        ; preds = %list_del.exit.for.inc20_crit_edge, %for.body.for.inc20_crit_edge
  %inc = add i32 %i.0, 1
  %20 = ptrtoint ptr %is_switch.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i.i33.pr = load i8, ptr %is_switch.i.i, align 4
  br label %for.cond

for.end21:                                        ; preds = %rdma_end_port.exit
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_security_modify_qp(ptr nocapture noundef readonly %qp, ptr noundef %qp_attr, i32 noundef %qp_attr_mask, ptr noundef %udata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %real_qp1 = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 13
  %0 = ptrtoint ptr %real_qp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %real_qp1, align 4
  %qp_type = getelementptr inbounds %struct.ib_qp, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %qp_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qp_type, align 4
  %4 = add i32 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4094, i32 %4)
  %5 = icmp ult i32 %4, -4094
  %and7 = and i32 %qp_attr_mask, 16384
  %6 = and i32 %qp_attr_mask, 16432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %.not175 = icmp eq i32 %6, 0
  %and11 = and i32 %qp_attr_mask, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %entry.if.end45_crit_edge, label %land.lhs.true

entry.if.end45_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

land.lhs.true:                                    ; preds = %entry
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %port_num = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 19
  %9 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port_num, align 4
  %port_data.i = getelementptr inbounds %struct.ib_device, ptr %8, i32 0, i32 11
  %11 = ptrtoint ptr %port_data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %port_data.i, align 8
  %core_cap_flags.i = getelementptr %struct.ib_port_data, ptr %12, i32 %10, i32 1, i32 2
  %13 = ptrtoint ptr %core_cap_flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %core_cap_flags.i, align 4
  %and.i = and i32 %14, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.end45_crit_edge, label %land.rhs

land.lhs.true.if.end45_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

land.rhs:                                         ; preds = %land.lhs.true
  %qp_sec = getelementptr inbounds %struct.ib_qp, ptr %1, i32 0, i32 24
  %15 = ptrtoint ptr %qp_sec to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %qp_sec, align 4
  %tobool13.not = icmp eq ptr %16, null
  br i1 %tobool13.not, label %land.rhs18, label %land.rhs.if.end45_crit_edge

land.rhs.if.end45_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

land.rhs18:                                       ; preds = %land.rhs
  %.b141 = load i1, ptr @ib_security_modify_qp.__already_done, align 1
  br i1 %.b141, label %land.rhs18.if.end45_crit_edge, label %if.then, !prof !34

land.rhs18.if.end45_crit_edge:                    ; preds = %land.rhs18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.then:                                          ; preds = %land.rhs18
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @ib_security_modify_qp.__already_done, align 1
  %qp_num = getelementptr inbounds %struct.ib_qp, ptr %1, i32 0, i32 19
  %17 = ptrtoint ptr %qp_num to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %qp_num, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 590, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ib_security_modify_qp, i32 noundef %18) #5
  br label %if.end45

if.end45:                                         ; preds = %if.then, %land.rhs18.if.end45_crit_edge, %land.rhs.if.end45_crit_edge, %land.lhs.true.if.end45_crit_edge, %entry.if.end45_crit_edge
  %brmerge = select i1 %.not175, i1 true, i1 %5
  br i1 %brmerge, label %if.end45.if.end82_crit_edge, label %land.lhs.true56

if.end45.if.end82_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end82

land.lhs.true56:                                  ; preds = %if.end45
  %qp_sec57 = getelementptr inbounds %struct.ib_qp, ptr %1, i32 0, i32 24
  %19 = ptrtoint ptr %qp_sec57 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %qp_sec57, align 4
  %tobool58.not = icmp eq ptr %20, null
  br i1 %tobool58.not, label %land.lhs.true56.if.end82_crit_edge, label %if.then59

land.lhs.true56.if.end82_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end82

if.then59:                                        ; preds = %land.lhs.true56
  %mutex = getelementptr inbounds %struct.ib_qp_security, ptr %20, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %21 = ptrtoint ptr %qp_sec57 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %qp_sec57, align 4
  %ports_pkeys.i = getelementptr inbounds %struct.ib_qp_security, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %ports_pkeys.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ports_pkeys.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 64) #8
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then59.cleanup.sink.split_crit_edge, label %if.end.i

if.then59.cleanup.sink.split_crit_edge:           ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %if.then59
  br i1 %tobool12.not, label %if.else.i, label %if.end11.thread.i

if.else.i:                                        ; preds = %if.end.i
  %tobool4.not.i = icmp eq ptr %24, null
  br i1 %tobool4.not.i, label %if.end11.thread112.i, label %if.end11.i

if.end11.i:                                       ; preds = %if.else.i
  %port_num7.i = getelementptr inbounds %struct.ib_port_pkey, ptr %24, i32 0, i32 2
  %26 = ptrtoint ptr %port_num7.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %port_num7.i, align 4
  %port_num9.i = getelementptr inbounds %struct.ib_port_pkey, ptr %call7.i.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %port_num9.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %port_num9.i, align 8
  %and12.i = and i32 %qp_attr_mask, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %if.end11.i.lor.lhs.false.thread.i_crit_edge, label %lor.lhs.false.i

if.end11.i.lor.lhs.false.thread.i_crit_edge:      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false.thread.i

if.end11.thread112.i:                             ; preds = %if.else.i
  %and12113.i = and i32 %qp_attr_mask, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12113.i)
  %tobool13.not114.i = icmp eq i32 %and12113.i, 0
  br i1 %tobool13.not114.i, label %if.end11.thread112.i.if.end36.thread119.i_crit_edge, label %if.end36.thread.i

if.end11.thread112.i.if.end36.thread119.i_crit_edge: ; preds = %if.end11.thread112.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.thread119.i

if.end11.thread.i:                                ; preds = %if.end.i
  %port_num.i = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 19
  %29 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %port_num.i, align 4
  %port_num3.i = getelementptr inbounds %struct.ib_port_pkey, ptr %call7.i.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %port_num3.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %port_num3.i, align 8
  %and12104.i = and i32 %qp_attr_mask, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12104.i)
  %tobool13.not105.i = icmp eq i32 %and12104.i, 0
  br i1 %tobool13.not105.i, label %if.else17.i, label %if.then14.thread.i

if.then14.thread.i:                               ; preds = %if.end11.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  %pkey_index106.i = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 12
  %32 = ptrtoint ptr %pkey_index106.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %pkey_index106.i, align 8
  %pkey_index16107.i = getelementptr inbounds %struct.ib_port_pkey, ptr %call7.i.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %pkey_index16107.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %pkey_index16107.i, align 4
  br label %if.then33.i

if.else17.i:                                      ; preds = %if.end11.thread.i
  %cond.i = icmp eq ptr %24, null
  br i1 %cond.i, label %if.else17.i.if.end36.thread119.i_crit_edge, label %if.else17.i.lor.lhs.false.thread.i_crit_edge

if.else17.i.lor.lhs.false.thread.i_crit_edge:     ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false.thread.i

if.else17.i.if.end36.thread119.i_crit_edge:       ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.thread119.i

lor.lhs.false.thread.i:                           ; preds = %if.else17.i.lor.lhs.false.thread.i_crit_edge, %if.end11.i.lor.lhs.false.thread.i_crit_edge
  %pkey_index21.i = getelementptr inbounds %struct.ib_port_pkey, ptr %24, i32 0, i32 1
  br label %land.lhs.true31.i

lor.lhs.false.i:                                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  %pkey_index.c.i = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 12
  br label %land.lhs.true31.i

land.lhs.true31.i:                                ; preds = %lor.lhs.false.i, %lor.lhs.false.thread.i
  %.sink.in.i = phi ptr [ %pkey_index.c.i, %lor.lhs.false.i ], [ %pkey_index21.i, %lor.lhs.false.thread.i ]
  %35 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %.sink.i = load i16, ptr %.sink.in.i, align 4
  %pkey_index16.c.i = getelementptr inbounds %struct.ib_port_pkey, ptr %call7.i.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %pkey_index16.c.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %.sink.i, ptr %pkey_index16.c.i, align 4
  %37 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.not.i = icmp eq i32 %38, 0
  br i1 %cmp.not.i, label %land.lhs.true31.i.if.end36.i_crit_edge, label %land.lhs.true31.i.if.then33.i_crit_edge

land.lhs.true31.i.if.then33.i_crit_edge:          ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then33.i

land.lhs.true31.i.if.end36.i_crit_edge:           ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.i

if.then33.i:                                      ; preds = %land.lhs.true31.i.if.then33.i_crit_edge, %if.then14.thread.i
  %39 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %call7.i.i.i, align 8
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then33.i, %land.lhs.true31.i.if.end36.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool38.not.i = icmp eq i32 %and7, 0
  br i1 %tobool38.not.i, label %if.else45.i, label %if.end36.i.if.then39.i_crit_edge

if.end36.i.if.then39.i_crit_edge:                 ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then39.i

if.end36.thread119.i:                             ; preds = %if.else17.i.if.end36.thread119.i_crit_edge, %if.end11.thread112.i.if.end36.thread119.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool38.not121.i = icmp eq i32 %and7, 0
  br i1 %tobool38.not121.i, label %if.end36.thread119.i.if.end66_crit_edge, label %if.end36.thread119.i.if.then39.i_crit_edge

if.end36.thread119.i.if.then39.i_crit_edge:       ; preds = %if.end36.thread119.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then39.i

if.end36.thread119.i.if.end66_crit_edge:          ; preds = %if.end36.thread119.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

if.end36.thread.i:                                ; preds = %if.end11.thread112.i
  %pkey_index.c116.i = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 12
  %40 = ptrtoint ptr %pkey_index.c116.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %pkey_index.c116.i, align 8
  %pkey_index16.c117.i = getelementptr inbounds %struct.ib_port_pkey, ptr %call7.i.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %pkey_index16.c117.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %pkey_index16.c117.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool38.not109.i = icmp eq i32 %and7, 0
  br i1 %tobool38.not109.i, label %if.end36.thread.i.if.end66_crit_edge, label %if.end36.thread.i.if.then39.i_crit_edge

if.end36.thread.i.if.then39.i_crit_edge:          ; preds = %if.end36.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then39.i

if.end36.thread.i.if.end66_crit_edge:             ; preds = %if.end36.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

if.then39.i:                                      ; preds = %if.end36.thread.i.if.then39.i_crit_edge, %if.end36.thread119.i.if.then39.i_crit_edge, %if.end36.i.if.then39.i_crit_edge
  %alt_port_num.i = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 23
  %43 = ptrtoint ptr %alt_port_num.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %alt_port_num.i, align 4
  %port_num40.i = getelementptr inbounds %struct.ib_ports_pkeys, ptr %call7.i.i.i, i32 0, i32 1, i32 2
  %45 = ptrtoint ptr %port_num40.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %port_num40.i, align 8
  %alt_pkey_index.i = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 13
  %46 = ptrtoint ptr %alt_pkey_index.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %alt_pkey_index.i, align 2
  %pkey_index42.i = getelementptr inbounds %struct.ib_ports_pkeys, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %48 = ptrtoint ptr %pkey_index42.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %pkey_index42.i, align 4
  br label %if.end64.sink.split.i

if.else45.i:                                      ; preds = %if.end36.i
  %tobool46.not.i = icmp eq ptr %24, null
  br i1 %tobool46.not.i, label %if.else45.i.if.end66_crit_edge, label %if.then47.i

if.else45.i.if.end66_crit_edge:                   ; preds = %if.else45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

if.then47.i:                                      ; preds = %if.else45.i
  %alt48.i = getelementptr inbounds %struct.ib_ports_pkeys, ptr %24, i32 0, i32 1
  %port_num49.i = getelementptr inbounds %struct.ib_ports_pkeys, ptr %24, i32 0, i32 1, i32 2
  %49 = ptrtoint ptr %port_num49.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %port_num49.i, align 4
  %port_num51.i = getelementptr inbounds %struct.ib_ports_pkeys, ptr %call7.i.i.i, i32 0, i32 1, i32 2
  %51 = ptrtoint ptr %port_num51.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %port_num51.i, align 8
  %pkey_index53.i = getelementptr inbounds %struct.ib_ports_pkeys, ptr %24, i32 0, i32 1, i32 1
  %52 = ptrtoint ptr %pkey_index53.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %pkey_index53.i, align 4
  %pkey_index55.i = getelementptr inbounds %struct.ib_ports_pkeys, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %54 = ptrtoint ptr %pkey_index55.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %pkey_index55.i, align 4
  %55 = ptrtoint ptr %alt48.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %alt48.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp58.not.i = icmp eq i32 %56, 0
  br i1 %cmp58.not.i, label %if.then47.i.if.end66_crit_edge, label %if.then47.i.if.end64.sink.split.i_crit_edge

if.then47.i.if.end64.sink.split.i_crit_edge:      ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64.sink.split.i

if.then47.i.if.end66_crit_edge:                   ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

if.end64.sink.split.i:                            ; preds = %if.then47.i.if.end64.sink.split.i_crit_edge, %if.then39.i
  %alt50.sink.i = getelementptr inbounds %struct.ib_ports_pkeys, ptr %call7.i.i.i, i32 0, i32 1
  %57 = ptrtoint ptr %alt50.sink.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %alt50.sink.i, align 8
  br label %if.end66

if.end66:                                         ; preds = %if.end64.sink.split.i, %if.then47.i.if.end66_crit_edge, %if.else45.i.if.end66_crit_edge, %if.end36.thread.i.if.end66_crit_edge, %if.end36.thread119.i.if.end66_crit_edge
  %58 = ptrtoint ptr %qp_sec57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %qp_sec57, align 4
  %sec.i = getelementptr inbounds %struct.ib_port_pkey, ptr %call7.i.i.i, i32 0, i32 5
  %60 = ptrtoint ptr %sec.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %sec.i, align 4
  %sec69.i = getelementptr inbounds %struct.ib_ports_pkeys, ptr %call7.i.i.i, i32 0, i32 1, i32 5
  %61 = ptrtoint ptr %sec69.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %59, ptr %sec69.i, align 4
  %call67 = tail call fastcc i32 @port_pkey_list_insert(ptr noundef nonnull %call7.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end71, label %if.end66.if.then92_crit_edge

if.end66.if.then92_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then92

if.end71:                                         ; preds = %if.end66
  %alt = getelementptr inbounds %struct.ib_ports_pkeys, ptr %call7.i.i.i, i32 0, i32 1
  %call70 = tail call fastcc i32 @port_pkey_list_insert(ptr noundef %alt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool72.not = icmp eq i32 %call70, 0
  br i1 %tobool72.not, label %if.end77, label %if.end71.if.then92_crit_edge

if.end71.if.then92_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then92

if.end77:                                         ; preds = %if.end71
  %62 = ptrtoint ptr %qp_sec57 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %qp_sec57, align 4
  %call75 = tail call fastcc i32 @check_qp_port_pkey_settings(ptr noundef nonnull %call7.i.i.i, ptr noundef %63)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool78.not = icmp eq i32 %call75, 0
  br i1 %tobool78.not, label %if.end77.if.end82_crit_edge, label %if.end77.if.then92_crit_edge

if.end77.if.then92_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then92

if.end77.if.end82_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end82

if.end82:                                         ; preds = %if.end77.if.end82_crit_edge, %land.lhs.true56.if.end82_crit_edge, %if.end45.if.end82_crit_edge
  %new_pps.0153 = phi ptr [ %call7.i.i.i, %if.end77.if.end82_crit_edge ], [ null, %land.lhs.true56.if.end82_crit_edge ], [ null, %if.end45.if.end82_crit_edge ]
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 4
  %modify_qp = getelementptr inbounds %struct.ib_device, ptr %65, i32 0, i32 1, i32 47
  %66 = ptrtoint ptr %modify_qp to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %modify_qp, align 4
  %call81 = tail call i32 %67(ptr noundef %1, ptr noundef %qp_attr, i32 noundef %qp_attr_mask, ptr noundef %udata) #5
  %tobool83.not = icmp eq ptr %new_pps.0153, null
  br i1 %tobool83.not, label %if.end82.cleanup_crit_edge, label %if.then84

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then84:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool85.not = icmp eq i32 %call81, 0
  br i1 %tobool85.not, label %if.end90, label %if.then84.if.then92_crit_edge

if.then84.if.then92_crit_edge:                    ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then92

if.end90:                                         ; preds = %if.then84
  %qp_sec87 = getelementptr inbounds %struct.ib_qp, ptr %1, i32 0, i32 24
  %68 = ptrtoint ptr %qp_sec87 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %qp_sec87, align 4
  %ports_pkeys = getelementptr inbounds %struct.ib_qp_security, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %ports_pkeys to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ports_pkeys, align 4
  store ptr %new_pps.0153, ptr %ports_pkeys, align 4
  %tobool91.not = icmp eq ptr %71, null
  br i1 %tobool91.not, label %if.end90.if.end95_crit_edge, label %if.end90.if.then92_crit_edge

if.end90.if.then92_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then92

if.end90.if.end95_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95

if.then92:                                        ; preds = %if.end90.if.then92_crit_edge, %if.then84.if.then92_crit_edge, %if.end77.if.then92_crit_edge, %if.end71.if.then92_crit_edge, %if.end66.if.then92_crit_edge
  %tmp_pps.0173 = phi ptr [ %71, %if.end90.if.then92_crit_edge ], [ %new_pps.0153, %if.then84.if.then92_crit_edge ], [ %call7.i.i.i, %if.end66.if.then92_crit_edge ], [ %call7.i.i.i, %if.end71.if.then92_crit_edge ], [ %call7.i.i.i, %if.end77.if.then92_crit_edge ]
  %ret.2163167171 = phi i32 [ 0, %if.end90.if.then92_crit_edge ], [ %call81, %if.then84.if.then92_crit_edge ], [ %call67, %if.end66.if.then92_crit_edge ], [ %call70, %if.end71.if.then92_crit_edge ], [ %call75, %if.end77.if.then92_crit_edge ]
  tail call fastcc void @port_pkey_list_remove(ptr noundef nonnull %tmp_pps.0173)
  %alt94 = getelementptr inbounds %struct.ib_ports_pkeys, ptr %tmp_pps.0173, i32 0, i32 1
  tail call fastcc void @port_pkey_list_remove(ptr noundef %alt94)
  br label %if.end95

if.end95:                                         ; preds = %if.then92, %if.end90.if.end95_crit_edge
  %tmp_pps.0174 = phi ptr [ %tmp_pps.0173, %if.then92 ], [ null, %if.end90.if.end95_crit_edge ]
  %ret.2163167172 = phi i32 [ %ret.2163167171, %if.then92 ], [ 0, %if.end90.if.end95_crit_edge ]
  tail call void @kfree(ptr noundef %tmp_pps.0174) #5
  %qp_sec96 = getelementptr inbounds %struct.ib_qp, ptr %1, i32 0, i32 24
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end95, %if.then59.cleanup.sink.split_crit_edge
  %qp_sec96.sink = phi ptr [ %qp_sec96, %if.end95 ], [ %qp_sec57, %if.then59.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %ret.2163167172, %if.end95 ], [ -12, %if.then59.cleanup.sink.split_crit_edge ]
  %72 = ptrtoint ptr %qp_sec96.sink to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %qp_sec96.sink, align 4
  %mutex97 = getelementptr inbounds %struct.ib_qp_security, ptr %73, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %mutex97) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end82.cleanup_crit_edge
  %retval.0 = phi i32 [ %call81, %if.end82.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ib_mad_agent_security_change() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @mad_agent_list_lock) #5
  %.pn18 = load ptr, ptr @mad_agent_list, align 4
  %cmp.not19 = icmp eq ptr %.pn18, @mad_agent_list
  br i1 %cmp.not19, label %entry.for.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

do.body2:                                         ; preds = %dev_name.exit.do.body2_crit_edge, %entry.do.body2_crit_edge
  %.pn20 = phi ptr [ %.pn, %dev_name.exit.do.body2_crit_edge ], [ %.pn18, %entry.do.body2_crit_edge ]
  %ag.0 = getelementptr i8, ptr %.pn20, i32 -32
  %security = getelementptr i8, ptr %.pn20, i32 -4
  %0 = ptrtoint ptr %security to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %security, align 4
  %2 = ptrtoint ptr %ag.0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ag.0, align 4
  %init_name.i = getelementptr inbounds %struct.ib_device, ptr %3, i32 0, i32 13, i32 0, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %do.body2.dev_name.exit_crit_edge

do.body2.dev_name.exit_crit_edge:                 ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  %6 = getelementptr inbounds %struct.ib_device, ptr %3, i32 0, i32 13
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.body2.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %8, %if.end.i ], [ %5, %do.body2.dev_name.exit_crit_edge ]
  %port_num = getelementptr i8, ptr %.pn20, i32 8
  %9 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %port_num, align 4
  %call3 = tail call i32 @security_ib_endport_manage_subnet(ptr noundef %1, ptr noundef %retval.0.i, i8 noundef zeroext %10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  %smp_allowed = getelementptr i8, ptr %.pn20, i32 10
  %frombool = zext i1 %tobool.not to i8
  %11 = ptrtoint ptr %smp_allowed to i32
  call void @__asan_store1_noabort(i32 %11)
  store volatile i8 %frombool, ptr %smp_allowed, align 2
  %12 = ptrtoint ptr %.pn20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn = load ptr, ptr %.pn20, align 4
  %cmp.not = icmp eq ptr %.pn, @mad_agent_list
  br i1 %cmp.not, label %dev_name.exit.for.end_crit_edge, label %dev_name.exit.do.body2_crit_edge

dev_name.exit.do.body2_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

dev_name.exit.for.end_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %dev_name.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @mad_agent_list_lock) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_ib_endport_manage_subnet(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_mad_agent_security_setup(ptr noundef %agent, i32 noundef %qp_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %agent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %agent, align 4
  %port_num = getelementptr inbounds %struct.ib_mad_agent, ptr %agent, i32 0, i32 9
  %2 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %port_num, align 4
  %conv = zext i8 %3 to i32
  %port_data.i = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %port_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_data.i, align 8
  %core_cap_flags.i = getelementptr %struct.ib_port_data, ptr %5, i32 %conv, i32 1, i32 2
  %6 = ptrtoint ptr %core_cap_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %core_cap_flags.i, align 4
  %and.i = and i32 %7, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %mad_agent_sec_list = getelementptr inbounds %struct.ib_mad_agent, ptr %agent, i32 0, i32 8
  %8 = ptrtoint ptr %mad_agent_sec_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %mad_agent_sec_list, ptr %mad_agent_sec_list, align 4
  %prev.i = getelementptr inbounds %struct.ib_mad_agent, ptr %agent, i32 0, i32 8, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %mad_agent_sec_list, ptr %prev.i, align 4
  %security = getelementptr inbounds %struct.ib_mad_agent, ptr %agent, i32 0, i32 7
  %call1 = tail call i32 @security_ib_alloc_security(ptr noundef %security) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %qp_type)
  %cmp.not = icmp eq i32 %qp_type, 0
  br i1 %cmp.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  tail call void @_raw_spin_lock(ptr noundef nonnull @mad_agent_list_lock) #5
  %10 = ptrtoint ptr %security to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %security, align 4
  %12 = ptrtoint ptr %agent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %agent, align 4
  %init_name.i = getelementptr inbounds %struct.ib_device, ptr %13, i32 0, i32 13, i32 0, i32 0, i32 3
  %14 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end6.dev_name.exit_crit_edge

if.end6.dev_name.exit_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %16 = getelementptr inbounds %struct.ib_device, ptr %13, i32 0, i32 13
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end6.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %18, %if.end.i ], [ %15, %if.end6.dev_name.exit_crit_edge ]
  %19 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %port_num, align 4
  %call11 = tail call i32 @security_ib_endport_manage_subnet(ptr noundef %11, ptr noundef %retval.0.i, i8 noundef zeroext %20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %do.body16, label %free_security

do.body16:                                        ; preds = %dev_name.exit
  %smp_allowed = getelementptr inbounds %struct.ib_mad_agent, ptr %agent, i32 0, i32 11
  %21 = ptrtoint ptr %smp_allowed to i32
  call void @__asan_store1_noabort(i32 %21)
  store volatile i8 1, ptr %smp_allowed, align 2
  %22 = load ptr, ptr @mad_agent_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %mad_agent_sec_list, ptr noundef nonnull @mad_agent_list, ptr noundef %22) #5
  br i1 %call.i.i, label %if.end.i.i, label %do.body16.list_add.exit_crit_edge

do.body16.list_add.exit_crit_edge:                ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add.exit

if.end.i.i:                                       ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %mad_agent_sec_list, ptr %prev1.i.i, align 4
  %24 = ptrtoint ptr %mad_agent_sec_list to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %22, ptr %mad_agent_sec_list, align 4
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @mad_agent_list, ptr %prev.i, align 4
  store volatile ptr %mad_agent_sec_list, ptr @mad_agent_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %do.body16.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @mad_agent_list_lock) #5
  br label %cleanup

free_security:                                    ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock(ptr noundef nonnull @mad_agent_list_lock) #5
  %26 = ptrtoint ptr %security to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %security, align 4
  tail call void @security_ib_free_security(ptr noundef %27) #5
  br label %cleanup

cleanup:                                          ; preds = %free_security, %list_add.exit, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %free_security ], [ 0, %list_add.exit ], [ 0, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_ib_free_security(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ib_mad_agent_security_cleanup(ptr noundef %agent) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %agent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %agent, align 4
  %port_num = getelementptr inbounds %struct.ib_mad_agent, ptr %agent, i32 0, i32 9
  %2 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %port_num, align 4
  %conv = zext i8 %3 to i32
  %port_data.i = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %port_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_data.i, align 8
  %core_cap_flags.i = getelementptr %struct.ib_port_data, ptr %5, i32 %conv, i32 1, i32 2
  %6 = ptrtoint ptr %core_cap_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %core_cap_flags.i, align 4
  %and.i = and i32 %7, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  %qp = getelementptr inbounds %struct.ib_mad_agent, ptr %agent, i32 0, i32 1
  %8 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %qp, align 4
  %qp_type = getelementptr inbounds %struct.ib_qp, ptr %9, i32 0, i32 22
  %10 = ptrtoint ptr %qp_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %qp_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @_raw_spin_lock(ptr noundef nonnull @mad_agent_list_lock) #5
  %mad_agent_sec_list = getelementptr inbounds %struct.ib_mad_agent, ptr %agent, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mad_agent_sec_list) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.then2.list_del.exit_crit_edge

if.then2.list_del.exit_crit_edge:                 ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.ib_mad_agent, ptr %agent, i32 0, i32 8, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %mad_agent_sec_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mad_agent_sec_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then2.list_del.exit_crit_edge
  %18 = ptrtoint ptr %mad_agent_sec_list to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %mad_agent_sec_list, align 4
  %prev.i = getelementptr inbounds %struct.ib_mad_agent, ptr %agent, i32 0, i32 8, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @mad_agent_list_lock) #5
  br label %if.end3

if.end3:                                          ; preds = %list_del.exit, %if.end.if.end3_crit_edge
  %security = getelementptr inbounds %struct.ib_mad_agent, ptr %agent, i32 0, i32 7
  %20 = ptrtoint ptr %security to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %security, align 4
  tail call void @security_ib_free_security(ptr noundef %21) #5
  br label %return

return:                                           ; preds = %if.end3, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_mad_enforce_security(ptr noundef %map, i16 noundef zeroext %pkey_index) local_unnamed_addr #0 align 64 {
entry:
  %subnet_prefix.i = alloca i64, align 8
  %pkey.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 4
  %port_num = getelementptr inbounds %struct.ib_mad_agent, ptr %map, i32 0, i32 9
  %2 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %port_num, align 4
  %conv = zext i8 %3 to i32
  %port_data.i = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %port_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_data.i, align 8
  %core_cap_flags.i = getelementptr %struct.ib_port_data, ptr %5, i32 %conv, i32 1, i32 2
  %6 = ptrtoint ptr %core_cap_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %core_cap_flags.i, align 4
  %and.i = and i32 %7, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  %qp = getelementptr inbounds %struct.ib_mad_agent, ptr %map, i32 0, i32 1
  %8 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %qp, align 4
  %qp_type = getelementptr inbounds %struct.ib_qp, ptr %9, i32 0, i32 22
  %10 = ptrtoint ptr %qp_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %qp_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %smp_allowed = getelementptr inbounds %struct.ib_mad_agent, ptr %map, i32 0, i32 11
  %12 = ptrtoint ptr %smp_allowed to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load volatile i8, ptr %smp_allowed, align 2, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  %. = select i1 %tobool.not, i32 -13, i32 0
  br label %return

if.end9:                                          ; preds = %if.end
  %security = getelementptr inbounds %struct.ib_mad_agent, ptr %map, i32 0, i32 7
  %14 = ptrtoint ptr %security to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %security, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %subnet_prefix.i) #5
  %16 = ptrtoint ptr %subnet_prefix.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 -1, ptr %subnet_prefix.i, align 8, !annotation !30
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pkey.i) #5
  %17 = ptrtoint ptr %pkey.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 -1, ptr %pkey.i, align 2, !annotation !30
  %18 = ptrtoint ptr %core_cap_flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %core_cap_flags.i, align 4
  %and.i.i = and i32 %19, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end9.ib_security_pkey_access.exit_crit_edge, label %if.end.i

if.end9.ib_security_pkey_access.exit_crit_edge:   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %ib_security_pkey_access.exit

if.end.i:                                         ; preds = %if.end9
  %conv.i = zext i16 %pkey_index to i32
  %call1.i = call i32 @ib_get_cached_pkey(ptr noundef %1, i32 noundef %conv, i32 noundef %conv.i, ptr noundef nonnull %pkey.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.ib_security_pkey_access.exit_crit_edge

if.end.i.ib_security_pkey_access.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ib_security_pkey_access.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @ib_get_cached_subnet_prefix(ptr noundef %1, i32 noundef %conv, ptr noundef nonnull %subnet_prefix.i) #5
  %20 = ptrtoint ptr %subnet_prefix.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %subnet_prefix.i, align 8
  %22 = ptrtoint ptr %pkey.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %pkey.i, align 2
  %call4.i = call i32 @security_ib_pkey_access(ptr noundef %15, i64 noundef %21, i16 noundef zeroext %23) #5
  br label %ib_security_pkey_access.exit

ib_security_pkey_access.exit:                     ; preds = %if.end3.i, %if.end.i.ib_security_pkey_access.exit_crit_edge, %if.end9.ib_security_pkey_access.exit_crit_edge
  %retval.0.i = phi i32 [ %call4.i, %if.end3.i ], [ 0, %if.end9.ib_security_pkey_access.exit_crit_edge ], [ %call1.i, %if.end.i.ib_security_pkey_access.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pkey.i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %subnet_prefix.i) #5
  br label %return

return:                                           ; preds = %ib_security_pkey_access.exit, %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %ib_security_pkey_access.exit ], [ 0, %entry.return_crit_edge ], [ %., %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_get_cached_pkey(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_get_cached_subnet_prefix(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_ib_pkey_access(ptr noundef, i64 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_modify_qp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !12, !13, !15, !16, !18, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @ib_create_qp_security.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/core/security.c", i32 437, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__ksymtab_ib_create_qp_security, !4, !"__ksymtab_ib_create_qp_security", i1 false, i1 false}
!4 = !{!"../drivers/infiniband/core/security.c", i32 449, i32 1}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../drivers/infiniband/core/security.c", i32 586, i32 2}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__func__.ib_security_modify_qp, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @init_completion.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../include/linux/completion.h", i32 87, i32 2}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @port_pkey_list_insert.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/infiniband/core/security.c", i32 282, i32 4}
!15 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/infiniband/core/security.c", i32 44, i32 8}
!18 = !{ptr @mad_agent_list_lock, !17, !"mad_agent_list_lock", i1 false, i1 false}
!19 = !{ptr @mad_agent_list, !20, !"mad_agent_list", i1 false, i1 false}
!20 = !{!"../drivers/infiniband/core/security.c", i32 42, i32 8}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{!"auto-init"}
!31 = !{i8 0, i8 2}
!32 = !{i64 2148411698, i64 2148411724, i64 2148411753, i64 2148411787, i64 2148411818, i64 2148411841}
!33 = !{i64 2148414163, i64 2148414189, i64 2148414218, i64 2148414252, i64 2148414283, i64 2148414306}
!34 = !{!"branch_weights", i32 2000, i32 1}
