; ModuleID = '/llk/IR_all_yes/net/caif/cfserl.c_pt.bc'
source_filename = "../net/caif/cfserl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cflayer = type { ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, [16 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.cfserl = type { %struct.cflayer, ptr, %struct.spinlock, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@cfserl_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&this->sync\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ser1\00", [27 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cfserl_receive._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 66, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013caif:%s(): caif:Assert detected:'%s'\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cfserl_receive\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/caif/cfserl.c\00", [46 x i8] zeroinitializer }, align 32
@cfserl_receive._entry_ptr = internal global ptr @cfserl_receive._entry, section ".printk_index", align 4
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"newpkt != NULL\00", [17 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 49, i32 2 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 50, i32 49 }
@___asan_gen_.15 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private constant [21 x i8] c"../net/caif/cfserl.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 66, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @cfserl_receive._entry, ptr @cfserl_receive._entry_ptr, ptr @cfserl_create.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfserl_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfserl_receive._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cfserl_release(ptr noundef %layer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %layer) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cfserl_create(i32 noundef %instance, i1 noundef zeroext %use_stx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 104) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %frombool = zext i1 %use_stx to i8
  %receive = getelementptr inbounds %struct.cflayer, ptr %call7.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %receive to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @cfserl_receive, ptr %receive, align 8
  %transmit = getelementptr inbounds %struct.cflayer, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %transmit to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @cfserl_transmit, ptr %transmit, align 4
  %ctrlcmd = getelementptr inbounds %struct.cflayer, ptr %call7.i.i, i32 0, i32 5
  %3 = ptrtoint ptr %ctrlcmd to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @cfserl_ctrlcmd, ptr %ctrlcmd, align 8
  %usestx = getelementptr inbounds %struct.cfserl, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %usestx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %usestx, align 4
  %sync = getelementptr inbounds %struct.cfserl, ptr %call7.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %sync, ptr noundef nonnull @.str, ptr noundef nonnull @cfserl_create.__key, i16 noundef signext 3) #6
  %name = getelementptr inbounds %struct.cflayer, ptr %call7.i.i, i32 0, i32 8
  %5 = call ptr @memcpy(ptr %name, ptr @.str.1, i32 5)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfserl_receive(ptr noundef %l, ptr noundef %newpkt) #0 align 64 {
entry:
  %tmp8 = alloca i8, align 1
  %tmp = alloca i16, align 2
  %stx = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp8) #6
  %0 = ptrtoint ptr %tmp8 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %tmp8, align 1, !annotation !21
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp) #6
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %tmp, align 2, !annotation !21
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stx) #6
  %2 = ptrtoint ptr %stx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 2, ptr %stx, align 1
  %cmp.not = icmp eq ptr %newpkt, null
  br i1 %cmp.not, label %do.end, label %entry.do.end30_crit_edge

entry.do.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end30

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.5) #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 66, i32 noundef 9, ptr noundef null) #6
  br label %do.end30

do.end30:                                         ; preds = %do.end, %entry.do.end30_crit_edge
  %sync = getelementptr inbounds %struct.cfserl, ptr %l, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %sync) #6
  %incomplete_frm = getelementptr inbounds %struct.cfserl, ptr %l, i32 0, i32 1
  %3 = ptrtoint ptr %incomplete_frm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %incomplete_frm, align 4
  %cmp31.not = icmp eq ptr %4, null
  br i1 %cmp31.not, label %do.end30.if.end41_crit_edge, label %if.then32

do.end30.if.end41_crit_edge:                      ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then32:                                        ; preds = %do.end30
  %call34 = tail call ptr @cfpkt_append(ptr noundef nonnull %4, ptr noundef %newpkt, i16 noundef zeroext 0) #6
  %5 = ptrtoint ptr %incomplete_frm to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call34, ptr %incomplete_frm, align 4
  %cmp37 = icmp eq ptr %call34, null
  br i1 %cmp37, label %if.then38, label %if.then32.if.end41_crit_edge

if.then32.if.end41_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then38:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock(ptr noundef %sync) #6
  br label %cleanup

if.end41:                                         ; preds = %if.then32.if.end41_crit_edge, %do.end30.if.end41_crit_edge
  %pkt.0 = phi ptr [ %call34, %if.then32.if.end41_crit_edge ], [ %newpkt, %do.end30.if.end41_crit_edge ]
  %6 = ptrtoint ptr %incomplete_frm to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %incomplete_frm, align 4
  %usestx = getelementptr inbounds %struct.cfserl, ptr %l, i32 0, i32 3
  br label %do.body43

do.body43:                                        ; preds = %do.cond137.do.body43_crit_edge, %if.end41
  %pkt.1 = phi ptr [ %pkt.0, %if.end41 ], [ %pkt.2, %do.cond137.do.body43_crit_edge ]
  %7 = ptrtoint ptr %usestx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %usestx, align 4, !range !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool44.not = icmp eq i8 %8, 0
  br i1 %tobool44.not, label %do.body43.if.end62_crit_edge, label %if.then45

do.body43.if.end62_crit_edge:                     ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

if.then45:                                        ; preds = %do.body43
  %call46 = call i32 @cfpkt_extr_head(ptr noundef %pkt.1, ptr noundef nonnull %tmp8, i16 noundef zeroext 1) #6
  %9 = ptrtoint ptr %tmp8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tmp8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cmp47.not = icmp eq i8 %10, 2
  br i1 %cmp47.not, label %if.then45.if.end62_crit_edge, label %while.cond.preheader

if.then45.if.end62_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

while.cond.preheader:                             ; preds = %if.then45
  %call50213 = call zeroext i1 @cfpkt_more(ptr noundef %pkt.1) #6
  br i1 %call50213, label %while.cond.preheader.land.rhs_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.cond.preheader.land.rhs_crit_edge:          ; preds = %while.cond.preheader
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %while.cond.preheader.land.rhs_crit_edge
  %11 = ptrtoint ptr %tmp8 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %tmp8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %cmp53.not = icmp eq i8 %12, 2
  br i1 %cmp53.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %call55 = call i32 @cfpkt_extr_head(ptr noundef %pkt.1, ptr noundef nonnull %tmp8, i16 noundef zeroext 1) #6
  %call50 = call zeroext i1 @cfpkt_more(ptr noundef %pkt.1) #6
  br i1 %call50, label %while.body.land.rhs_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %call56 = call zeroext i1 @cfpkt_more(ptr noundef %pkt.1) #6
  br i1 %call56, label %while.end.if.end62_crit_edge, label %if.then57

while.end.if.end62_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

if.then57:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @cfpkt_destroy(ptr noundef %pkt.1) #6
  %13 = ptrtoint ptr %incomplete_frm to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %incomplete_frm, align 4
  call void @_raw_spin_unlock(ptr noundef %sync) #6
  br label %cleanup

if.end62:                                         ; preds = %while.end.if.end62_crit_edge, %if.then45.if.end62_crit_edge, %do.body43.if.end62_crit_edge
  %call63 = call zeroext i16 @cfpkt_getlen(ptr noundef %pkt.1) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %call63)
  %cmp65 = icmp ult i16 %call63, 2
  br i1 %cmp65, label %if.then67, label %if.end75

if.then67:                                        ; preds = %if.end62
  %14 = ptrtoint ptr %usestx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %usestx, align 4, !range !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool69.not = icmp eq i8 %15, 0
  br i1 %tobool69.not, label %if.then67.if.end72_crit_edge, label %if.then70

if.then67.if.end72_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.then70:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #8
  %call71 = call i32 @cfpkt_add_head(ptr noundef %pkt.1, ptr noundef nonnull %stx, i16 noundef zeroext 1) #6
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %if.then67.if.end72_crit_edge
  %16 = ptrtoint ptr %incomplete_frm to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %pkt.1, ptr %incomplete_frm, align 4
  call void @_raw_spin_unlock(ptr noundef %sync) #6
  br label %cleanup

if.end75:                                         ; preds = %if.end62
  %call76 = call i32 @cfpkt_peek_head(ptr noundef %pkt.1, ptr noundef nonnull %tmp, i16 noundef zeroext 2) #6
  %17 = ptrtoint ptr %tmp to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %tmp, align 2
  %19 = call i16 @llvm.bswap.i16(i16 %18)
  %add = add i16 %19, 2
  %20 = add i16 %19, -4095
  call void @__sanitizer_cov_trace_const_cmp2(i16 -4093, i16 %20)
  %21 = icmp ult i16 %20, -4093
  br i1 %21, label %if.then85, label %if.end96

if.then85:                                        ; preds = %if.end75
  %22 = ptrtoint ptr %usestx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %usestx, align 4, !range !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool87.not = icmp eq i8 %23, 0
  br i1 %tobool87.not, label %if.then88, label %if.then85.do.cond137_crit_edge

if.then85.do.cond137_crit_edge:                   ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond137

if.then88:                                        ; preds = %if.then85
  %cmp89.not = icmp eq ptr %pkt.1, null
  br i1 %cmp89.not, label %if.then88.if.end92_crit_edge, label %if.then91

if.then88.if.end92_crit_edge:                     ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92

if.then91:                                        ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #8
  call void @cfpkt_destroy(ptr noundef nonnull %pkt.1) #6
  br label %if.end92

if.end92:                                         ; preds = %if.then91, %if.then88.if.end92_crit_edge
  %24 = ptrtoint ptr %incomplete_frm to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %incomplete_frm, align 4
  call void @_raw_spin_unlock(ptr noundef %sync) #6
  br label %cleanup

if.end96:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_cmp2(i16 %call63, i16 %add)
  %cmp99 = icmp ult i16 %call63, %add
  br i1 %cmp99, label %if.then101, label %if.end109

if.then101:                                       ; preds = %if.end96
  %25 = ptrtoint ptr %usestx to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %usestx, align 4, !range !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool103.not = icmp eq i8 %26, 0
  br i1 %tobool103.not, label %if.then101.if.end106_crit_edge, label %if.then104

if.then101.if.end106_crit_edge:                   ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end106

if.then104:                                       ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #8
  %call105 = call i32 @cfpkt_add_head(ptr noundef %pkt.1, ptr noundef nonnull %stx, i16 noundef zeroext 1) #6
  br label %if.end106

if.end106:                                        ; preds = %if.then104, %if.then101.if.end106_crit_edge
  %27 = ptrtoint ptr %incomplete_frm to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %pkt.1, ptr %incomplete_frm, align 4
  call void @_raw_spin_unlock(ptr noundef %sync) #6
  br label %cleanup

if.end109:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_cmp2(i16 %call63, i16 %add)
  %cmp112 = icmp ugt i16 %call63, %add
  br i1 %cmp112, label %if.then114, label %if.end109.if.end117_crit_edge

if.end109.if.end117_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end117

if.then114:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #8
  %call115 = call ptr @cfpkt_split(ptr noundef %pkt.1, i16 noundef zeroext %add) #6
  br label %if.end117

if.end117:                                        ; preds = %if.then114, %if.end109.if.end117_crit_edge
  %tail_pkt.0 = phi ptr [ %call115, %if.then114 ], [ null, %if.end109.if.end117_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %sync) #6
  %28 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %l, align 4
  %receive = getelementptr inbounds %struct.cflayer, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %receive to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %receive, align 4
  %call121 = call i32 %31(ptr noundef %29, ptr noundef %pkt.1) #6
  call void @_raw_spin_lock(ptr noundef %sync) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -84, i32 %call121)
  %cmp123 = icmp eq i32 %call121, -84
  br i1 %cmp123, label %if.then125, label %if.end117.do.cond137_crit_edge

if.end117.do.cond137_crit_edge:                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond137

if.then125:                                       ; preds = %if.end117
  %32 = ptrtoint ptr %usestx to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %usestx, align 4, !range !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool127.not = icmp eq i8 %33, 0
  br i1 %tobool127.not, label %if.else134, label %if.then128

if.then128:                                       ; preds = %if.then125
  %cmp129.not = icmp eq ptr %tail_pkt.0, null
  br i1 %cmp129.not, label %if.then128.do.cond137_crit_edge, label %if.then131

if.then128.do.cond137_crit_edge:                  ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond137

if.then131:                                       ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #8
  %call132 = call ptr @cfpkt_append(ptr noundef %pkt.1, ptr noundef nonnull %tail_pkt.0, i16 noundef zeroext 0) #6
  br label %do.cond137

if.else134:                                       ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #8
  call void @cfpkt_destroy(ptr noundef %pkt.1) #6
  br label %do.cond137

do.cond137:                                       ; preds = %if.else134, %if.then131, %if.then128.do.cond137_crit_edge, %if.end117.do.cond137_crit_edge, %if.then85.do.cond137_crit_edge
  %pkt.2 = phi ptr [ %pkt.1, %if.then85.do.cond137_crit_edge ], [ %call132, %if.then131 ], [ %pkt.1, %if.then128.do.cond137_crit_edge ], [ %tail_pkt.0, %if.else134 ], [ %tail_pkt.0, %if.end117.do.cond137_crit_edge ]
  %cmp138.not = icmp eq ptr %pkt.2, null
  br i1 %cmp138.not, label %do.end140, label %do.cond137.do.body43_crit_edge

do.cond137.do.body43_crit_edge:                   ; preds = %do.cond137
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body43

do.end140:                                        ; preds = %do.cond137
  call void @__sanitizer_cov_trace_pc() #8
  call void @_raw_spin_unlock(ptr noundef %sync) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end140, %if.end106, %if.end92, %if.end72, %if.then57, %if.then38
  %retval.0 = phi i32 [ -12, %if.then38 ], [ 0, %if.end72 ], [ 0, %do.end140 ], [ -71, %if.end92 ], [ 0, %if.end106 ], [ -71, %if.then57 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stx) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp8) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfserl_transmit(ptr nocapture noundef readonly %layer, ptr noundef %newpkt) #0 align 64 {
entry:
  %tmp8 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp8) #6
  %0 = ptrtoint ptr %tmp8 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 2, ptr %tmp8, align 1
  %usestx = getelementptr inbounds %struct.cfserl, ptr %layer, i32 0, i32 3
  %1 = ptrtoint ptr %usestx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %usestx, align 4, !range !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = call i32 @cfpkt_add_head(ptr noundef %newpkt, ptr noundef nonnull %tmp8, i16 noundef zeroext 1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dn = getelementptr inbounds %struct.cflayer, ptr %layer, i32 0, i32 1
  %3 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dn, align 4
  %transmit = getelementptr inbounds %struct.cflayer, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %transmit to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %transmit, align 4
  %call2 = call i32 %6(ptr noundef %4, ptr noundef %newpkt) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp8) #6
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cfserl_ctrlcmd(ptr nocapture noundef readonly %layr, i32 noundef %ctrl, i32 noundef %phyid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %layr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %layr, align 4
  %ctrlcmd = getelementptr inbounds %struct.cflayer, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ctrlcmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrlcmd, align 4
  tail call void %3(ptr noundef %1, i32 noundef %ctrl, i32 noundef %phyid) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfpkt_append(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfpkt_extr_head(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfpkt_more(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfpkt_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @cfpkt_getlen(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfpkt_add_head(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfpkt_peek_head(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfpkt_split(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @cfserl_create.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../net/caif/cfserl.c", i32 49, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../net/caif/cfserl.c", i32 50, i32 49}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../net/caif/cfserl.c", i32 66, i32 2}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @cfserl_receive._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @cfserl_receive._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !6, !"<string literal>", i1 false, i1 false}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!"auto-init"}
!22 = !{i8 0, i8 2}
