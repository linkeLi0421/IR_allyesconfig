; ModuleID = '/llk/IR_all_yes/net/atm/addr.c_pt.bc'
source_filename = "../net/atm/addr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sockaddr_atmpvc = type { i16, %struct.anon.152 }
%struct.anon.152 = type { i16, i16, i32 }
%struct.atm_dev = type { ptr, ptr, ptr, i32, ptr, ptr, i32, %struct.list_head, %struct.list_head, [6 x i8], %struct.atm_cirange, %struct.k_atm_dev_stats, i8, i32, %struct.refcount_struct, %struct.spinlock, ptr, ptr, %struct.device, %struct.list_head }
%struct.atm_cirange = type { i8, i8 }
%struct.k_atm_dev_stats = type { %struct.k_atm_aal_stats, %struct.k_atm_aal_stats, %struct.k_atm_aal_stats }
%struct.k_atm_aal_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.sockaddr_atmsvc = type { i16, %struct.anon.146 }
%struct.anon.146 = type { [20 x i8], [13 x i8], i8, i32 }
%struct.atm_dev_addr = type { %struct.sockaddr_atmsvc, %struct.list_head }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_ = private constant [18 x i8] c"../net/atm/addr.c\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 230, i32 6 }
@___asan_gen_.7 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 214, i32 2 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 174, i32 2 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @atm_reset_addr(ptr noundef %dev, i32 noundef %atype) local_unnamed_addr #0 align 64 {
entry:
  %pvc.i = alloca %struct.sockaddr_atmpvc, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 15
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %atype)
  %cmp5 = icmp eq i32 %atype, 1
  %lecs = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 8
  %local = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 7
  %head.0 = select i1 %cmp5, ptr %lecs, ptr %local
  %0 = ptrtoint ptr %head.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.0, align 4
  %cmp14.not40 = icmp eq ptr %1, %head.0
  br i1 %cmp14.not40, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in41 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %this.0 = getelementptr i8, ptr %.pn.in41, i32 -44
  %2 = ptrtoint ptr %.pn.in41 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in41, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in41) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in41, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in41 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in41, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in41 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in41, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in41, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %this.0) #8
  %cmp14.not = icmp eq ptr %.pn, %head.0
  br i1 %cmp14.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  %cmp24 = icmp eq ptr %head.0, %local
  br i1 %cmp24, label %if.then26, label %for.end.if.end27_crit_edge

for.end.if.end27_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then26:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pvc.i) #8
  %11 = call ptr @memset(ptr %pvc.i, i32 255, i32 12)
  %number.i = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 3
  %12 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %number.i, align 4
  %conv.i = trunc i32 %13 to i16
  %sap_addr.i = getelementptr inbounds %struct.sockaddr_atmpvc, ptr %pvc.i, i32 0, i32 1
  %14 = ptrtoint ptr %sap_addr.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i, ptr %sap_addr.i, align 4
  call void @sigd_enq(ptr noundef null, i32 noundef 10, ptr noundef null, ptr noundef nonnull %pvc.i, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pvc.i) #8
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %for.end.if.end27_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atm_add_addr(ptr noundef %dev, ptr nocapture noundef readonly %addr, i32 noundef %atype) local_unnamed_addr #0 align 64 {
entry:
  %pvc.i = alloca %struct.sockaddr_atmpvc, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %1)
  %cmp.not.i = icmp eq i16 %1, 20
  br i1 %cmp.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %pub.i = getelementptr inbounds %struct.sockaddr_atmsvc, ptr %addr, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %pub.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pub.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.then2.i, label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %if.end.i
  %arrayidx.i = getelementptr %struct.sockaddr_atmsvc, ptr %addr, i32 0, i32 1, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool12.not.i = icmp eq i8 %5, 0
  br i1 %tobool12.not.i, label %for.body.preheader.i.do.body1_crit_edge, label %for.cond.i

for.body.preheader.i.do.body1_crit_edge:          ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1

if.then2.i:                                       ; preds = %if.end.i
  %sas_addr.i = getelementptr inbounds %struct.sockaddr_atmsvc, ptr %addr, i32 0, i32 1
  %6 = ptrtoint ptr %sas_addr.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sas_addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not.i = icmp eq i8 %7, 0
  br i1 %tobool6.not.i, label %if.then2.i.cleanup_crit_edge, label %if.then2.i.do.body1_crit_edge

if.then2.i.do.body1_crit_edge:                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1

if.then2.i.cleanup_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.i:                                       ; preds = %for.body.preheader.i
  %arrayidx.1.i = getelementptr %struct.sockaddr_atmsvc, ptr %addr, i32 0, i32 1, i32 1, i32 2
  %8 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool12.not.1.i = icmp eq i8 %9, 0
  br i1 %tobool12.not.1.i, label %for.cond.i.do.body1_crit_edge, label %for.cond.1.i

for.cond.i.do.body1_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx.2.i = getelementptr %struct.sockaddr_atmsvc, ptr %addr, i32 0, i32 1, i32 1, i32 3
  %10 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool12.not.2.i = icmp eq i8 %11, 0
  br i1 %tobool12.not.2.i, label %for.cond.1.i.do.body1_crit_edge, label %for.cond.2.i

for.cond.1.i.do.body1_crit_edge:                  ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %arrayidx.3.i = getelementptr %struct.sockaddr_atmsvc, ptr %addr, i32 0, i32 1, i32 1, i32 4
  %12 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool12.not.3.i = icmp eq i8 %13, 0
  br i1 %tobool12.not.3.i, label %for.cond.2.i.do.body1_crit_edge, label %for.cond.3.i

for.cond.2.i.do.body1_crit_edge:                  ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %arrayidx.4.i = getelementptr %struct.sockaddr_atmsvc, ptr %addr, i32 0, i32 1, i32 1, i32 5
  %14 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool12.not.4.i = icmp eq i8 %15, 0
  br i1 %tobool12.not.4.i, label %for.cond.3.i.do.body1_crit_edge, label %for.cond.4.i

for.cond.3.i.do.body1_crit_edge:                  ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %arrayidx.5.i = getelementptr %struct.sockaddr_atmsvc, ptr %addr, i32 0, i32 1, i32 1, i32 6
  %16 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool12.not.5.i = icmp eq i8 %17, 0
  br i1 %tobool12.not.5.i, label %for.cond.4.i.do.body1_crit_edge, label %for.cond.5.i

for.cond.4.i.do.body1_crit_edge:                  ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %arrayidx.6.i = getelementptr %struct.sockaddr_atmsvc, ptr %addr, i32 0, i32 1, i32 1, i32 7
  %18 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool12.not.6.i = icmp eq i8 %19, 0
  br i1 %tobool12.not.6.i, label %for.cond.5.i.do.body1_crit_edge, label %for.cond.6.i

for.cond.5.i.do.body1_crit_edge:                  ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1

for.cond.6.i:                                     ; preds = %for.cond.5.i
  %arrayidx.7.i = getelementptr %struct.sockaddr_atmsvc, ptr %addr, i32 0, i32 1, i32 1, i32 8
  %20 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool12.not.7.i = icmp eq i8 %21, 0
  br i1 %tobool12.not.7.i, label %for.cond.6.i.do.body1_crit_edge, label %for.cond.7.i

for.cond.6.i.do.body1_crit_edge:                  ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1

for.cond.7.i:                                     ; preds = %for.cond.6.i
  %arrayidx.8.i = getelementptr %struct.sockaddr_atmsvc, ptr %addr, i32 0, i32 1, i32 1, i32 9
  %22 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.8.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool12.not.8.i = icmp eq i8 %23, 0
  br i1 %tobool12.not.8.i, label %for.cond.7.i.do.body1_crit_edge, label %for.cond.8.i

for.cond.7.i.do.body1_crit_edge:                  ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1

for.cond.8.i:                                     ; preds = %for.cond.7.i
  %arrayidx.9.i = getelementptr %struct.sockaddr_atmsvc, ptr %addr, i32 0, i32 1, i32 1, i32 10
  %24 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.9.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool12.not.9.i = icmp eq i8 %25, 0
  br i1 %tobool12.not.9.i, label %for.cond.8.i.do.body1_crit_edge, label %for.cond.9.i

for.cond.8.i.do.body1_crit_edge:                  ; preds = %for.cond.8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1

for.cond.9.i:                                     ; preds = %for.cond.8.i
  %arrayidx.10.i = getelementptr %struct.sockaddr_atmsvc, ptr %addr, i32 0, i32 1, i32 1, i32 11
  %26 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.10.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool12.not.10.i = icmp eq i8 %27, 0
  br i1 %tobool12.not.10.i, label %for.cond.9.i.do.body1_crit_edge, label %for.cond.10.i

for.cond.9.i.do.body1_crit_edge:                  ; preds = %for.cond.9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1

for.cond.10.i:                                    ; preds = %for.cond.9.i
  %arrayidx.11.i = getelementptr %struct.sockaddr_atmsvc, ptr %addr, i32 0, i32 1, i32 1, i32 12
  %28 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool12.not.11.i = icmp eq i8 %29, 0
  br i1 %tobool12.not.11.i, label %for.cond.10.i.do.body1_crit_edge, label %for.cond.10.i.cleanup_crit_edge

for.cond.10.i.cleanup_crit_edge:                  ; preds = %for.cond.10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.10.i.do.body1_crit_edge:                 ; preds = %for.cond.10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1

do.body1:                                         ; preds = %for.cond.10.i.do.body1_crit_edge, %for.cond.9.i.do.body1_crit_edge, %for.cond.8.i.do.body1_crit_edge, %for.cond.7.i.do.body1_crit_edge, %for.cond.6.i.do.body1_crit_edge, %for.cond.5.i.do.body1_crit_edge, %for.cond.4.i.do.body1_crit_edge, %for.cond.3.i.do.body1_crit_edge, %for.cond.2.i.do.body1_crit_edge, %for.cond.1.i.do.body1_crit_edge, %for.cond.i.do.body1_crit_edge, %if.then2.i.do.body1_crit_edge, %for.body.preheader.i.do.body1_crit_edge
  %lock = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 15
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %atype)
  %cmp6 = icmp eq i32 %atype, 1
  %lecs = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 8
  %local = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 7
  %head.0 = select i1 %cmp6, ptr %lecs, ptr %local
  %30 = ptrtoint ptr %head.0 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn69 = load ptr, ptr %head.0, align 4
  %cmp12.not70 = icmp eq ptr %.pn69, %head.0
  br i1 %cmp12.not70, label %do.body1.for.end_crit_edge, label %for.body.lr.ph

do.body1.for.end_crit_edge:                       ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.body1
  %sas_addr4.i = getelementptr inbounds %struct.sockaddr_atmsvc, ptr %addr, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %for.body.lr.ph
  %.pn71 = phi ptr [ %.pn69, %for.body.lr.ph ], [ %.pn, %for.cond.backedge.for.body_crit_edge ]
  %sas_addr.i61 = getelementptr i8, ptr %.pn71, i32 -40
  %31 = ptrtoint ptr %sas_addr.i61 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %sas_addr.i61, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i62 = icmp eq i8 %32, 0
  br i1 %tobool.not.i62, label %for.body.if.end9.i_crit_edge, label %if.then.i

for.body.if.end9.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then.i:                                        ; preds = %for.body
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(20) %sas_addr.i61, ptr noundef dereferenceable(20) %sas_addr4.i, i32 20) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool7.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool7.not.i, label %if.then.i.if.end9.i_crit_edge, label %if.then.i.for.cond.backedge_crit_edge

if.then.i.for.cond.backedge_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

if.then.i.if.end9.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then.i.if.end9.i_crit_edge, %for.body.if.end9.i_crit_edge
  %pub.i63 = getelementptr i8, ptr %.pn71, i32 -20
  %33 = ptrtoint ptr %pub.i63 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %pub.i63, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool12.not.i64 = icmp eq i8 %34, 0
  %35 = ptrtoint ptr %pub.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %pub.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool17.not.i = icmp eq i8 %36, 0
  %brmerge.i = select i1 %tobool12.not.i64, i1 true, i1 %tobool17.not.i
  br i1 %brmerge.i, label %identical.exit, label %if.end24.i

if.end24.i:                                       ; preds = %if.end9.i
  %call31.i = tail call i32 @strcmp(ptr noundef %pub.i63, ptr noundef %pub.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.end24.i.if.then17_crit_edge, label %if.end24.i.for.cond.backedge_crit_edge

if.end24.i.for.cond.backedge_crit_edge:           ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

if.end24.i.if.then17_crit_edge:                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

identical.exit:                                   ; preds = %if.end9.i
  %tobool17.not.mux.i = select i1 %tobool12.not.i64, i1 %tobool17.not.i, i1 false
  br i1 %tobool17.not.mux.i, label %identical.exit.if.then17_crit_edge, label %identical.exit.for.cond.backedge_crit_edge

identical.exit.for.cond.backedge_crit_edge:       ; preds = %identical.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

identical.exit.if.then17_crit_edge:               ; preds = %identical.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

for.cond.backedge:                                ; preds = %identical.exit.for.cond.backedge_crit_edge, %if.end24.i.for.cond.backedge_crit_edge, %if.then.i.for.cond.backedge_crit_edge
  %37 = ptrtoint ptr %.pn71 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn = load ptr, ptr %.pn71, align 4
  %cmp12.not = icmp eq ptr %.pn, %head.0
  br i1 %cmp12.not, label %for.cond.backedge.for.end_crit_edge, label %for.cond.backedge.for.body_crit_edge

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.backedge.for.end_crit_edge:              ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then17:                                        ; preds = %identical.exit.if.then17_crit_edge, %if.end24.i.if.then17_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  br label %cleanup

for.end:                                          ; preds = %for.cond.backedge.for.end_crit_edge, %do.body1.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %38 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 2592, i32 noundef 52) #12
  %tobool26.not = icmp eq ptr %call7.i, null
  br i1 %tobool26.not, label %if.then27, label %if.end29

if.then27:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  br label %cleanup

if.end29:                                         ; preds = %for.end
  %39 = call ptr @memcpy(ptr %call7.i, ptr %addr, i32 44)
  %entry31 = getelementptr inbounds %struct.atm_dev_addr, ptr %call7.i, i32 0, i32 1
  %40 = ptrtoint ptr %head.0 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %head.0, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %entry31, ptr noundef %head.0, ptr noundef %41) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end29.list_add.exit_crit_edge

if.end29.list_add.exit_crit_edge:                 ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %entry31, ptr %prev1.i.i, align 4
  %43 = ptrtoint ptr %entry31 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %41, ptr %entry31, align 4
  %prev3.i.i = getelementptr inbounds %struct.atm_dev_addr, ptr %call7.i, i32 0, i32 1, i32 1
  %44 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %head.0, ptr %prev3.i.i, align 8
  %45 = ptrtoint ptr %head.0 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %entry31, ptr %head.0, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end29.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  %cmp34 = icmp eq ptr %head.0, %local
  br i1 %cmp34, label %if.then36, label %list_add.exit.cleanup_crit_edge

list_add.exit.cleanup_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then36:                                        ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pvc.i) #8
  %46 = call ptr @memset(ptr %pvc.i, i32 255, i32 12)
  %number.i = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 3
  %47 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %number.i, align 4
  %conv.i = trunc i32 %48 to i16
  %sap_addr.i = getelementptr inbounds %struct.sockaddr_atmpvc, ptr %pvc.i, i32 0, i32 1
  %49 = ptrtoint ptr %sap_addr.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv.i, ptr %sap_addr.i, align 4
  call void @sigd_enq(ptr noundef null, i32 noundef 10, ptr noundef null, ptr noundef nonnull %pvc.i, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pvc.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %list_add.exit.cleanup_crit_edge, %if.then27, %if.then17, %for.cond.10.i.cleanup_crit_edge, %if.then2.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -17, %if.then17 ], [ -12, %if.then27 ], [ 0, %if.then36 ], [ 0, %list_add.exit.cleanup_crit_edge ], [ -97, %entry.cleanup_crit_edge ], [ -22, %for.cond.10.i.cleanup_crit_edge ], [ -22, %if.then2.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atm_del_addr(ptr noundef %dev, ptr nocapture noundef readonly %addr, i32 noundef %atype) local_unnamed_addr #0 align 64 {
entry:
  %pvc.i = alloca %struct.sockaddr_atmpvc, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %1)
  %cmp.not.i = icmp eq i16 %1, 20
  br i1 %cmp.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %pub.i = getelementptr inbounds %struct.sockaddr_atmsvc, ptr %addr, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %pub.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pub.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.then2.i, label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %if.end.i
  %arrayidx.i = getelementptr %struct.sockaddr_atmsvc, ptr %addr, i32 0, i32 1, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool12.not.i = icmp eq i8 %5, 0
  br i1 %tobool12.not.i, label %for.body.preheader.i.do.body1_crit_edge, label %for.cond.i

for.body.preheader.i.do.body1_crit_edge:          ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1

if.then2.i:                                       ; preds = %if.end.i
  %sas_addr.i = getelementptr inbounds %struct.sockaddr_atmsvc, ptr %addr, i32 0, i32 1
  %6 = ptrtoint ptr %sas_addr.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sas_addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not.i = icmp eq i8 %7, 0
  br i1 %tobool6.not.i, label %if.then2.i.cleanup_crit_edge, label %if.then2.i.do.body1_crit_edge

if.then2.i.do.body1_crit_edge:                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1

if.then2.i.cleanup_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.i:                                       ; preds = %for.body.preheader.i
  %arrayidx.1.i = getelementptr %struct.sockaddr_atmsvc, ptr %addr, i32 0, i32 1, i32 1, i32 2
  %8 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool12.not.1.i = icmp eq i8 %9, 0
  br i1 %tobool12.not.1.i, label %for.cond.i.do.body1_crit_edge, label %for.cond.1.i

for.cond.i.do.body1_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx.2.i = getelementptr %struct.sockaddr_atmsvc, ptr %addr, i32 0, i32 1, i32 1, i32 3
  %10 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool12.not.2.i = icmp eq i8 %11, 0
  br i1 %tobool12.not.2.i, label %for.cond.1.i.do.body1_crit_edge, label %for.cond.2.i

for.cond.1.i.do.body1_crit_edge:                  ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %arrayidx.3.i = getelementptr %struct.sockaddr_atmsvc, ptr %addr, i32 0, i32 1, i32 1, i32 4
  %12 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool12.not.3.i = icmp eq i8 %13, 0
  br i1 %tobool12.not.3.i, label %for.cond.2.i.do.body1_crit_edge, label %for.cond.3.i

for.cond.2.i.do.body1_crit_edge:                  ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %arrayidx.4.i = getelementptr %struct.sockaddr_atmsvc, ptr %addr, i32 0, i32 1, i32 1, i32 5
  %14 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool12.not.4.i = icmp eq i8 %15, 0
  br i1 %tobool12.not.4.i, label %for.cond.3.i.do.body1_crit_edge, label %for.cond.4.i

for.cond.3.i.do.body1_crit_edge:                  ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %arrayidx.5.i = getelementptr %struct.sockaddr_atmsvc, ptr %addr, i32 0, i32 1, i32 1, i32 6
  %16 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool12.not.5.i = icmp eq i8 %17, 0
  br i1 %tobool12.not.5.i, label %for.cond.4.i.do.body1_crit_edge, label %for.cond.5.i

for.cond.4.i.do.body1_crit_edge:                  ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %arrayidx.6.i = getelementptr %struct.sockaddr_atmsvc, ptr %addr, i32 0, i32 1, i32 1, i32 7
  %18 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool12.not.6.i = icmp eq i8 %19, 0
  br i1 %tobool12.not.6.i, label %for.cond.5.i.do.body1_crit_edge, label %for.cond.6.i

for.cond.5.i.do.body1_crit_edge:                  ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1

for.cond.6.i:                                     ; preds = %for.cond.5.i
  %arrayidx.7.i = getelementptr %struct.sockaddr_atmsvc, ptr %addr, i32 0, i32 1, i32 1, i32 8
  %20 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool12.not.7.i = icmp eq i8 %21, 0
  br i1 %tobool12.not.7.i, label %for.cond.6.i.do.body1_crit_edge, label %for.cond.7.i

for.cond.6.i.do.body1_crit_edge:                  ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1

for.cond.7.i:                                     ; preds = %for.cond.6.i
  %arrayidx.8.i = getelementptr %struct.sockaddr_atmsvc, ptr %addr, i32 0, i32 1, i32 1, i32 9
  %22 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.8.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool12.not.8.i = icmp eq i8 %23, 0
  br i1 %tobool12.not.8.i, label %for.cond.7.i.do.body1_crit_edge, label %for.cond.8.i

for.cond.7.i.do.body1_crit_edge:                  ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1

for.cond.8.i:                                     ; preds = %for.cond.7.i
  %arrayidx.9.i = getelementptr %struct.sockaddr_atmsvc, ptr %addr, i32 0, i32 1, i32 1, i32 10
  %24 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.9.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool12.not.9.i = icmp eq i8 %25, 0
  br i1 %tobool12.not.9.i, label %for.cond.8.i.do.body1_crit_edge, label %for.cond.9.i

for.cond.8.i.do.body1_crit_edge:                  ; preds = %for.cond.8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1

for.cond.9.i:                                     ; preds = %for.cond.8.i
  %arrayidx.10.i = getelementptr %struct.sockaddr_atmsvc, ptr %addr, i32 0, i32 1, i32 1, i32 11
  %26 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.10.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool12.not.10.i = icmp eq i8 %27, 0
  br i1 %tobool12.not.10.i, label %for.cond.9.i.do.body1_crit_edge, label %for.cond.10.i

for.cond.9.i.do.body1_crit_edge:                  ; preds = %for.cond.9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1

for.cond.10.i:                                    ; preds = %for.cond.9.i
  %arrayidx.11.i = getelementptr %struct.sockaddr_atmsvc, ptr %addr, i32 0, i32 1, i32 1, i32 12
  %28 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool12.not.11.i = icmp eq i8 %29, 0
  br i1 %tobool12.not.11.i, label %for.cond.10.i.do.body1_crit_edge, label %for.cond.10.i.cleanup_crit_edge

for.cond.10.i.cleanup_crit_edge:                  ; preds = %for.cond.10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.10.i.do.body1_crit_edge:                 ; preds = %for.cond.10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1

do.body1:                                         ; preds = %for.cond.10.i.do.body1_crit_edge, %for.cond.9.i.do.body1_crit_edge, %for.cond.8.i.do.body1_crit_edge, %for.cond.7.i.do.body1_crit_edge, %for.cond.6.i.do.body1_crit_edge, %for.cond.5.i.do.body1_crit_edge, %for.cond.4.i.do.body1_crit_edge, %for.cond.3.i.do.body1_crit_edge, %for.cond.2.i.do.body1_crit_edge, %for.cond.1.i.do.body1_crit_edge, %for.cond.i.do.body1_crit_edge, %if.then2.i.do.body1_crit_edge, %for.body.preheader.i.do.body1_crit_edge
  %lock = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 15
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %atype)
  %cmp6 = icmp eq i32 %atype, 1
  %lecs = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 8
  %local = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 7
  %head.0 = select i1 %cmp6, ptr %lecs, ptr %local
  %30 = ptrtoint ptr %head.0 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn61 = load ptr, ptr %head.0, align 4
  %cmp12.not62 = icmp eq ptr %.pn61, %head.0
  br i1 %cmp12.not62, label %do.body1.for.end_crit_edge, label %for.body.lr.ph

do.body1.for.end_crit_edge:                       ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.body1
  %sas_addr4.i = getelementptr inbounds %struct.sockaddr_atmsvc, ptr %addr, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %for.body.lr.ph
  %.pn63 = phi ptr [ %.pn61, %for.body.lr.ph ], [ %.pn, %for.cond.backedge.for.body_crit_edge ]
  %sas_addr.i50 = getelementptr i8, ptr %.pn63, i32 -40
  %31 = ptrtoint ptr %sas_addr.i50 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %sas_addr.i50, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i51 = icmp eq i8 %32, 0
  br i1 %tobool.not.i51, label %for.body.if.end9.i_crit_edge, label %if.then.i

for.body.if.end9.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then.i:                                        ; preds = %for.body
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(20) %sas_addr.i50, ptr noundef dereferenceable(20) %sas_addr4.i, i32 20) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool7.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool7.not.i, label %if.then.i.if.end9.i_crit_edge, label %if.then.i.for.cond.backedge_crit_edge

if.then.i.for.cond.backedge_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

if.then.i.if.end9.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then.i.if.end9.i_crit_edge, %for.body.if.end9.i_crit_edge
  %pub.i52 = getelementptr i8, ptr %.pn63, i32 -20
  %33 = ptrtoint ptr %pub.i52 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %pub.i52, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool12.not.i53 = icmp eq i8 %34, 0
  %35 = ptrtoint ptr %pub.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %pub.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool17.not.i = icmp eq i8 %36, 0
  %brmerge.i = select i1 %tobool12.not.i53, i1 true, i1 %tobool17.not.i
  br i1 %brmerge.i, label %identical.exit, label %if.end24.i

if.end24.i:                                       ; preds = %if.end9.i
  %call31.i = tail call i32 @strcmp(ptr noundef %pub.i52, ptr noundef %pub.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.end24.i.if.then17_crit_edge, label %if.end24.i.for.cond.backedge_crit_edge

if.end24.i.for.cond.backedge_crit_edge:           ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

if.end24.i.if.then17_crit_edge:                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

identical.exit:                                   ; preds = %if.end9.i
  %tobool17.not.mux.i = select i1 %tobool12.not.i53, i1 %tobool17.not.i, i1 false
  br i1 %tobool17.not.mux.i, label %identical.exit.if.then17_crit_edge, label %identical.exit.for.cond.backedge_crit_edge

identical.exit.for.cond.backedge_crit_edge:       ; preds = %identical.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

identical.exit.if.then17_crit_edge:               ; preds = %identical.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

for.cond.backedge:                                ; preds = %identical.exit.for.cond.backedge_crit_edge, %if.end24.i.for.cond.backedge_crit_edge, %if.then.i.for.cond.backedge_crit_edge
  %37 = ptrtoint ptr %.pn63 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn = load ptr, ptr %.pn63, align 4
  %cmp12.not = icmp eq ptr %.pn, %head.0
  br i1 %cmp12.not, label %for.cond.backedge.for.end_crit_edge, label %for.cond.backedge.for.body_crit_edge

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.backedge.for.end_crit_edge:              ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then17:                                        ; preds = %identical.exit.if.then17_crit_edge, %if.end24.i.if.then17_crit_edge
  %this.0.le = getelementptr i8, ptr %.pn63, i32 -44
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn63) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then17.list_del.exit_crit_edge

if.then17.list_del.exit_crit_edge:                ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn63, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i, align 4
  %40 = ptrtoint ptr %.pn63 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %.pn63, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev1.i.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %39, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then17.list_del.exit_crit_edge
  %44 = ptrtoint ptr %.pn63 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn63, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn63, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  tail call void @kfree(ptr noundef %this.0.le) #8
  %cmp21 = icmp eq ptr %head.0, %local
  br i1 %cmp21, label %if.then23, label %list_del.exit.cleanup_crit_edge

list_del.exit.cleanup_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then23:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pvc.i) #8
  %46 = call ptr @memset(ptr %pvc.i, i32 255, i32 12)
  %number.i = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 3
  %47 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %number.i, align 4
  %conv.i = trunc i32 %48 to i16
  %sap_addr.i = getelementptr inbounds %struct.sockaddr_atmpvc, ptr %pvc.i, i32 0, i32 1
  %49 = ptrtoint ptr %sap_addr.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv.i, ptr %sap_addr.i, align 4
  call void @sigd_enq(ptr noundef null, i32 noundef 10, ptr noundef null, ptr noundef nonnull %pvc.i, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pvc.i) #8
  br label %cleanup

for.end:                                          ; preds = %for.cond.backedge.for.end_crit_edge, %do.body1.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then23, %list_del.exit.cleanup_crit_edge, %for.cond.10.i.cleanup_crit_edge, %if.then2.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %for.end ], [ 0, %if.then23 ], [ 0, %list_del.exit.cleanup_crit_edge ], [ -97, %entry.cleanup_crit_edge ], [ -22, %for.cond.10.i.cleanup_crit_edge ], [ -22, %if.then2.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atm_get_addr(ptr noundef %dev, ptr noundef %buf, i32 noundef %size, i32 noundef %atype) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 15
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %atype)
  %cmp5 = icmp eq i32 %atype, 1
  %lecs = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 8
  %local = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 7
  %head.0 = select i1 %cmp5, ptr %lecs, ptr %local
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %entry
  %total.0 = phi i32 [ 0, %entry ], [ %add, %for.cond.for.cond_crit_edge ]
  %.pn.in = phi ptr [ %head.0, %entry ], [ %.pn, %for.cond.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp9.not = icmp eq ptr %.pn, %head.0
  %add = add i32 %total.0, 44
  br i1 %cmp9.not, label %if.end8.i, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

if.end8.i:                                        ; preds = %for.cond
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %total.0, i32 noundef 2592) #13
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.then17, label %for.cond24.preheader

for.cond24.preheader:                             ; preds = %if.end8.i
  %1 = ptrtoint ptr %head.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn7783 = load ptr, ptr %head.0, align 4
  %cmp26.not84 = icmp eq ptr %.pn7783, %head.0
  br i1 %cmp26.not84, label %for.cond24.preheader.for.end36_crit_edge, label %for.cond24.preheader.for.body29_crit_edge

for.cond24.preheader.for.body29_crit_edge:        ; preds = %for.cond24.preheader
  br label %for.body29

for.cond24.preheader.for.end36_crit_edge:         ; preds = %for.cond24.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end36

if.then17:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  br label %cleanup

for.body29:                                       ; preds = %for.body29.for.body29_crit_edge, %for.cond24.preheader.for.body29_crit_edge
  %.pn7786 = phi ptr [ %.pn77, %for.body29.for.body29_crit_edge ], [ %.pn7783, %for.cond24.preheader.for.body29_crit_edge ]
  %tmp_bufp.085 = phi ptr [ %incdec.ptr, %for.body29.for.body29_crit_edge ], [ %call9.i, %for.cond24.preheader.for.body29_crit_edge ]
  %this.1 = getelementptr i8, ptr %.pn7786, i32 -44
  %incdec.ptr = getelementptr %struct.sockaddr_atmsvc, ptr %tmp_bufp.085, i32 1
  %2 = call ptr @memcpy(ptr %tmp_bufp.085, ptr %this.1, i32 44)
  %3 = ptrtoint ptr %.pn7786 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn77 = load ptr, ptr %.pn7786, align 4
  %cmp26.not = icmp eq ptr %.pn77, %head.0
  br i1 %cmp26.not, label %for.body29.for.end36_crit_edge, label %for.body29.for.body29_crit_edge

for.body29.for.body29_crit_edge:                  ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body29

for.body29.for.end36_crit_edge:                   ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end36

for.end36:                                        ; preds = %for.body29.for.end36_crit_edge, %for.cond24.preheader.for.end36_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %total.0, i32 %size)
  %cmp38 = icmp ugt i32 %total.0, %size
  %spec.select = select i1 %cmp38, i32 -7, i32 %total.0
  %4 = tail call i32 @llvm.umin.i32(i32 %total.0, i32 %size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp9.i.i = icmp slt i32 %4, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %for.end36
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.copy_to_user.exit.thread_crit_edge, label %if.then27.i.i, !prof !16

land.rhs16.i.i.copy_to_user.exit.thread_crit_edge: ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.thread

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 230, i32 noundef 9, ptr noundef null) #8
  br label %copy_to_user.exit.thread

if.then.i.i.i:                                    ; preds = %for.end36
  tail call void @__check_object_size(ptr noundef nonnull %call9.i, i32 noundef %4, i1 noundef zeroext true) #8
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 174) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i81

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit

if.end.i.i81:                                     ; preds = %if.then.i.i.i
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %4, i32 -1226833920) #14, !srcloc !17
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i81.copy_to_user.exit_crit_edge

if.end.i.i81.copy_to_user.exit_crit_edge:         ; preds = %if.end.i.i81
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i81
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call9.i, i32 noundef %4) #8
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef nonnull %call9.i, i32 noundef %4) #8
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i81.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %4, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %4, %if.end.i.i81.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool47.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select92 = select i1 %tobool47.not, i32 %spec.select, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.then27.i.i, %land.rhs16.i.i.copy_to_user.exit.thread_crit_edge
  %6 = phi i32 [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select92, %copy_to_user.exit ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #8
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit.thread, %if.then17
  %retval.0 = phi i32 [ %6, %copy_to_user.exit.thread ], [ -12, %if.then17 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sigd_enq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 1, !"min_enum_size", i32 4}
!9 = !{i32 8, !"branch-target-enforcement", i32 0}
!10 = !{i32 8, !"sign-return-address", i32 0}
!11 = !{i32 8, !"sign-return-address-all", i32 0}
!12 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2152239532, i64 2152239557}
