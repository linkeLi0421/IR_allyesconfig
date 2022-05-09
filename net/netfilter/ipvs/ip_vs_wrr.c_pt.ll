; ModuleID = '/llk/IR_all_yes/net/netfilter/ipvs/ip_vs_wrr.c_pt.bc'
source_filename = "../net/netfilter/ipvs/ip_vs_wrr.c"
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
%struct.ip_vs_wrr_mark = type { ptr, i32, i32, i32, %struct.callback_head }

@ip_vs_wrr_scheduler = internal global { %struct.ip_vs_scheduler, [52 x i8] } { %struct.ip_vs_scheduler { %struct.list_head { ptr @ip_vs_wrr_scheduler, ptr @ip_vs_wrr_scheduler }, ptr @.str, %struct.atomic_t zeroinitializer, ptr null, ptr @ip_vs_wrr_init_svc, ptr @ip_vs_wrr_done_svc, ptr @ip_vs_wrr_dest_changed, ptr @ip_vs_wrr_dest_changed, ptr @ip_vs_wrr_dest_changed, ptr @ip_vs_wrr_schedule }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_ip_vs_wrr__587_263_ip_vs_wrr_init6 = internal global ptr @ip_vs_wrr_init, section ".initcall6.init", align 4
@__exitcall_ip_vs_wrr_cleanup = internal global ptr @ip_vs_wrr_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_file588 = internal constant [44 x i8] c"ip_vs_wrr.file=net/netfilter/ipvs/ip_vs_wrr\00", section ".modinfo", align 1
@__UNIQUE_ID_license589 = internal constant [22 x i8] c"ip_vs_wrr.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"wrr\00", [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ip_vs_wrr_schedule._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017IPVS: %s(): Scheduling...\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ip_vs_wrr_schedule\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"net/netfilter/ipvs/ip_vs_wrr.c\00", [33 x i8] zeroinitializer }, align 32
@ip_vs_wrr_schedule._entry_ptr = internal global ptr @ip_vs_wrr_schedule._entry, section ".printk_index", align 4
@ip_vs_wrr_schedule._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\017IPVS: WRR: server %s:%u activeconns %d refcnt %d weight %d\0A\00", [34 x i8] zeroinitializer }, align 32
@ip_vs_wrr_schedule._entry_ptr.6 = internal global ptr @ip_vs_wrr_schedule._entry.4, section ".printk_index", align 4
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no destination available\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"no destination available: all destinations are overloaded\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"[%pI6c]\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pI4\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant [20 x i8] c"ip_vs_wrr_scheduler\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 239, i32 31 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 240, i32 12 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 167, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 212, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 227, i32 27 }
@___asan_gen_.39 = private constant [34 x i8] c"../net/netfilter/ipvs/ip_vs_wrr.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 233, i32 27 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 196, i32 46 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [23 x i8] c"../include/net/ip_vs.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 200, i32 46 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_file588, ptr @__UNIQUE_ID_license589, ptr @__exitcall_ip_vs_wrr_cleanup, ptr @__initcall__kmod_ip_vs_wrr__587_263_ip_vs_wrr_init6, ptr @ip_vs_wrr_cleanup, ptr @ip_vs_wrr_schedule._entry, ptr @ip_vs_wrr_schedule._entry.4, ptr @ip_vs_wrr_schedule._entry_ptr, ptr @ip_vs_wrr_schedule._entry_ptr.6, ptr @ip_vs_wrr_scheduler, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_wrr_scheduler to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_wrr_schedule._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_wrr_schedule._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ip_vs_wrr_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @unregister_ip_vs_scheduler(ptr noundef nonnull @ip_vs_wrr_scheduler) #9
  tail call void @synchronize_rcu() #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_ip_vs_scheduler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ip_vs_wrr_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_ip_vs_scheduler(ptr noundef nonnull @ip_vs_wrr_scheduler) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip_vs_wrr_init_svc(ptr noundef %svc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 24) #12
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %destinations = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 12
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %destinations, ptr %call7.i, align 8
  %2 = ptrtoint ptr %destinations to i32
  call void @__asan_load4_noabort(i32 %2)
  %dest.021.i = load ptr, ptr %destinations, align 8
  %cmp.not22.i = icmp eq ptr %dest.021.i, %destinations
  br i1 %cmp.not22.i, label %if.end.for.end.thread.i_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.for.end.thread.i_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %dest.024.i = phi ptr [ %dest.0.i, %for.inc.i.for.body.i_crit_edge ], [ %dest.021.i, %if.end.for.body.i_crit_edge ]
  %g.023.i = phi i32 [ %g.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %weight2.i = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.024.i, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %weight2.i, i32 noundef 4) #9
  %3 = ptrtoint ptr %weight2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %weight2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp3.i = icmp sgt i32 %4, 0
  br i1 %cmp3.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %g.023.i)
  %cmp4.i = icmp sgt i32 %g.023.i, 0
  br i1 %cmp4.i, label %if.then5.i, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %call6.i = tail call i32 @gcd(i32 noundef %4, i32 noundef %g.023.i) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then5.i, %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %g.1.i = phi i32 [ %call6.i, %if.then5.i ], [ %g.023.i, %for.body.i.for.inc.i_crit_edge ], [ %4, %if.then.i.for.inc.i_crit_edge ]
  %5 = ptrtoint ptr %dest.024.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %dest.0.i = load ptr, ptr %dest.024.i, align 8
  %cmp.not.i = icmp eq ptr %dest.0.i, %destinations
  br i1 %cmp.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %g.1.i)
  %tobool.not.i = icmp eq i32 %g.1.i, 0
  br i1 %tobool.not.i, label %for.end.i.for.end.thread.i_crit_edge, label %for.end.i.ip_vs_wrr_gcd_weight.exit_crit_edge

for.end.i.ip_vs_wrr_gcd_weight.exit_crit_edge:    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ip_vs_wrr_gcd_weight.exit

for.end.i.for.end.thread.i_crit_edge:             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread.i

for.end.thread.i:                                 ; preds = %for.end.i.for.end.thread.i_crit_edge, %if.end.for.end.thread.i_crit_edge
  br label %ip_vs_wrr_gcd_weight.exit

ip_vs_wrr_gcd_weight.exit:                        ; preds = %for.end.thread.i, %for.end.i.ip_vs_wrr_gcd_weight.exit_crit_edge
  %6 = phi i32 [ 1, %for.end.thread.i ], [ %g.1.i, %for.end.i.ip_vs_wrr_gcd_weight.exit_crit_edge ]
  %di = getelementptr inbounds %struct.ip_vs_wrr_mark, ptr %call7.i, i32 0, i32 3
  %7 = ptrtoint ptr %di to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %di, align 4
  %8 = ptrtoint ptr %destinations to i32
  call void @__asan_load4_noabort(i32 %8)
  %dest.014.i = load ptr, ptr %destinations, align 8
  %cmp.not15.i = icmp eq ptr %dest.014.i, %destinations
  br i1 %cmp.not15.i, label %ip_vs_wrr_gcd_weight.exit.ip_vs_wrr_max_weight.exit_crit_edge, label %ip_vs_wrr_gcd_weight.exit.for.body.i21_crit_edge

ip_vs_wrr_gcd_weight.exit.for.body.i21_crit_edge: ; preds = %ip_vs_wrr_gcd_weight.exit
  br label %for.body.i21

ip_vs_wrr_gcd_weight.exit.ip_vs_wrr_max_weight.exit_crit_edge: ; preds = %ip_vs_wrr_gcd_weight.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ip_vs_wrr_max_weight.exit

for.body.i21:                                     ; preds = %for.body.i21.for.body.i21_crit_edge, %ip_vs_wrr_gcd_weight.exit.for.body.i21_crit_edge
  %dest.017.i = phi ptr [ %dest.0.i19, %for.body.i21.for.body.i21_crit_edge ], [ %dest.014.i, %ip_vs_wrr_gcd_weight.exit.for.body.i21_crit_edge ]
  %weight.016.i = phi i32 [ %11, %for.body.i21.for.body.i21_crit_edge ], [ 0, %ip_vs_wrr_gcd_weight.exit.for.body.i21_crit_edge ]
  %weight2.i17 = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.017.i, i32 0, i32 7
  %call.i.i.i18 = tail call zeroext i1 @__kasan_check_read(ptr noundef %weight2.i17, i32 noundef 4) #9
  %9 = ptrtoint ptr %weight2.i17 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %weight2.i17, align 4
  %11 = tail call i32 @llvm.smax.i32(i32 %10, i32 %weight.016.i) #9
  %12 = ptrtoint ptr %dest.017.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %dest.0.i19 = load ptr, ptr %dest.017.i, align 8
  %cmp.not.i20 = icmp eq ptr %dest.0.i19, %destinations
  br i1 %cmp.not.i20, label %ip_vs_wrr_max_weight.exit.loopexit, label %for.body.i21.for.body.i21_crit_edge

for.body.i21.for.body.i21_crit_edge:              ; preds = %for.body.i21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i21

ip_vs_wrr_max_weight.exit.loopexit:               ; preds = %for.body.i21
  call void @__sanitizer_cov_trace_pc() #11
  %phi.bo = add i32 %11, 1
  br label %ip_vs_wrr_max_weight.exit

ip_vs_wrr_max_weight.exit:                        ; preds = %ip_vs_wrr_max_weight.exit.loopexit, %ip_vs_wrr_gcd_weight.exit.ip_vs_wrr_max_weight.exit_crit_edge
  %weight.0.lcssa.i = phi i32 [ 1, %ip_vs_wrr_gcd_weight.exit.ip_vs_wrr_max_weight.exit_crit_edge ], [ %phi.bo, %ip_vs_wrr_max_weight.exit.loopexit ]
  %13 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %di, align 4
  %sub4 = sub i32 %weight.0.lcssa.i, %14
  %mw = getelementptr inbounds %struct.ip_vs_wrr_mark, ptr %call7.i, i32 0, i32 2
  %15 = ptrtoint ptr %mw to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub4, ptr %mw, align 8
  %cw = getelementptr inbounds %struct.ip_vs_wrr_mark, ptr %call7.i, i32 0, i32 1
  %16 = ptrtoint ptr %cw to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub4, ptr %cw, align 4
  %sched_data = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 17
  %17 = ptrtoint ptr %sched_data to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i, ptr %sched_data, align 8
  br label %cleanup

cleanup:                                          ; preds = %ip_vs_wrr_max_weight.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ip_vs_wrr_max_weight.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ip_vs_wrr_done_svc(ptr nocapture noundef readonly %svc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sched_data = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 17
  %0 = ptrtoint ptr %sched_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sched_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %callback_head = getelementptr inbounds %struct.ip_vs_wrr_mark, ptr %1, i32 0, i32 4
  tail call void @kvfree_call_rcu(ptr noundef %callback_head, ptr noundef nonnull inttoptr (i32 16 to ptr)) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip_vs_wrr_dest_changed(ptr noundef %svc, ptr nocapture noundef readnone %dest) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sched_data = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 17
  %0 = ptrtoint ptr %sched_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sched_data, align 8
  %sched_lock = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 16
  tail call void @_raw_spin_lock_bh(ptr noundef %sched_lock) #9
  %destinations = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %destinations, ptr %1, align 4
  %3 = ptrtoint ptr %destinations to i32
  call void @__asan_load4_noabort(i32 %3)
  %dest.021.i = load ptr, ptr %destinations, align 8
  %cmp.not22.i = icmp eq ptr %dest.021.i, %destinations
  br i1 %cmp.not22.i, label %entry.for.end.thread.i_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.for.end.thread.i_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %dest.024.i = phi ptr [ %dest.0.i, %for.inc.i.for.body.i_crit_edge ], [ %dest.021.i, %entry.for.body.i_crit_edge ]
  %g.023.i = phi i32 [ %g.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %weight2.i = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.024.i, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %weight2.i, i32 noundef 4) #9
  %4 = ptrtoint ptr %weight2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %weight2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3.i = icmp sgt i32 %5, 0
  br i1 %cmp3.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %g.023.i)
  %cmp4.i = icmp sgt i32 %g.023.i, 0
  br i1 %cmp4.i, label %if.then5.i, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %call6.i = tail call i32 @gcd(i32 noundef %5, i32 noundef %g.023.i) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then5.i, %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %g.1.i = phi i32 [ %call6.i, %if.then5.i ], [ %g.023.i, %for.body.i.for.inc.i_crit_edge ], [ %5, %if.then.i.for.inc.i_crit_edge ]
  %6 = ptrtoint ptr %dest.024.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %dest.0.i = load ptr, ptr %dest.024.i, align 8
  %cmp.not.i = icmp eq ptr %dest.0.i, %destinations
  br i1 %cmp.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %g.1.i)
  %tobool.not.i = icmp eq i32 %g.1.i, 0
  br i1 %tobool.not.i, label %for.end.i.for.end.thread.i_crit_edge, label %for.end.i.ip_vs_wrr_gcd_weight.exit_crit_edge

for.end.i.ip_vs_wrr_gcd_weight.exit_crit_edge:    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ip_vs_wrr_gcd_weight.exit

for.end.i.for.end.thread.i_crit_edge:             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread.i

for.end.thread.i:                                 ; preds = %for.end.i.for.end.thread.i_crit_edge, %entry.for.end.thread.i_crit_edge
  br label %ip_vs_wrr_gcd_weight.exit

ip_vs_wrr_gcd_weight.exit:                        ; preds = %for.end.thread.i, %for.end.i.ip_vs_wrr_gcd_weight.exit_crit_edge
  %7 = phi i32 [ 1, %for.end.thread.i ], [ %g.1.i, %for.end.i.ip_vs_wrr_gcd_weight.exit_crit_edge ]
  %di = getelementptr inbounds %struct.ip_vs_wrr_mark, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %di to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %di, align 4
  %9 = ptrtoint ptr %destinations to i32
  call void @__asan_load4_noabort(i32 %9)
  %dest.014.i = load ptr, ptr %destinations, align 8
  %cmp.not15.i = icmp eq ptr %dest.014.i, %destinations
  br i1 %cmp.not15.i, label %ip_vs_wrr_gcd_weight.exit.ip_vs_wrr_max_weight.exit_crit_edge, label %ip_vs_wrr_gcd_weight.exit.for.body.i41_crit_edge

ip_vs_wrr_gcd_weight.exit.for.body.i41_crit_edge: ; preds = %ip_vs_wrr_gcd_weight.exit
  br label %for.body.i41

ip_vs_wrr_gcd_weight.exit.ip_vs_wrr_max_weight.exit_crit_edge: ; preds = %ip_vs_wrr_gcd_weight.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ip_vs_wrr_max_weight.exit

for.body.i41:                                     ; preds = %for.body.i41.for.body.i41_crit_edge, %ip_vs_wrr_gcd_weight.exit.for.body.i41_crit_edge
  %dest.017.i = phi ptr [ %dest.0.i39, %for.body.i41.for.body.i41_crit_edge ], [ %dest.014.i, %ip_vs_wrr_gcd_weight.exit.for.body.i41_crit_edge ]
  %weight.016.i = phi i32 [ %12, %for.body.i41.for.body.i41_crit_edge ], [ 0, %ip_vs_wrr_gcd_weight.exit.for.body.i41_crit_edge ]
  %weight2.i37 = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.017.i, i32 0, i32 7
  %call.i.i.i38 = tail call zeroext i1 @__kasan_check_read(ptr noundef %weight2.i37, i32 noundef 4) #9
  %10 = ptrtoint ptr %weight2.i37 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %weight2.i37, align 4
  %12 = tail call i32 @llvm.smax.i32(i32 %11, i32 %weight.016.i) #9
  %13 = ptrtoint ptr %dest.017.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %dest.0.i39 = load ptr, ptr %dest.017.i, align 8
  %cmp.not.i40 = icmp eq ptr %dest.0.i39, %destinations
  br i1 %cmp.not.i40, label %ip_vs_wrr_max_weight.exitthread-pre-split, label %for.body.i41.for.body.i41_crit_edge

for.body.i41.for.body.i41_crit_edge:              ; preds = %for.body.i41
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i41

ip_vs_wrr_max_weight.exitthread-pre-split:        ; preds = %for.body.i41
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load i32, ptr %di, align 4
  br label %ip_vs_wrr_max_weight.exit

ip_vs_wrr_max_weight.exit:                        ; preds = %ip_vs_wrr_max_weight.exitthread-pre-split, %ip_vs_wrr_gcd_weight.exit.ip_vs_wrr_max_weight.exit_crit_edge
  %15 = phi i32 [ %.pr, %ip_vs_wrr_max_weight.exitthread-pre-split ], [ %7, %ip_vs_wrr_gcd_weight.exit.ip_vs_wrr_max_weight.exit_crit_edge ]
  %weight.0.lcssa.i = phi i32 [ %12, %ip_vs_wrr_max_weight.exitthread-pre-split ], [ 0, %ip_vs_wrr_gcd_weight.exit.ip_vs_wrr_max_weight.exit_crit_edge ]
  %sub.neg = sub i32 1, %15
  %sub3 = add i32 %sub.neg, %weight.0.lcssa.i
  %mw = getelementptr inbounds %struct.ip_vs_wrr_mark, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %mw to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub3, ptr %mw, align 4
  %cw = getelementptr inbounds %struct.ip_vs_wrr_mark, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %cw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cw, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %sub3)
  %cmp = icmp sgt i32 %18, %sub3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %ip_vs_wrr_max_weight.exit.if.end15.sink.split_crit_edge, label %if.else

ip_vs_wrr_max_weight.exit.if.end15.sink.split_crit_edge: ; preds = %ip_vs_wrr_max_weight.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split

if.else:                                          ; preds = %ip_vs_wrr_max_weight.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp9 = icmp sgt i32 %15, 1
  br i1 %cmp9, label %if.then10, label %if.else.if.end15_crit_edge

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %19 = srem i32 %18, %15
  %mul = add i32 %18, 1
  %add = sub i32 %mul, %19
  br label %if.end15.sink.split

if.end15.sink.split:                              ; preds = %if.then10, %ip_vs_wrr_max_weight.exit.if.end15.sink.split_crit_edge
  %add.sink = phi i32 [ %add, %if.then10 ], [ %sub3, %ip_vs_wrr_max_weight.exit.if.end15.sink.split_crit_edge ]
  %20 = ptrtoint ptr %cw to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add.sink, ptr %cw, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end15.sink.split, %if.else.if.end15_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %sched_lock) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ip_vs_wrr_schedule(ptr noundef %svc, ptr nocapture noundef readnone %skb, ptr nocapture noundef readnone %iph) #2 align 64 {
entry:
  %ip_vs_dbg_buf = alloca [160 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sched_data = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 17
  %0 = ptrtoint ptr %sched_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sched_data, align 8
  %call = tail call i32 @ip_vs_get_debug_level() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call)
  %cmp = icmp sgt i32 %call, 5
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %sched_lock = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 16
  tail call void @_raw_spin_lock_bh(ptr noundef %sched_lock) #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %mw = getelementptr inbounds %struct.ip_vs_wrr_mark, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %mw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp5 = icmp eq i32 %5, 0
  br i1 %cmp5, label %err_noavail, label %while.cond.preheader

while.cond.preheader:                             ; preds = %do.end4
  %destinations = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 12
  %cw = getelementptr inbounds %struct.ip_vs_wrr_mark, ptr %1, i32 0, i32 1
  %di = getelementptr inbounds %struct.ip_vs_wrr_mark, ptr %1, i32 0, i32 3
  %cmp40 = icmp eq ptr %3, %destinations
  br label %while.cond

while.cond:                                       ; preds = %if.end43, %while.cond.preheader
  %restarted.0.off0 = phi i1 [ %restarted.1.off0, %if.end43 ], [ false, %while.cond.preheader ]
  %last_pass.0.off0 = phi i1 [ %cmp46, %if.end43 ], [ false, %while.cond.preheader ]
  %stop.0 = phi ptr [ %stop.1, %if.end43 ], [ null, %while.cond.preheader ]
  %dest.0 = phi ptr [ %destinations, %if.end43 ], [ %3, %while.cond.preheader ]
  br label %for.cond

for.cond:                                         ; preds = %if.end18.for.cond_crit_edge, %while.cond
  %dest.1.in = phi ptr [ %dest.0, %while.cond ], [ %dest.1, %if.end18.for.cond_crit_edge ]
  %6 = ptrtoint ptr %dest.1.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %dest.1 = load volatile ptr, ptr %dest.1.in, align 8
  %cmp14.not = icmp eq ptr %dest.1, %destinations
  br i1 %cmp14.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %flags = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.1, i32 0, i32 5
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags, align 4
  %and = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.body.if.end18_crit_edge

for.body.if.end18_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

land.lhs.true:                                    ; preds = %for.body
  %weight = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.1, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %weight, i32 noundef 4) #9
  %9 = ptrtoint ptr %weight to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %weight, align 4
  %11 = ptrtoint ptr %cw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cw, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp16.not = icmp slt i32 %10, %12
  br i1 %cmp16.not, label %land.lhs.true.if.end18_crit_edge, label %do.body56

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.end18:                                         ; preds = %land.lhs.true.if.end18_crit_edge, %for.body.if.end18_crit_edge
  %cmp19 = icmp eq ptr %dest.1, %stop.0
  br i1 %cmp19, label %if.end18.err_over_crit_edge, label %if.end18.for.cond_crit_edge

if.end18.for.cond_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.end18.err_over_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_over

for.end:                                          ; preds = %for.cond
  %13 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %di, align 4
  %15 = ptrtoint ptr %cw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cw, align 4
  %sub = sub i32 %16, %14
  store i32 %sub, ptr %cw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp33 = icmp slt i32 %sub, 1
  br i1 %cmp33, label %if.then34, label %for.end.if.end43_crit_edge

for.end.if.end43_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then34:                                        ; preds = %for.end
  %17 = ptrtoint ptr %mw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mw, align 4
  %19 = ptrtoint ptr %cw to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %cw, align 4
  %or.cond = select i1 %last_pass.0.off0, i1 true, i1 %cmp40
  br i1 %or.cond, label %if.then34.err_over_crit_edge, label %if.then34.if.end43_crit_edge

if.then34.if.end43_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then34.err_over_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_over

if.end43:                                         ; preds = %if.then34.if.end43_crit_edge, %for.end.if.end43_crit_edge
  %restarted.1.off0 = phi i1 [ %restarted.0.off0, %for.end.if.end43_crit_edge ], [ true, %if.then34.if.end43_crit_edge ]
  %20 = ptrtoint ptr %cw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cw, align 4
  %22 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %di, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp46 = icmp sle i32 %21, %23
  %24 = select i1 %cmp46, i1 %restarted.1.off0, i1 false
  %brmerge = xor i1 %24, true
  %or.cond117 = select i1 %brmerge, i1 true, i1 %cmp40
  %stop.1 = select i1 %or.cond117, ptr %stop.0, ptr %3
  br label %while.cond

do.body56:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #9
  %25 = call ptr @memset(ptr %ip_vs_dbg_buf, i32 255, i32 160)
  %call57 = tail call i32 @ip_vs_get_debug_level() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call57)
  %cmp58 = icmp sgt i32 %call57, 5
  br i1 %cmp58, label %do.end62, label %do.body56.if.end71_crit_edge

do.body56.if.end71_crit_edge:                     ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

do.end62:                                         ; preds = %do.body56
  %af = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.1, i32 0, i32 2
  %26 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %af, align 8
  %addr = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.1, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %27)
  %cmp.i = icmp eq i16 %27, 10
  %.str.9..str.10.i = select i1 %cmp.i, ptr @.str.9, ptr @.str.10
  %call3.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf, i32 noundef 160, ptr noundef nonnull %.str.9..str.10.i, ptr noundef %addr) #9
  %28 = add i32 %call3.i, -161
  call void @__sanitizer_cov_trace_const_cmp4(i32 -162, i32 %28)
  %cmp7.i = icmp ult i32 %28, -162
  br i1 %cmp7.i, label %do.body10.i, label %ip_vs_dbg_addr.exit, !prof !38

do.body10.i:                                      ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #9, !srcloc !39
  unreachable

ip_vs_dbg_addr.exit:                              ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #11
  %port = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.1, i32 0, i32 3
  %29 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %port, align 2
  %conv65 = zext i16 %30 to i32
  %activeconns = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.1, i32 0, i32 15
  %call.i.i118 = tail call zeroext i1 @__kasan_check_read(ptr noundef %activeconns, i32 noundef 4) #9
  %31 = ptrtoint ptr %activeconns to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %activeconns, align 4
  %refcnt = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.1, i32 0, i32 12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #9
  %33 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %refcnt, align 4
  %call.i.i119 = tail call zeroext i1 @__kasan_check_read(ptr noundef %weight, i32 noundef 4) #9
  %35 = ptrtoint ptr %weight to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %weight, align 4
  %call70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull %ip_vs_dbg_buf, i32 noundef %conv65, i32 noundef %32, i32 noundef %34, i32 noundef %36) #14
  br label %if.end71

if.end71:                                         ; preds = %ip_vs_dbg_addr.exit, %do.body56.if.end71_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #9
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %dest.1, ptr %1, align 4
  br label %out

out:                                              ; preds = %err_over, %err_noavail, %if.end71
  %dest.2 = phi ptr [ null, %err_noavail ], [ null, %err_over ], [ %dest.1, %if.end71 ]
  call void @_raw_spin_unlock_bh(ptr noundef %sched_lock) #9
  ret ptr %dest.2

err_noavail:                                      ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ip_vs_scheduler_err(ptr noundef %svc, ptr noundef nonnull @.str.7) #9
  br label %out

err_over:                                         ; preds = %if.then34.err_over_crit_edge, %if.end18.err_over_crit_edge
  %dest.1130 = phi ptr [ %stop.0, %if.end18.err_over_crit_edge ], [ %destinations, %if.then34.err_over_crit_edge ]
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %dest.1130, ptr %1, align 4
  tail call void @ip_vs_scheduler_err(ptr noundef %svc, ptr noundef nonnull @.str.8) #9
  br label %out
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @gcd(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_vs_get_debug_level() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_vs_scheduler_err(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_ip_vs_scheduler(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind readnone willreturn }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !15, !16, !17, !19, !20, !21, !23, !25, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @__initcall__kmod_ip_vs_wrr__587_263_ip_vs_wrr_init6, !1, !"__initcall__kmod_ip_vs_wrr__587_263_ip_vs_wrr_init6", i1 false, i1 false}
!1 = !{!"../net/netfilter/ipvs/ip_vs_wrr.c", i32 263, i32 1}
!2 = !{ptr @__exitcall_ip_vs_wrr_cleanup, !3, !"__exitcall_ip_vs_wrr_cleanup", i1 false, i1 false}
!3 = !{!"../net/netfilter/ipvs/ip_vs_wrr.c", i32 264, i32 1}
!4 = !{ptr @__UNIQUE_ID_file588, !5, !"__UNIQUE_ID_file588", i1 false, i1 false}
!5 = !{!"../net/netfilter/ipvs/ip_vs_wrr.c", i32 265, i32 1}
!6 = !{ptr @__UNIQUE_ID_license589, !5, !"__UNIQUE_ID_license589", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../net/netfilter/ipvs/ip_vs_wrr.c", i32 240, i32 12}
!9 = !{ptr @ip_vs_wrr_scheduler, !10, !"ip_vs_wrr_scheduler", i1 false, i1 false}
!10 = !{!"../net/netfilter/ipvs/ip_vs_wrr.c", i32 239, i32 31}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/netfilter/ipvs/ip_vs_wrr.c", i32 167, i32 2}
!13 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @ip_vs_wrr_schedule._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @ip_vs_wrr_schedule._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/netfilter/ipvs/ip_vs_wrr.c", i32 212, i32 2}
!19 = !{ptr @ip_vs_wrr_schedule._entry.4, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @ip_vs_wrr_schedule._entry_ptr.6, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/netfilter/ipvs/ip_vs_wrr.c", i32 227, i32 27}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/netfilter/ipvs/ip_vs_wrr.c", i32 233, i32 27}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/net/ip_vs.h", i32 196, i32 46}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/net/ip_vs.h", i32 200, i32 46}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{!"branch_weights", i32 1, i32 2000}
!39 = !{i64 2158040291, i64 2158040775, i64 2158040328, i64 2158040384, i64 2158040418, i64 2158040442, i64 2158040483, i64 2158040504, i64 2158040532, i64 2158040566}
