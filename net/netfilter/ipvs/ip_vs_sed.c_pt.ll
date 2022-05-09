; ModuleID = '/llk/IR_all_yes/net/netfilter/ipvs/ip_vs_sed.c_pt.bc'
source_filename = "../net/netfilter/ipvs/ip_vs_sed.c"
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

@ip_vs_sed_scheduler = internal global { %struct.ip_vs_scheduler, [52 x i8] } { %struct.ip_vs_scheduler { %struct.list_head { ptr @ip_vs_sed_scheduler, ptr @ip_vs_sed_scheduler }, ptr @.str, %struct.atomic_t zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ip_vs_sed_schedule }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_ip_vs_sed__588_137_ip_vs_sed_init6 = internal global ptr @ip_vs_sed_init, section ".initcall6.init", align 4
@__exitcall_ip_vs_sed_cleanup = internal global ptr @ip_vs_sed_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_file589 = internal constant [44 x i8] c"ip_vs_sed.file=net/netfilter/ipvs/ip_vs_sed\00", section ".modinfo", align 1
@__UNIQUE_ID_license590 = internal constant [22 x i8] c"ip_vs_sed.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sed\00", [28 x i8] zeroinitializer }, align 32
@ip_vs_sed_schedule._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 63, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017IPVS: %s(): Scheduling...\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ip_vs_sed_schedule\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"net/netfilter/ipvs/ip_vs_sed.c\00", [33 x i8] zeroinitializer }, align 32
@ip_vs_sed_schedule._entry_ptr = internal global ptr @ip_vs_sed_schedule._entry, section ".printk_index", align 4
@ip_vs_sed_schedule.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no destination available\00", [39 x i8] zeroinitializer }, align 32
@ip_vs_sed_schedule._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\017IPVS: SED: server %s:%u activeconns %d refcnt %d weight %d overhead %d\0A\00", [54 x i8] zeroinitializer }, align 32
@ip_vs_sed_schedule._entry_ptr.8 = internal global ptr @ip_vs_sed_schedule._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"[%pI6c]\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pI4\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant [20 x i8] c"ip_vs_sed_scheduler\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 116, i32 31 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 118, i32 12 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 63, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 78, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 86, i32 27 }
@___asan_gen_.35 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.39 = private constant [34 x i8] c"../net/netfilter/ipvs/ip_vs_sed.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 104, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 196, i32 46 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [23 x i8] c"../include/net/ip_vs.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 200, i32 46 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_file589, ptr @__UNIQUE_ID_license590, ptr @__exitcall_ip_vs_sed_cleanup, ptr @__initcall__kmod_ip_vs_sed__588_137_ip_vs_sed_init6, ptr @ip_vs_sed_cleanup, ptr @ip_vs_sed_schedule._entry, ptr @ip_vs_sed_schedule._entry.6, ptr @ip_vs_sed_schedule._entry_ptr, ptr @ip_vs_sed_schedule._entry_ptr.8, ptr @ip_vs_sed_scheduler, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_sed_scheduler to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_sed_schedule._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_sed_schedule._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ip_vs_sed_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @unregister_ip_vs_scheduler(ptr noundef nonnull @ip_vs_sed_scheduler) #6
  tail call void @synchronize_rcu() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_ip_vs_scheduler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ip_vs_sed_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_ip_vs_scheduler(ptr noundef nonnull @ip_vs_sed_scheduler) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ip_vs_sed_schedule(ptr noundef %svc, ptr nocapture noundef readnone %skb, ptr nocapture noundef readnone %iph) #2 align 64 {
entry:
  %ip_vs_dbg_buf = alloca [160 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ip_vs_get_debug_level() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call)
  %cmp = icmp sgt i32 %call, 5
  br i1 %cmp, label %do.end, label %entry.do.body5_crit_edge

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #9
  br label %do.body5

do.body5:                                         ; preds = %do.end, %entry.do.body5_crit_edge
  %call6 = tail call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %land.lhs.true, label %do.body5.do.end14_crit_edge

do.body5.do.end14_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

land.lhs.true:                                    ; preds = %do.body5
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end14_crit_edge, label %land.lhs.true9

land.lhs.true.do.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

land.lhs.true9:                                   ; preds = %land.lhs.true
  %.b128 = load i1, ptr @ip_vs_sed_schedule.__warned, align 1
  br i1 %.b128, label %land.lhs.true9.do.end14_crit_edge, label %if.then11

land.lhs.true9.do.end14_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @ip_vs_sed_schedule.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 78, ptr noundef nonnull @.str.4) #6
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %land.lhs.true9.do.end14_crit_edge, %land.lhs.true.do.end14_crit_edge, %do.body5.do.end14_crit_edge
  %destinations = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 12
  %0 = ptrtoint ptr %destinations to i32
  call void @__asan_load4_noabort(i32 %0)
  %dest.0140 = load volatile ptr, ptr %destinations, align 8
  %cmp21.not141 = icmp eq ptr %dest.0140, %destinations
  br i1 %cmp21.not141, label %do.end14.for.end_crit_edge, label %do.end14.for.body_crit_edge

do.end14.for.body_crit_edge:                      ; preds = %do.end14
  br label %for.body

do.end14.for.end_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end14.for.body_crit_edge
  %dest.0142 = phi ptr [ %dest.0, %for.inc.for.body_crit_edge ], [ %dest.0140, %do.end14.for.body_crit_edge ]
  %flags = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.0142, i32 0, i32 5
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %land.lhs.true23, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true23:                                  ; preds = %for.body
  %weight = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.0142, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %weight, i32 noundef 4) #6
  %3 = ptrtoint ptr %weight to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %weight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp25 = icmp sgt i32 %4, 0
  br i1 %cmp25, label %if.then26, label %land.lhs.true23.for.inc_crit_edge

land.lhs.true23.for.inc_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then26:                                        ; preds = %land.lhs.true23
  %activeconns.i = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.0142, i32 0, i32 15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %activeconns.i, i32 noundef 4) #6
  %5 = ptrtoint ptr %activeconns.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %activeconns.i, align 4
  %add.i = add i32 %6, 1
  %7 = ptrtoint ptr %dest.0142 to i32
  call void @__asan_load4_noabort(i32 %7)
  %dest.1143 = load volatile ptr, ptr %dest.0142, align 8
  %cmp50.not144 = icmp eq ptr %dest.1143, %destinations
  br i1 %cmp50.not144, label %if.then26.do.body81_crit_edge, label %if.then26.for.body51_crit_edge

if.then26.for.body51_crit_edge:                   ; preds = %if.then26
  br label %for.body51

if.then26.do.body81_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body81

for.inc:                                          ; preds = %land.lhs.true23.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %8 = ptrtoint ptr %dest.0142 to i32
  call void @__asan_load4_noabort(i32 %8)
  %dest.0 = load volatile ptr, ptr %dest.0142, align 8
  %cmp21.not = icmp eq ptr %dest.0, %destinations
  br i1 %cmp21.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end14.for.end_crit_edge
  tail call void @ip_vs_scheduler_err(ptr noundef %svc, ptr noundef nonnull @.str.5) #6
  br label %cleanup

for.body51:                                       ; preds = %for.inc70.for.body51_crit_edge, %if.then26.for.body51_crit_edge
  %dest.1147 = phi ptr [ %dest.1, %for.inc70.for.body51_crit_edge ], [ %dest.1143, %if.then26.for.body51_crit_edge ]
  %least.0146 = phi ptr [ %least.1, %for.inc70.for.body51_crit_edge ], [ %dest.0142, %if.then26.for.body51_crit_edge ]
  %loh.0145 = phi i32 [ %loh.1, %for.inc70.for.body51_crit_edge ], [ %add.i, %if.then26.for.body51_crit_edge ]
  %flags52 = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.1147, i32 0, i32 5
  %9 = ptrtoint ptr %flags52 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags52, align 4
  %and53 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end56, label %for.body51.for.inc70_crit_edge

for.body51.for.inc70_crit_edge:                   ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc70

if.end56:                                         ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #8
  %activeconns.i134 = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.1147, i32 0, i32 15
  %call.i.i.i135 = tail call zeroext i1 @__kasan_check_read(ptr noundef %activeconns.i134, i32 noundef 4) #6
  %11 = ptrtoint ptr %activeconns.i134 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %activeconns.i134, align 4
  %add.i136 = add i32 %12, 1
  %conv = sext i32 %loh.0145 to i64
  %weight58 = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.1147, i32 0, i32 7
  %call.i.i130 = tail call zeroext i1 @__kasan_check_read(ptr noundef %weight58, i32 noundef 4) #6
  %13 = ptrtoint ptr %weight58 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %weight58, align 4
  %conv60 = sext i32 %14 to i64
  %mul = mul nsw i64 %conv60, %conv
  %conv61 = sext i32 %add.i136 to i64
  %weight62 = getelementptr inbounds %struct.ip_vs_dest, ptr %least.0146, i32 0, i32 7
  %call.i.i131 = tail call zeroext i1 @__kasan_check_read(ptr noundef %weight62, i32 noundef 4) #6
  %15 = ptrtoint ptr %weight62 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %weight62, align 4
  %conv64 = sext i32 %16 to i64
  %mul65 = mul nsw i64 %conv64, %conv61
  call void @__sanitizer_cov_trace_cmp8(i64 %mul, i64 %mul65)
  %cmp66 = icmp sgt i64 %mul, %mul65
  %spec.select = select i1 %cmp66, i32 %add.i136, i32 %loh.0145
  %spec.select129 = select i1 %cmp66, ptr %dest.1147, ptr %least.0146
  br label %for.inc70

for.inc70:                                        ; preds = %if.end56, %for.body51.for.inc70_crit_edge
  %loh.1 = phi i32 [ %loh.0145, %for.body51.for.inc70_crit_edge ], [ %spec.select, %if.end56 ]
  %least.1 = phi ptr [ %least.0146, %for.body51.for.inc70_crit_edge ], [ %spec.select129, %if.end56 ]
  %17 = ptrtoint ptr %dest.1147 to i32
  call void @__asan_load4_noabort(i32 %17)
  %dest.1 = load volatile ptr, ptr %dest.1147, align 8
  %cmp50.not = icmp eq ptr %dest.1, %destinations
  br i1 %cmp50.not, label %for.inc70.do.body81_crit_edge, label %for.inc70.for.body51_crit_edge

for.inc70.for.body51_crit_edge:                   ; preds = %for.inc70
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body51

for.inc70.do.body81_crit_edge:                    ; preds = %for.inc70
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body81

do.body81:                                        ; preds = %for.inc70.do.body81_crit_edge, %if.then26.do.body81_crit_edge
  %loh.0.lcssa = phi i32 [ %add.i, %if.then26.do.body81_crit_edge ], [ %loh.1, %for.inc70.do.body81_crit_edge ]
  %least.0.lcssa = phi ptr [ %dest.0142, %if.then26.do.body81_crit_edge ], [ %least.1, %for.inc70.do.body81_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #6
  %18 = call ptr @memset(ptr %ip_vs_dbg_buf, i32 255, i32 160)
  %call82 = tail call i32 @ip_vs_get_debug_level() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call82)
  %cmp83 = icmp sgt i32 %call82, 5
  br i1 %cmp83, label %do.end88, label %do.body81.if.end98_crit_edge

do.body81.if.end98_crit_edge:                     ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end98

do.end88:                                         ; preds = %do.body81
  %af = getelementptr inbounds %struct.ip_vs_dest, ptr %least.0.lcssa, i32 0, i32 2
  %19 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %af, align 8
  %addr = getelementptr inbounds %struct.ip_vs_dest, ptr %least.0.lcssa, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %20)
  %cmp.i = icmp eq i16 %20, 10
  %.str.9..str.10.i = select i1 %cmp.i, ptr @.str.9, ptr @.str.10
  %call3.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf, i32 noundef 160, ptr noundef nonnull %.str.9..str.10.i, ptr noundef %addr) #6
  %21 = add i32 %call3.i, -161
  call void @__sanitizer_cov_trace_const_cmp4(i32 -162, i32 %21)
  %cmp7.i = icmp ult i32 %21, -162
  br i1 %cmp7.i, label %do.body10.i, label %ip_vs_dbg_addr.exit, !prof !39

do.body10.i:                                      ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #6, !srcloc !40
  unreachable

ip_vs_dbg_addr.exit:                              ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #8
  %port = getelementptr inbounds %struct.ip_vs_dest, ptr %least.0.lcssa, i32 0, i32 3
  %22 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %port, align 2
  %conv92 = zext i16 %23 to i32
  %activeconns = getelementptr inbounds %struct.ip_vs_dest, ptr %least.0.lcssa, i32 0, i32 15
  %call.i.i132 = tail call zeroext i1 @__kasan_check_read(ptr noundef %activeconns, i32 noundef 4) #6
  %24 = ptrtoint ptr %activeconns to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %activeconns, align 4
  %refcnt = getelementptr inbounds %struct.ip_vs_dest, ptr %least.0.lcssa, i32 0, i32 12
  %call.i.i.i137 = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #6
  %26 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %refcnt, align 4
  %weight95 = getelementptr inbounds %struct.ip_vs_dest, ptr %least.0.lcssa, i32 0, i32 7
  %call.i.i133 = tail call zeroext i1 @__kasan_check_read(ptr noundef %weight95, i32 noundef 4) #6
  %28 = ptrtoint ptr %weight95 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %weight95, align 4
  %call97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull %ip_vs_dbg_buf, i32 noundef %conv92, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %loh.0.lcssa) #9
  br label %if.end98

if.end98:                                         ; preds = %ip_vs_dbg_addr.exit, %do.body81.if.end98_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end98, %for.end
  %retval.0 = phi ptr [ %least.0.lcssa, %if.end98 ], [ null, %for.end ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_vs_get_debug_level() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_vs_scheduler_err(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_ip_vs_scheduler(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !15, !16, !17, !19, !20, !22, !24, !25, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @__initcall__kmod_ip_vs_sed__588_137_ip_vs_sed_init6, !1, !"__initcall__kmod_ip_vs_sed__588_137_ip_vs_sed_init6", i1 false, i1 false}
!1 = !{!"../net/netfilter/ipvs/ip_vs_sed.c", i32 137, i32 1}
!2 = !{ptr @__exitcall_ip_vs_sed_cleanup, !3, !"__exitcall_ip_vs_sed_cleanup", i1 false, i1 false}
!3 = !{!"../net/netfilter/ipvs/ip_vs_sed.c", i32 138, i32 1}
!4 = !{ptr @__UNIQUE_ID_file589, !5, !"__UNIQUE_ID_file589", i1 false, i1 false}
!5 = !{!"../net/netfilter/ipvs/ip_vs_sed.c", i32 139, i32 1}
!6 = !{ptr @__UNIQUE_ID_license590, !5, !"__UNIQUE_ID_license590", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../net/netfilter/ipvs/ip_vs_sed.c", i32 118, i32 12}
!9 = !{ptr @ip_vs_sed_scheduler, !10, !"ip_vs_sed_scheduler", i1 false, i1 false}
!10 = !{!"../net/netfilter/ipvs/ip_vs_sed.c", i32 116, i32 31}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/netfilter/ipvs/ip_vs_sed.c", i32 63, i32 2}
!13 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @ip_vs_sed_schedule._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @ip_vs_sed_schedule._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../net/netfilter/ipvs/ip_vs_sed.c", i32 78, i32 2}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/netfilter/ipvs/ip_vs_sed.c", i32 86, i32 27}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/netfilter/ipvs/ip_vs_sed.c", i32 104, i32 2}
!24 = !{ptr @ip_vs_sed_schedule._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @ip_vs_sed_schedule._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/net/ip_vs.h", i32 196, i32 46}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/net/ip_vs.h", i32 200, i32 46}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{!"branch_weights", i32 1, i32 2000}
!40 = !{i64 2158032817, i64 2158033301, i64 2158032854, i64 2158032910, i64 2158032944, i64 2158032968, i64 2158033009, i64 2158033030, i64 2158033058, i64 2158033092}
