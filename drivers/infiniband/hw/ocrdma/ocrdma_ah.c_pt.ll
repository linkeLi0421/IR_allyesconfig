; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/ocrdma/ocrdma_ah.c_pt.bc'
source_filename = "../drivers/infiniband/hw/ocrdma/ocrdma_ah.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ocrdma_eth_vlan = type { [6 x i8], [6 x i8], i16, i16, i16 }
%struct.ib_ah = type { ptr, ptr, ptr, ptr, i32 }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.163 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.ib_gid = type { %struct.anon.158 }
%struct.anon.158 = type { i64, i64 }
%union.anon.163 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%struct.ocrdma_dev = type { %struct.ib_device, %struct.ocrdma_dev_attr, %struct.mutex, [60 x i8], %struct.spinlock, ptr, ptr, ptr, i32, %struct.delayed_work, i16, i16, %struct.spinlock, i32, ptr, ptr, %struct.anon.179, ptr, %struct.ocrdma_mq, %struct.mqe_ctx, %struct.be_dev_info, %struct.phy_info, [32 x i8], i32, %struct.list_head, i32, ptr, i8, i8, %struct.atomic_t, i16, i32, i32, i32, %struct.mutex, %struct.stats_mem, %struct.ocrdma_stats, %struct.ocrdma_stats, %struct.ocrdma_stats, %struct.ocrdma_stats, %struct.ocrdma_stats, %struct.ocrdma_stats, %struct.ocrdma_stats, %struct.ocrdma_stats, %struct.ocrdma_stats, %struct.ocrdma_stats, %struct.ocrdma_stats, ptr, [17 x %struct.atomic_t], [22 x %struct.atomic_t], ptr }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.171, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.171 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ocrdma_dev_attr = type { [32 x i8], i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i16, i16, i32, i8, i8, i32, i32, i32, i8, i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.179 = type { ptr, i32, i32, i32, %struct.spinlock, i32, %struct.ocrdma_pbl }
%struct.ocrdma_pbl = type { ptr, i32 }
%struct.ocrdma_mq = type { %struct.ocrdma_queue_info, %struct.ocrdma_queue_info, i8 }
%struct.ocrdma_queue_info = type { ptr, i32, i32, i16, i16, i16, i16, i16, i8 }
%struct.mqe_ctx = type { %struct.mutex, %struct.wait_queue_head, i32, i16, i16, i8, i8 }
%struct.be_dev_info = type { ptr, i64, i32, i32, i64, i32, ptr, ptr, [6 x i8], i32, i32, %struct.anon.181 }
%struct.anon.181 = type { i32, i32, [32 x i32] }
%struct.phy_info = type { i16, i16, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.stats_mem = type { %struct.ocrdma_mqe, ptr, i32, i32, ptr }
%struct.ocrdma_mqe = type { %struct.ocrdma_mqe_hdr, %union.anon.182 }
%struct.ocrdma_mqe_hdr = type { i32, i32, i32, i32, i32 }
%union.anon.182 = type { %struct.ocrdma_mqe_emb_cmd }
%struct.ocrdma_mqe_emb_cmd = type { %struct.ocrdma_mbx_hdr, [220 x i8] }
%struct.ocrdma_mbx_hdr = type { i32, i32, i32, i32 }
%struct.ocrdma_stats = type { i8, ptr }
%struct.ib_gid_attr = type { ptr, ptr, %union.ib_gid, i32, i16, i32 }
%struct.ocrdma_ah = type { %struct.ib_ah, ptr, i16, i32, i8 }
%struct.ocrdma_pd = type { %struct.ib_pd, ptr, i32, i32, i32, i8 }
%struct.ib_pd = type { i32, i32, ptr, ptr, %struct.atomic_t, i32, ptr, %struct.rdma_restrack_entry }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.ocrdma_av = type { %struct.ocrdma_eth_vlan, %struct.ocrdma_grh, i32 }
%struct.ocrdma_grh = type <{ i32, i32, [16 x i8], [16 x i8], i16 }>
%struct.ocrdma_ucontext = type { %struct.ib_ucontext, %struct.list_head, %struct.mutex, ptr, i32, %struct.anon.172 }
%struct.ib_ucontext = type { ptr, ptr, %struct.ib_rdmacg_object, %struct.rdma_restrack_entry, %struct.xarray }
%struct.ib_rdmacg_object = type { ptr }
%struct.anon.172 = type { ptr, i32, i32 }
%struct.ib_mad_hdr = type { i8, i8, i8, i8, i16, i16, i64, i16, i16, i32 }

@set_av_attr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013ocrdma%d:Using VLAN with PFC is recommended\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"set_av_attr\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/infiniband/hw/ocrdma/ocrdma_ah.c\00", [55 x i8] zeroinitializer }, align 32
@set_av_attr._entry_ptr = internal global ptr @set_av_attr._entry, section ".printk_index", align 4
@set_av_attr._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013ocrdma%d:Using VLAN 0 for this connection\0A\00", [51 x i8] zeroinitializer }, align 32
@set_av_attr._entry_ptr.5 = internal global ptr @set_av_attr._entry.3, section ".printk_index", align 4
@ocrdma_hdr_type_to_proto_num._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 68, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013ocrdma%d: Invalid network header\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ocrdma_hdr_type_to_proto_num\00", [35 x i8] zeroinitializer }, align 32
@ocrdma_hdr_type_to_proto_num._entry_ptr = internal global ptr @ocrdma_hdr_type_to_proto_num._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 103, i32 4 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 105, i32 4 }
@___asan_gen_.27 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private constant [44 x i8] c"../drivers/infiniband/hw/ocrdma/ocrdma_ah.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 68, i32 3 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @ocrdma_hdr_type_to_proto_num._entry, ptr @ocrdma_hdr_type_to_proto_num._entry_ptr, ptr @set_av_attr._entry, ptr @set_av_attr._entry.3, ptr @set_av_attr._entry_ptr, ptr @set_av_attr._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_av_attr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_av_attr._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_hdr_type_to_proto_num._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocrdma_create_ah(ptr noundef %ibah, ptr nocapture noundef readonly %init_attr, ptr nocapture noundef readnone %udata) local_unnamed_addr #0 align 64 {
entry:
  %eth.i = alloca %struct.ocrdma_eth_vlan, align 4
  %grh.sroa.7.i = alloca [16 x i8], align 1
  %grh.sroa.8.i = alloca [16 x i8], align 1
  %vlan_tag = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vlan_tag) #7
  %0 = ptrtoint ptr %vlan_tag to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %vlan_tag, align 2
  %pd1 = getelementptr inbounds %struct.ib_ah, ptr %ibah, i32 0, i32 1
  %1 = ptrtoint ptr %pd1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pd1, align 4
  %3 = ptrtoint ptr %init_attr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_attr, align 4
  %5 = ptrtoint ptr %ibah to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ibah, align 4
  %type = getelementptr inbounds %struct.rdma_ah_attr, ptr %4, i32 0, i32 5
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp.not = icmp eq i32 %8, 2
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ah_flags.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %4, i32 0, i32 4
  %9 = ptrtoint ptr %ah_flags.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ah_flags.i, align 8
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %update_sl = getelementptr inbounds %struct.ocrdma_dev, ptr %6, i32 0, i32 29
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %update_sl, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !24
  tail call void @llvm.prefetch.p0(ptr %update_sl, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %if.end
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %update_sl, ptr %update_sl, i32 1, i32 0, ptr elementtype(i32) %update_sl) #7, !srcloc !25
  %asmresult.i.i.i = extractvalue { i32, i32 } %12, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %12, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i.i.i)
  %tobool6.not = icmp eq i32 %asmresult3.i.i.i, 0
  br i1 %tobool6.not, label %atomic_cmpxchg.exit.if.end8_crit_edge, label %if.then7

atomic_cmpxchg.exit.if.end8_crit_edge:            ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then7:                                         ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ocrdma_init_service_level(ptr noundef %6) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %atomic_cmpxchg.exit.if.end8_crit_edge
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %4, align 8
  %call10 = call i32 @rdma_read_gid_l2_fields(ptr noundef %14, ptr noundef nonnull %vlan_tag, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %call14 = call i32 @ocrdma_alloc_av(ptr noundef %6, ptr noundef %ibah) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %gid_type.i = getelementptr inbounds %struct.ib_gid_attr, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %gid_type.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %gid_type.i, align 8
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %rdma_gid_attr_network_type.exit [
    i32 0, label %rdma_gid_attr_network_type.exit.thread
    i32 1, label %rdma_gid_attr_network_type.exit.thread99
  ]

rdma_gid_attr_network_type.exit.thread:           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %hdr_type91 = getelementptr inbounds %struct.ocrdma_ah, ptr %ibah, i32 0, i32 4
  %18 = ptrtoint ptr %hdr_type91 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %hdr_type91, align 4
  %id93 = getelementptr inbounds %struct.ocrdma_pd, ptr %2, i32 0, i32 2
  %19 = ptrtoint ptr %id93 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id93, align 4
  %21 = ptrtoint ptr %vlan_tag to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vlan_tag, align 2
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %eth.i)
  %23 = getelementptr inbounds %struct.ocrdma_eth_vlan, ptr %eth.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %grh.sroa.7.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %grh.sroa.8.i)
  br label %if.end.i.sink.split

rdma_gid_attr_network_type.exit.thread99:         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %hdr_type102 = getelementptr inbounds %struct.ocrdma_ah, ptr %ibah, i32 0, i32 4
  %24 = ptrtoint ptr %hdr_type102 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %hdr_type102, align 4
  %id104 = getelementptr inbounds %struct.ocrdma_pd, ptr %2, i32 0, i32 2
  %25 = ptrtoint ptr %id104 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %id104, align 4
  %27 = ptrtoint ptr %vlan_tag to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %vlan_tag, align 2
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %eth.i)
  %29 = getelementptr inbounds %struct.ocrdma_eth_vlan, ptr %eth.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %grh.sroa.7.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %grh.sroa.8.i)
  br label %if.end.i.sink.split

rdma_gid_attr_network_type.exit:                  ; preds = %if.end17
  %gid.i = getelementptr inbounds %struct.ib_gid_attr, ptr %14, i32 0, i32 2
  %30 = ptrtoint ptr %gid.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %gid.i, align 4
  %arrayidx2.i.i = getelementptr [4 x i32], ptr %gid.i, i32 0, i32 1
  %32 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx2.i.i, align 4
  %or.i.i = or i32 %33, %31
  %arrayidx4.i.i = getelementptr %struct.ib_gid_attr, ptr %14, i32 0, i32 2, i32 0, i32 1
  %34 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx4.i.i, align 4
  %xor.i.i = xor i32 %35, 65535
  %or5.i.i = or i32 %or.i.i, %xor.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i)
  %cmp.i.i = icmp eq i32 %or5.i.i, 0
  %conv = select i1 %cmp.i.i, i8 2, i8 3
  %hdr_type = getelementptr inbounds %struct.ocrdma_ah, ptr %ibah, i32 0, i32 4
  %36 = ptrtoint ptr %hdr_type to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv, ptr %hdr_type, align 4
  %id = getelementptr inbounds %struct.ocrdma_pd, ptr %2, i32 0, i32 2
  %37 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %id, align 4
  %39 = ptrtoint ptr %vlan_tag to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %vlan_tag, align 2
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %eth.i)
  %41 = getelementptr inbounds %struct.ocrdma_eth_vlan, ptr %eth.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %grh.sroa.7.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %grh.sroa.8.i)
  %42 = call ptr @memset(ptr %eth.i, i32 0, i32 18)
  %id.i = getelementptr inbounds %struct.ocrdma_dev, ptr %6, i32 0, i32 25
  br i1 %cmp.i.i, label %rdma_gid_attr_network_type.exit.if.end.i_crit_edge, label %av_conf_err

rdma_gid_attr_network_type.exit.if.end.i_crit_edge: ; preds = %rdma_gid_attr_network_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i.sink.split:                              ; preds = %rdma_gid_attr_network_type.exit.thread99, %rdma_gid_attr_network_type.exit.thread
  %.ph = phi ptr [ %29, %rdma_gid_attr_network_type.exit.thread99 ], [ %23, %rdma_gid_attr_network_type.exit.thread ]
  %.ph115 = phi i16 [ %28, %rdma_gid_attr_network_type.exit.thread99 ], [ %22, %rdma_gid_attr_network_type.exit.thread ]
  %.ph116 = phi i32 [ %26, %rdma_gid_attr_network_type.exit.thread99 ], [ %20, %rdma_gid_attr_network_type.exit.thread ]
  %hdr_type96.ph = phi ptr [ %hdr_type102, %rdma_gid_attr_network_type.exit.thread99 ], [ %hdr_type91, %rdma_gid_attr_network_type.exit.thread ]
  %retval.0.i.ph171.i.ph = phi i16 [ 2048, %rdma_gid_attr_network_type.exit.thread99 ], [ -30443, %rdma_gid_attr_network_type.exit.thread ]
  %.ph117 = phi i8 [ 17, %rdma_gid_attr_network_type.exit.thread99 ], [ 27, %rdma_gid_attr_network_type.exit.thread ]
  %43 = call ptr @memset(ptr %eth.i, i32 0, i32 18)
  %id.i105 = getelementptr inbounds %struct.ocrdma_dev, ptr %6, i32 0, i32 25
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.sink.split, %rdma_gid_attr_network_type.exit.if.end.i_crit_edge
  %id.i98 = phi ptr [ %id.i, %rdma_gid_attr_network_type.exit.if.end.i_crit_edge ], [ %id.i105, %if.end.i.sink.split ]
  %44 = phi ptr [ %41, %rdma_gid_attr_network_type.exit.if.end.i_crit_edge ], [ %.ph, %if.end.i.sink.split ]
  %45 = phi i16 [ %40, %rdma_gid_attr_network_type.exit.if.end.i_crit_edge ], [ %.ph115, %if.end.i.sink.split ]
  %46 = phi i32 [ %38, %rdma_gid_attr_network_type.exit.if.end.i_crit_edge ], [ %.ph116, %if.end.i.sink.split ]
  %hdr_type96 = phi ptr [ %hdr_type, %rdma_gid_attr_network_type.exit.if.end.i_crit_edge ], [ %hdr_type96.ph, %if.end.i.sink.split ]
  %retval.0.i.ph171.i = phi i16 [ -31011, %rdma_gid_attr_network_type.exit.if.end.i_crit_edge ], [ %retval.0.i.ph171.i.ph, %if.end.i.sink.split ]
  %47 = phi i8 [ 17, %rdma_gid_attr_network_type.exit.if.end.i_crit_edge ], [ %.ph117, %if.end.i.sink.split ]
  %gid97 = getelementptr inbounds %struct.ib_gid_attr, ptr %14, i32 0, i32 2
  %48 = add i16 %45, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -4095, i16 %48)
  %49 = icmp ult i16 %48, -4095
  br i1 %49, label %if.end8.i, label %if.end.i.if.end25.i_crit_edge

if.end.i.if.end25.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i

if.end8.i:                                        ; preds = %if.end.i
  %pvid.i = getelementptr inbounds %struct.ocrdma_dev, ptr %6, i32 0, i32 30
  %50 = ptrtoint ptr %pvid.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %pvid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %cond.i = icmp eq i16 %51, 0
  br i1 %cond.i, label %lor.lhs.false11.i, label %if.end8.i.if.end25.i_crit_edge

if.end8.i.if.end25.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i

lor.lhs.false11.i:                                ; preds = %if.end8.i
  %pfc_state.i = getelementptr inbounds %struct.ocrdma_dev, ptr %6, i32 0, i32 28
  %52 = ptrtoint ptr %pfc_state.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %pfc_state.i, align 1, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool12.not.i = icmp eq i8 %53, 0
  br i1 %tobool12.not.i, label %if.else.i, label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %id.i98 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %id.i98, align 4
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %55) #10
  %56 = ptrtoint ptr %id.i98 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %id.i98, align 4
  %call24.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %57) #10
  br label %if.end25.i

if.end25.i:                                       ; preds = %do.end.i, %if.end8.i.if.end25.i_crit_edge, %if.end.i.if.end25.i_crit_edge
  %vlan_tag.addr.0174.i = phi i16 [ %51, %if.end8.i.if.end25.i_crit_edge ], [ 0, %do.end.i ], [ %45, %if.end.i.if.end25.i_crit_edge ]
  %eth.i.12.eth.12.eth.12..sroa_idx = getelementptr inbounds i8, ptr %eth.i, i32 12
  %58 = ptrtoint ptr %eth.i.12.eth.12.eth.12..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 -32512, ptr %eth.i.12.eth.12.eth.12..sroa_idx, align 4
  %eth.i.16.eth.16.eth.16..sroa_idx = getelementptr inbounds i8, ptr %eth.i, i32 16
  %59 = ptrtoint ptr %eth.i.16.eth.16.eth.16..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %retval.0.i.ph171.i, ptr %eth.i.16.eth.16.eth.16..sroa_idx, align 4
  %sl.i = getelementptr inbounds %struct.ocrdma_dev, ptr %6, i32 0, i32 27
  %60 = ptrtoint ptr %sl.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %sl.i, align 4
  %and.i = zext i8 %61 to i16
  %shl.i = shl i16 %and.i, 13
  %or.i = or i16 %shl.i, %vlan_tag.addr.0174.i
  %eth.i.14.eth.14.eth.14..sroa_idx = getelementptr inbounds i8, ptr %eth.i, i32 14
  %62 = ptrtoint ptr %eth.i.14.eth.14.eth.14..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %or.i, ptr %eth.i.14.eth.14.eth.14..sroa_idx, align 2
  br label %if.end31.i

if.else.i:                                        ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #9
  %eth.i.12.eth.12.eth.12..sroa_idx88 = getelementptr inbounds i8, ptr %eth.i, i32 12
  %63 = ptrtoint ptr %eth.i.12.eth.12.eth.12..sroa_idx88 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %retval.0.i.ph171.i, ptr %eth.i.12.eth.12.eth.12..sroa_idx88, align 4
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.else.i, %if.end25.i
  %tobool76.not.i = phi i1 [ true, %if.else.i ], [ false, %if.end25.i ]
  %eth_sz.0.i = phi i32 [ 14, %if.else.i ], [ 18, %if.end25.i ]
  %mac_addr.i = getelementptr inbounds %struct.ocrdma_dev, ptr %6, i32 0, i32 20, i32 8
  %64 = call ptr @memcpy(ptr %44, ptr %mac_addr.i, i32 6)
  %dgid.i.i = getelementptr inbounds %struct.ib_global_route, ptr %4, i32 0, i32 1
  %65 = ptrtoint ptr %dgid.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %in6.sroa.0.0.copyload.i.i = load i32, ptr %dgid.i.i, align 8
  %in6.sroa.7.0.dgid.sroa_idx.i.i = getelementptr i8, ptr %dgid.i.i, i32 4
  %66 = ptrtoint ptr %in6.sroa.7.0.dgid.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %in6.sroa.7.0.copyload.i.i = load i32, ptr %in6.sroa.7.0.dgid.sroa_idx.i.i, align 4
  %in6.sroa.10.0.dgid.sroa_idx.i.i = getelementptr %struct.ib_global_route, ptr %4, i32 0, i32 1, i32 0, i32 1
  %67 = ptrtoint ptr %in6.sroa.10.0.dgid.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %in6.sroa.10.0.copyload.i.i = load i32, ptr %in6.sroa.10.0.dgid.sroa_idx.i.i, align 8
  %in6.sroa.13.0.dgid.sroa_idx.i.i = getelementptr inbounds i8, ptr %dgid.i.i, i32 12
  %68 = ptrtoint ptr %in6.sroa.13.0.dgid.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %in6.sroa.13.0.copyload.i.i = load i32, ptr %in6.sroa.13.0.dgid.sroa_idx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %in6.sroa.0.0.copyload.i.i)
  %cmp.i.i.i = icmp ugt i32 %in6.sroa.0.0.copyload.i.i, -16777217
  br i1 %cmp.i.i.i, label %if.end31.i.if.then.i.i_crit_edge, label %if.end.i.i.i

if.end31.i.if.then.i.i_crit_edge:                 ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.end.i.i.i:                                     ; preds = %if.end31.i
  %or.i.i.i.i = or i32 %in6.sroa.7.0.copyload.i.i, %in6.sroa.0.0.copyload.i.i
  %xor.i.i.i.i = xor i32 %in6.sroa.10.0.copyload.i.i, 65535
  %or5.i.i.i.i = or i32 %or.i.i.i.i, %xor.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %or5.i.i.i.i, 0
  %and.i.i.i.i = and i32 %in6.sroa.13.0.copyload.i.i, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i.i.i.i)
  %cmp.i9.i.not.i.i = icmp eq i32 %and.i.i.i.i, -536870912
  %or.cond29.i.i = select i1 %cmp.i.i.i.i, i1 %cmp.i9.i.not.i.i, i1 false
  br i1 %or.cond29.i.i, label %if.end.i.i.i.if.then.i.i_crit_edge, label %if.else.i.i

if.end.i.i.i.if.then.i.i_crit_edge:               ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i.i.i.if.then.i.i_crit_edge, %if.end31.i.if.then.i.i_crit_edge
  %69 = ptrtoint ptr %eth.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 51, ptr %eth.i, align 4
  %eth.i.1.eth.1.eth.1..sroa_idx = getelementptr inbounds i8, ptr %eth.i, i32 1
  %70 = ptrtoint ptr %eth.i.1.eth.1.eth.1..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 51, ptr %eth.i.1.eth.1.eth.1..sroa_idx, align 1
  %in6.sroa.13.12.extract.shift.i.i = lshr i32 %in6.sroa.13.0.copyload.i.i, 24
  %in6.sroa.13.12.extract.trunc.i.i = trunc i32 %in6.sroa.13.12.extract.shift.i.i to i8
  %eth.i.2.eth.2.eth.2..sroa_idx = getelementptr inbounds i8, ptr %eth.i, i32 2
  %71 = ptrtoint ptr %eth.i.2.eth.2.eth.2..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %in6.sroa.13.12.extract.trunc.i.i, ptr %eth.i.2.eth.2.eth.2..sroa_idx, align 2
  %in6.sroa.13.13.extract.shift.i.i = lshr i32 %in6.sroa.13.0.copyload.i.i, 16
  %in6.sroa.13.13.extract.trunc.i.i = trunc i32 %in6.sroa.13.13.extract.shift.i.i to i8
  %eth.i.3.eth.3.eth.3..sroa_idx87 = getelementptr inbounds i8, ptr %eth.i, i32 3
  %72 = ptrtoint ptr %eth.i.3.eth.3.eth.3..sroa_idx87 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %in6.sroa.13.13.extract.trunc.i.i, ptr %eth.i.3.eth.3.eth.3..sroa_idx87, align 1
  %in6.sroa.13.14.extract.shift.i.i = lshr i32 %in6.sroa.13.0.copyload.i.i, 8
  %in6.sroa.13.14.extract.trunc.i.i = trunc i32 %in6.sroa.13.14.extract.shift.i.i to i8
  %eth.i.4.eth.4.eth.4..sroa_idx = getelementptr inbounds i8, ptr %eth.i, i32 4
  %73 = ptrtoint ptr %eth.i.4.eth.4.eth.4..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %in6.sroa.13.14.extract.trunc.i.i, ptr %eth.i.4.eth.4.eth.4..sroa_idx, align 4
  %in6.sroa.13.15.extract.trunc.i.i = trunc i32 %in6.sroa.13.0.copyload.i.i to i8
  %eth.i.5.eth.5.eth.5..sroa_idx = getelementptr inbounds i8, ptr %eth.i, i32 5
  %74 = ptrtoint ptr %eth.i.5.eth.5.eth.5..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %in6.sroa.13.15.extract.trunc.i.i, ptr %eth.i.5.eth.5.eth.5..sroa_idx, align 1
  br label %ocrdma_resolve_dmac.exit.i

if.else.i.i:                                      ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -25165824, i32 %in6.sroa.0.0.copyload.i.i)
  %cmp.i2.i.i = icmp eq i32 %in6.sroa.0.0.copyload.i.i, -25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in6.sroa.7.0.copyload.i.i)
  %cmp3.i.i.i = icmp eq i32 %in6.sroa.7.0.copyload.i.i, 0
  %or.cond.i.i = select i1 %cmp.i2.i.i, i1 %cmp3.i.i.i, i1 false
  br i1 %or.cond.i.i, label %if.then4.i.i, label %if.else5.i.i

if.then4.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %in6.sroa.10.0.extract.shift.i.i = lshr i32 %in6.sroa.10.0.copyload.i.i, 8
  %in6.sroa.10.0.extract.trunc.i.i = trunc i32 %in6.sroa.10.0.extract.shift.i.i to i24
  %75 = ptrtoint ptr %eth.i to i32
  call void @__asan_storeN_noabort(i32 %75, i32 3)
  store i24 %in6.sroa.10.0.extract.trunc.i.i, ptr %eth.i, align 4
  %in6.sroa.13.13.extract.trunc12.i.i = trunc i32 %in6.sroa.13.0.copyload.i.i to i24
  %eth.i.3.eth.3.eth.3..sroa_idx = getelementptr inbounds i8, ptr %eth.i, i32 3
  %76 = ptrtoint ptr %eth.i.3.eth.3.eth.3..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %76, i32 3)
  store i24 %in6.sroa.13.13.extract.trunc12.i.i, ptr %eth.i.3.eth.3.eth.3..sroa_idx, align 1
  %77 = lshr i32 %in6.sroa.10.0.copyload.i.i, 24
  %78 = trunc i32 %77 to i8
  %79 = xor i8 %78, 2
  store i8 %79, ptr %eth.i, align 4
  br label %ocrdma_resolve_dmac.exit.i

if.else5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %80 = getelementptr inbounds %struct.rdma_ah_attr, ptr %4, i32 0, i32 6
  %81 = call ptr @memcpy(ptr %eth.i, ptr %80, i32 6)
  br label %ocrdma_resolve_dmac.exit.i

ocrdma_resolve_dmac.exit.i:                       ; preds = %if.else5.i.i, %if.then4.i.i, %if.then.i.i
  %sgid_index.i = getelementptr inbounds %struct.ib_global_route, ptr %4, i32 0, i32 3
  %82 = ptrtoint ptr %sgid_index.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %sgid_index.i, align 4
  %conv39.i = zext i8 %83 to i16
  %sgid_index40.i = getelementptr inbounds %struct.ocrdma_ah, ptr %ibah, i32 0, i32 2
  %84 = ptrtoint ptr %sgid_index40.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %conv39.i, ptr %sgid_index40.i, align 4
  %av.i = getelementptr inbounds %struct.ocrdma_ah, ptr %ibah, i32 0, i32 1
  %85 = ptrtoint ptr %av.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %av.i, align 4
  %87 = call ptr @memcpy(ptr %86, ptr %eth.i, i32 %eth_sz.0.i)
  %88 = ptrtoint ptr %hdr_type96 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %hdr_type96, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %89)
  %cmp43.i = icmp eq i8 %89, 2
  br i1 %cmp43.i, label %if.then45.i, label %if.else54.i

if.then45.i:                                      ; preds = %ocrdma_resolve_dmac.exit.i
  %traffic_class.i = getelementptr inbounds %struct.ib_global_route, ptr %4, i32 0, i32 5
  %90 = ptrtoint ptr %traffic_class.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %traffic_class.i, align 2
  %conv49.i = trunc i32 %46 to i16
  %hop_limit.i = getelementptr inbounds %struct.ib_global_route, ptr %4, i32 0, i32 4
  %92 = ptrtoint ptr %hop_limit.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %hop_limit.i, align 1
  %94 = ptrtoint ptr %gid97 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %gid97, align 4
  %arrayidx2.i.i.i = getelementptr [4 x i32], ptr %gid97, i32 0, i32 1
  %96 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx2.i.i.i, align 4
  %or.i.i.i = or i32 %97, %95
  %arrayidx4.i.i.i = getelementptr %struct.ib_gid_attr, ptr %14, i32 0, i32 2, i32 0, i32 1
  %98 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx4.i.i.i, align 4
  %xor.i.i.i = xor i32 %99, 65535
  %or5.i.i.i = or i32 %or.i.i.i, %xor.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i.i)
  %cmp.i.i136.i = icmp eq i32 %or5.i.i.i, 0
  br i1 %cmp.i.i136.i, label %if.then.i137.i, label %if.then45.i.rdma_gid2ip.exit.i_crit_edge

if.then45.i.rdma_gid2ip.exit.i_crit_edge:         ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rdma_gid2ip.exit.i

if.then.i137.i:                                   ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %gid97, i32 12
  %100 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %100, i32 4)
  %101 = load i32, ptr %add.ptr.i.i, align 1
  br label %rdma_gid2ip.exit.i

rdma_gid2ip.exit.i:                               ; preds = %if.then.i137.i, %if.then45.i.rdma_gid2ip.exit.i_crit_edge
  %sgid_addr.sroa.8.0.i = phi i32 [ %101, %if.then.i137.i ], [ 0, %if.then45.i.rdma_gid2ip.exit.i_crit_edge ]
  %102 = ptrtoint ptr %dgid.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %dgid.i.i, align 4
  %104 = ptrtoint ptr %in6.sroa.7.0.dgid.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %in6.sroa.7.0.dgid.sroa_idx.i.i, align 4
  %or.i.i140.i = or i32 %105, %103
  %106 = ptrtoint ptr %in6.sroa.10.0.dgid.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %in6.sroa.10.0.dgid.sroa_idx.i.i, align 4
  %xor.i.i142.i = xor i32 %107, 65535
  %or5.i.i143.i = or i32 %or.i.i140.i, %xor.i.i142.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i143.i)
  %cmp.i.i144.i = icmp eq i32 %or5.i.i143.i, 0
  br i1 %cmp.i.i144.i, label %if.then.i147.i, label %rdma_gid2ip.exit.i.rdma_gid2ip.exit150.i_crit_edge

rdma_gid2ip.exit.i.rdma_gid2ip.exit150.i_crit_edge: ; preds = %rdma_gid2ip.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rdma_gid2ip.exit150.i

if.then.i147.i:                                   ; preds = %rdma_gid2ip.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %108 = ptrtoint ptr %in6.sroa.13.0.dgid.sroa_idx.i.i to i32
  call void @__asan_loadN_noabort(i32 %108, i32 4)
  %109 = load i32, ptr %in6.sroa.13.0.dgid.sroa_idx.i.i, align 1
  br label %rdma_gid2ip.exit150.i

rdma_gid2ip.exit150.i:                            ; preds = %if.then.i147.i, %rdma_gid2ip.exit.i.rdma_gid2ip.exit150.i_crit_edge
  %dgid_addr.sroa.8.0.i = phi i32 [ %109, %if.then.i147.i ], [ 0, %rdma_gid2ip.exit.i.rdma_gid2ip.exit150.i_crit_edge ]
  %110 = ptrtoint ptr %av.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %av.i, align 4
  %add.ptr.i = getelementptr i8, ptr %111, i32 %eth_sz.0.i
  %ipv4.sroa.0.sroa.5.0.insert.ext.i = zext i8 %91 to i16
  %ipv4.sroa.0.sroa.0.0.insert.insert.i = or i16 %ipv4.sroa.0.sroa.5.0.insert.ext.i, 17664
  %112 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %112, i32 2)
  store i16 %ipv4.sroa.0.sroa.0.0.insert.insert.i, ptr %add.ptr.i, align 1
  %ipv4.sroa.6.0.add.ptr.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i, i32 2
  %113 = ptrtoint ptr %ipv4.sroa.6.0.add.ptr.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %113, i32 2)
  store i16 0, ptr %ipv4.sroa.6.0.add.ptr.sroa_idx.i, align 1
  %ipv4.sroa.8.0.add.ptr.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i, i32 4
  %114 = ptrtoint ptr %ipv4.sroa.8.0.add.ptr.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %114, i32 2)
  store i16 %conv49.i, ptr %ipv4.sroa.8.0.add.ptr.sroa_idx.i, align 1
  %ipv4.sroa.10.0.add.ptr.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i, i32 6
  %115 = ptrtoint ptr %ipv4.sroa.10.0.add.ptr.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %115, i32 2)
  store i16 16384, ptr %ipv4.sroa.10.0.add.ptr.sroa_idx.i, align 1
  %ipv4.sroa.12.0.add.ptr.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i, i32 8
  %116 = ptrtoint ptr %ipv4.sroa.12.0.add.ptr.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %93, ptr %ipv4.sroa.12.0.add.ptr.sroa_idx.i, align 1
  %ipv4.sroa.14.0.add.ptr.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i, i32 9
  %117 = ptrtoint ptr %ipv4.sroa.14.0.add.ptr.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %47, ptr %ipv4.sroa.14.0.add.ptr.sroa_idx.i, align 1
  %ipv4.sroa.16.0.add.ptr.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i, i32 10
  %118 = ptrtoint ptr %ipv4.sroa.16.0.add.ptr.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %118, i32 2)
  store i16 -1, ptr %ipv4.sroa.16.0.add.ptr.sroa_idx.i, align 1
  %ipv4.sroa.17.0.add.ptr.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i, i32 12
  %119 = ptrtoint ptr %ipv4.sroa.17.0.add.ptr.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %119, i32 4)
  store i32 %sgid_addr.sroa.8.0.i, ptr %ipv4.sroa.17.0.add.ptr.sroa_idx.i, align 1
  %ipv4.sroa.19.0.add.ptr.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i, i32 16
  %120 = ptrtoint ptr %ipv4.sroa.19.0.add.ptr.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %120, i32 4)
  store i32 %dgid_addr.sroa.8.0.i, ptr %ipv4.sroa.19.0.add.ptr.sroa_idx.i, align 1
  br label %if.end75.i

if.else54.i:                                      ; preds = %ocrdma_resolve_dmac.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %121 = call ptr @memcpy(ptr %grh.sroa.7.i, ptr %gid97, i32 16)
  %traffic_class57.i = getelementptr inbounds %struct.ib_global_route, ptr %4, i32 0, i32 5
  %122 = ptrtoint ptr %traffic_class57.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %traffic_class57.i, align 2
  %conv58.i = zext i8 %123 to i32
  %shl59.i = shl nuw i32 %conv58.i, 24
  %flow_label.i = getelementptr inbounds %struct.ib_global_route, ptr %4, i32 0, i32 2
  %124 = ptrtoint ptr %flow_label.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %flow_label.i, align 8
  %or60.i = or i32 %125, %shl59.i
  %or61.i = or i32 %or60.i, 1610612736
  %126 = call ptr @memcpy(ptr %grh.sroa.8.i, ptr %dgid.i.i, i32 16)
  %shl66.i = shl i32 %46, 16
  %conv67.i = zext i8 %47 to i32
  %shl68.i = shl nuw nsw i32 %conv67.i, 8
  %or69.i = or i32 %shl68.i, %shl66.i
  %hop_limit70.i = getelementptr inbounds %struct.ib_global_route, ptr %4, i32 0, i32 4
  %127 = ptrtoint ptr %hop_limit70.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %hop_limit70.i, align 1
  %conv71.i = zext i8 %128 to i32
  %or72.i = or i32 %or69.i, %conv71.i
  %129 = ptrtoint ptr %av.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %av.i, align 4
  %add.ptr74.i = getelementptr i8, ptr %130, i32 %eth_sz.0.i
  %131 = ptrtoint ptr %add.ptr74.i to i32
  call void @__asan_storeN_noabort(i32 %131, i32 4)
  store i32 %or61.i, ptr %add.ptr74.i, align 1
  %grh.sroa.6.0.add.ptr74.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr74.i, i32 4
  %132 = ptrtoint ptr %grh.sroa.6.0.add.ptr74.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %132, i32 4)
  store i32 %or72.i, ptr %grh.sroa.6.0.add.ptr74.sroa_idx.i, align 1
  %grh.sroa.7.0.add.ptr74.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr74.i, i32 8
  %133 = call ptr @memcpy(ptr %grh.sroa.7.0.add.ptr74.sroa_idx.i, ptr %grh.sroa.7.i, i32 16)
  %grh.sroa.8.0.add.ptr74.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr74.i, i32 24
  %134 = call ptr @memcpy(ptr %grh.sroa.8.0.add.ptr74.sroa_idx.i, ptr %grh.sroa.8.i, i32 16)
  %grh.sroa.9.0.add.ptr74.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr74.i, i32 40
  %135 = ptrtoint ptr %grh.sroa.9.0.add.ptr74.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %135, i32 2)
  store i16 0, ptr %grh.sroa.9.0.add.ptr74.sroa_idx.i, align 1
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.else54.i, %rdma_gid2ip.exit150.i
  br i1 %tobool76.not.i, label %if.end75.i.if.end22_crit_edge, label %if.then77.i

if.end75.i.if.end22_crit_edge:                    ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then77.i:                                      ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #9
  %136 = ptrtoint ptr %av.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %av.i, align 4
  %valid.i = getelementptr inbounds %struct.ocrdma_av, ptr %137, i32 0, i32 2
  %138 = ptrtoint ptr %valid.i to i32
  call void @__asan_loadN_noabort(i32 %138, i32 4)
  %139 = load i32, ptr %valid.i, align 1
  %or79.i = or i32 %139, 2
  store i32 %or79.i, ptr %valid.i, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.then77.i, %if.end75.i.if.end22_crit_edge
  %140 = ptrtoint ptr %av.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %av.i, align 4
  %valid82.i = getelementptr inbounds %struct.ocrdma_av, ptr %141, i32 0, i32 2
  %142 = ptrtoint ptr %valid82.i to i32
  call void @__asan_loadN_noabort(i32 %142, i32 4)
  %143 = load i32, ptr %valid82.i, align 1
  %144 = call i32 @llvm.bswap.i32(i32 %143) #7
  %145 = ptrtoint ptr %valid82.i to i32
  call void @__asan_storeN_noabort(i32 %145, i32 4)
  store i32 %144, ptr %valid82.i, align 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %grh.sroa.7.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %grh.sroa.8.i)
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %eth.i)
  %uctx = getelementptr inbounds %struct.ocrdma_pd, ptr %2, i32 0, i32 1
  %146 = ptrtoint ptr %uctx to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %uctx, align 4
  %tobool23.not = icmp eq ptr %147, null
  br i1 %tobool23.not, label %if.end22.cleanup_crit_edge, label %land.lhs.true

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end22
  %ah_tbl = getelementptr inbounds %struct.ocrdma_ucontext, ptr %147, i32 0, i32 5
  %148 = ptrtoint ptr %ah_tbl to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %ah_tbl, align 4
  %tobool25.not = icmp eq ptr %149, null
  br i1 %tobool25.not, label %land.lhs.true.cleanup_crit_edge, label %if.then26

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then26:                                        ; preds = %land.lhs.true
  %150 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %type, align 4
  %152 = zext i32 %151 to i64
  call void @__sanitizer_cov_trace_switch(i64 %152, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %151, label %if.then26.rdma_ah_get_dlid.exit_crit_edge [
    i32 1, label %if.then.i
    i32 3, label %if.then4.i
  ]

if.then26.rdma_ah_get_dlid.exit_crit_edge:        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %rdma_ah_get_dlid.exit

if.then.i:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  %153 = getelementptr inbounds %struct.rdma_ah_attr, ptr %4, i32 0, i32 6
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %153, align 8
  %conv.i84 = zext i16 %155 to i32
  br label %rdma_ah_get_dlid.exit

if.then4.i:                                       ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  %156 = getelementptr inbounds %struct.rdma_ah_attr, ptr %4, i32 0, i32 6
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %156, align 8
  br label %rdma_ah_get_dlid.exit

rdma_ah_get_dlid.exit:                            ; preds = %if.then4.i, %if.then.i, %if.then26.rdma_ah_get_dlid.exit_crit_edge
  %retval.0.i85 = phi i32 [ %conv.i84, %if.then.i ], [ %158, %if.then4.i ], [ 0, %if.then26.rdma_ah_get_dlid.exit_crit_edge ]
  %add.ptr = getelementptr i32, ptr %149, i32 %retval.0.i85
  %159 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 0, ptr %add.ptr, align 4
  %id31 = getelementptr inbounds %struct.ocrdma_ah, ptr %ibah, i32 0, i32 3
  %160 = ptrtoint ptr %id31 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %id31, align 4
  %and32 = and i32 %161, 1023
  store i32 %and32, ptr %add.ptr, align 4
  %udp_encap.i = getelementptr inbounds %struct.ocrdma_dev, ptr %6, i32 0, i32 1, i32 33
  %162 = ptrtoint ptr %udp_encap.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %udp_encap.i, align 1
  %164 = and i8 %163, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %.not = icmp eq i8 %164, 0
  br i1 %.not, label %rdma_ah_get_dlid.exit.if.end39_crit_edge, label %if.then34

rdma_ah_get_dlid.exit.if.end39_crit_edge:         ; preds = %rdma_ah_get_dlid.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then34:                                        ; preds = %rdma_ah_get_dlid.exit
  call void @__sanitizer_cov_trace_pc() #9
  %165 = ptrtoint ptr %hdr_type96 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %hdr_type96, align 4
  %167 = and i8 %166, 3
  %and37 = zext i8 %167 to i32
  %shl = shl nuw nsw i32 %and37, 29
  %or38 = or i32 %shl, %and32
  %168 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %or38, ptr %add.ptr, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then34, %rdma_ah_get_dlid.exit.if.end39_crit_edge
  br i1 %tobool76.not.i, label %if.end39.cleanup_crit_edge, label %if.then41

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %169 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %add.ptr, align 4
  %or42 = or i32 %170, -2147483648
  store i32 %or42, ptr %add.ptr, align 4
  br label %cleanup

av_conf_err:                                      ; preds = %rdma_gid_attr_network_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  %171 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %id.i, align 4
  %call.i.i82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %172) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %grh.sroa.7.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %grh.sroa.8.i)
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %eth.i)
  call void @ocrdma_free_av(ptr noundef %6, ptr noundef %ibah) #7
  br label %cleanup

cleanup:                                          ; preds = %av_conf_err, %if.then41, %if.end39.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call10, %if.end8.cleanup_crit_edge ], [ 0, %if.end39.cleanup_crit_edge ], [ 0, %if.then41 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end22.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ], [ -22, %av_conf_err ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vlan_tag) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocrdma_init_service_level(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_read_gid_l2_fields(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocrdma_alloc_av(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocrdma_free_av(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocrdma_destroy_ah(ptr noundef %ibah, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibah, align 4
  tail call void @ocrdma_free_av(ptr noundef %1, ptr noundef %ibah) #7
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ocrdma_query_ah(ptr nocapture noundef readonly %ibah, ptr nocapture noundef writeonly %attr) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %av1 = getelementptr inbounds %struct.ocrdma_ah, ptr %ibah, i32 0, i32 1
  %0 = ptrtoint ptr %av1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %av1, align 4
  %type = getelementptr inbounds %struct.ib_ah, ptr %ibah, i32 0, i32 4
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %type2 = getelementptr inbounds %struct.rdma_ah_attr, ptr %attr, i32 0, i32 5
  %4 = ptrtoint ptr %type2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %type2, align 4
  %5 = load ptr, ptr %av1, align 4
  %valid = getelementptr inbounds %struct.ocrdma_av, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %valid to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %valid, align 1
  %and = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %5, i32 18
  %vlan_tag = getelementptr inbounds %struct.ocrdma_eth_vlan, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %vlan_tag to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %vlan_tag, align 1
  %10 = lshr i16 %9, 13
  %conv5 = trunc i16 %10 to i8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr7 = getelementptr i8, ptr %5, i32 14
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %conv5.sink = phi i8 [ 0, %if.else ], [ %conv5, %if.then ]
  %grh.0 = phi ptr [ %add.ptr7, %if.else ], [ %add.ptr, %if.then ]
  %11 = getelementptr inbounds %struct.rdma_ah_attr, ptr %attr, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv5.sink, ptr %11, align 8
  %13 = ptrtoint ptr %grh.0 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %grh.0, align 1
  %sgid_index = getelementptr inbounds %struct.ocrdma_ah, ptr %ibah, i32 0, i32 2
  %15 = ptrtoint ptr %sgid_index to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %sgid_index, align 4
  %conv9 = trunc i16 %16 to i8
  %pdid_hoplimit = getelementptr inbounds %struct.ocrdma_grh, ptr %grh.0, i32 0, i32 1
  %17 = ptrtoint ptr %pdid_hoplimit to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %pdid_hoplimit, align 1
  %conv11 = trunc i32 %18 to i8
  %shr13 = lshr i32 %14, 24
  %conv14 = trunc i32 %shr13 to i8
  %ah_flags.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %attr, i32 0, i32 4
  %19 = ptrtoint ptr %ah_flags.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %ah_flags.i, align 8
  %flow_label2.i = getelementptr inbounds %struct.ib_global_route, ptr %attr, i32 0, i32 2
  %20 = ptrtoint ptr %flow_label2.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %14, ptr %flow_label2.i, align 8
  %sgid_index3.i = getelementptr inbounds %struct.ib_global_route, ptr %attr, i32 0, i32 3
  %21 = ptrtoint ptr %sgid_index3.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv9, ptr %sgid_index3.i, align 4
  %hop_limit4.i = getelementptr inbounds %struct.ib_global_route, ptr %attr, i32 0, i32 4
  %22 = ptrtoint ptr %hop_limit4.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv11, ptr %hop_limit4.i, align 1
  %traffic_class5.i = getelementptr inbounds %struct.ib_global_route, ptr %attr, i32 0, i32 5
  %23 = ptrtoint ptr %traffic_class5.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv14, ptr %traffic_class5.i, align 2
  %24 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %attr, align 8
  %dgid = getelementptr inbounds %struct.ocrdma_grh, ptr %grh.0, i32 0, i32 3
  %dgid1.i = getelementptr inbounds %struct.ib_global_route, ptr %attr, i32 0, i32 1
  %25 = call ptr @memcpy(ptr %dgid1.i, ptr %dgid, i32 16)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocrdma_process_mad(ptr noundef %ibdev, i32 noundef %process_mad_flags, i32 noundef %port_num, ptr nocapture noundef readnone %in_wc, ptr nocapture noundef readnone %in_grh, ptr nocapture noundef readonly %in, ptr noundef %out, ptr nocapture noundef readnone %out_mad_size, ptr nocapture noundef readnone %out_mad_pkey_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mgmt_class = getelementptr inbounds %struct.ib_mad_hdr, ptr %in, i32 0, i32 1
  %0 = ptrtoint ptr %mgmt_class to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mgmt_class, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %1)
  %cmp = icmp eq i8 %1, 4
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ocrdma_pma_counters(ptr noundef %ibdev, ptr noundef %out) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %status.0 = phi i32 [ 3, %if.then ], [ 1, %entry.if.end_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocrdma_pma_counters(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_ah.c", i32 103, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @set_av_attr._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @set_av_attr._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_ah.c", i32 105, i32 4}
!8 = !{ptr @set_av_attr._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @set_av_attr._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_ah.c", i32 68, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @ocrdma_hdr_type_to_proto_num._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @ocrdma_hdr_type_to_proto_num._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{i64 2148526133}
!25 = !{i64 908046, i64 908070, i64 908091, i64 908108, i64 908125}
!26 = !{i64 2148526359}
!27 = !{i8 0, i8 2}
