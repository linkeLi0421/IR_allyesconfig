; ModuleID = '/llk/IR_all_yes/net/netfilter/ipvs/ip_vs_rr.c_pt.bc'
source_filename = "../net/netfilter/ipvs/ip_vs_rr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ip_vs_scheduler = type { %struct.list_head, ptr, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ip_vs_service = type { %struct.hlist_node, %struct.hlist_node, %struct.atomic_t, i16, i16, %union.nf_inet_addr, i16, i32, i32, i32, i32, ptr, %struct.list_head, i32, %struct.ip_vs_stats, ptr, %struct.spinlock, ptr, ptr, i32, %struct.callback_head }
%struct.hlist_node = type { ptr, ptr }
%union.nf_inet_addr = type { [4 x i32] }
%struct.ip_vs_stats = type { %struct.ip_vs_kstats, %struct.ip_vs_estimator, ptr, %struct.spinlock, %struct.ip_vs_kstats }
%struct.ip_vs_estimator = type { %struct.list_head, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ip_vs_kstats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.ip_vs_dest = type { %struct.list_head, %struct.hlist_node, i16, i16, %union.nf_inet_addr, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i16, i16, i16, %struct.refcount_struct, %struct.ip_vs_stats, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.spinlock, ptr, ptr, i16, i16, %union.nf_inet_addr, i32, %struct.list_head, i8 }
%struct.refcount_struct = type { %struct.atomic_t }

@ip_vs_rr_scheduler = internal global { %struct.ip_vs_scheduler, [52 x i8] } { %struct.ip_vs_scheduler { %struct.list_head { ptr @ip_vs_rr_scheduler, ptr @ip_vs_rr_scheduler }, ptr @.str, %struct.atomic_t zeroinitializer, ptr null, ptr @ip_vs_rr_init_svc, ptr null, ptr null, ptr @ip_vs_rr_del_dest, ptr null, ptr @ip_vs_rr_schedule }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_ip_vs_rr__586_123_ip_vs_rr_init6 = internal global ptr @ip_vs_rr_init, section ".initcall6.init", align 4
@__exitcall_ip_vs_rr_cleanup = internal global ptr @ip_vs_rr_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_file587 = internal constant [42 x i8] c"ip_vs_rr.file=net/netfilter/ipvs/ip_vs_rr\00", section ".modinfo", align 1
@__UNIQUE_ID_license588 = internal constant [21 x i8] c"ip_vs_rr.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rr\00", [29 x i8] zeroinitializer }, align 32
@ip_vs_rr_schedule._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017IPVS: %s(): Scheduling...\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ip_vs_rr_schedule\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"net/netfilter/ipvs/ip_vs_rr.c\00", [34 x i8] zeroinitializer }, align 32
@ip_vs_rr_schedule._entry_ptr = internal global ptr @ip_vs_rr_schedule._entry, section ".printk_index", align 4
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no destination available\00", [39 x i8] zeroinitializer }, align 32
@ip_vs_rr_schedule._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\017IPVS: RR: server %s:%u activeconns %d refcnt %d weight %d\0A\00", [35 x i8] zeroinitializer }, align 32
@ip_vs_rr_schedule._entry_ptr.7 = internal global ptr @ip_vs_rr_schedule._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"[%pI6c]\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pI4\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant [19 x i8] c"ip_vs_rr_scheduler\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 101, i32 31 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 102, i32 12 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 60, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 85, i32 27 }
@___asan_gen_.31 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.35 = private constant [33 x i8] c"../net/netfilter/ipvs/ip_vs_rr.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 91, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 196, i32 46 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [23 x i8] c"../include/net/ip_vs.h\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 200, i32 46 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_file587, ptr @__UNIQUE_ID_license588, ptr @__exitcall_ip_vs_rr_cleanup, ptr @__initcall__kmod_ip_vs_rr__586_123_ip_vs_rr_init6, ptr @ip_vs_rr_cleanup, ptr @ip_vs_rr_schedule._entry, ptr @ip_vs_rr_schedule._entry.5, ptr @ip_vs_rr_schedule._entry_ptr, ptr @ip_vs_rr_schedule._entry_ptr.7, ptr @ip_vs_rr_scheduler, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_rr_scheduler to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_rr_schedule._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_rr_schedule._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ip_vs_rr_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @unregister_ip_vs_scheduler(ptr noundef nonnull @ip_vs_rr_scheduler) #7
  tail call void @synchronize_rcu() #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_ip_vs_scheduler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ip_vs_rr_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_ip_vs_scheduler(ptr noundef nonnull @ip_vs_rr_scheduler) #7
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ip_vs_rr_init_svc(ptr noundef %svc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %destinations = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 12
  %sched_data = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 17
  %0 = ptrtoint ptr %sched_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %destinations, ptr %sched_data, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip_vs_rr_del_dest(ptr noundef %svc, ptr noundef readnone %dest) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sched_lock = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 16
  tail call void @_raw_spin_lock_bh(ptr noundef %sched_lock) #7
  %sched_data = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 17
  %0 = ptrtoint ptr %sched_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sched_data, align 8
  %cmp = icmp eq ptr %1, %dest
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %dest to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dest, align 4
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev, align 4
  %6 = ptrtoint ptr %sched_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %sched_data, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %sched_lock) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ip_vs_rr_schedule(ptr noundef %svc, ptr nocapture noundef readnone %skb, ptr nocapture noundef readnone %iph) #3 align 64 {
entry:
  %ip_vs_dbg_buf = alloca [160 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ip_vs_get_debug_level() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call)
  %cmp = icmp sgt i32 %call, 5
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %sched_lock = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 16
  tail call void @_raw_spin_lock_bh(ptr noundef %sched_lock) #7
  %sched_data = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 17
  %0 = ptrtoint ptr %sched_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sched_data, align 8
  %destinations = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 12
  %cmp35.not = icmp eq ptr %1, %destinations
  br label %for.cond

for.cond:                                         ; preds = %if.end19.for.cond_crit_edge, %do.end4
  %dest.1.in = phi ptr [ %1, %do.end4 ], [ %dest.1, %if.end19.for.cond_crit_edge ]
  %2 = ptrtoint ptr %dest.1.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %dest.1 = load volatile ptr, ptr %dest.1.in, align 8
  %cmp15.not = icmp eq ptr %dest.1, %destinations
  br i1 %cmp15.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %flags = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.1, i32 0, i32 5
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.body.if.end19_crit_edge

for.body.if.end19_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

land.lhs.true:                                    ; preds = %for.body
  %weight = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.1, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %weight, i32 noundef 4) #7
  %5 = ptrtoint ptr %weight to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %weight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp17 = icmp sgt i32 %6, 0
  br i1 %cmp17, label %land.lhs.true.out_crit_edge, label %land.lhs.true.if.end19_crit_edge

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end19:                                         ; preds = %land.lhs.true.if.end19_crit_edge, %for.body.if.end19_crit_edge
  %cmp20 = icmp eq ptr %dest.1, %1
  br i1 %cmp20, label %if.end19.stop_crit_edge, label %if.end19.for.cond_crit_edge

if.end19.for.cond_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

if.end19.stop_crit_edge:                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %stop

for.end:                                          ; preds = %for.cond
  br i1 %cmp35.not, label %for.end.stop_crit_edge, label %for.end.for.cond.1_crit_edge

for.end.for.cond.1_crit_edge:                     ; preds = %for.end
  br label %for.cond.1

for.end.stop_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %stop

for.cond.1:                                       ; preds = %if.end19.1.for.cond.1_crit_edge, %for.end.for.cond.1_crit_edge
  %dest.1.in.1 = phi ptr [ %dest.1.1, %if.end19.1.for.cond.1_crit_edge ], [ %destinations, %for.end.for.cond.1_crit_edge ]
  %7 = ptrtoint ptr %dest.1.in.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %dest.1.1 = load volatile ptr, ptr %dest.1.in.1, align 8
  %cmp15.not.1 = icmp eq ptr %dest.1.1, %destinations
  br i1 %cmp15.not.1, label %for.cond.1.stop_crit_edge, label %for.body.1

for.cond.1.stop_crit_edge:                        ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %stop

for.body.1:                                       ; preds = %for.cond.1
  %flags.1 = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.1.1, i32 0, i32 5
  %8 = ptrtoint ptr %flags.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags.1, align 4
  %and.1 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %land.lhs.true.1, label %for.body.1.if.end19.1_crit_edge

for.body.1.if.end19.1_crit_edge:                  ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.1

land.lhs.true.1:                                  ; preds = %for.body.1
  %weight.1 = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.1.1, i32 0, i32 7
  %call.i.i.1 = tail call zeroext i1 @__kasan_check_read(ptr noundef %weight.1, i32 noundef 4) #7
  %10 = ptrtoint ptr %weight.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %weight.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp17.1 = icmp sgt i32 %11, 0
  br i1 %cmp17.1, label %land.lhs.true.1.out_crit_edge, label %land.lhs.true.1.if.end19.1_crit_edge

land.lhs.true.1.if.end19.1_crit_edge:             ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.1

land.lhs.true.1.out_crit_edge:                    ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end19.1:                                       ; preds = %land.lhs.true.1.if.end19.1_crit_edge, %for.body.1.if.end19.1_crit_edge
  %cmp20.1 = icmp eq ptr %dest.1.1, %1
  br i1 %cmp20.1, label %if.end19.1.stop_crit_edge, label %if.end19.1.for.cond.1_crit_edge

if.end19.1.for.cond.1_crit_edge:                  ; preds = %if.end19.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.1

if.end19.1.stop_crit_edge:                        ; preds = %if.end19.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %stop

stop:                                             ; preds = %if.end19.1.stop_crit_edge, %for.cond.1.stop_crit_edge, %for.end.stop_crit_edge, %if.end19.stop_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %sched_lock) #7
  tail call void @ip_vs_scheduler_err(ptr noundef %svc, ptr noundef nonnull @.str.4) #7
  br label %cleanup

out:                                              ; preds = %land.lhs.true.1.out_crit_edge, %land.lhs.true.out_crit_edge
  %dest.1.lcssa102 = phi ptr [ %dest.1, %land.lhs.true.out_crit_edge ], [ %dest.1.1, %land.lhs.true.1.out_crit_edge ]
  %weight.lcssa = phi ptr [ %weight, %land.lhs.true.out_crit_edge ], [ %weight.1, %land.lhs.true.1.out_crit_edge ]
  %12 = ptrtoint ptr %sched_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dest.1.lcssa102, ptr %sched_data, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %sched_lock) #7
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #7
  %13 = call ptr @memset(ptr %ip_vs_dbg_buf, i32 255, i32 160)
  %call42 = tail call i32 @ip_vs_get_debug_level() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call42)
  %cmp43 = icmp sgt i32 %call42, 5
  br i1 %cmp43, label %do.end47, label %out.if.end56_crit_edge

out.if.end56_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

do.end47:                                         ; preds = %out
  %af = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.1.lcssa102, i32 0, i32 2
  %14 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %af, align 8
  %addr = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.1.lcssa102, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %15)
  %cmp.i = icmp eq i16 %15, 10
  %.str.8..str.9.i = select i1 %cmp.i, ptr @.str.8, ptr @.str.9
  %call3.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf, i32 noundef 160, ptr noundef nonnull %.str.8..str.9.i, ptr noundef %addr) #7
  %16 = add i32 %call3.i, -161
  call void @__sanitizer_cov_trace_const_cmp4(i32 -162, i32 %16)
  %cmp7.i = icmp ult i32 %16, -162
  br i1 %cmp7.i, label %do.body10.i, label %ip_vs_dbg_addr.exit, !prof !36

do.body10.i:                                      ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #7, !srcloc !37
  unreachable

ip_vs_dbg_addr.exit:                              ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #9
  %port = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.1.lcssa102, i32 0, i32 3
  %17 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %port, align 2
  %conv50 = zext i16 %18 to i32
  %activeconns = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.1.lcssa102, i32 0, i32 15
  %call.i.i84 = tail call zeroext i1 @__kasan_check_read(ptr noundef %activeconns, i32 noundef 4) #7
  %19 = ptrtoint ptr %activeconns to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %activeconns, align 4
  %refcnt = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.1.lcssa102, i32 0, i32 12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #7
  %21 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %refcnt, align 4
  %call.i.i85 = tail call zeroext i1 @__kasan_check_read(ptr noundef %weight.lcssa, i32 noundef 4) #7
  %23 = ptrtoint ptr %weight.lcssa to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %weight.lcssa, align 4
  %call55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull %ip_vs_dbg_buf, i32 noundef %conv50, i32 noundef %20, i32 noundef %22, i32 noundef %24) #10
  br label %if.end56

if.end56:                                         ; preds = %ip_vs_dbg_addr.exit, %out.if.end56_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %stop
  %retval.0 = phi ptr [ null, %stop ], [ %dest.1.lcssa102, %if.end56 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_vs_get_debug_level() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_vs_scheduler_err(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_ip_vs_scheduler(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !15, !16, !17, !19, !21, !22, !23, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @__initcall__kmod_ip_vs_rr__586_123_ip_vs_rr_init6, !1, !"__initcall__kmod_ip_vs_rr__586_123_ip_vs_rr_init6", i1 false, i1 false}
!1 = !{!"../net/netfilter/ipvs/ip_vs_rr.c", i32 123, i32 1}
!2 = !{ptr @__exitcall_ip_vs_rr_cleanup, !3, !"__exitcall_ip_vs_rr_cleanup", i1 false, i1 false}
!3 = !{!"../net/netfilter/ipvs/ip_vs_rr.c", i32 124, i32 1}
!4 = !{ptr @__UNIQUE_ID_file587, !5, !"__UNIQUE_ID_file587", i1 false, i1 false}
!5 = !{!"../net/netfilter/ipvs/ip_vs_rr.c", i32 125, i32 1}
!6 = !{ptr @__UNIQUE_ID_license588, !5, !"__UNIQUE_ID_license588", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../net/netfilter/ipvs/ip_vs_rr.c", i32 102, i32 12}
!9 = !{ptr @ip_vs_rr_scheduler, !10, !"ip_vs_rr_scheduler", i1 false, i1 false}
!10 = !{!"../net/netfilter/ipvs/ip_vs_rr.c", i32 101, i32 31}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/netfilter/ipvs/ip_vs_rr.c", i32 60, i32 2}
!13 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @ip_vs_rr_schedule._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @ip_vs_rr_schedule._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/netfilter/ipvs/ip_vs_rr.c", i32 85, i32 27}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/netfilter/ipvs/ip_vs_rr.c", i32 91, i32 2}
!21 = !{ptr @ip_vs_rr_schedule._entry.5, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @ip_vs_rr_schedule._entry_ptr.7, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../include/net/ip_vs.h", i32 196, i32 46}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/net/ip_vs.h", i32 200, i32 46}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{!"branch_weights", i32 1, i32 2000}
!37 = !{i64 2158032362, i64 2158032846, i64 2158032399, i64 2158032455, i64 2158032489, i64 2158032513, i64 2158032554, i64 2158032575, i64 2158032603, i64 2158032637}
