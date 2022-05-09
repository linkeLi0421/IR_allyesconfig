; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/omapdrm/tcm-sita.c_pt.bc'
source_filename = "../drivers/gpu/drm/omapdrm/tcm-sita.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tcm = type { i16, i16, i32, i32, %struct.spinlock, ptr, i32, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tcm_area = type { i8, ptr, %struct.tcm_pt, %struct.tcm_pt }
%struct.tcm_pt = type { i16, i16 }

@sita_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&tcm->lock\00", [21 x i8] zeroinitializer }, align 32
@mask = internal global { [8 x i32], [32 x i8] } zeroinitializer, align 32
@___asan_gen_.1 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 240, i32 2 }
@___asan_gen_.7 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@___asan_gen_.8 = private constant [38 x i8] c"../drivers/gpu/drm/omapdrm/tcm-sita.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 20, i32 22 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @sita_init.__key, ptr @.str, ptr @mask], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sita_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mask to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sita_init(i16 noundef zeroext %width, i16 noundef zeroext %height) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %width to i32
  %conv1 = zext i16 %height to i32
  %mul = mul nuw i32 %conv1, %conv
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %width)
  %cmp = icmp eq i16 %width, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %height)
  %cmp6 = icmp eq i16 %height, 0
  %or.cond = or i1 %cmp, %cmp6
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end8.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  %sub = add nuw i32 %mul, 31
  %0 = lshr i32 %sub, 3
  %mul2 = and i32 %0, 536870908
  %add8 = add nuw nsw i32 %mul2, 80
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add8, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end10

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end10:                                         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %height11 = getelementptr inbounds %struct.tcm, ptr %call9.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %height11 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %height, ptr %height11, align 2
  %2 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %width, ptr %call9.i.i, align 128
  %reserve_2d = getelementptr inbounds %struct.tcm, ptr %call9.i.i, i32 0, i32 7
  %3 = ptrtoint ptr %reserve_2d to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @sita_reserve_2d, ptr %reserve_2d, align 64
  %reserve_1d = getelementptr inbounds %struct.tcm, ptr %call9.i.i, i32 0, i32 8
  %4 = ptrtoint ptr %reserve_1d to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @sita_reserve_1d, ptr %reserve_1d, align 4
  %free = getelementptr inbounds %struct.tcm, ptr %call9.i.i, i32 0, i32 9
  %5 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @sita_free, ptr %free, align 8
  %deinit = getelementptr inbounds %struct.tcm, ptr %call9.i.i, i32 0, i32 10
  %6 = ptrtoint ptr %deinit to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @sita_deinit, ptr %deinit, align 4
  %lock = getelementptr inbounds %struct.tcm, ptr %call9.i.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @sita_init.__key, i16 noundef signext 3) #3
  %add.ptr = getelementptr %struct.tcm, ptr %call9.i.i, i32 1
  %bitmap = getelementptr inbounds %struct.tcm, ptr %call9.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %bitmap to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr, ptr %bitmap, align 8
  tail call void @__bitmap_clear(ptr noundef %add.ptr, i32 noundef 0, i32 noundef %mul) #3
  %map_size21 = getelementptr inbounds %struct.tcm, ptr %call9.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %map_size21 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul, ptr %map_size21, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end8.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call9.i.i, %if.end10 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end8.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sita_reserve_2d(ptr noundef %tcm, i16 noundef zeroext %h, i16 noundef zeroext %w, i16 noundef zeroext %align, i16 noundef signext %offset, i16 noundef zeroext %slot_bytes, ptr nocapture noundef %area) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.tcm, ptr %tcm, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #3
  %bitmap = getelementptr inbounds %struct.tcm, ptr %tcm, i32 0, i32 5
  %0 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bitmap, align 4
  %map_size = getelementptr inbounds %struct.tcm, ptr %tcm, i32 0, i32 6
  %2 = ptrtoint ptr %map_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %map_size, align 4
  %4 = ptrtoint ptr %tcm to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %tcm, align 4
  %conv1 = zext i16 %5 to i32
  %div.i50 = udiv i16 4096, %slot_bytes
  %div.i.zext = zext i16 %div.i50 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %offset)
  %cmp.i = icmp sgt i16 %offset, 0
  br i1 %cmp.i, label %cond.true.i, label %entry.cond.end.i_crit_edge

entry.cond.end.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %div3.i51 = udiv i16 %offset, %slot_bytes
  %div3.i.zext = zext i16 %div3.i51 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %entry.cond.end.i_crit_edge
  %cond.i = phi i32 [ %div3.i.zext, %cond.true.i ], [ 0, %entry.cond.end.i_crit_edge ]
  %sub.i = add i16 %align, -1
  %narrow.i = select i1 %cmp.i, i16 0, i16 %sub.i
  %cond11.i = zext i16 %narrow.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %3)
  %cmp13183.i = icmp ult i32 %cond.i, %3
  br i1 %cmp13183.i, label %while.body.lr.ph.i, label %cond.end.i.if.end_crit_edge

cond.end.i.if.end_crit_edge:                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

while.body.lr.ph.i:                               ; preds = %cond.end.i
  %conv15.i = zext i16 %w to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp17.not.i = icmp eq i32 %cond.i, 0
  %sub21.i = add nsw i32 %div.i.zext, -1
  %neg.i = sub nsw i32 0, %div.i.zext
  %conv37.i = zext i16 %h to i32
  %mul.i = mul nuw i32 %conv1, %conv37.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %h)
  %cmp46180.i = icmp ugt i16 %h, 1
  %add70.i = add nuw nsw i32 %cond11.i, 1
  %neg33.i = sub nsw i32 0, %conv1
  %sub30.i = add nsw i32 %conv1, -1
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %curr_bit.0185.i = phi i32 [ %cond.i, %while.body.lr.ph.i ], [ %curr_bit.0.be.i, %while.cond.backedge.i.while.body.i_crit_edge ]
  %area_free.0.off0184.i = phi i1 [ false, %while.body.lr.ph.i ], [ %area_free.0.off0.be.i, %while.cond.backedge.i.while.body.i_crit_edge ]
  %call.i.i = tail call i32 @bitmap_find_next_zero_area_off(ptr noundef %1, i32 noundef %3, i32 noundef %curr_bit.0185.i, i32 noundef %conv15.i, i32 noundef %cond11.i, i32 noundef 0) #3
  br i1 %cmp17.not.i, label %while.body.i.if.end.i_crit_edge, label %land.lhs.true.i

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %rem.i = urem i32 %call.i.i, %div.i.zext
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i, i32 %cond.i)
  %cmp19.not.i = icmp eq i32 %rem.i, %cond.i
  br i1 %cmp19.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  %add.i = add i32 %call.i.i, %sub21.i
  %and.i = and i32 %add.i, %neg.i
  %add23.i = add i32 %and.i, %cond.i
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.else.i, %if.then62.i, %if.then29.i, %if.then.i
  %area_free.0.off0.be.i = phi i1 [ %area_free.0.off0184.i, %if.then.i ], [ %area_free.0.off0184.i, %if.then29.i ], [ %6, %if.else.i ], [ %6, %if.then62.i ]
  %curr_bit.0.be.i = phi i32 [ %add23.i, %if.then.i ], [ %add35.i, %if.then29.i ], [ %add71.i, %if.else.i ], [ %add68.i, %if.then62.i ]
  %cmp13.i = icmp ult i32 %curr_bit.0.be.i, %3
  br i1 %cmp13.i, label %while.cond.backedge.i.while.body.i_crit_edge, label %while.cond.backedge.i.while.end.i_crit_edge

while.cond.backedge.i.while.end.i_crit_edge:      ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end.i

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %while.body.i.if.end.i_crit_edge
  %rem24.i = urem i32 %call.i.i, %conv1
  %add26.i = add nuw nsw i32 %rem24.i, %conv15.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add26.i, i32 %conv1)
  %cmp27.i = icmp ugt i32 %add26.i, %conv1
  br i1 %cmp27.i, label %if.then29.i, label %if.end36.i

if.then29.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %add31.i = add i32 %sub30.i, %call.i.i
  %and34.i = and i32 %add31.i, %neg33.i
  %add35.i = add i32 %and34.i, %cond.i
  br label %while.cond.backedge.i

if.end36.i:                                       ; preds = %if.end.i
  %add38.i = add i32 %call.i.i, %mul.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add38.i, i32 %3)
  %cmp39.i = icmp ugt i32 %add38.i, %3
  br i1 %cmp39.i, label %if.end36.i.while.end.i_crit_edge, label %if.else11.i.i

if.end36.i.while.end.i_crit_edge:                 ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end.i

if.else11.i.i:                                    ; preds = %if.end36.i
  tail call void @__bitmap_clear(ptr noundef nonnull @mask, i32 noundef 0, i32 noundef %conv1) #3
  %rem43.i = and i32 %call.i.i, 31
  tail call void @__bitmap_set(ptr noundef nonnull @mask, i32 noundef %rem43.i, i32 noundef %conv15.i) #3
  br i1 %cmp46180.i, label %for.body.i.preheader, label %if.else11.i.i.if.then74.i_crit_edge

if.else11.i.i.if.then74.i_crit_edge:              ; preds = %if.else11.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then74.i

for.body.i.preheader:                             ; preds = %if.else11.i.i
  %div48143.i = lshr i32 %call.i.i, 5
  %add53.i = add nuw nsw i32 %rem43.i, %conv15.i
  br label %if.else.i176.i

for.cond.i:                                       ; preds = %if.else.i176.i
  %inc.i = add nuw nsw i32 %i.0181.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %conv37.i)
  %cmp46.i = icmp ult i32 %inc.i, %conv37.i
  %exitcond.not.i = icmp eq i32 %inc.i, %conv37.i
  br i1 %exitcond.not.i, label %for.cond.i.if.then74.i_crit_edge, label %for.cond.i.if.else.i176.i_crit_edge

for.cond.i.if.else.i176.i_crit_edge:              ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else.i176.i

for.cond.i.if.then74.i_crit_edge:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then74.i

if.else.i176.i:                                   ; preds = %for.cond.i.if.else.i176.i_crit_edge, %for.body.i.preheader
  %cmp46182.i = phi i1 [ %cmp46.i, %for.cond.i.if.else.i176.i_crit_edge ], [ true, %for.body.i.preheader ]
  %i.0181.i = phi i32 [ %inc.i, %for.cond.i.if.else.i176.i_crit_edge ], [ 1, %for.body.i.preheader ]
  %mul49.i = shl i32 %i.0181.i, 3
  %add50.i = add nuw nsw i32 %mul49.i, %div48143.i
  %arrayidx.i = getelementptr i32, ptr %1, i32 %add50.i
  %call.i175.i = tail call i32 @__bitmap_intersects(ptr noundef %arrayidx.i, ptr noundef nonnull @mask, i32 noundef %add53.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i175.i)
  %tobool.not.i = icmp eq i32 %call.i175.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %if.end59.i

if.end59.i:                                       ; preds = %if.else.i176.i
  %6 = xor i1 %cmp46182.i, true
  br i1 %cmp17.not.i, label %if.else.i, label %if.then62.i

if.then62.i:                                      ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #5
  %add64.i = add i32 %call.i.i, %sub21.i
  %and67.i = and i32 %add64.i, %neg.i
  %add68.i = add i32 %and67.i, %cond.i
  br label %while.cond.backedge.i

if.else.i:                                        ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #5
  %add71.i = add i32 %add70.i, %call.i.i
  br label %while.cond.backedge.i

while.end.i:                                      ; preds = %if.end36.i.while.end.i_crit_edge, %while.cond.backedge.i.while.end.i_crit_edge
  %area_free.0.off0.lcssa.i = phi i1 [ %area_free.0.off0184.i, %if.end36.i.while.end.i_crit_edge ], [ %area_free.0.off0.be.i, %while.cond.backedge.i.while.end.i_crit_edge ]
  br i1 %area_free.0.off0.lcssa.i, label %while.end.i.if.then74.i_crit_edge, label %while.end.i.if.end_crit_edge

while.end.i.if.end_crit_edge:                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

while.end.i.if.then74.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then74.i

if.then74.i:                                      ; preds = %while.end.i.if.then74.i_crit_edge, %for.cond.i.if.then74.i_crit_edge, %if.else11.i.i.if.then74.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %h)
  %cmp77187.not.i = icmp eq i16 %h, 0
  br i1 %cmp77187.not.i, label %if.then74.i.if.then_crit_edge, label %if.then74.i.if.else11.i172.i_crit_edge

if.then74.i.if.else11.i172.i_crit_edge:           ; preds = %if.then74.i
  br label %if.else11.i172.i

if.then74.i.if.then_crit_edge:                    ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

if.else11.i172.i:                                 ; preds = %if.else11.i172.i.if.else11.i172.i_crit_edge, %if.then74.i.if.else11.i172.i_crit_edge
  %index.0189.i = phi i32 [ %add83.i, %if.else11.i172.i.if.else11.i172.i_crit_edge ], [ %call.i.i, %if.then74.i.if.else11.i172.i_crit_edge ]
  %i.1188.i = phi i32 [ %inc82.i, %if.else11.i172.i.if.else11.i172.i_crit_edge ], [ 0, %if.then74.i.if.else11.i172.i_crit_edge ]
  tail call void @__bitmap_set(ptr noundef %1, i32 noundef %index.0189.i, i32 noundef %conv15.i) #3
  %inc82.i = add nuw nsw i32 %i.1188.i, 1
  %add83.i = add i32 %index.0189.i, %conv1
  %exitcond194.not.i = icmp eq i32 %inc82.i, %conv37.i
  br i1 %exitcond194.not.i, label %if.else11.i172.i.if.then_crit_edge, label %if.else11.i172.i.if.else11.i172.i_crit_edge

if.else11.i172.i.if.else11.i172.i_crit_edge:      ; preds = %if.else11.i172.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else11.i172.i

if.else11.i172.i.if.then_crit_edge:               ; preds = %if.else11.i172.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

if.then:                                          ; preds = %if.else11.i172.i.if.then_crit_edge, %if.then74.i.if.then_crit_edge
  %7 = ptrtoint ptr %tcm to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %tcm, align 4
  %conv3 = zext i16 %8 to i32
  %rem = urem i32 %call.i.i, %conv3
  %conv4 = trunc i32 %rem to i16
  %p0 = getelementptr inbounds %struct.tcm_area, ptr %area, i32 0, i32 2
  %9 = ptrtoint ptr %p0 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv4, ptr %p0, align 4
  %10 = load i16, ptr %tcm, align 4
  %conv6 = zext i16 %10 to i32
  %div = udiv i32 %call.i.i, %conv6
  %conv7 = trunc i32 %div to i16
  %y = getelementptr inbounds %struct.tcm_area, ptr %area, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %y to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv7, ptr %y, align 2
  %add = add i16 %w, -1
  %sub = add i16 %add, %conv4
  %p1 = getelementptr inbounds %struct.tcm_area, ptr %area, i32 0, i32 3
  %12 = ptrtoint ptr %p1 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %sub, ptr %p1, align 4
  %13 = add i16 %h, -1
  %conv21 = add i16 %13, %conv7
  %y23 = getelementptr inbounds %struct.tcm_area, ptr %area, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %y23 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv21, ptr %y23, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end.i.if.end_crit_edge, %cond.end.i.if.end_crit_edge
  %cond88.i48 = phi i32 [ 0, %if.then ], [ -12, %while.end.i.if.end_crit_edge ], [ -12, %cond.end.i.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #3
  ret i32 %cond88.i48
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sita_reserve_1d(ptr noundef %tcm, i32 noundef %num_slots, ptr nocapture noundef writeonly %area) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.tcm, ptr %tcm, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #3
  %bitmap = getelementptr inbounds %struct.tcm, ptr %tcm, i32 0, i32 5
  %0 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bitmap, align 4
  %map_size = getelementptr inbounds %struct.tcm, ptr %tcm, i32 0, i32 6
  %2 = ptrtoint ptr %map_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %map_size, align 4
  %conv.i = and i32 %num_slots, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp27.not.i = icmp eq i32 %3, 0
  br i1 %cmp27.not.i, label %entry.if.end_crit_edge, label %while.body.lr.ph.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

while.body.lr.ph.i:                               ; preds = %entry
  %sub7.i = add i32 %3, %conv.i
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %.pn = phi i32 [ %3, %while.body.lr.ph.i ], [ %call.i, %if.end.i.while.body.i_crit_edge ]
  %pos.0 = sub i32 %.pn, %conv.i
  %call.i = tail call i32 @_find_next_bit_be(ptr noundef %1, i32 noundef %3, i32 noundef %pos.0) #3
  %sub2.i = sub i32 %call.i, %pos.0
  call void @__sanitizer_cov_trace_cmp4(i32 %sub2.i, i32 %conv.i)
  %cmp4.not.i = icmp ult i32 %sub2.i, %conv.i
  br i1 %cmp4.not.i, label %if.end.i, label %if.else11.i.i

if.else11.i.i:                                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @__bitmap_set(ptr noundef %1, i32 noundef %pos.0, i32 noundef %conv.i) #3
  %4 = ptrtoint ptr %tcm to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %tcm, align 4
  %conv1 = zext i16 %5 to i32
  %rem = urem i32 %pos.0, %conv1
  %conv2 = trunc i32 %rem to i16
  %p0 = getelementptr inbounds %struct.tcm_area, ptr %area, i32 0, i32 2
  %6 = ptrtoint ptr %p0 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv2, ptr %p0, align 4
  %7 = load i16, ptr %tcm, align 4
  %conv4 = zext i16 %7 to i32
  %div = udiv i32 %pos.0, %conv4
  %conv5 = trunc i32 %div to i16
  %y = getelementptr inbounds %struct.tcm_area, ptr %area, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %y to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv5, ptr %y, align 2
  %add = add i32 %num_slots, -1
  %sub = add i32 %add, %pos.0
  %9 = load i16, ptr %tcm, align 4
  %conv8 = zext i16 %9 to i32
  %rem9 = urem i32 %sub, %conv8
  %conv10 = trunc i32 %rem9 to i16
  %p1 = getelementptr inbounds %struct.tcm_area, ptr %area, i32 0, i32 3
  %10 = ptrtoint ptr %p1 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv10, ptr %p1, align 4
  %11 = load i16, ptr %tcm, align 4
  %conv15 = zext i16 %11 to i32
  %div16 = udiv i32 %sub, %conv15
  %conv17 = trunc i32 %div16 to i16
  %y19 = getelementptr inbounds %struct.tcm_area, ptr %area, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %y19 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv17, ptr %y19, align 2
  br label %if.end

if.end.i:                                         ; preds = %while.body.i
  %add.i = sub i32 %sub7.i, %call.i
  %cmp.i = icmp ult i32 %add.i, %3
  br i1 %cmp.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %if.else11.i.i, %entry.if.end_crit_edge
  %area_found.0.off0.i42 = phi i32 [ 0, %if.else11.i.i ], [ -12, %entry.if.end_crit_edge ], [ -12, %if.end.i.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #3
  ret i32 %area_found.0.off0.i42
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sita_free(ptr noundef %tcm, ptr nocapture noundef readonly %area) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %p0 = getelementptr inbounds %struct.tcm_area, ptr %area, i32 0, i32 2
  %0 = ptrtoint ptr %p0 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %p0, align 4
  %conv = zext i16 %1 to i32
  %y = getelementptr inbounds %struct.tcm_area, ptr %area, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %y to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %y, align 2
  %conv2 = zext i16 %3 to i32
  %4 = ptrtoint ptr %tcm to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %tcm, align 4
  %conv3 = zext i16 %5 to i32
  %mul = mul nuw i32 %conv3, %conv2
  %add = add nuw i32 %mul, %conv
  %6 = ptrtoint ptr %area to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %area, align 4, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %p120 = getelementptr inbounds %struct.tcm_area, ptr %area, i32 0, i32 3
  %8 = ptrtoint ptr %p120 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %p120, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %sub = sub i16 %9, %1
  %y12 = getelementptr inbounds %struct.tcm_area, ptr %area, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %y12 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %y12, align 2
  %sub17 = sub i16 1, %3
  %add18 = add i16 %sub17, %11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %conv22 = zext i16 %9 to i32
  %y24 = getelementptr inbounds %struct.tcm_area, ptr %area, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %y24 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %y24, align 2
  %conv25 = zext i16 %13 to i32
  %mul28 = mul nuw i32 %conv25, %conv3
  %add29 = sub i32 %conv22, %add
  %sub30 = add i32 %add29, %mul28
  %14 = trunc i32 %sub30 to i16
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %w.0.in = phi i16 [ %sub, %if.then ], [ %14, %if.else ]
  %h.0 = phi i16 [ %add18, %if.then ], [ 1, %if.else ]
  %lock = getelementptr inbounds %struct.tcm, ptr %tcm, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #3
  %bitmap = getelementptr inbounds %struct.tcm, ptr %tcm, i32 0, i32 5
  %15 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bitmap, align 4
  %conv.i = zext i16 %h.0 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %h.0)
  %cmp6.not.i = icmp eq i16 %h.0, 0
  br i1 %cmp6.not.i, label %if.end.free_slots.exit_crit_edge, label %for.body.lr.ph.i

if.end.free_slots.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %free_slots.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %17 = ptrtoint ptr %tcm to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %tcm, align 4
  %w.0 = add i16 %w.0.in, 1
  %conv2.i = zext i16 %w.0 to i32
  %conv3.i = zext i16 %18 to i32
  br label %if.else11.i.i

if.else11.i.i:                                    ; preds = %if.else11.i.i.if.else11.i.i_crit_edge, %for.body.lr.ph.i
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.else11.i.i.if.else11.i.i_crit_edge ]
  %pos.addr.07.i = phi i32 [ %add, %for.body.lr.ph.i ], [ %add.i, %if.else11.i.i.if.else11.i.i_crit_edge ]
  tail call void @__bitmap_clear(ptr noundef %16, i32 noundef %pos.addr.07.i, i32 noundef %conv2.i) #3
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %add.i = add i32 %pos.addr.07.i, %conv3.i
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %if.else11.i.i.free_slots.exit_crit_edge, label %if.else11.i.i.if.else11.i.i_crit_edge

if.else11.i.i.if.else11.i.i_crit_edge:            ; preds = %if.else11.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else11.i.i

if.else11.i.i.free_slots.exit_crit_edge:          ; preds = %if.else11.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %free_slots.exit

free_slots.exit:                                  ; preds = %if.else11.i.i.free_slots.exit_crit_edge, %if.end.free_slots.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sita_deinit(ptr noundef %tcm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %tcm) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_next_zero_area_off(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_intersects(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @sita_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/omapdrm/tcm-sita.c", i32 240, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @mask, !4, !"mask", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/omapdrm/tcm-sita.c", i32 20, i32 22}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!14 = !{i8 0, i8 2}
