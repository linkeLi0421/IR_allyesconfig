; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/arm/display/komeda/komeda_format_caps.c_pt.bc'
source_filename = "../drivers/gpu/drm/arm/display/komeda/komeda_format_caps.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.komeda_format_caps_table = type { i32, ptr, ptr }
%struct.komeda_format_caps = type { i32, i32, i32, i32, i32, i64 }
%struct.drm_format_info = type { i32, i8, i8, %union.anon, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon = type { [4 x i8] }

@komeda_supported_modifiers = dso_local global { [18 x i64], [48 x i8] } { [18 x i64] [i64 576460752303423489, i64 576460752303423553, i64 576460752303423569, i64 576460752303423505, i64 576460752303423601, i64 576460752303423809, i64 576460752303423745, i64 576460752303424369, i64 576460752303424337, i64 576460752303424273, i64 576460752303423570, i64 576460752303423506, i64 576460752303423602, i64 576460752303424370, i64 576460752303424338, i64 576460752303424274, i64 0, i64 72057594037927935], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 808539481, i64 942691673]
@___asan_gen_.1 = private unnamed_addr constant [27 x i8] c"komeda_supported_modifiers\00", align 1
@___asan_gen_.2 = private constant [59 x i8] c"../drivers/gpu/drm/arm/display/komeda/komeda_format_caps.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 61, i32 5 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @komeda_supported_modifiers], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @komeda_supported_modifiers to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @komeda_get_format_caps(ptr nocapture noundef readonly %table, i32 noundef %fourcc, i64 noundef %modifier) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i64 %modifier, -16
  %0 = trunc i64 %modifier to i32
  %conv = and i32 %0, 15
  %shl = shl nuw nsw i32 1, %conv
  %1 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp41.not = icmp eq i32 %2, 0
  br i1 %cmp41.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %format_caps = getelementptr inbounds %struct.komeda_format_caps_table, ptr %table, i32 0, i32 1
  %3 = ptrtoint ptr %format_caps to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %format_caps, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %modifier)
  %cmp6 = icmp eq i64 %modifier, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %id.042 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %fourcc3 = getelementptr %struct.komeda_format_caps, ptr %4, i32 %id.042, i32 1
  %5 = ptrtoint ptr %fourcc3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fourcc3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %fourcc)
  %cmp4.not = icmp eq i32 %6, %fourcc
  br i1 %cmp4.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  br i1 %cmp6, label %land.lhs.true, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %supported_afbc_layouts = getelementptr %struct.komeda_format_caps, ptr %4, i32 %id.042, i32 4
  %7 = ptrtoint ptr %supported_afbc_layouts to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %supported_afbc_layouts, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp8 = icmp eq i32 %8, 0
  br i1 %cmp8, label %cleanup.split.loop.exit36, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end11:                                         ; preds = %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %supported_afbc_features = getelementptr %struct.komeda_format_caps, ptr %4, i32 %id.042, i32 5
  %9 = ptrtoint ptr %supported_afbc_features to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %supported_afbc_features, align 8
  %and12 = and i64 %10, %and
  call void @__sanitizer_cov_trace_cmp8(i64 %and12, i64 %and)
  %cmp13 = icmp eq i64 %and12, %and
  br i1 %cmp13, label %land.lhs.true15, label %if.end11.for.inc_crit_edge

if.end11.for.inc_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true15:                                  ; preds = %if.end11
  %supported_afbc_layouts16 = getelementptr %struct.komeda_format_caps, ptr %4, i32 %id.042, i32 4
  %11 = ptrtoint ptr %supported_afbc_layouts16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %supported_afbc_layouts16, align 8
  %and17 = and i32 %12, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool.not = icmp eq i32 %and17, 0
  br i1 %tobool.not, label %land.lhs.true15.for.inc_crit_edge, label %cleanup.split.loop.exit34

land.lhs.true15.for.inc_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true15.for.inc_crit_edge, %if.end11.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %id.042, 1
  %exitcond.not = icmp eq i32 %inc, %2
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.split.loop.exit34:                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.le38 = getelementptr %struct.komeda_format_caps, ptr %4, i32 %id.042
  br label %cleanup

cleanup.split.loop.exit36:                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.le = getelementptr %struct.komeda_format_caps, ptr %4, i32 %id.042
  br label %cleanup

cleanup:                                          ; preds = %cleanup.split.loop.exit36, %cleanup.split.loop.exit34, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %arrayidx.le38, %cleanup.split.loop.exit34 ], [ %arrayidx.le, %cleanup.split.loop.exit36 ], [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @komeda_get_afbc_format_bpp(ptr nocapture noundef readonly %info, i64 noundef %modifier) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %info, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %sw.default [
    i32 942691673, label %entry.sw.epilog_crit_edge
    i32 808539481, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = getelementptr inbounds %struct.drm_format_info, ptr %info, i32 0, i32 3
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 2
  %conv = zext i8 %5 to i32
  %mul = shl nuw nsw i32 %conv, 3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %entry.sw.epilog_crit_edge
  %bpp.0 = phi i32 [ %mul, %sw.default ], [ 15, %sw.bb1 ], [ 12, %entry.sw.epilog_crit_edge ]
  ret i32 %bpp.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @komeda_format_mod_supported(ptr nocapture noundef readonly %table, i32 noundef %layer_type, i32 noundef %fourcc, i64 noundef %modifier, i32 noundef %rot) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i64 %modifier, -16
  %0 = trunc i64 %modifier to i32
  %conv.i = and i32 %0, 15
  %shl.i = shl nuw nsw i32 1, %conv.i
  %1 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp41.not.i = icmp eq i32 %2, 0
  br i1 %cmp41.not.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %format_caps.i = getelementptr inbounds %struct.komeda_format_caps_table, ptr %table, i32 0, i32 1
  %3 = ptrtoint ptr %format_caps.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %format_caps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %modifier)
  %cmp6.i = icmp eq i64 %modifier, 0
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %id.042.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %fourcc3.i = getelementptr %struct.komeda_format_caps, ptr %4, i32 %id.042.i, i32 1
  %5 = ptrtoint ptr %fourcc3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fourcc3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %fourcc)
  %cmp4.not.i = icmp eq i32 %6, %fourcc
  br i1 %cmp4.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  br i1 %cmp6.i, label %land.lhs.true.i, label %if.end.i.if.end11.i_crit_edge

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %supported_afbc_layouts.i = getelementptr %struct.komeda_format_caps, ptr %4, i32 %id.042.i, i32 4
  %7 = ptrtoint ptr %supported_afbc_layouts.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %supported_afbc_layouts.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp8.i = icmp eq i32 %8, 0
  br i1 %cmp8.i, label %land.lhs.true.i.komeda_get_format_caps.exit_crit_edge, label %land.lhs.true.i.if.end11.i_crit_edge

land.lhs.true.i.if.end11.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

land.lhs.true.i.komeda_get_format_caps.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %komeda_get_format_caps.exit

if.end11.i:                                       ; preds = %land.lhs.true.i.if.end11.i_crit_edge, %if.end.i.if.end11.i_crit_edge
  %supported_afbc_features.i = getelementptr %struct.komeda_format_caps, ptr %4, i32 %id.042.i, i32 5
  %9 = ptrtoint ptr %supported_afbc_features.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %supported_afbc_features.i, align 8
  %and12.i = and i64 %10, %and.i
  call void @__sanitizer_cov_trace_cmp8(i64 %and12.i, i64 %and.i)
  %cmp13.i = icmp eq i64 %and12.i, %and.i
  br i1 %cmp13.i, label %land.lhs.true15.i, label %if.end11.i.for.inc.i_crit_edge

if.end11.i.for.inc.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true15.i:                                ; preds = %if.end11.i
  %supported_afbc_layouts16.i = getelementptr %struct.komeda_format_caps, ptr %4, i32 %id.042.i, i32 4
  %11 = ptrtoint ptr %supported_afbc_layouts16.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %supported_afbc_layouts16.i, align 8
  %and17.i = and i32 %12, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool.not.i, label %land.lhs.true15.i.for.inc.i_crit_edge, label %land.lhs.true15.i.komeda_get_format_caps.exit_crit_edge

land.lhs.true15.i.komeda_get_format_caps.exit_crit_edge: ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %komeda_get_format_caps.exit

land.lhs.true15.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true15.i.for.inc.i_crit_edge, %if.end11.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %id.042.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %2
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

komeda_get_format_caps.exit:                      ; preds = %land.lhs.true15.i.komeda_get_format_caps.exit_crit_edge, %land.lhs.true.i.komeda_get_format_caps.exit_crit_edge
  %retval.0.i = getelementptr %struct.komeda_format_caps, ptr %4, i32 %id.042.i
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %komeda_get_format_caps.exit.cleanup_crit_edge, label %if.end

komeda_get_format_caps.exit.cleanup_crit_edge:    ; preds = %komeda_get_format_caps.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %komeda_get_format_caps.exit
  %supported_layer_types = getelementptr %struct.komeda_format_caps, ptr %4, i32 %id.042.i, i32 2
  %13 = ptrtoint ptr %supported_layer_types to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %supported_layer_types, align 8
  %and = and i32 %14, %layer_type
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %format_mod_supported = getelementptr inbounds %struct.komeda_format_caps_table, ptr %table, i32 0, i32 2
  %15 = ptrtoint ptr %format_mod_supported to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %format_mod_supported, align 4
  %tobool4.not = icmp eq ptr %16, null
  br i1 %tobool4.not, label %if.end3.cleanup_crit_edge, label %if.then5

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call zeroext i1 %16(ptr noundef nonnull %retval.0.i, i32 noundef %layer_type, i64 noundef %modifier, i32 noundef %rot) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %komeda_get_format_caps.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %call7, %if.then5 ], [ false, %komeda_get_format_caps.exit.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ true, %if.end3.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %for.inc.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @komeda_get_layer_fourcc_list(ptr nocapture noundef readonly %table, i32 noundef %layer_type, ptr noundef writeonly %n_fmts) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %table, align 4
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 4) #6
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %entry.cleanup_crit_edge, label %if.end7.i.i, !prof !11

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  %4 = extractvalue { i32, i1 } %2, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i.i
  %5 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp48.not = icmp eq i32 %6, 0
  br i1 %cmp48.not, label %for.cond.preheader.for.end21_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end21_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end21

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %format_caps = getelementptr inbounds %struct.komeda_format_caps_table, ptr %table, i32 0, i32 1
  %7 = ptrtoint ptr %format_caps to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %format_caps, align 4
  %9 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %table, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc19.for.body_crit_edge, %for.body.lr.ph
  %n.051 = phi i32 [ 0, %for.body.lr.ph ], [ %n.1, %for.inc19.for.body_crit_edge ]
  %i.049 = phi i32 [ 0, %for.body.lr.ph ], [ %inc20, %for.inc19.for.body_crit_edge ]
  %supported_layer_types = getelementptr %struct.komeda_format_caps, ptr %8, i32 %i.049, i32 2
  %11 = ptrtoint ptr %supported_layer_types to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %supported_layer_types, align 8
  %and = and i32 %12, %layer_type
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %for.body.for.inc19_crit_edge, label %lor.lhs.false

for.body.for.inc19_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc19

lor.lhs.false:                                    ; preds = %for.body
  %fourcc = getelementptr %struct.komeda_format_caps, ptr %8, i32 %i.049, i32 1
  %13 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fourcc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp3 = icmp eq i32 %14, 0
  br i1 %cmp3, label %lor.lhs.false.for.inc19_crit_edge, label %lor.lhs.false.for.cond6_crit_edge

lor.lhs.false.for.cond6_crit_edge:                ; preds = %lor.lhs.false
  br label %for.cond6

lor.lhs.false.for.inc19_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc19

for.cond6:                                        ; preds = %for.body8.for.cond6_crit_edge, %lor.lhs.false.for.cond6_crit_edge
  %j.0.in = phi i32 [ %j.0, %for.body8.for.cond6_crit_edge ], [ %n.051, %lor.lhs.false.for.cond6_crit_edge ]
  %j.0 = add i32 %j.0.in, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %j.0)
  %cmp7 = icmp sgt i32 %j.0, -1
  br i1 %cmp7, label %for.body8, label %if.then15

for.body8:                                        ; preds = %for.cond6
  %arrayidx9 = getelementptr i32, ptr %call8.i.i, i32 %j.0
  %15 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx9, align 4
  %cmp11 = icmp eq i32 %16, %14
  br i1 %cmp11, label %for.body8.for.inc19_crit_edge, label %for.body8.for.cond6_crit_edge

for.body8.for.cond6_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond6

for.body8.for.inc19_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc19

if.then15:                                        ; preds = %for.cond6
  call void @__sanitizer_cov_trace_pc() #8
  %inc = add i32 %n.051, 1
  %arrayidx17 = getelementptr i32, ptr %call8.i.i, i32 %n.051
  %17 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %14, ptr %arrayidx17, align 4
  br label %for.inc19

for.inc19:                                        ; preds = %if.then15, %for.body8.for.inc19_crit_edge, %lor.lhs.false.for.inc19_crit_edge, %for.body.for.inc19_crit_edge
  %n.1 = phi i32 [ %n.051, %lor.lhs.false.for.inc19_crit_edge ], [ %inc, %if.then15 ], [ %n.051, %for.body.for.inc19_crit_edge ], [ %n.051, %for.body8.for.inc19_crit_edge ]
  %inc20 = add nuw i32 %i.049, 1
  %cmp = icmp ult i32 %inc20, %10
  br i1 %cmp, label %for.inc19.for.body_crit_edge, label %for.inc19.for.end21_crit_edge

for.inc19.for.end21_crit_edge:                    ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end21

for.inc19.for.body_crit_edge:                     ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end21:                                        ; preds = %for.inc19.for.end21_crit_edge, %for.cond.preheader.for.end21_crit_edge
  %n.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end21_crit_edge ], [ %n.1, %for.inc19.for.end21_crit_edge ]
  %tobool22.not = icmp eq ptr %n_fmts, null
  br i1 %tobool22.not, label %for.end21.cleanup_crit_edge, label %if.then23

for.end21.cleanup_crit_edge:                      ; preds = %for.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then23:                                        ; preds = %for.end21
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %n_fmts to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %n.0.lcssa, ptr %n_fmts, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %for.end21.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end7.i.i.cleanup_crit_edge ], [ %call8.i.i, %if.then23 ], [ %call8.i.i, %for.end21.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @komeda_put_fourcc_list(ptr noundef %fourcc_list) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %fourcc_list) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @komeda_supported_modifiers, !1, !"komeda_supported_modifiers", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_format_caps.c", i32 61, i32 5}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"branch_weights", i32 1, i32 2000}
