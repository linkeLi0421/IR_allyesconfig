; ModuleID = '/llk/IR_all_yes/net/dccp/ccids/lib/loss_interval.c_pt.bc'
source_filename = "../net/dccp/ccids/lib/loss_interval.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tfrc_loss_hist = type { [9 x ptr], i8, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.168, %union.anon.169, [48 x i8], %union.anon.170, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.172, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.168 = type { ptr }
%union.anon.169 = type { i64 }
%union.anon.170 = type { %struct.anon.171 }
%struct.anon.171 = type { i32, ptr }
%union.anon.172 = type { %struct.anon.173 }
%struct.anon.173 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.174, i32, i32, i32, i16, i16, %union.anon.176, i32, %union.anon.177, %union.anon.178, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.174 = type { i32 }
%union.anon.176 = type { i32 }
%union.anon.177 = type { i32 }
%union.anon.178 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.tfrc_loss_interval = type { i56, i32 }
%struct.dccp_hdr = type { i16, i16, i8, i8, i16, i8, i8, i16 }
%struct.tfrc_rx_hist = type { [4 x ptr], i8 }

@tfrc_lh_slab = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@tfrc_lh_interval_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\012Cannot allocate/add loss record. at %s:%d/%s()\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tfrc_lh_interval_add\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"net/dccp/ccids/lib/loss_interval.c\00", [61 x i8] zeroinitializer }, align 32
@tfrc_lh_interval_add._entry_ptr = internal global ptr @tfrc_lh_interval_add._entry, section ".printk_index", align 4
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tfrc_li_hist\00", [19 x i8] zeroinitializer }, align 32
@tfrc_lh_weights = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 10, i32 10, i32 10, i32 10, i32 8, i32 6, i32 4, i32 2], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 148, i32 3 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 172, i32 35 }
@___asan_gen_.19 = private unnamed_addr constant [16 x i8] c"tfrc_lh_weights\00", align 1
@___asan_gen_.20 = private constant [38 x i8] c"../net/dccp/ccids/lib/loss_interval.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 13, i32 18 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @tfrc_lh_interval_add._entry, ptr @tfrc_lh_interval_add._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @tfrc_lh_weights], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfrc_lh_interval_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfrc_lh_weights to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tfrc_lh_cleanup(ptr nocapture noundef %lh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %counter.i = getelementptr inbounds %struct.tfrc_loss_hist, ptr %lh, i32 0, i32 1
  %0 = ptrtoint ptr %counter.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %counter.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.i.not = icmp eq i8 %1, 0
  br i1 %cmp.i.not, label %entry.for.end_crit_edge, label %for.cond.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %counter.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %counter.i, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %storemerge31 = phi i8 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %3 = urem i8 %storemerge31, 9
  %narrow.i = sub nuw nsw i8 8, %3
  %idxprom = zext i8 %narrow.i to i32
  %arrayidx = getelementptr [9 x ptr], ptr %lh, i32 0, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %cmp5.not = icmp eq ptr %5, null
  br i1 %cmp5.not, label %for.body.for.inc_crit_edge, label %if.then7

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %6 = load ptr, ptr @tfrc_lh_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %6, ptr noundef nonnull %5) #5
  %7 = ptrtoint ptr %counter.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %counter.i, align 4
  %9 = urem i8 %8, 9
  %narrow.i30 = sub nuw nsw i8 8, %9
  %idxprom16 = zext i8 %narrow.i30 to i32
  %arrayidx17 = getelementptr [9 x ptr], ptr %lh, i32 0, i32 %idxprom16
  %10 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx17, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then7, %for.body.for.inc_crit_edge
  %11 = ptrtoint ptr %counter.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %counter.i, align 4
  %inc = add i8 %12, 1
  store i8 %inc, ptr %counter.i, align 4
  %cmp = icmp ult i8 %inc, 9
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @tfrc_lh_update_i_mean(ptr nocapture noundef %lh, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %counter.i = getelementptr inbounds %struct.tfrc_loss_hist, ptr %lh, i32 0, i32 1
  %0 = ptrtoint ptr %counter.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %counter.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %tfrc_lh_peek.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

tfrc_lh_peek.exit:                                ; preds = %entry
  %sub.i = add i8 %1, -1
  %2 = urem i8 %sub.i, 9
  %narrow.i.i = sub nuw nsw i8 8, %2
  %idxprom.i = zext i8 %narrow.i.i to i32
  %arrayidx.i = getelementptr [9 x ptr], ptr %lh, i32 0, i32 %idxprom.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %i_mean = getelementptr inbounds %struct.tfrc_loss_hist, ptr %lh, i32 0, i32 2
  %5 = ptrtoint ptr %i_mean to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_mean, align 4
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %tfrc_lh_peek.exit.cleanup_crit_edge, label %if.end

tfrc_lh_peek.exit.cleanup_crit_edge:              ; preds = %tfrc_lh_peek.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %tfrc_lh_peek.exit
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %7)
  %bf.load = load i64, ptr %4, align 8
  %bf.lshr = lshr i64 %bf.load, 16
  %dccpd_seq = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %8 = ptrtoint ptr %dccpd_seq to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %dccpd_seq, align 8
  %add.i = sub i64 %9, %bf.lshr
  %and.i = and i64 %add.i, 281474976710655
  call void @__sanitizer_cov_trace_const_cmp8(i64 140737488355328, i64 %and.i)
  %cmp.i = icmp ult i64 %and.i, 140737488355328
  %masksel.i = select i1 %cmp.i, i64 0, i64 -281474976710656
  %cond.i46 = or i64 %masksel.i, %and.i
  %li_length = getelementptr inbounds %struct.tfrc_loss_interval, ptr %4, i32 0, i32 1
  %10 = ptrtoint ptr %li_length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %li_length, align 8
  %conv = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %cond.i46, i64 %conv)
  %cmp2.not.not = icmp slt i64 %cond.i46, %conv
  br i1 %cmp2.not.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %12 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %14 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %15 to i32
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %conv.i.i
  %dccph_ccval = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %dccph_ccval to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load7 = load i8, ptr %dccph_ccval, align 1
  %bf.lshr8 = lshr i8 %bf.load7, 4
  %add10 = zext i8 %bf.lshr8 to i32
  %17 = trunc i64 %bf.load to i32
  %18 = lshr i32 %17, 12
  %sub14 = sub nsw i32 %add10, %18
  %and = and i32 %sub14, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and)
  %cmp15 = icmp ugt i32 %and, 4
  br i1 %cmp15, label %if.then17, label %if.end5.if.end20_crit_edge

if.end5.if.end20_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then17:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %bf.set = or i64 %bf.load, 2048
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %bf.set, ptr %4, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end5.if.end20_crit_edge
  %20 = ptrtoint ptr %counter.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %counter.i, align 4
  %22 = tail call i8 @llvm.umin.i8(i8 %21, i8 9) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %22)
  %cmp23 = icmp eq i8 %22, 1
  br i1 %cmp23, label %if.end20.cleanup_crit_edge, label %if.end26

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end26:                                         ; preds = %if.end20
  %23 = trunc i64 %add.i to i32
  %conv27 = add i32 %23, 1
  %24 = ptrtoint ptr %li_length to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv27, ptr %li_length, align 8
  %25 = ptrtoint ptr %counter.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %counter.i, align 4
  %27 = tail call i8 @llvm.umin.i8(i8 %26, i8 9) #5
  %conv.i = zext i8 %27 to i32
  %sub.i48 = add nsw i32 %conv.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %27)
  %cmp.i49 = icmp ult i8 %27, 2
  br i1 %cmp.i49, label %if.end26.tfrc_lh_calc_i_mean.exit_crit_edge, label %for.body.preheader.i

if.end26.tfrc_lh_calc_i_mean.exit_crit_edge:      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %tfrc_lh_calc_i_mean.exit

for.body.preheader.i:                             ; preds = %if.end26
  %28 = zext i8 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i48, i32 %28)
  %.not.not.i = icmp ult i32 %sub.i48, %28
  br i1 %.not.not.i, label %for.body.peel.next.i, label %do.body4.i.i, !prof !21

for.body.peel.next.i:                             ; preds = %for.body.preheader.i
  %sub11.i.peel.i = add i8 %26, -1
  %29 = urem i8 %sub11.i.peel.i, 9
  %narrow.i.i.peel.i = sub nuw nsw i8 8, %29
  %idxprom.i.peel.i = zext i8 %narrow.i.i.peel.i to i32
  %arrayidx.i.peel.i = getelementptr [9 x ptr], ptr %lh, i32 0, i32 %idxprom.i.peel.i
  %30 = ptrtoint ptr %arrayidx.i.peel.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i.peel.i, align 4
  %li_length.i.peel.i = getelementptr inbounds %struct.tfrc_loss_interval, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %li_length.i.peel.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %li_length.i.peel.i, align 8
  %mul.peel.i = mul i32 %33, 10
  br label %tfrc_lh_get_interval.exit.i

do.body4.i.i:                                     ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/dccp/ccids/lib/loss_interval.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 30, 0\0A.popsection", ""() #5, !srcloc !22
  unreachable

tfrc_lh_get_interval.exit.i:                      ; preds = %for.inc.i.tfrc_lh_get_interval.exit.i_crit_edge, %for.body.peel.next.i
  %i.052.i = phi i32 [ %inc.i, %for.inc.i.tfrc_lh_get_interval.exit.i_crit_edge ], [ 1, %for.body.peel.next.i ]
  %w_tot.051.i = phi i32 [ %w_tot.1.i, %for.inc.i.tfrc_lh_get_interval.exit.i_crit_edge ], [ 10, %for.body.peel.next.i ]
  %i_tot1.050.i = phi i32 [ %add18.i, %for.inc.i.tfrc_lh_get_interval.exit.i_crit_edge ], [ 0, %for.body.peel.next.i ]
  %i_tot0.049.i = phi i32 [ %i_tot0.1.i, %for.inc.i.tfrc_lh_get_interval.exit.i_crit_edge ], [ %mul.peel.i, %for.body.peel.next.i ]
  %conv4.i = trunc i32 %i.052.i to i8
  %34 = xor i8 %conv4.i, -1
  %sub11.i.i = add i8 %26, %34
  %35 = urem i8 %sub11.i.i, 9
  %narrow.i.i.i = sub nuw nsw i8 8, %35
  %idxprom.i.i = zext i8 %narrow.i.i.i to i32
  %arrayidx.i.i = getelementptr [9 x ptr], ptr %lh, i32 0, i32 %idxprom.i.i
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i.i, align 4
  %li_length.i.i = getelementptr inbounds %struct.tfrc_loss_interval, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %li_length.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %li_length.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.052.i, i32 %sub.i48)
  %cmp6.i = icmp slt i32 %i.052.i, %sub.i48
  br i1 %cmp6.i, label %if.then8.i, label %tfrc_lh_get_interval.exit.i.for.inc.i_crit_edge

tfrc_lh_get_interval.exit.i.for.inc.i_crit_edge:  ; preds = %tfrc_lh_get_interval.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then8.i:                                       ; preds = %tfrc_lh_get_interval.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i50 = getelementptr [8 x i32], ptr @tfrc_lh_weights, i32 0, i32 %i.052.i
  %40 = ptrtoint ptr %arrayidx.i50 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i50, align 4
  %mul.i = mul i32 %41, %39
  %add.i51 = add i32 %mul.i, %i_tot0.049.i
  %add10.i = add i32 %41, %w_tot.051.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then8.i, %tfrc_lh_get_interval.exit.i.for.inc.i_crit_edge
  %i_tot0.1.i = phi i32 [ %add.i51, %if.then8.i ], [ %i_tot0.049.i, %tfrc_lh_get_interval.exit.i.for.inc.i_crit_edge ]
  %w_tot.1.i = phi i32 [ %add10.i, %if.then8.i ], [ %w_tot.051.i, %tfrc_lh_get_interval.exit.i.for.inc.i_crit_edge ]
  %sub15.i = add nsw i32 %i.052.i, -1
  %arrayidx16.i = getelementptr [8 x i32], ptr @tfrc_lh_weights, i32 0, i32 %sub15.i
  %42 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx16.i, align 4
  %mul17.i = mul i32 %43, %39
  %add18.i = add i32 %mul17.i, %i_tot1.050.i
  %inc.i = add nuw nsw i32 %i.052.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.tfrc_lh_get_interval.exit.i_crit_edge, !llvm.loop !23

for.inc.i.tfrc_lh_get_interval.exit.i_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tfrc_lh_get_interval.exit.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  %44 = tail call i32 @llvm.umax.i32(i32 %i_tot0.1.i, i32 %add18.i) #5
  %div.i = udiv i32 %44, %w_tot.1.i
  %45 = ptrtoint ptr %i_mean to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %div.i, ptr %i_mean, align 4
  br label %tfrc_lh_calc_i_mean.exit

tfrc_lh_calc_i_mean.exit:                         ; preds = %for.end.i, %if.end26.tfrc_lh_calc_i_mean.exit_crit_edge
  %46 = ptrtoint ptr %i_mean to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_mean, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %6)
  %cmp30 = icmp ult i32 %47, %6
  %conv32 = zext i1 %cmp30 to i8
  br label %cleanup

cleanup:                                          ; preds = %tfrc_lh_calc_i_mean.exit, %if.end20.cleanup_crit_edge, %if.end.cleanup_crit_edge, %tfrc_lh_peek.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %conv32, %tfrc_lh_calc_i_mean.exit ], [ 0, %tfrc_lh_peek.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end20.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tfrc_lh_interval_add(ptr nocapture noundef %lh, ptr nocapture noundef readonly %rh, ptr nocapture noundef readonly %calc_first_li, ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %counter.i = getelementptr inbounds %struct.tfrc_loss_hist, ptr %lh, i32 0, i32 1
  %0 = ptrtoint ptr %counter.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %counter.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %tfrc_lh_peek.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

tfrc_lh_peek.exit:                                ; preds = %entry
  %sub.i = add i8 %1, -1
  %2 = urem i8 %sub.i, 9
  %narrow.i.i = sub nuw nsw i8 8, %2
  %idxprom.i = zext i8 %narrow.i.i to i32
  %arrayidx.i = getelementptr [9 x ptr], ptr %lh, i32 0, i32 %idxprom.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %cmp.not = icmp eq ptr %4, null
  br i1 %cmp.not, label %tfrc_lh_peek.exit.if.end_crit_edge, label %land.lhs.true

tfrc_lh_peek.exit.if.end_crit_edge:               ; preds = %tfrc_lh_peek.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %tfrc_lh_peek.exit
  %loss_start.i = getelementptr inbounds %struct.tfrc_rx_hist, ptr %rh, i32 0, i32 1
  %5 = ptrtoint ptr %loss_start.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i = load i8, ptr %loss_start.i, align 4
  %bf.lshr.i = lshr i8 %bf.load.i, 4
  %bf.clear.i = and i8 %bf.lshr.i, 3
  %idxprom.i73 = zext i8 %bf.clear.i to i32
  %arrayidx.i74 = getelementptr [4 x ptr], ptr %rh, i32 0, i32 %idxprom.i73
  %6 = ptrtoint ptr %arrayidx.i74 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i74, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %8)
  %bf.load.i75 = load i64, ptr %4, align 8
  %bf.lshr.i76 = lshr i64 %bf.load.i75, 16
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %9)
  %bf.load1.i = load i64, ptr %7, align 8
  %bf.lshr2.i = lshr i64 %bf.load1.i, 16
  %add.i.i = sub nsw i64 %bf.lshr2.i, %bf.lshr.i76
  %and.i.i = and i64 %add.i.i, 281474976710655
  call void @__sanitizer_cov_trace_const_cmp8(i64 140737488355328, i64 %and.i.i)
  %cmp.i.i = icmp ult i64 %and.i.i, 140737488355328
  %masksel.i.i = select i1 %cmp.i.i, i64 0, i64 -281474976710656
  %cond.i.i = or i64 %masksel.i.i, %and.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i.i)
  %cmp.i = icmp sgt i64 %cond.i.i, 0
  br i1 %cmp.i, label %land.rhs.i, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.rhs.i:                                       ; preds = %land.lhs.true
  %10 = and i64 %bf.load.i75, 2048
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %tobool.not.i77 = icmp eq i64 %10, 0
  br i1 %tobool.not.i77, label %tfrc_lh_is_new_loss.exit, label %land.rhs.i.if.end_crit_edge

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

tfrc_lh_is_new_loss.exit:                         ; preds = %land.rhs.i
  %11 = trunc i64 %bf.load1.i to i32
  %12 = lshr i32 %11, 12
  %13 = trunc i64 %bf.load.i75 to i32
  %14 = lshr i32 %13, 12
  %sub.i78 = sub nsw i32 %12, %14
  %and.i = and i32 %sub.i78, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and.i)
  %cmp13.i = icmp ult i32 %and.i, 5
  br i1 %cmp13.i, label %tfrc_lh_is_new_loss.exit.cleanup_crit_edge, label %tfrc_lh_is_new_loss.exit.if.end_crit_edge

tfrc_lh_is_new_loss.exit.if.end_crit_edge:        ; preds = %tfrc_lh_is_new_loss.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

tfrc_lh_is_new_loss.exit.cleanup_crit_edge:       ; preds = %tfrc_lh_is_new_loss.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %tfrc_lh_is_new_loss.exit.if.end_crit_edge, %land.rhs.i.if.end_crit_edge, %tfrc_lh_peek.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %cond.i116 = phi ptr [ %4, %tfrc_lh_is_new_loss.exit.if.end_crit_edge ], [ null, %tfrc_lh_peek.exit.if.end_crit_edge ], [ null, %entry.if.end_crit_edge ], [ %4, %land.rhs.i.if.end_crit_edge ]
  %15 = urem i8 %1, 9
  %narrow.i.i80 = sub nuw nsw i8 8, %15
  %idxprom.i81 = zext i8 %narrow.i.i80 to i32
  %arrayidx.i82 = getelementptr [9 x ptr], ptr %lh, i32 0, i32 %idxprom.i81
  %16 = ptrtoint ptr %arrayidx.i82 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i82, align 4
  %cmp.i83 = icmp eq ptr %17, null
  br i1 %cmp.i83, label %if.then.i, label %if.end.tfrc_lh_demand_next.exit_crit_edge

if.end.tfrc_lh_demand_next.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %tfrc_lh_demand_next.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %18 = load ptr, ptr @tfrc_lh_slab, align 4
  %call1.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %18, i32 noundef 2592) #5
  %19 = ptrtoint ptr %counter.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %counter.i, align 4
  %21 = urem i8 %20, 9
  %narrow.i17.i = sub nuw nsw i8 8, %21
  %idxprom5.i = zext i8 %narrow.i17.i to i32
  %arrayidx6.i = getelementptr [9 x ptr], ptr %lh, i32 0, i32 %idxprom5.i
  %22 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call1.i, ptr %arrayidx6.i, align 4
  br label %tfrc_lh_demand_next.exit

tfrc_lh_demand_next.exit:                         ; preds = %if.then.i, %if.end.tfrc_lh_demand_next.exit_crit_edge
  %23 = ptrtoint ptr %counter.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %counter.i, align 4
  %25 = urem i8 %24, 9
  %narrow.i18.i = sub nuw nsw i8 8, %25
  %idxprom10.i = zext i8 %narrow.i18.i to i32
  %arrayidx11.i = getelementptr [9 x ptr], ptr %lh, i32 0, i32 %idxprom10.i
  %26 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx11.i, align 4
  %cmp4 = icmp eq ptr %27, null
  br i1 %cmp4, label %do.end, label %if.end9, !prof !25

do.end:                                           ; preds = %tfrc_lh_demand_next.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 148, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end9:                                          ; preds = %tfrc_lh_demand_next.exit
  %loss_start.i84 = getelementptr inbounds %struct.tfrc_rx_hist, ptr %rh, i32 0, i32 1
  %28 = ptrtoint ptr %loss_start.i84 to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load.i85 = load i8, ptr %loss_start.i84, align 4
  %bf.lshr.i86 = lshr i8 %bf.load.i85, 4
  %bf.clear.i87 = and i8 %bf.lshr.i86, 3
  %idxprom.i88 = zext i8 %bf.clear.i87 to i32
  %arrayidx.i89 = getelementptr [4 x ptr], ptr %rh, i32 0, i32 %idxprom.i88
  %29 = ptrtoint ptr %arrayidx.i89 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i89, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load8_noabort(i32 %31)
  %bf.load = load i64, ptr %30, align 8
  %bf.lshr = and i64 %bf.load, -65536
  %32 = ptrtoint ptr %27 to i32
  call void @__asan_load8_noabort(i32 %32)
  %bf.load11 = load i64, ptr %27, align 8
  %bf.clear = and i64 %bf.load11, 65535
  %bf.set = or i64 %bf.clear, %bf.lshr
  store i64 %bf.set, ptr %27, align 8
  %bf.load.i91 = load i8, ptr %loss_start.i84, align 4
  %bf.lshr.i92 = lshr i8 %bf.load.i91, 4
  %bf.clear.i93 = and i8 %bf.lshr.i92, 3
  %idxprom.i94 = zext i8 %bf.clear.i93 to i32
  %arrayidx.i95 = getelementptr [4 x ptr], ptr %rh, i32 0, i32 %idxprom.i94
  %33 = ptrtoint ptr %arrayidx.i95 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i95, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load8_noabort(i32 %35)
  %bf.load13 = load i64, ptr %34, align 8
  %bf.clear15 = and i64 %bf.load13, 61440
  %bf.clear19 = and i64 %bf.set, -63489
  %bf.set20 = or i64 %bf.clear15, %bf.clear19
  store i64 %bf.set20, ptr %27, align 8
  %36 = ptrtoint ptr %counter.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %counter.i, align 4
  %inc = add i8 %37, 1
  store i8 %inc, ptr %counter.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp24 = icmp eq i8 %37, 0
  br i1 %cmp24, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %call27 = tail call i32 %calc_first_li(ptr noundef %sk) #5
  %li_length = getelementptr inbounds %struct.tfrc_loss_interval, ptr %27, i32 0, i32 1
  %38 = ptrtoint ptr %li_length to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call27, ptr %li_length, align 8
  %i_mean = getelementptr inbounds %struct.tfrc_loss_hist, ptr %lh, i32 0, i32 2
  %39 = ptrtoint ptr %i_mean to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call27, ptr %i_mean, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end9
  %40 = ptrtoint ptr %cond.i116 to i32
  call void @__asan_load8_noabort(i32 %40)
  %bf.load28 = load i64, ptr %cond.i116, align 8
  %bf.lshr29 = lshr i64 %bf.load28, 16
  %41 = ptrtoint ptr %27 to i32
  call void @__asan_load8_noabort(i32 %41)
  %bf.load30 = load i64, ptr %27, align 8
  %bf.lshr31 = lshr i64 %bf.load30, 16
  %add.i = sub nsw i64 %bf.lshr31, %bf.lshr29
  %conv33 = trunc i64 %add.i to i32
  %li_length34 = getelementptr inbounds %struct.tfrc_loss_interval, ptr %cond.i116, i32 0, i32 1
  %42 = ptrtoint ptr %li_length34 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv33, ptr %li_length34, align 8
  %bf.load35 = load i64, ptr %27, align 8
  %bf.lshr36 = lshr i64 %bf.load35, 16
  %43 = ptrtoint ptr %loss_start.i84 to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load.i99 = load i8, ptr %loss_start.i84, align 4
  %bf.lshr.i100 = lshr i8 %bf.load.i99, 6
  %bf.lshr.i.i = lshr i8 %bf.load.i99, 4
  %add.i.i101 = add nuw nsw i8 %bf.lshr.i.i, %bf.lshr.i100
  %and.i.i102 = and i8 %add.i.i101, 3
  %idxprom.i103 = zext i8 %and.i.i102 to i32
  %arrayidx.i104 = getelementptr [4 x ptr], ptr %rh, i32 0, i32 %idxprom.i103
  %44 = ptrtoint ptr %arrayidx.i104 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i104, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load8_noabort(i32 %46)
  %bf.load38 = load i64, ptr %45, align 8
  %bf.lshr39 = lshr i64 %bf.load38, 16
  %add.i105 = sub nsw i64 %bf.lshr39, %bf.lshr36
  %47 = trunc i64 %add.i105 to i32
  %conv41 = add i32 %47, 1
  %li_length42 = getelementptr inbounds %struct.tfrc_loss_interval, ptr %27, i32 0, i32 1
  %48 = ptrtoint ptr %li_length42 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv41, ptr %li_length42, align 8
  %49 = ptrtoint ptr %counter.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %counter.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %50)
  %cmp45 = icmp ugt i8 %50, 18
  br i1 %cmp45, label %if.then47, label %if.else.if.end51_crit_edge

if.else.if.end51_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

if.then47:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %sub = add i8 %50, -9
  %51 = ptrtoint ptr %counter.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %sub, ptr %counter.i, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then47, %if.else.if.end51_crit_edge
  %52 = ptrtoint ptr %counter.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %counter.i, align 4
  %54 = tail call i8 @llvm.umin.i8(i8 %53, i8 9) #5
  %conv.i = zext i8 %54 to i32
  %sub.i110 = add nsw i32 %conv.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %54)
  %cmp.i111 = icmp ult i8 %54, 2
  br i1 %cmp.i111, label %if.end51.cleanup_crit_edge, label %for.body.preheader.i

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.preheader.i:                             ; preds = %if.end51
  %55 = zext i8 %53 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i110, i32 %55)
  %.not.not.i = icmp ult i32 %sub.i110, %55
  br i1 %.not.not.i, label %for.body.peel.next.i, label %do.body4.i.i, !prof !21

for.body.peel.next.i:                             ; preds = %for.body.preheader.i
  %sub11.i.peel.i = add i8 %53, -1
  %56 = urem i8 %sub11.i.peel.i, 9
  %narrow.i.i.peel.i = sub nuw nsw i8 8, %56
  %idxprom.i.peel.i = zext i8 %narrow.i.i.peel.i to i32
  %arrayidx.i.peel.i = getelementptr [9 x ptr], ptr %lh, i32 0, i32 %idxprom.i.peel.i
  %57 = ptrtoint ptr %arrayidx.i.peel.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.i.peel.i, align 4
  %li_length.i.peel.i = getelementptr inbounds %struct.tfrc_loss_interval, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %li_length.i.peel.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %li_length.i.peel.i, align 8
  %mul.peel.i = mul i32 %60, 10
  br label %tfrc_lh_get_interval.exit.i

do.body4.i.i:                                     ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/dccp/ccids/lib/loss_interval.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 30, 0\0A.popsection", ""() #5, !srcloc !22
  unreachable

tfrc_lh_get_interval.exit.i:                      ; preds = %for.inc.i.tfrc_lh_get_interval.exit.i_crit_edge, %for.body.peel.next.i
  %i.052.i = phi i32 [ %inc.i, %for.inc.i.tfrc_lh_get_interval.exit.i_crit_edge ], [ 1, %for.body.peel.next.i ]
  %w_tot.051.i = phi i32 [ %w_tot.1.i, %for.inc.i.tfrc_lh_get_interval.exit.i_crit_edge ], [ 10, %for.body.peel.next.i ]
  %i_tot1.050.i = phi i32 [ %add18.i, %for.inc.i.tfrc_lh_get_interval.exit.i_crit_edge ], [ 0, %for.body.peel.next.i ]
  %i_tot0.049.i = phi i32 [ %i_tot0.1.i, %for.inc.i.tfrc_lh_get_interval.exit.i_crit_edge ], [ %mul.peel.i, %for.body.peel.next.i ]
  %conv4.i = trunc i32 %i.052.i to i8
  %61 = xor i8 %conv4.i, -1
  %sub11.i.i = add i8 %53, %61
  %62 = urem i8 %sub11.i.i, 9
  %narrow.i.i.i = sub nuw nsw i8 8, %62
  %idxprom.i.i = zext i8 %narrow.i.i.i to i32
  %arrayidx.i.i = getelementptr [9 x ptr], ptr %lh, i32 0, i32 %idxprom.i.i
  %63 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.i.i, align 4
  %li_length.i.i = getelementptr inbounds %struct.tfrc_loss_interval, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %li_length.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %li_length.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.052.i, i32 %sub.i110)
  %cmp6.i = icmp slt i32 %i.052.i, %sub.i110
  br i1 %cmp6.i, label %if.then8.i, label %tfrc_lh_get_interval.exit.i.for.inc.i_crit_edge

tfrc_lh_get_interval.exit.i.for.inc.i_crit_edge:  ; preds = %tfrc_lh_get_interval.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then8.i:                                       ; preds = %tfrc_lh_get_interval.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i112 = getelementptr [8 x i32], ptr @tfrc_lh_weights, i32 0, i32 %i.052.i
  %67 = ptrtoint ptr %arrayidx.i112 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.i112, align 4
  %mul.i = mul i32 %68, %66
  %add.i113 = add i32 %mul.i, %i_tot0.049.i
  %add10.i = add i32 %68, %w_tot.051.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then8.i, %tfrc_lh_get_interval.exit.i.for.inc.i_crit_edge
  %i_tot0.1.i = phi i32 [ %add.i113, %if.then8.i ], [ %i_tot0.049.i, %tfrc_lh_get_interval.exit.i.for.inc.i_crit_edge ]
  %w_tot.1.i = phi i32 [ %add10.i, %if.then8.i ], [ %w_tot.051.i, %tfrc_lh_get_interval.exit.i.for.inc.i_crit_edge ]
  %sub15.i = add nsw i32 %i.052.i, -1
  %arrayidx16.i = getelementptr [8 x i32], ptr @tfrc_lh_weights, i32 0, i32 %sub15.i
  %69 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx16.i, align 4
  %mul17.i = mul i32 %70, %66
  %add18.i = add i32 %mul17.i, %i_tot1.050.i
  %inc.i = add nuw nsw i32 %i.052.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.tfrc_lh_get_interval.exit.i_crit_edge, !llvm.loop !23

for.inc.i.tfrc_lh_get_interval.exit.i_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tfrc_lh_get_interval.exit.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  %71 = tail call i32 @llvm.umax.i32(i32 %i_tot0.1.i, i32 %add18.i) #5
  %div.i = udiv i32 %71, %w_tot.1.i
  %i_mean.i = getelementptr inbounds %struct.tfrc_loss_hist, ptr %lh, i32 0, i32 2
  %72 = ptrtoint ptr %i_mean.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %div.i, ptr %i_mean.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end.i, %if.end51.cleanup_crit_edge, %if.then26, %do.end, %tfrc_lh_is_new_loss.exit.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %tfrc_lh_is_new_loss.exit.cleanup_crit_edge ], [ 1, %if.then26 ], [ 1, %if.end51.cleanup_crit_edge ], [ 1, %for.end.i ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tfrc_li_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.3, i32 noundef 16, i32 noundef 0, i32 noundef 8192, ptr noundef null) #5
  store ptr %call, ptr @tfrc_lh_slab, align 4
  %cmp = icmp eq ptr %call, null
  %cond = select i1 %cmp, i32 -105, i32 0
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tfrc_li_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @tfrc_lh_slab, align 4
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kmem_cache_destroy(ptr noundef nonnull %0) #5
  store ptr null, ptr @tfrc_lh_slab, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/dccp/ccids/lib/loss_interval.c", i32 148, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @tfrc_lh_interval_add._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @tfrc_lh_interval_add._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/dccp/ccids/lib/loss_interval.c", i32 172, i32 35}
!8 = !{ptr @tfrc_lh_slab, !9, !"tfrc_lh_slab", i1 false, i1 false}
!9 = !{!"../net/dccp/ccids/lib/loss_interval.c", i32 11, i32 28}
!10 = !{ptr @tfrc_lh_weights, !11, !"tfrc_lh_weights", i1 false, i1 false}
!11 = !{!"../net/dccp/ccids/lib/loss_interval.c", i32 13, i32 18}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!"branch_weights", i32 2000, i32 1}
!22 = !{i64 2158647505, i64 2158648003, i64 2158647542, i64 2158647598, i64 2158647632, i64 2158647656, i64 2158647697, i64 2158647718, i64 2158647746, i64 2158647780}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.peeled.count", i32 1}
!25 = !{!"branch_weights", i32 1, i32 2000}
