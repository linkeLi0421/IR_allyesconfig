; ModuleID = '/llk/IR_all_yes/net/sched/em_canid.c_pt.bc'
source_filename = "../net/sched/em_canid.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tcf_ematch_ops = type { i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.canid_match = type { [64 x i32], i32, i32, i32, [0 x %struct.can_filter] }
%struct.can_filter = type { i32, i32 }
%struct.tcf_ematch = type { ptr, i32, i32, i16, i16, ptr }
%struct.sk_buff = type { %union.anon.15, %union.anon.18, %union.anon.19, [48 x i8], %union.anon.20, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.22, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { ptr, ptr, %union.anon.17 }
%union.anon.17 = type { ptr }
%union.anon.18 = type { ptr }
%union.anon.19 = type { i64 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { i32, ptr }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.24, i32, i32, i32, i16, i16, %union.anon.26, i32, %union.anon.27, %union.anon.28, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.24 = type { i32 }
%union.anon.26 = type { i32 }
%union.anon.27 = type { i32 }
%union.anon.28 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@em_canid_ops = internal global { %struct.tcf_ematch_ops, [60 x i8] } { %struct.tcf_ematch_ops { i32 7, i32 0, ptr @em_canid_change, ptr @em_canid_match, ptr @em_canid_destroy, ptr @em_canid_dump, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @em_canid_ops, i64 28), ptr getelementptr (i8, ptr @em_canid_ops, i64 28) } }, [60 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_file366 = internal constant [33 x i8] c"em_canid.file=net/sched/em_canid\00", section ".modinfo", align 1
@__UNIQUE_ID_license367 = internal constant [21 x i8] c"em_canid.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_em_canid__368_227_init_em_canid6 = internal global ptr @init_em_canid, section ".initcall6.init", align 4
@__exitcall_exit_em_canid = internal global ptr @exit_em_canid, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias369 = internal constant [29 x i8] c"em_canid.alias=ematch-kind-7\00", section ".modinfo", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2047]
@___asan_gen_.1 = private unnamed_addr constant [13 x i8] c"em_canid_ops\00", align 1
@___asan_gen_.2 = private constant [24 x i8] c"../net/sched/em_canid.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 205, i32 30 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_alias369, ptr @__UNIQUE_ID_file366, ptr @__UNIQUE_ID_license367, ptr @__exitcall_exit_em_canid, ptr @__initcall__kmod_em_canid__368_227_init_em_canid6, ptr @exit_em_canid, ptr @em_canid_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em_canid_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_em_canid() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @tcf_em_unregister(ptr noundef nonnull @em_canid_ops) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_em_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_em_canid() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tcf_em_register(ptr noundef nonnull @em_canid_ops) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em_canid_change(ptr nocapture noundef readnone %net, ptr nocapture noundef readonly %data, i32 noundef %len, ptr nocapture noundef writeonly %m) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rem = and i32 %len, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool1.not = icmp ne i32 %rem, 0
  %0 = add i32 %len, -4001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4000, i32 %0)
  %1 = icmp ult i32 %0, -4000
  %2 = or i1 %1, %tobool1.not
  br i1 %2, label %entry.cleanup_crit_edge, label %if.end5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %entry
  %add = add nuw nsw i32 %len, 268
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #8
  %tobool6.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %div77 = lshr i32 %len, 3
  %rules_count = getelementptr inbounds %struct.canid_match, ptr %call9.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %rules_count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %div77, ptr %rules_count, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %len)
  %cmp1079.not = icmp ult i32 %len, 8
  br i1 %cmp1079.not, label %if.end8.for.cond17.preheader_crit_edge, label %for.body.lr.ph

if.end8.for.cond17.preheader_crit_edge:           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond17.preheader

for.body.lr.ph:                                   ; preds = %if.end8
  %rules_raw = getelementptr inbounds %struct.canid_match, ptr %call9.i.i, i32 0, i32 4
  %eff_rules_count = getelementptr inbounds %struct.canid_match, ptr %call9.i.i, i32 0, i32 3
  br label %for.body

for.cond17.preheader:                             ; preds = %for.inc.for.cond17.preheader_crit_edge, %if.end8.for.cond17.preheader_crit_edge
  %4 = phi i32 [ %div77, %if.end8.for.cond17.preheader_crit_edge ], [ %14, %for.inc.for.cond17.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1981 = icmp sgt i32 %4, 0
  br i1 %cmp1981, label %for.body20.lr.ph, label %for.cond17.preheader.for.end40_crit_edge

for.cond17.preheader.for.end40_crit_edge:         ; preds = %for.cond17.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end40

for.body20.lr.ph:                                 ; preds = %for.cond17.preheader
  %rules_raw26 = getelementptr inbounds %struct.canid_match, ptr %call9.i.i, i32 0, i32 4
  %eff_rules_count28 = getelementptr inbounds %struct.canid_match, ptr %call9.i.i, i32 0, i32 3
  %sff_rules_count = getelementptr inbounds %struct.canid_match, ptr %call9.i.i, i32 0, i32 2
  br label %for.body20

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.080 = phi i32 [ 0, %for.body.lr.ph ], [ %inc16, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.can_filter, ptr %data, i32 %i.080
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %tobool11.not = icmp sgt i32 %6, -1
  br i1 %tobool11.not, label %for.body.for.inc_crit_edge, label %if.then12

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then12:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %eff_rules_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %eff_rules_count, align 8
  %add.ptr = getelementptr %struct.can_filter, ptr %rules_raw, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %arrayidx, align 4
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %10, ptr %add.ptr, align 4
  %12 = load i32, ptr %eff_rules_count, align 8
  %inc = add i32 %12, 1
  store i32 %inc, ptr %eff_rules_count, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then12, %for.body.for.inc_crit_edge
  %inc16 = add nuw nsw i32 %i.080, 1
  %13 = ptrtoint ptr %rules_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rules_count, align 128
  %cmp10 = icmp slt i32 %inc16, %14
  br i1 %cmp10, label %for.inc.for.body_crit_edge, label %for.inc.for.cond17.preheader_crit_edge

for.inc.for.cond17.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond17.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body20:                                       ; preds = %for.inc38.for.body20_crit_edge, %for.body20.lr.ph
  %i.182 = phi i32 [ 0, %for.body20.lr.ph ], [ %inc39, %for.inc38.for.body20_crit_edge ]
  %arrayidx21 = getelementptr %struct.can_filter, ptr %data, i32 %i.182
  %15 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %tobool24.not = icmp sgt i32 %16, -1
  br i1 %tobool24.not, label %if.then25, label %for.body20.for.inc38_crit_edge

for.body20.for.inc38_crit_edge:                   ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc38

if.then25:                                        ; preds = %for.body20
  %17 = ptrtoint ptr %eff_rules_count28 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %eff_rules_count28, align 8
  %add.ptr29 = getelementptr %struct.can_filter, ptr %rules_raw26, i32 %18
  %19 = ptrtoint ptr %sff_rules_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sff_rules_count, align 4
  %add.ptr30 = getelementptr %struct.can_filter, ptr %add.ptr29, i32 %20
  %21 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %22 = load i64, ptr %arrayidx21, align 4
  %23 = ptrtoint ptr %add.ptr30 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 %22, ptr %add.ptr30, align 4
  %24 = load i32, ptr %sff_rules_count, align 4
  %inc33 = add i32 %24, 1
  store i32 %inc33, ptr %sff_rules_count, align 4
  %25 = lshr i64 %22, 32
  %26 = trunc i64 %25 to i32
  %27 = trunc i64 %22 to i32
  %and.i = and i32 %27, 2047
  %and1.i = and i32 %and.i, %26
  %28 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %if.then25.for.body.i_crit_edge [
    i32 2047, label %if.then.i
    i32 0, label %if.then3.i
  ]

if.then25.for.body.i_crit_edge:                   ; preds = %if.then25
  br label %for.body.i

if.then.i:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_set_bit(i32 noundef %and1.i, ptr noundef nonnull %call9.i.i) #5
  br label %for.inc38

if.then3.i:                                       ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  %29 = call ptr @memset(ptr %call9.i.i, i32 255, i32 256)
  br label %for.inc38

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then25.for.body.i_crit_edge
  %i.025.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then25.for.body.i_crit_edge ]
  %and8.i = and i32 %i.025.i, %and.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and8.i, i32 %and1.i)
  %cmp9.i = icmp eq i32 %and8.i, %and1.i
  br i1 %cmp9.i, label %if.then10.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then10.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_set_bit(i32 noundef %i.025.i, ptr noundef nonnull %call9.i.i) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then10.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 2048
  br i1 %exitcond.not.i, label %for.inc.i.for.inc38_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.for.inc38_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc38

for.inc38:                                        ; preds = %for.inc.i.for.inc38_crit_edge, %if.then3.i, %if.then.i, %for.body20.for.inc38_crit_edge
  %inc39 = add nuw nsw i32 %i.182, 1
  %30 = ptrtoint ptr %rules_count to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rules_count, align 128
  %cmp19 = icmp slt i32 %inc39, %31
  br i1 %cmp19, label %for.inc38.for.body20_crit_edge, label %for.inc38.for.end40_crit_edge

for.inc38.for.end40_crit_edge:                    ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end40

for.inc38.for.body20_crit_edge:                   ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body20

for.end40:                                        ; preds = %for.inc38.for.end40_crit_edge, %for.cond17.preheader.for.end40_crit_edge
  %datalen = getelementptr inbounds %struct.tcf_ematch, ptr %m, i32 0, i32 2
  %32 = ptrtoint ptr %datalen to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add, ptr %datalen, align 4
  %33 = ptrtoint ptr %call9.i.i to i32
  %data42 = getelementptr inbounds %struct.tcf_ematch, ptr %m, i32 0, i32 1
  %34 = ptrtoint ptr %data42 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %data42, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end40, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end40 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em_canid_match(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %m, ptr nocapture noundef readnone %info) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.tcf_ematch, ptr %m, i32 0, i32 1
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data.i, align 4
  %2 = inttoptr i32 %1 to ptr
  %data.i19 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %3 = ptrtoint ptr %data.i19 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i19, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %tobool.not = icmp sgt i32 %6, -1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %eff_rules_count = getelementptr inbounds %struct.canid_match, ptr %2, i32 0, i32 3
  %7 = ptrtoint ptr %eff_rules_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %eff_rules_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp20 = icmp sgt i32 %8, 0
  br i1 %cmp20, label %for.body.preheader, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

for.body.preheader:                               ; preds = %if.then
  %rules_raw = getelementptr inbounds %struct.canid_match, ptr %2, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %lp.022 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %rules_raw, %for.body.preheader ]
  %i.021 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %9 = ptrtoint ptr %lp.022 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lp.022, align 4
  %xor = xor i32 %10, %6
  %can_mask = getelementptr inbounds %struct.can_filter, ptr %lp.022, i32 0, i32 1
  %11 = ptrtoint ptr %can_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %can_mask, align 4
  %and3 = and i32 %xor, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %for.body.if.end10_crit_edge, label %for.inc

for.body.if.end10_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.021, 1
  %incdec.ptr = getelementptr %struct.can_filter, ptr %lp.022, i32 1
  %exitcond.not = icmp eq i32 %inc, %8
  br i1 %exitcond.not, label %for.inc.if.end10_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.if.end10_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %and6 = lshr i32 %6, 5
  %div3.i = and i32 %and6, 63
  %arrayidx.i = getelementptr i32, ptr %2, i32 %div3.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %6, 31
  %15 = lshr i32 %14, %and.i
  %16 = and i32 %15, 1
  br label %if.end10

if.end10:                                         ; preds = %if.else, %for.inc.if.end10_crit_edge, %for.body.if.end10_crit_edge, %if.then.if.end10_crit_edge
  %match.0 = phi i32 [ %16, %if.else ], [ 0, %if.then.if.end10_crit_edge ], [ 0, %for.inc.if.end10_crit_edge ], [ 1, %for.body.if.end10_crit_edge ]
  ret i32 %match.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @em_canid_destroy(ptr nocapture noundef readonly %m) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.tcf_ematch, ptr %m, i32 0, i32 1
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data.i, align 4
  %2 = inttoptr i32 %1 to ptr
  tail call void @kfree(ptr noundef %2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em_canid_dump(ptr noundef %skb, ptr nocapture noundef readonly %m) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.tcf_ematch, ptr %m, i32 0, i32 1
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data.i, align 4
  %2 = inttoptr i32 %1 to ptr
  %rules_count = getelementptr inbounds %struct.canid_match, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %rules_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rules_count, align 4
  %mul = shl i32 %4, 3
  %rules_raw = getelementptr inbounds %struct.canid_match, ptr %2, i32 0, i32 4
  %call1 = tail call i32 @nla_put_nohdr(ptr noundef %skb, i32 noundef %mul, ptr noundef %rules_raw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  %. = select i1 %cmp, i32 -90, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_nohdr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_em_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @__UNIQUE_ID_file366, !1, !"__UNIQUE_ID_file366", i1 false, i1 false}
!1 = !{!"../net/sched/em_canid.c", i32 225, i32 1}
!2 = !{ptr @__UNIQUE_ID_license367, !1, !"__UNIQUE_ID_license367", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_em_canid__368_227_init_em_canid6, !4, !"__initcall__kmod_em_canid__368_227_init_em_canid6", i1 false, i1 false}
!4 = !{!"../net/sched/em_canid.c", i32 227, i32 1}
!5 = !{ptr @__exitcall_exit_em_canid, !6, !"__exitcall_exit_em_canid", i1 false, i1 false}
!6 = !{!"../net/sched/em_canid.c", i32 228, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias369, !8, !"__UNIQUE_ID_alias369", i1 false, i1 false}
!8 = !{!"../net/sched/em_canid.c", i32 230, i32 1}
!9 = !{ptr @em_canid_ops, !10, !"em_canid_ops", i1 false, i1 false}
!10 = !{!"../net/sched/em_canid.c", i32 205, i32 30}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
