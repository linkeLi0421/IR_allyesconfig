; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/core/cfbcopyarea.c_pt.bc'
source_filename = "../drivers/video/fbdev/core/cfbcopyarea.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+cfb_copyarea\22, \22a\22\09"
module asm "\09.weak\09__crc_cfb_copyarea\09\09\09\09"
module asm "\09.long\09__crc_cfb_copyarea\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfb_copyarea:\09\09\09\09\09"
module asm "\09.asciz \09\22cfb_copyarea\22\09\09\09\09\09"
module asm "__kstrtabns_cfb_copyarea:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.78, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.78 = type { ptr }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_cfb_copyarea = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfb_copyarea = external dso_local constant [0 x i8], align 1
@__ksymtab_cfb_copyarea = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfb_copyarea to i32), ptr @__kstrtab_cfb_copyarea, ptr @__kstrtabns_cfb_copyarea }, section "___ksymtab+cfb_copyarea", align 4
@__UNIQUE_ID_author301 = internal constant [57 x i8] c"cfbcopyarea.author=James Simmons <jsimmons@users.sf.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description302 = internal constant [62 x i8] c"cfbcopyarea.description=Generic software accelerated copyarea\00", section ".modinfo", align 1
@__UNIQUE_ID_file303 = internal constant [54 x i8] c"cfbcopyarea.file=drivers/video/fbdev/core/cfbcopyarea\00", section ".modinfo", align 1
@__UNIQUE_ID_license304 = internal constant [24 x i8] c"cfbcopyarea.license=GPL\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file303, ptr @__UNIQUE_ID_license304, ptr @__ksymtab_cfb_copyarea], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cfb_copyarea(ptr noundef %p, ptr nocapture noundef readonly %area) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %area, align 4
  %dy2 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 1
  %2 = ptrtoint ptr %dy2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dy2, align 4
  %sx3 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 4
  %4 = ptrtoint ptr %sx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sx3, align 4
  %sy4 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 5
  %6 = ptrtoint ptr %sy4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sy4, align 4
  %height5 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 3
  %8 = ptrtoint ptr %height5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height5, align 4
  %width6 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 2
  %10 = ptrtoint ptr %width6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %width6, align 4
  %line_length = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 7, i32 9
  %12 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %line_length, align 4
  %mul = shl i32 %13, 3
  %bits_per_pixel.i = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 6, i32 6
  %14 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bits_per_pixel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %15)
  %cmp.i = icmp ult i32 %15, 8
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.fb_compute_bswapmask.exit_crit_edge

entry.fb_compute_bswapmask.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %fb_compute_bswapmask.exit

land.lhs.true.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  %nonstd.i = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 6, i32 12
  %16 = ptrtoint ptr %nonstd.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nonstd.i, align 4
  %and.i = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %add.i = sub nuw nsw i32 8, %15
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 %add.i
  br label %fb_compute_bswapmask.exit

fb_compute_bswapmask.exit:                        ; preds = %land.lhs.true.i, %entry.fb_compute_bswapmask.exit_crit_edge
  %bswapmask.0.i = phi i32 [ 0, %entry.fb_compute_bswapmask.exit_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %state = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 28
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not = icmp eq i32 %19, 0
  br i1 %cmp.not, label %if.end, label %fb_compute_bswapmask.exit.cleanup_crit_edge

fb_compute_bswapmask.exit.cleanup_crit_edge:      ; preds = %fb_compute_bswapmask.exit
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

if.end:                                           ; preds = %fb_compute_bswapmask.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %7)
  %cmp7 = icmp eq i32 %3, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %5)
  %cmp8 = icmp ugt i32 %1, %5
  %or.cond = select i1 %cmp7, i1 %cmp8, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %7)
  %cmp9 = icmp ugt i32 %3, %7
  %or.cond140 = or i1 %cmp9, %or.cond
  %add = select i1 %or.cond140, i32 %9, i32 0
  %dy.0 = add i32 %add, %3
  %sy.0 = add i32 %add, %7
  %20 = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 25
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %23 = ptrtoint ptr %22 to i32
  %and = and i32 %23, -4
  %24 = inttoptr i32 %and to ptr
  %and14 = shl i32 %23, 3
  %mul15 = and i32 %and14, 24
  %mul16 = mul i32 %dy.0, %mul
  %mul17 = mul i32 %15, %1
  %add18 = add i32 %mul16, %mul17
  %add19 = add i32 %add18, %mul15
  %mul20 = mul i32 %sy.0, %mul
  %mul23 = mul i32 %15, %5
  %add24 = add i32 %mul20, %mul23
  %add25 = add i32 %add24, %mul15
  %fbops = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 20
  %25 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fbops, align 4
  %fb_sync = getelementptr inbounds %struct.fb_ops, ptr %26, i32 0, i32 15
  %27 = ptrtoint ptr %fb_sync to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fb_sync, align 4
  %tobool.not = icmp eq ptr %28, null
  br i1 %tobool.not, label %if.end.if.end30_crit_edge, label %if.then26

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end30

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #3
  %call29 = tail call i32 %28(ptr noundef %p) #1
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.end.if.end30_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool33.not246 = icmp eq i32 %9, 0
  br i1 %or.cond140, label %while.cond.preheader, label %while.cond42.preheader

while.cond42.preheader:                           ; preds = %if.end30
  br i1 %tobool33.not246, label %while.cond42.preheader.cleanup_crit_edge, label %while.body45.lr.ph

while.cond42.preheader.cleanup_crit_edge:         ; preds = %while.cond42.preheader
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

while.body45.lr.ph:                               ; preds = %while.cond42.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bswapmask.0.i)
  %tobool.not.i.i146 = icmp eq i32 %bswapmask.0.i, 0
  %flags.i.i.i147 = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 2
  %neg18.i.i156 = xor i32 %bswapmask.0.i, -1
  %and.i87.i = and i32 %bswapmask.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i87.i)
  %tobool.not.i88.i = icmp eq i32 %and.i87.i, 0
  %and1.i93.i = and i32 %bswapmask.0.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i93.i)
  %tobool2.not.i94.i = icmp eq i32 %and1.i93.i, 0
  %and8.i99.i = and i32 %bswapmask.0.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i99.i)
  %tobool9.not.i100.i = icmp eq i32 %and8.i99.i, 0
  br label %while.body45

while.cond.preheader:                             ; preds = %if.end30
  br i1 %tobool33.not246, label %while.cond.preheader.cleanup_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bswapmask.0.i)
  %tobool.not.i.i = icmp eq i32 %bswapmask.0.i, 0
  %flags.i.i.i = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 2
  %neg18.i.i = xor i32 %bswapmask.0.i, -1
  %and.i46.i = and i32 %bswapmask.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i46.i)
  %tobool.not.i47.i = icmp eq i32 %and.i46.i, 0
  %and1.i.i = and i32 %bswapmask.0.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp eq i32 %and1.i.i, 0
  %and8.i.i = and i32 %bswapmask.0.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  br label %while.body

while.body:                                       ; preds = %bitcpy_rev.exit.while.body_crit_edge, %while.body.lr.ph
  %src_idx.0249 = phi i32 [ %add25, %while.body.lr.ph ], [ %sub35, %bitcpy_rev.exit.while.body_crit_edge ]
  %dst_idx.0248 = phi i32 [ %add19, %while.body.lr.ph ], [ %sub34, %bitcpy_rev.exit.while.body_crit_edge ]
  %height.0247 = phi i32 [ %9, %while.body.lr.ph ], [ %dec, %bitcpy_rev.exit.while.body_crit_edge ]
  %dec = add i32 %height.0247, -1
  %sub34 = sub i32 %dst_idx.0248, %mul
  %sub35 = sub i32 %src_idx.0249, %mul
  %div138 = lshr i32 %sub34, 5
  %add.ptr = getelementptr i32, ptr %24, i32 %div138
  %rem = and i32 %sub34, 31
  %div36139 = lshr i32 %sub35, 5
  %add.ptr37 = getelementptr i32, ptr %24, i32 %div36139
  %rem38 = and i32 %sub35, 31
  %29 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bits_per_pixel.i, align 4
  %mul41 = mul i32 %30, %11
  %add.i141 = add i32 %mul41, -1
  %sub.i = add i32 %add.i141, %rem
  %div1.i = lshr i32 %sub.i, 5
  %add.ptr.i = getelementptr i32, ptr %add.ptr, i32 %div1.i
  %sub2.i = add i32 %add.i141, %rem38
  %div32.i = lshr i32 %sub2.i, 5
  %add.ptr4.i = getelementptr i32, ptr %add.ptr37, i32 %div32.i
  %rem.i = and i32 %sub.i, 31
  %rem9.i = and i32 %sub2.i, 31
  %sub10.i = sub nsw i32 %rem.i, %rem9.i
  %add11.i = add nuw nsw i32 %rem.i, 1
  %rem12.i = and i32 %add11.i, 31
  %31 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %32, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i13.i, label %if.else.i.i

if.else.i.i:                                      ; preds = %while.body
  %shl3.i.i = select i1 %tobool.i.not.i.i, i32 255, i32 -16777216
  %and.i.i = and i32 %rem12.i, %bswapmask.0.i
  %shl6.i.i = shl i32 -16777216, %and.i.i
  %shr9.i.i = lshr i32 255, %and.i.i
  %cond11.i.i = select i1 %tobool.i.not.i.i, i32 %shr9.i.i, i32 %shl6.i.i
  %and12.i.i = and i32 %cond11.i.i, %shl3.i.i
  %and19.i.i = and i32 %rem12.i, %neg18.i.i
  br i1 %tobool.i.not.i.i, label %cond.false28.i.i, label %cond.true24.i.i

cond.true24.i.i:                                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #3
  %shr16.i.i = lshr i32 %and12.i.i, %and19.i.i
  %add.i.i = add i32 %rem12.i, %bswapmask.0.i
  %and26.i.i = and i32 %add.i.i, %neg18.i.i
  %shr27.i.i = lshr i32 -1, %and26.i.i
  br label %if.else.i22.i

cond.false28.i.i:                                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #3
  %shl20.i.i = shl i32 %and12.i.i, %and19.i.i
  %add29.i.i = add i32 %rem12.i, %bswapmask.0.i
  %and31.i.i = and i32 %add29.i.i, %neg18.i.i
  %shl32.i.i = shl nsw i32 -1, %and31.i.i
  br label %if.else.i22.i

if.then.i13.i:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #3
  %shr.i.i = lshr i32 -1, %rem12.i
  %shl.i.i = shl nsw i32 -1, %rem12.i
  %cond.i.i = select i1 %tobool.i.not.i.i, i32 %shl.i.i, i32 %shr.i.i
  %shr.i10.i = lshr i32 -1, %rem
  %shl.i11.i = shl nsw i32 -1, %rem
  %cond.i12.i = select i1 %tobool.i.not.i.i, i32 %shl.i11.i, i32 %shr.i10.i
  br label %fb_shifted_pixels_mask_long.exit38.i

if.else.i22.i:                                    ; preds = %cond.false28.i.i, %cond.true24.i.i
  %shl3.i14.i = phi i32 [ 255, %cond.false28.i.i ], [ -16777216, %cond.true24.i.i ]
  %cond2273.i.i = phi i32 [ %shl20.i.i, %cond.false28.i.i ], [ %shr16.i.i, %cond.true24.i.i ]
  %cond34.i.i = phi i32 [ %shl32.i.i, %cond.false28.i.i ], [ %shr27.i.i, %cond.true24.i.i ]
  %or.i.i = or i32 %cond34.i.i, %cond2273.i.i
  %and.i15.i = and i32 %rem, %bswapmask.0.i
  %shl6.i16.i = shl i32 -16777216, %and.i15.i
  %shr9.i17.i = lshr i32 255, %and.i15.i
  %cond11.i18.i = select i1 %tobool.i.not.i.i, i32 %shr9.i17.i, i32 %shl6.i16.i
  %and12.i19.i = and i32 %shl3.i14.i, %cond11.i18.i
  %and19.i21.i = and i32 %rem, %neg18.i.i
  br i1 %tobool.i.not.i.i, label %cond.false28.i32.i, label %cond.true24.i27.i

cond.true24.i27.i:                                ; preds = %if.else.i22.i
  call void @__sanitizer_cov_trace_pc() #3
  %shr16.i23.i = lshr i32 %and12.i19.i, %and19.i21.i
  %add.i24.i = add i32 %rem, %bswapmask.0.i
  %and26.i25.i = and i32 %add.i24.i, %neg18.i.i
  %shr27.i26.i = lshr i32 -1, %and26.i25.i
  br label %cond.end33.i36.i

cond.false28.i32.i:                               ; preds = %if.else.i22.i
  call void @__sanitizer_cov_trace_pc() #3
  %shl20.i28.i = shl i32 %and12.i19.i, %and19.i21.i
  %add29.i29.i = add i32 %rem, %bswapmask.0.i
  %and31.i30.i = and i32 %add29.i29.i, %neg18.i.i
  %shl32.i31.i = shl nsw i32 -1, %and31.i30.i
  br label %cond.end33.i36.i

cond.end33.i36.i:                                 ; preds = %cond.false28.i32.i, %cond.true24.i27.i
  %cond2273.i33.i = phi i32 [ %shr16.i23.i, %cond.true24.i27.i ], [ %shl20.i28.i, %cond.false28.i32.i ]
  %cond34.i34.i = phi i32 [ %shr27.i26.i, %cond.true24.i27.i ], [ %shl32.i31.i, %cond.false28.i32.i ]
  %or.i35.i = or i32 %cond34.i34.i, %cond2273.i33.i
  br label %fb_shifted_pixels_mask_long.exit38.i

fb_shifted_pixels_mask_long.exit38.i:             ; preds = %cond.end33.i36.i, %if.then.i13.i
  %mask.0.i206.i = phi i32 [ %or.i.i, %cond.end33.i36.i ], [ %cond.i.i, %if.then.i13.i ]
  %mask.0.i37.i = phi i32 [ %or.i35.i, %cond.end33.i36.i ], [ %cond.i12.i, %if.then.i13.i ]
  %neg208.i = xor i32 %mask.0.i206.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i, i32 %rem9.i)
  %tobool.not.i142 = icmp eq i32 %rem.i, %rem9.i
  br i1 %tobool.not.i142, label %if.then.i, label %if.else75.i

if.then.i:                                        ; preds = %fb_shifted_pixels_mask_long.exit38.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul41, i32 %add11.i)
  %cmp.not.i = icmp ugt i32 %mul41, %add11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mask.0.i206.i)
  %tobool25.not.i = icmp eq i32 %mask.0.i206.i, -1
  br i1 %cmp.not.i, label %if.else.i, label %if.then19.i

if.then19.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #3
  %and.i143 = select i1 %tobool25.not.i, i32 -1, i32 %neg208.i
  %spec.select.i144 = and i32 %and.i143, %mask.0.i37.i
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #1, !srcloc !18
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #1, !srcloc !18
  %xor.i.i = xor i32 %34, %33
  %and.i39.i = and i32 %spec.select.i144, %xor.i.i
  %xor1.i.i = xor i32 %and.i39.i, %34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %xor1.i.i) #1, !srcloc !19
  br label %bitcpy_rev.exit

if.else.i:                                        ; preds = %if.then.i
  br i1 %tobool25.not.i, label %if.else.i.if.end33.i_crit_edge, label %if.then26.i

if.else.i.if.end33.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end33.i

if.then26.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #3
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #1, !srcloc !18
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #1, !srcloc !18
  %xor.i40.i = xor i32 %36, %35
  %37 = and i32 %xor.i40.i, %mask.0.i206.i
  %xor1.i42.i = xor i32 %37, %35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %xor1.i42.i) #1, !srcloc !19
  %incdec.ptr.i = getelementptr i32, ptr %add.ptr.i, i32 -1
  %incdec.ptr30.i = getelementptr i32, ptr %add.ptr4.i, i32 -1
  %sub32.i = sub i32 %mul41, %add11.i
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then26.i, %if.else.i.if.end33.i_crit_edge
  %src.addr.0.i = phi ptr [ %incdec.ptr30.i, %if.then26.i ], [ %add.ptr4.i, %if.else.i.if.end33.i_crit_edge ]
  %n.addr.0.i = phi i32 [ %sub32.i, %if.then26.i ], [ %mul41, %if.else.i.if.end33.i_crit_edge ]
  %dst.addr.0.i = phi ptr [ %incdec.ptr.i, %if.then26.i ], [ %add.ptr.i, %if.else.i.if.end33.i_crit_edge ]
  %div343.i = lshr i32 %n.addr.0.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %n.addr.0.i)
  %cmp35230.i = icmp ugt i32 %n.addr.0.i, 255
  br i1 %cmp35230.i, label %if.end33.i.while.body.i_crit_edge, label %if.end33.i.while.cond61.preheader.i_crit_edge

if.end33.i.while.cond61.preheader.i_crit_edge:    ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.cond61.preheader.i

if.end33.i.while.body.i_crit_edge:                ; preds = %if.end33.i
  br label %while.body.i

while.cond61.preheader.i:                         ; preds = %while.body.i.while.cond61.preheader.i_crit_edge, %if.end33.i.while.cond61.preheader.i_crit_edge
  %src.addr.1.lcssa.i = phi ptr [ %src.addr.0.i, %if.end33.i.while.cond61.preheader.i_crit_edge ], [ %incdec.ptr57.i, %while.body.i.while.cond61.preheader.i_crit_edge ]
  %n.addr.1.lcssa.i = phi i32 [ %div343.i, %if.end33.i.while.cond61.preheader.i_crit_edge ], [ %sub60.i, %while.body.i.while.cond61.preheader.i_crit_edge ]
  %dst.addr.1.lcssa.i = phi ptr [ %dst.addr.0.i, %if.end33.i.while.cond61.preheader.i_crit_edge ], [ %incdec.ptr59.i, %while.body.i.while.cond61.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.1.lcssa.i)
  %tobool62.not237.i = icmp eq i32 %n.addr.1.lcssa.i, 0
  br i1 %tobool62.not237.i, label %while.cond61.preheader.i.while.end67.i_crit_edge, label %while.cond61.preheader.i.while.body63.i_crit_edge

while.cond61.preheader.i.while.body63.i_crit_edge: ; preds = %while.cond61.preheader.i
  br label %while.body63.i

while.cond61.preheader.i.while.end67.i_crit_edge: ; preds = %while.cond61.preheader.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.end67.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end33.i.while.body.i_crit_edge
  %dst.addr.1233.i = phi ptr [ %incdec.ptr59.i, %while.body.i.while.body.i_crit_edge ], [ %dst.addr.0.i, %if.end33.i.while.body.i_crit_edge ]
  %n.addr.1232.i = phi i32 [ %sub60.i, %while.body.i.while.body.i_crit_edge ], [ %div343.i, %if.end33.i.while.body.i_crit_edge ]
  %src.addr.1231.i = phi ptr [ %incdec.ptr57.i, %while.body.i.while.body.i_crit_edge ], [ %src.addr.0.i, %if.end33.i.while.body.i_crit_edge ]
  %incdec.ptr36.i = getelementptr i32, ptr %src.addr.1231.i, i32 -1
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %src.addr.1231.i) #1, !srcloc !18
  %incdec.ptr38.i = getelementptr i32, ptr %dst.addr.1233.i, i32 -1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.addr.1233.i, i32 %38) #1, !srcloc !19
  %incdec.ptr39.i = getelementptr i32, ptr %src.addr.1231.i, i32 -2
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr36.i) #1, !srcloc !18
  %incdec.ptr41.i = getelementptr i32, ptr %dst.addr.1233.i, i32 -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr38.i, i32 %39) #1, !srcloc !19
  %incdec.ptr42.i = getelementptr i32, ptr %src.addr.1231.i, i32 -3
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr39.i) #1, !srcloc !18
  %incdec.ptr44.i = getelementptr i32, ptr %dst.addr.1233.i, i32 -3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr41.i, i32 %40) #1, !srcloc !19
  %incdec.ptr45.i = getelementptr i32, ptr %src.addr.1231.i, i32 -4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr42.i) #1, !srcloc !18
  %incdec.ptr47.i = getelementptr i32, ptr %dst.addr.1233.i, i32 -4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr44.i, i32 %41) #1, !srcloc !19
  %incdec.ptr48.i = getelementptr i32, ptr %src.addr.1231.i, i32 -5
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr45.i) #1, !srcloc !18
  %incdec.ptr50.i = getelementptr i32, ptr %dst.addr.1233.i, i32 -5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr47.i, i32 %42) #1, !srcloc !19
  %incdec.ptr51.i = getelementptr i32, ptr %src.addr.1231.i, i32 -6
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr48.i) #1, !srcloc !18
  %incdec.ptr53.i = getelementptr i32, ptr %dst.addr.1233.i, i32 -6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr50.i, i32 %43) #1, !srcloc !19
  %incdec.ptr54.i = getelementptr i32, ptr %src.addr.1231.i, i32 -7
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr51.i) #1, !srcloc !18
  %incdec.ptr56.i = getelementptr i32, ptr %dst.addr.1233.i, i32 -7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr53.i, i32 %44) #1, !srcloc !19
  %incdec.ptr57.i = getelementptr i32, ptr %src.addr.1231.i, i32 -8
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr54.i) #1, !srcloc !18
  %incdec.ptr59.i = getelementptr i32, ptr %dst.addr.1233.i, i32 -8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr56.i, i32 %45) #1, !srcloc !19
  %sub60.i = add i32 %n.addr.1232.i, -8
  %cmp35.i = icmp ugt i32 %sub60.i, 7
  br i1 %cmp35.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.cond61.preheader.i_crit_edge

while.body.i.while.cond61.preheader.i_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.cond61.preheader.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.body.i

while.body63.i:                                   ; preds = %while.body63.i.while.body63.i_crit_edge, %while.cond61.preheader.i.while.body63.i_crit_edge
  %dst.addr.2240.i = phi ptr [ %incdec.ptr66.i, %while.body63.i.while.body63.i_crit_edge ], [ %dst.addr.1.lcssa.i, %while.cond61.preheader.i.while.body63.i_crit_edge ]
  %n.addr.2239.i = phi i32 [ %dec.i, %while.body63.i.while.body63.i_crit_edge ], [ %n.addr.1.lcssa.i, %while.cond61.preheader.i.while.body63.i_crit_edge ]
  %src.addr.2238.i = phi ptr [ %incdec.ptr64.i, %while.body63.i.while.body63.i_crit_edge ], [ %src.addr.1.lcssa.i, %while.cond61.preheader.i.while.body63.i_crit_edge ]
  %dec.i = add i32 %n.addr.2239.i, -1
  %incdec.ptr64.i = getelementptr i32, ptr %src.addr.2238.i, i32 -1
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %src.addr.2238.i) #1, !srcloc !18
  %incdec.ptr66.i = getelementptr i32, ptr %dst.addr.2240.i, i32 -1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.addr.2240.i, i32 %46) #1, !srcloc !19
  %tobool62.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool62.not.i, label %while.body63.i.while.end67.i_crit_edge, label %while.body63.i.while.body63.i_crit_edge

while.body63.i.while.body63.i_crit_edge:          ; preds = %while.body63.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.body63.i

while.body63.i.while.end67.i_crit_edge:           ; preds = %while.body63.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.end67.i

while.end67.i:                                    ; preds = %while.body63.i.while.end67.i_crit_edge, %while.cond61.preheader.i.while.end67.i_crit_edge
  %src.addr.2.lcssa.i = phi ptr [ %src.addr.1.lcssa.i, %while.cond61.preheader.i.while.end67.i_crit_edge ], [ %incdec.ptr64.i, %while.body63.i.while.end67.i_crit_edge ]
  %dst.addr.2.lcssa.i = phi ptr [ %dst.addr.1.lcssa.i, %while.cond61.preheader.i.while.end67.i_crit_edge ], [ %incdec.ptr66.i, %while.body63.i.while.end67.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mask.0.i37.i)
  %cmp68.not.i = icmp eq i32 %mask.0.i37.i, -1
  br i1 %cmp68.not.i, label %while.end67.i.bitcpy_rev.exit_crit_edge, label %if.then69.i

while.end67.i.bitcpy_rev.exit_crit_edge:          ; preds = %while.end67.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %bitcpy_rev.exit

if.then69.i:                                      ; preds = %while.end67.i
  call void @__sanitizer_cov_trace_pc() #3
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %src.addr.2.lcssa.i) #1, !srcloc !18
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dst.addr.2.lcssa.i) #1, !srcloc !18
  %xor.i43.i = xor i32 %48, %47
  %and.i44.i = and i32 %xor.i43.i, %mask.0.i37.i
  %xor1.i45.i = xor i32 %and.i44.i, %48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.addr.2.lcssa.i, i32 %xor1.i45.i) #1, !srcloc !19
  br label %bitcpy_rev.exit

if.else75.i:                                      ; preds = %fb_shifted_pixels_mask_long.exit38.i
  %and77.i = and i32 %sub10.i, 31
  %sub78.i = sub nsw i32 0, %sub10.i
  %and80.i = and i32 %sub78.i, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %mul41, i32 %add11.i)
  %cmp82.not.i = icmp ugt i32 %mul41, %add11.i
  br i1 %cmp82.not.i, label %if.else106.i, label %if.then83.i

if.then83.i:                                      ; preds = %if.else75.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mask.0.i206.i)
  %tobool84.not.i = icmp eq i32 %mask.0.i206.i, -1
  %and86.i = select i1 %tobool84.not.i, i32 -1, i32 %neg208.i
  %spec.select5.i = and i32 %and86.i, %mask.0.i37.i
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #1, !srcloc !18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub10.i)
  %cmp89.i = icmp slt i32 %sub10.i, 0
  br i1 %cmp89.i, label %if.then90.i, label %if.else91.i

if.then90.i:                                      ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #3
  %shr.i = lshr i32 %49, %and80.i
  br label %if.end102.i

if.else91.i:                                      ; preds = %if.then83.i
  %add92.i = add nuw nsw i32 %rem9.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add92.i, i32 %mul41)
  %cmp93.not.i = icmp ult i32 %add92.i, %mul41
  br i1 %cmp93.not.i, label %if.else95.i, label %if.then94.i

if.then94.i:                                      ; preds = %if.else91.i
  call void @__sanitizer_cov_trace_pc() #3
  %shl.i = shl i32 %49, %and77.i
  br label %if.end102.i

if.else95.i:                                      ; preds = %if.else91.i
  call void @__sanitizer_cov_trace_pc() #3
  %add.ptr96.i = getelementptr i32, ptr %add.ptr4.i, i32 -1
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr96.i) #1, !srcloc !18
  %shr.i48.i = lshr i32 %50, 1
  %shl.i49.i = shl i32 %50, 1
  %51 = and i32 %shr.i48.i, 1431655765
  %52 = and i32 %shl.i49.i, -1431655766
  %xor1.i.i.i = or i32 %51, %52
  %val.addr.0.i.i = select i1 %tobool.not.i47.i, i32 %50, i32 %xor1.i.i.i
  %shr4.i.i = lshr i32 %val.addr.0.i.i, 2
  %shl5.i.i = shl i32 %val.addr.0.i.i, 2
  %53 = and i32 %shr4.i.i, 858993459
  %54 = and i32 %shl5.i.i, -858993460
  %xor1.i25.i.i = or i32 %53, %54
  %val.addr.1.i.i = select i1 %tobool2.not.i.i, i32 %val.addr.0.i.i, i32 %xor1.i25.i.i
  %shr11.i.i = lshr i32 %val.addr.1.i.i, 4
  %shl12.i.i = shl i32 %val.addr.1.i.i, 4
  %55 = and i32 %shr11.i.i, 252645135
  %56 = and i32 %shl12.i.i, -252645136
  %xor1.i28.i.i = or i32 %55, %56
  %val.addr.2.i.i = select i1 %tobool9.not.i.i, i32 %val.addr.1.i.i, i32 %xor1.i28.i.i
  %shl99.i = shl i32 %49, %and77.i
  %shr100.i = lshr i32 %val.addr.2.i.i, %and80.i
  %or.i = or i32 %shr100.i, %shl99.i
  br label %if.end102.i

if.end102.i:                                      ; preds = %if.else95.i, %if.then94.i, %if.then90.i
  %d0.0.i = phi i32 [ %shr.i, %if.then90.i ], [ %shl.i, %if.then94.i ], [ %or.i, %if.else95.i ]
  %shr.i52.i = lshr i32 %d0.0.i, 1
  %shl.i53.i = shl i32 %d0.0.i, 1
  %57 = and i32 %shr.i52.i, 1431655765
  %58 = and i32 %shl.i53.i, -1431655766
  %xor1.i.i54.i = or i32 %57, %58
  %val.addr.0.i55.i = select i1 %tobool.not.i47.i, i32 %d0.0.i, i32 %xor1.i.i54.i
  %shr4.i58.i = lshr i32 %val.addr.0.i55.i, 2
  %shl5.i59.i = shl i32 %val.addr.0.i55.i, 2
  %59 = and i32 %shr4.i58.i, 858993459
  %60 = and i32 %shl5.i59.i, -858993460
  %xor1.i25.i60.i = or i32 %59, %60
  %val.addr.1.i61.i = select i1 %tobool2.not.i.i, i32 %val.addr.0.i55.i, i32 %xor1.i25.i60.i
  %shr11.i64.i = lshr i32 %val.addr.1.i61.i, 4
  %shl12.i65.i = shl i32 %val.addr.1.i61.i, 4
  %61 = and i32 %shr11.i64.i, 252645135
  %62 = and i32 %shl12.i65.i, -252645136
  %xor1.i28.i66.i = or i32 %61, %62
  %val.addr.2.i67.i = select i1 %tobool9.not.i.i, i32 %val.addr.1.i61.i, i32 %xor1.i28.i66.i
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #1, !srcloc !18
  %xor.i68.i = xor i32 %val.addr.2.i67.i, %63
  %and.i69.i = and i32 %spec.select5.i, %xor.i68.i
  %xor1.i70.i = xor i32 %and.i69.i, %63
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %xor1.i70.i) #1, !srcloc !19
  br label %bitcpy_rev.exit

if.else106.i:                                     ; preds = %if.else75.i
  %incdec.ptr107.i = getelementptr i32, ptr %add.ptr4.i, i32 -1
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #1, !srcloc !18
  %shr.i73.i = lshr i32 %64, 1
  %shl.i74.i = shl i32 %64, 1
  %65 = and i32 %shr.i73.i, 1431655765
  %66 = and i32 %shl.i74.i, -1431655766
  %xor1.i.i75.i = or i32 %65, %66
  %val.addr.0.i76.i = select i1 %tobool.not.i47.i, i32 %64, i32 %xor1.i.i75.i
  %shr4.i79.i = lshr i32 %val.addr.0.i76.i, 2
  %shl5.i80.i = shl i32 %val.addr.0.i76.i, 2
  %67 = and i32 %shr4.i79.i, 858993459
  %68 = and i32 %shl5.i80.i, -858993460
  %xor1.i25.i81.i = or i32 %67, %68
  %val.addr.1.i82.i = select i1 %tobool2.not.i.i, i32 %val.addr.0.i76.i, i32 %xor1.i25.i81.i
  %shr11.i85.i = lshr i32 %val.addr.1.i82.i, 4
  %shl12.i86.i = shl i32 %val.addr.1.i82.i, 4
  %69 = and i32 %shr11.i85.i, 252645135
  %70 = and i32 %shl12.i86.i, -252645136
  %xor1.i28.i87.i = or i32 %69, %70
  %val.addr.2.i88.i = select i1 %tobool9.not.i.i, i32 %val.addr.1.i82.i, i32 %xor1.i28.i87.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub10.i)
  %cmp110.i = icmp slt i32 %sub10.i, 0
  br i1 %cmp110.i, label %if.then111.i, label %if.else113.i

if.then111.i:                                     ; preds = %if.else106.i
  call void @__sanitizer_cov_trace_pc() #3
  %shr112.i = lshr i32 %val.addr.2.i88.i, %and80.i
  br label %if.end120.i

if.else113.i:                                     ; preds = %if.else106.i
  call void @__sanitizer_cov_trace_pc() #3
  %incdec.ptr114.i = getelementptr i32, ptr %incdec.ptr107.i, i32 -1
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr107.i) #1, !srcloc !18
  %shr.i91.i = lshr i32 %71, 1
  %shl.i92.i = shl i32 %71, 1
  %72 = and i32 %shr.i91.i, 1431655765
  %73 = and i32 %shl.i92.i, -1431655766
  %xor1.i.i93.i = or i32 %72, %73
  %val.addr.0.i94.i = select i1 %tobool.not.i47.i, i32 %71, i32 %xor1.i.i93.i
  %shr4.i97.i = lshr i32 %val.addr.0.i94.i, 2
  %shl5.i98.i = shl i32 %val.addr.0.i94.i, 2
  %74 = and i32 %shr4.i97.i, 858993459
  %75 = and i32 %shl5.i98.i, -858993460
  %xor1.i25.i99.i = or i32 %74, %75
  %val.addr.1.i100.i = select i1 %tobool2.not.i.i, i32 %val.addr.0.i94.i, i32 %xor1.i25.i99.i
  %shr11.i103.i = lshr i32 %val.addr.1.i100.i, 4
  %shl12.i104.i = shl i32 %val.addr.1.i100.i, 4
  %76 = and i32 %shr11.i103.i, 252645135
  %77 = and i32 %shl12.i104.i, -252645136
  %xor1.i28.i105.i = or i32 %76, %77
  %val.addr.2.i106.i = select i1 %tobool9.not.i.i, i32 %val.addr.1.i100.i, i32 %xor1.i28.i105.i
  %shl117.i = shl i32 %val.addr.2.i88.i, %and77.i
  %shr118.i = lshr i32 %val.addr.2.i106.i, %and80.i
  %or119.i = or i32 %shr118.i, %shl117.i
  br label %if.end120.i

if.end120.i:                                      ; preds = %if.else113.i, %if.then111.i
  %src.addr.3.i = phi ptr [ %incdec.ptr107.i, %if.then111.i ], [ %incdec.ptr114.i, %if.else113.i ]
  %d0.1.i = phi i32 [ %shr112.i, %if.then111.i ], [ %or119.i, %if.else113.i ]
  %d1.0.i = phi i32 [ %val.addr.2.i88.i, %if.then111.i ], [ %val.addr.2.i106.i, %if.else113.i ]
  %shr.i109.i = lshr i32 %d0.1.i, 1
  %shl.i110.i = shl i32 %d0.1.i, 1
  %78 = and i32 %shr.i109.i, 1431655765
  %79 = and i32 %shl.i110.i, -1431655766
  %xor1.i.i111.i = or i32 %78, %79
  %val.addr.0.i112.i = select i1 %tobool.not.i47.i, i32 %d0.1.i, i32 %xor1.i.i111.i
  %shr4.i115.i = lshr i32 %val.addr.0.i112.i, 2
  %shl5.i116.i = shl i32 %val.addr.0.i112.i, 2
  %80 = and i32 %shr4.i115.i, 858993459
  %81 = and i32 %shl5.i116.i, -858993460
  %xor1.i25.i117.i = or i32 %80, %81
  %val.addr.1.i118.i = select i1 %tobool2.not.i.i, i32 %val.addr.0.i112.i, i32 %xor1.i25.i117.i
  %shr11.i121.i = lshr i32 %val.addr.1.i118.i, 4
  %shl12.i122.i = shl i32 %val.addr.1.i118.i, 4
  %82 = and i32 %shr11.i121.i, 252645135
  %83 = and i32 %shl12.i122.i, -252645136
  %xor1.i28.i123.i = or i32 %82, %83
  %val.addr.2.i124.i = select i1 %tobool9.not.i.i, i32 %val.addr.1.i118.i, i32 %xor1.i28.i123.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mask.0.i206.i)
  %tobool122.not.i = icmp eq i32 %mask.0.i206.i, -1
  br i1 %tobool122.not.i, label %if.then123.i, label %if.else124.i

if.then123.i:                                     ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %val.addr.2.i124.i) #1, !srcloc !19
  br label %if.end127.i

if.else124.i:                                     ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #3
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #1, !srcloc !18
  %xor.i125.i = xor i32 %84, %val.addr.2.i124.i
  %85 = and i32 %xor.i125.i, %mask.0.i206.i
  %xor1.i127.i = xor i32 %85, %val.addr.2.i124.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %xor1.i127.i) #1, !srcloc !19
  br label %if.end127.i

if.end127.i:                                      ; preds = %if.else124.i, %if.then123.i
  %sub130.i = sub i32 %mul41, %add11.i
  %rem131.i = and i32 %sub130.i, 31
  %div1324.i = lshr i32 %sub130.i, 5
  %dst.addr.3211.i = getelementptr i32, ptr %add.ptr.i, i32 -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %sub130.i)
  %cmp134212.i = icmp ugt i32 %sub130.i, 127
  %or.cond213.i = and i1 %tobool.not.i.i, %cmp134212.i
  br i1 %or.cond213.i, label %if.end127.i.while.body136.i_crit_edge, label %if.end127.i.while.cond163.preheader.i_crit_edge

if.end127.i.while.cond163.preheader.i_crit_edge:  ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.cond163.preheader.i

if.end127.i.while.body136.i_crit_edge:            ; preds = %if.end127.i
  br label %while.body136.i

while.cond163.preheader.i:                        ; preds = %while.body136.i.while.cond163.preheader.i_crit_edge, %if.end127.i.while.cond163.preheader.i_crit_edge
  %src.addr.4.lcssa.i = phi ptr [ %src.addr.3.i, %if.end127.i.while.cond163.preheader.i_crit_edge ], [ %incdec.ptr155.i, %while.body136.i.while.cond163.preheader.i_crit_edge ]
  %n.addr.3.lcssa.i = phi i32 [ %div1324.i, %if.end127.i.while.cond163.preheader.i_crit_edge ], [ %sub161.i, %while.body136.i.while.cond163.preheader.i_crit_edge ]
  %d0.2.lcssa.i = phi i32 [ %d1.0.i, %if.end127.i.while.cond163.preheader.i_crit_edge ], [ %89, %while.body136.i.while.cond163.preheader.i_crit_edge ]
  %dst.addr.3.lcssa.i = phi ptr [ %dst.addr.3211.i, %if.end127.i.while.cond163.preheader.i_crit_edge ], [ %dst.addr.3.i, %while.body136.i.while.cond163.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.3.lcssa.i)
  %tobool165.not222.i = icmp eq i32 %n.addr.3.lcssa.i, 0
  br i1 %tobool165.not222.i, label %while.cond163.preheader.i.while.end175.i_crit_edge, label %while.cond163.preheader.i.while.body166.i_crit_edge

while.cond163.preheader.i.while.body166.i_crit_edge: ; preds = %while.cond163.preheader.i
  br label %while.body166.i

while.cond163.preheader.i.while.end175.i_crit_edge: ; preds = %while.cond163.preheader.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.end175.i

while.body136.i:                                  ; preds = %while.body136.i.while.body136.i_crit_edge, %if.end127.i.while.body136.i_crit_edge
  %dst.addr.3218.i = phi ptr [ %dst.addr.3.i, %while.body136.i.while.body136.i_crit_edge ], [ %dst.addr.3211.i, %if.end127.i.while.body136.i_crit_edge ]
  %d0.2217.i = phi i32 [ %89, %while.body136.i.while.body136.i_crit_edge ], [ %d1.0.i, %if.end127.i.while.body136.i_crit_edge ]
  %add.ptr.pn216.i = phi ptr [ %incdec.ptr154.i, %while.body136.i.while.body136.i_crit_edge ], [ %add.ptr.i, %if.end127.i.while.body136.i_crit_edge ]
  %n.addr.3215.i = phi i32 [ %sub161.i, %while.body136.i.while.body136.i_crit_edge ], [ %div1324.i, %if.end127.i.while.body136.i_crit_edge ]
  %src.addr.4214.i = phi ptr [ %incdec.ptr155.i, %while.body136.i.while.body136.i_crit_edge ], [ %src.addr.3.i, %if.end127.i.while.body136.i_crit_edge ]
  %incdec.ptr137.i = getelementptr i32, ptr %src.addr.4214.i, i32 -1
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %src.addr.4214.i) #1, !srcloc !18
  %shl139.i = shl i32 %d0.2217.i, %and77.i
  %shr140.i = lshr i32 %86, %and80.i
  %or141.i = or i32 %shr140.i, %shl139.i
  %incdec.ptr142.i = getelementptr i32, ptr %add.ptr.pn216.i, i32 -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.addr.3218.i, i32 %or141.i) #1, !srcloc !19
  %incdec.ptr143.i = getelementptr i32, ptr %src.addr.4214.i, i32 -2
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr137.i) #1, !srcloc !18
  %shl145.i = shl i32 %86, %and77.i
  %shr146.i = lshr i32 %87, %and80.i
  %or147.i = or i32 %shr146.i, %shl145.i
  %incdec.ptr148.i = getelementptr i32, ptr %add.ptr.pn216.i, i32 -3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr142.i, i32 %or147.i) #1, !srcloc !19
  %incdec.ptr149.i = getelementptr i32, ptr %src.addr.4214.i, i32 -3
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr143.i) #1, !srcloc !18
  %shl151.i = shl i32 %87, %and77.i
  %shr152.i = lshr i32 %88, %and80.i
  %or153.i = or i32 %shr152.i, %shl151.i
  %incdec.ptr154.i = getelementptr i32, ptr %add.ptr.pn216.i, i32 -4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr148.i, i32 %or153.i) #1, !srcloc !19
  %incdec.ptr155.i = getelementptr i32, ptr %src.addr.4214.i, i32 -4
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr149.i) #1, !srcloc !18
  %shl157.i = shl i32 %88, %and77.i
  %shr158.i = lshr i32 %89, %and80.i
  %or159.i = or i32 %shr158.i, %shl157.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr154.i, i32 %or159.i) #1, !srcloc !19
  %sub161.i = add i32 %n.addr.3215.i, -4
  %dst.addr.3.i = getelementptr i32, ptr %add.ptr.pn216.i, i32 -5
  %cmp134.i = icmp ugt i32 %sub161.i, 3
  br i1 %cmp134.i, label %while.body136.i.while.body136.i_crit_edge, label %while.body136.i.while.cond163.preheader.i_crit_edge

while.body136.i.while.cond163.preheader.i_crit_edge: ; preds = %while.body136.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.cond163.preheader.i

while.body136.i.while.body136.i_crit_edge:        ; preds = %while.body136.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.body136.i

while.body166.i:                                  ; preds = %while.body166.i.while.body166.i_crit_edge, %while.cond163.preheader.i.while.body166.i_crit_edge
  %d0.3226.i = phi i32 [ %val.addr.2.i145.i, %while.body166.i.while.body166.i_crit_edge ], [ %d0.2.lcssa.i, %while.cond163.preheader.i.while.body166.i_crit_edge ]
  %dst.addr.4225.i = phi ptr [ %incdec.ptr174.i, %while.body166.i.while.body166.i_crit_edge ], [ %dst.addr.3.lcssa.i, %while.cond163.preheader.i.while.body166.i_crit_edge ]
  %n.addr.4224.i = phi i32 [ %dec164.i, %while.body166.i.while.body166.i_crit_edge ], [ %n.addr.3.lcssa.i, %while.cond163.preheader.i.while.body166.i_crit_edge ]
  %src.addr.5223.i = phi ptr [ %incdec.ptr167.i, %while.body166.i.while.body166.i_crit_edge ], [ %src.addr.4.lcssa.i, %while.cond163.preheader.i.while.body166.i_crit_edge ]
  %dec164.i = add i32 %n.addr.4224.i, -1
  %incdec.ptr167.i = getelementptr i32, ptr %src.addr.5223.i, i32 -1
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %src.addr.5223.i) #1, !srcloc !18
  %shr.i130.i = lshr i32 %90, 1
  %shl.i131.i = shl i32 %90, 1
  %91 = and i32 %shr.i130.i, 1431655765
  %92 = and i32 %shl.i131.i, -1431655766
  %xor1.i.i132.i = or i32 %91, %92
  %val.addr.0.i133.i = select i1 %tobool.not.i47.i, i32 %90, i32 %xor1.i.i132.i
  %shr4.i136.i = lshr i32 %val.addr.0.i133.i, 2
  %shl5.i137.i = shl i32 %val.addr.0.i133.i, 2
  %93 = and i32 %shr4.i136.i, 858993459
  %94 = and i32 %shl5.i137.i, -858993460
  %xor1.i25.i138.i = or i32 %93, %94
  %val.addr.1.i139.i = select i1 %tobool2.not.i.i, i32 %val.addr.0.i133.i, i32 %xor1.i25.i138.i
  %shr11.i142.i = lshr i32 %val.addr.1.i139.i, 4
  %shl12.i143.i = shl i32 %val.addr.1.i139.i, 4
  %95 = and i32 %shr11.i142.i, 252645135
  %96 = and i32 %shl12.i143.i, -252645136
  %xor1.i28.i144.i = or i32 %95, %96
  %val.addr.2.i145.i = select i1 %tobool9.not.i.i, i32 %val.addr.1.i139.i, i32 %xor1.i28.i144.i
  %shl170.i = shl i32 %d0.3226.i, %and77.i
  %shr171.i = lshr i32 %val.addr.2.i145.i, %and80.i
  %or172.i = or i32 %shr171.i, %shl170.i
  %shr.i148.i = lshr i32 %or172.i, 1
  %shl.i149.i = shl i32 %or172.i, 1
  %97 = and i32 %shr.i148.i, 1431655765
  %98 = and i32 %shl.i149.i, -1431655766
  %xor1.i.i150.i = or i32 %97, %98
  %val.addr.0.i151.i = select i1 %tobool.not.i47.i, i32 %or172.i, i32 %xor1.i.i150.i
  %shr4.i154.i = lshr i32 %val.addr.0.i151.i, 2
  %shl5.i155.i = shl i32 %val.addr.0.i151.i, 2
  %99 = and i32 %shr4.i154.i, 858993459
  %100 = and i32 %shl5.i155.i, -858993460
  %xor1.i25.i156.i = or i32 %99, %100
  %val.addr.1.i157.i = select i1 %tobool2.not.i.i, i32 %val.addr.0.i151.i, i32 %xor1.i25.i156.i
  %shr11.i160.i = lshr i32 %val.addr.1.i157.i, 4
  %shl12.i161.i = shl i32 %val.addr.1.i157.i, 4
  %101 = and i32 %shr11.i160.i, 252645135
  %102 = and i32 %shl12.i161.i, -252645136
  %xor1.i28.i162.i = or i32 %101, %102
  %val.addr.2.i163.i = select i1 %tobool9.not.i.i, i32 %val.addr.1.i157.i, i32 %xor1.i28.i162.i
  %incdec.ptr174.i = getelementptr i32, ptr %dst.addr.4225.i, i32 -1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.addr.4225.i, i32 %val.addr.2.i163.i) #1, !srcloc !19
  %tobool165.not.i = icmp eq i32 %dec164.i, 0
  br i1 %tobool165.not.i, label %while.body166.i.while.end175.i_crit_edge, label %while.body166.i.while.body166.i_crit_edge

while.body166.i.while.body166.i_crit_edge:        ; preds = %while.body166.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.body166.i

while.body166.i.while.end175.i_crit_edge:         ; preds = %while.body166.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.end175.i

while.end175.i:                                   ; preds = %while.body166.i.while.end175.i_crit_edge, %while.cond163.preheader.i.while.end175.i_crit_edge
  %src.addr.5.lcssa.i = phi ptr [ %src.addr.4.lcssa.i, %while.cond163.preheader.i.while.end175.i_crit_edge ], [ %incdec.ptr167.i, %while.body166.i.while.end175.i_crit_edge ]
  %dst.addr.4.lcssa.i = phi ptr [ %dst.addr.3.lcssa.i, %while.cond163.preheader.i.while.end175.i_crit_edge ], [ %incdec.ptr174.i, %while.body166.i.while.end175.i_crit_edge ]
  %d0.3.lcssa.i = phi i32 [ %d0.2.lcssa.i, %while.cond163.preheader.i.while.end175.i_crit_edge ], [ %val.addr.2.i145.i, %while.body166.i.while.end175.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem131.i)
  %tobool176.not.i = icmp eq i32 %rem131.i, 0
  br i1 %tobool176.not.i, label %while.end175.i.bitcpy_rev.exit_crit_edge, label %if.then177.i

while.end175.i.bitcpy_rev.exit_crit_edge:         ; preds = %while.end175.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %bitcpy_rev.exit

if.then177.i:                                     ; preds = %while.end175.i
  %sub178.i = sub nuw nsw i32 32, %and77.i
  call void @__sanitizer_cov_trace_cmp4(i32 %rem131.i, i32 %sub178.i)
  %cmp179.not.i = icmp ugt i32 %rem131.i, %sub178.i
  br i1 %cmp179.not.i, label %if.else182.i, label %if.then180.i

if.then180.i:                                     ; preds = %if.then177.i
  call void @__sanitizer_cov_trace_pc() #3
  %shl181.i = shl i32 %d0.3.lcssa.i, %and77.i
  br label %if.end188.i

if.else182.i:                                     ; preds = %if.then177.i
  call void @__sanitizer_cov_trace_pc() #3
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %src.addr.5.lcssa.i) #1, !srcloc !18
  %shr.i166.i = lshr i32 %103, 1
  %shl.i167.i = shl i32 %103, 1
  %104 = and i32 %shr.i166.i, 1431655765
  %105 = and i32 %shl.i167.i, -1431655766
  %xor1.i.i168.i = or i32 %104, %105
  %val.addr.0.i169.i = select i1 %tobool.not.i47.i, i32 %103, i32 %xor1.i.i168.i
  %shr4.i172.i = lshr i32 %val.addr.0.i169.i, 2
  %shl5.i173.i = shl i32 %val.addr.0.i169.i, 2
  %106 = and i32 %shr4.i172.i, 858993459
  %107 = and i32 %shl5.i173.i, -858993460
  %xor1.i25.i174.i = or i32 %106, %107
  %val.addr.1.i175.i = select i1 %tobool2.not.i.i, i32 %val.addr.0.i169.i, i32 %xor1.i25.i174.i
  %shr11.i178.i = lshr i32 %val.addr.1.i175.i, 4
  %shl12.i179.i = shl i32 %val.addr.1.i175.i, 4
  %108 = and i32 %shr11.i178.i, 252645135
  %109 = and i32 %shl12.i179.i, -252645136
  %xor1.i28.i180.i = or i32 %108, %109
  %val.addr.2.i181.i = select i1 %tobool9.not.i.i, i32 %val.addr.1.i175.i, i32 %xor1.i28.i180.i
  %shl185.i = shl i32 %d0.3.lcssa.i, %and77.i
  %shr186.i = lshr i32 %val.addr.2.i181.i, %and80.i
  %or187.i = or i32 %shr186.i, %shl185.i
  br label %if.end188.i

if.end188.i:                                      ; preds = %if.else182.i, %if.then180.i
  %d0.4.i = phi i32 [ %shl181.i, %if.then180.i ], [ %or187.i, %if.else182.i ]
  %shr.i184.i = lshr i32 %d0.4.i, 1
  %shl.i185.i = shl i32 %d0.4.i, 1
  %110 = and i32 %shr.i184.i, 1431655765
  %111 = and i32 %shl.i185.i, -1431655766
  %xor1.i.i186.i = or i32 %110, %111
  %val.addr.0.i187.i = select i1 %tobool.not.i47.i, i32 %d0.4.i, i32 %xor1.i.i186.i
  %shr4.i190.i = lshr i32 %val.addr.0.i187.i, 2
  %shl5.i191.i = shl i32 %val.addr.0.i187.i, 2
  %112 = and i32 %shr4.i190.i, 858993459
  %113 = and i32 %shl5.i191.i, -858993460
  %xor1.i25.i192.i = or i32 %112, %113
  %val.addr.1.i193.i = select i1 %tobool2.not.i.i, i32 %val.addr.0.i187.i, i32 %xor1.i25.i192.i
  %shr11.i196.i = lshr i32 %val.addr.1.i193.i, 4
  %shl12.i197.i = shl i32 %val.addr.1.i193.i, 4
  %114 = and i32 %shr11.i196.i, 252645135
  %115 = and i32 %shl12.i197.i, -252645136
  %xor1.i28.i198.i = or i32 %114, %115
  %val.addr.2.i199.i = select i1 %tobool9.not.i.i, i32 %val.addr.1.i193.i, i32 %xor1.i28.i198.i
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dst.addr.4.lcssa.i) #1, !srcloc !18
  %xor.i200.i = xor i32 %val.addr.2.i199.i, %116
  %and.i201.i = and i32 %xor.i200.i, %mask.0.i37.i
  %xor1.i202.i = xor i32 %and.i201.i, %116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.addr.4.lcssa.i, i32 %xor1.i202.i) #1, !srcloc !19
  br label %bitcpy_rev.exit

bitcpy_rev.exit:                                  ; preds = %if.end188.i, %while.end175.i.bitcpy_rev.exit_crit_edge, %if.end102.i, %if.then69.i, %while.end67.i.bitcpy_rev.exit_crit_edge, %if.then19.i
  %tobool33.not = icmp eq i32 %dec, 0
  br i1 %tobool33.not, label %bitcpy_rev.exit.cleanup_crit_edge, label %bitcpy_rev.exit.while.body_crit_edge

bitcpy_rev.exit.while.body_crit_edge:             ; preds = %bitcpy_rev.exit
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.body

bitcpy_rev.exit.cleanup_crit_edge:                ; preds = %bitcpy_rev.exit
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

while.body45:                                     ; preds = %bitcpy.exit.while.body45_crit_edge, %while.body45.lr.ph
  %src_idx.1245 = phi i32 [ %add25, %while.body45.lr.ph ], [ %add56, %bitcpy.exit.while.body45_crit_edge ]
  %dst_idx.1244 = phi i32 [ %add19, %while.body45.lr.ph ], [ %add55, %bitcpy.exit.while.body45_crit_edge ]
  %height.1243 = phi i32 [ %9, %while.body45.lr.ph ], [ %dec43, %bitcpy.exit.while.body45_crit_edge ]
  %dec43 = add i32 %height.1243, -1
  %div46136 = lshr i32 %dst_idx.1244, 5
  %add.ptr47 = getelementptr i32, ptr %24, i32 %div46136
  %rem48 = and i32 %dst_idx.1244, 31
  %div49137 = lshr i32 %src_idx.1245, 5
  %add.ptr50 = getelementptr i32, ptr %24, i32 %div49137
  %rem51 = and i32 %src_idx.1245, 31
  %117 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %bits_per_pixel.i, align 4
  %mul54 = mul i32 %118, %11
  %sub.i145 = sub nsw i32 %rem48, %rem51
  %119 = ptrtoint ptr %flags.i.i.i147 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %flags.i.i.i147, align 4
  %and.i.i.i148 = and i32 %120, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i148)
  %tobool.i.not.i.i149 = icmp eq i32 %and.i.i.i148, 0
  br i1 %tobool.not.i.i146, label %if.then.i11.i, label %if.else.i.i158

if.else.i.i158:                                   ; preds = %while.body45
  %shl3.i.i150 = select i1 %tobool.i.not.i.i149, i32 255, i32 -16777216
  %and.i.i151 = and i32 %rem48, %bswapmask.0.i
  %shl6.i.i152 = shl i32 -16777216, %and.i.i151
  %shr9.i.i153 = lshr i32 255, %and.i.i151
  %cond11.i.i154 = select i1 %tobool.i.not.i.i149, i32 %shr9.i.i153, i32 %shl6.i.i152
  %and12.i.i155 = and i32 %cond11.i.i154, %shl3.i.i150
  %and19.i.i157 = and i32 %rem48, %neg18.i.i156
  br i1 %tobool.i.not.i.i149, label %cond.false28.i.i168, label %cond.true24.i.i163

cond.true24.i.i163:                               ; preds = %if.else.i.i158
  call void @__sanitizer_cov_trace_pc() #3
  %shr16.i.i159 = lshr i32 %and12.i.i155, %and19.i.i157
  %add.i.i160 = add i32 %rem48, %bswapmask.0.i
  %and26.i.i161 = and i32 %add.i.i160, %neg18.i.i156
  %shr27.i.i162 = lshr i32 -1, %and26.i.i161
  br label %if.else.i20.i

cond.false28.i.i168:                              ; preds = %if.else.i.i158
  call void @__sanitizer_cov_trace_pc() #3
  %shl20.i.i164 = shl i32 %and12.i.i155, %and19.i.i157
  %add29.i.i165 = add i32 %rem48, %bswapmask.0.i
  %and31.i.i166 = and i32 %add29.i.i165, %neg18.i.i156
  %shl32.i.i167 = shl nsw i32 -1, %and31.i.i166
  br label %if.else.i20.i

if.then.i11.i:                                    ; preds = %while.body45
  call void @__sanitizer_cov_trace_pc() #3
  %shr.i.i169 = lshr i32 -1, %rem48
  %shl.i.i170 = shl nsw i32 -1, %rem48
  %cond.i.i171 = select i1 %tobool.i.not.i.i149, i32 %shl.i.i170, i32 %shr.i.i169
  %add220.i = add i32 %mul54, %rem48
  %rem221.i = and i32 %add220.i, 31
  %shr.i8.i = lshr i32 -1, %rem221.i
  %shl.i9.i = shl nsw i32 -1, %rem221.i
  %cond.i10.i = select i1 %tobool.i.not.i.i149, i32 %shl.i9.i, i32 %shr.i8.i
  br label %fb_shifted_pixels_mask_long.exit36.i

if.else.i20.i:                                    ; preds = %cond.false28.i.i168, %cond.true24.i.i163
  %shl3.i12.i = phi i32 [ 255, %cond.false28.i.i168 ], [ -16777216, %cond.true24.i.i163 ]
  %cond2273.i.i172 = phi i32 [ %shl20.i.i164, %cond.false28.i.i168 ], [ %shr16.i.i159, %cond.true24.i.i163 ]
  %cond34.i.i173 = phi i32 [ %shl32.i.i167, %cond.false28.i.i168 ], [ %shr27.i.i162, %cond.true24.i.i163 ]
  %or.i.i174 = or i32 %cond34.i.i173, %cond2273.i.i172
  %add.i175 = add i32 %mul54, %rem48
  %rem.i176 = and i32 %add.i175, 31
  %and.i13.i = and i32 %rem.i176, %bswapmask.0.i
  %shl6.i14.i = shl i32 -16777216, %and.i13.i
  %shr9.i15.i = lshr i32 255, %and.i13.i
  %cond11.i16.i = select i1 %tobool.i.not.i.i149, i32 %shr9.i15.i, i32 %shl6.i14.i
  %and12.i17.i = and i32 %shl3.i12.i, %cond11.i16.i
  %and19.i19.i = and i32 %rem.i176, %neg18.i.i156
  br i1 %tobool.i.not.i.i149, label %cond.false28.i30.i, label %cond.true24.i25.i

cond.true24.i25.i:                                ; preds = %if.else.i20.i
  call void @__sanitizer_cov_trace_pc() #3
  %shr16.i21.i = lshr i32 %and12.i17.i, %and19.i19.i
  %add.i22.i = add i32 %rem.i176, %bswapmask.0.i
  %and26.i23.i = and i32 %add.i22.i, %neg18.i.i156
  %shr27.i24.i = lshr i32 -1, %and26.i23.i
  br label %cond.end33.i34.i

cond.false28.i30.i:                               ; preds = %if.else.i20.i
  call void @__sanitizer_cov_trace_pc() #3
  %shl20.i26.i = shl i32 %and12.i17.i, %and19.i19.i
  %add29.i27.i = add i32 %rem.i176, %bswapmask.0.i
  %and31.i28.i = and i32 %add29.i27.i, %neg18.i.i156
  %shl32.i29.i = shl nsw i32 -1, %and31.i28.i
  br label %cond.end33.i34.i

cond.end33.i34.i:                                 ; preds = %cond.false28.i30.i, %cond.true24.i25.i
  %cond2273.i31.i = phi i32 [ %shr16.i21.i, %cond.true24.i25.i ], [ %shl20.i26.i, %cond.false28.i30.i ]
  %cond34.i32.i = phi i32 [ %shr27.i24.i, %cond.true24.i25.i ], [ %shl32.i29.i, %cond.false28.i30.i ]
  %or.i33.i = or i32 %cond34.i32.i, %cond2273.i31.i
  br label %fb_shifted_pixels_mask_long.exit36.i

fb_shifted_pixels_mask_long.exit36.i:             ; preds = %cond.end33.i34.i, %if.then.i11.i
  %add224.i = phi i32 [ %add.i175, %cond.end33.i34.i ], [ %add220.i, %if.then.i11.i ]
  %mask.0.i222.i = phi i32 [ %or.i.i174, %cond.end33.i34.i ], [ %cond.i.i171, %if.then.i11.i ]
  %mask.0.i35.i = phi i32 [ %or.i33.i, %cond.end33.i34.i ], [ %cond.i10.i, %if.then.i11.i ]
  %neg.i = xor i32 %mask.0.i35.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %rem48, i32 %rem51)
  %tobool.not.i177 = icmp eq i32 %rem48, %rem51
  br i1 %tobool.not.i177, label %if.then.i179, label %if.else58.i

if.then.i179:                                     ; preds = %fb_shifted_pixels_mask_long.exit36.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %add224.i)
  %cmp.i178 = icmp ult i32 %add224.i, 33
  br i1 %cmp.i178, label %if.then3.i, label %if.else.i184

if.then3.i:                                       ; preds = %if.then.i179
  call void @__sanitizer_cov_trace_pc() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mask.0.i35.i)
  %tobool4.not.i = icmp eq i32 %mask.0.i35.i, -1
  %and.i180 = select i1 %tobool4.not.i, i32 -1, i32 %neg.i
  %spec.select.i181 = and i32 %and.i180, %mask.0.i222.i
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50) #1, !srcloc !18
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #1, !srcloc !18
  %xor.i.i182 = xor i32 %122, %121
  %and.i37.i = and i32 %spec.select.i181, %xor.i.i182
  %xor1.i.i183 = xor i32 %and.i37.i, %122
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %xor1.i.i183) #1, !srcloc !19
  br label %bitcpy.exit

if.else.i184:                                     ; preds = %if.then.i179
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mask.0.i222.i)
  %cmp9.not.i = icmp eq i32 %mask.0.i222.i, -1
  br i1 %cmp9.not.i, label %if.else.i184.if.end17.i_crit_edge, label %if.then10.i

if.else.i184.if.end17.i_crit_edge:                ; preds = %if.else.i184
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end17.i

if.then10.i:                                      ; preds = %if.else.i184
  call void @__sanitizer_cov_trace_pc() #3
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50) #1, !srcloc !18
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #1, !srcloc !18
  %xor.i38.i = xor i32 %124, %123
  %and.i39.i185 = and i32 %xor.i38.i, %mask.0.i222.i
  %xor1.i40.i = xor i32 %and.i39.i185, %124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %xor1.i40.i) #1, !srcloc !19
  %incdec.ptr.i186 = getelementptr i32, ptr %add.ptr47, i32 1
  %incdec.ptr14.i = getelementptr i32, ptr %add.ptr50, i32 1
  %sub15.neg.i = add i32 %mul54, %rem48
  %sub16.i = add i32 %sub15.neg.i, -32
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then10.i, %if.else.i184.if.end17.i_crit_edge
  %src.addr.0.i187 = phi ptr [ %incdec.ptr14.i, %if.then10.i ], [ %add.ptr50, %if.else.i184.if.end17.i_crit_edge ]
  %n.addr.0.i188 = phi i32 [ %sub16.i, %if.then10.i ], [ %mul54, %if.else.i184.if.end17.i_crit_edge ]
  %dst.addr.0.i189 = phi ptr [ %incdec.ptr.i186, %if.then10.i ], [ %add.ptr47, %if.else.i184.if.end17.i_crit_edge ]
  %div1.i190 = lshr i32 %n.addr.0.i188, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %n.addr.0.i188)
  %cmp18246.i = icmp ugt i32 %n.addr.0.i188, 255
  br i1 %cmp18246.i, label %if.end17.i.while.body.i198_crit_edge, label %if.end17.i.while.cond44.preheader.i_crit_edge

if.end17.i.while.cond44.preheader.i_crit_edge:    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.cond44.preheader.i

if.end17.i.while.body.i198_crit_edge:             ; preds = %if.end17.i
  br label %while.body.i198

while.cond44.preheader.i:                         ; preds = %while.body.i198.while.cond44.preheader.i_crit_edge, %if.end17.i.while.cond44.preheader.i_crit_edge
  %src.addr.1.lcssa.i191 = phi ptr [ %src.addr.0.i187, %if.end17.i.while.cond44.preheader.i_crit_edge ], [ %incdec.ptr40.i, %while.body.i198.while.cond44.preheader.i_crit_edge ]
  %n.addr.1.lcssa.i192 = phi i32 [ %div1.i190, %if.end17.i.while.cond44.preheader.i_crit_edge ], [ %sub43.i, %while.body.i198.while.cond44.preheader.i_crit_edge ]
  %dst.addr.1.lcssa.i193 = phi ptr [ %dst.addr.0.i189, %if.end17.i.while.cond44.preheader.i_crit_edge ], [ %incdec.ptr42.i197, %while.body.i198.while.cond44.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.1.lcssa.i192)
  %tobool45.not253.i = icmp eq i32 %n.addr.1.lcssa.i192, 0
  br i1 %tobool45.not253.i, label %while.cond44.preheader.i.while.end50.i_crit_edge, label %while.cond44.preheader.i.while.body46.i_crit_edge

while.cond44.preheader.i.while.body46.i_crit_edge: ; preds = %while.cond44.preheader.i
  br label %while.body46.i

while.cond44.preheader.i.while.end50.i_crit_edge: ; preds = %while.cond44.preheader.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.end50.i

while.body.i198:                                  ; preds = %while.body.i198.while.body.i198_crit_edge, %if.end17.i.while.body.i198_crit_edge
  %dst.addr.1249.i = phi ptr [ %incdec.ptr42.i197, %while.body.i198.while.body.i198_crit_edge ], [ %dst.addr.0.i189, %if.end17.i.while.body.i198_crit_edge ]
  %n.addr.1248.i = phi i32 [ %sub43.i, %while.body.i198.while.body.i198_crit_edge ], [ %div1.i190, %if.end17.i.while.body.i198_crit_edge ]
  %src.addr.1247.i = phi ptr [ %incdec.ptr40.i, %while.body.i198.while.body.i198_crit_edge ], [ %src.addr.0.i187, %if.end17.i.while.body.i198_crit_edge ]
  %incdec.ptr19.i = getelementptr i32, ptr %src.addr.1247.i, i32 1
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %src.addr.1247.i) #1, !srcloc !18
  %incdec.ptr21.i = getelementptr i32, ptr %dst.addr.1249.i, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.addr.1249.i, i32 %125) #1, !srcloc !19
  %incdec.ptr22.i = getelementptr i32, ptr %src.addr.1247.i, i32 2
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr19.i) #1, !srcloc !18
  %incdec.ptr24.i = getelementptr i32, ptr %dst.addr.1249.i, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr21.i, i32 %126) #1, !srcloc !19
  %incdec.ptr25.i = getelementptr i32, ptr %src.addr.1247.i, i32 3
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr22.i) #1, !srcloc !18
  %incdec.ptr27.i = getelementptr i32, ptr %dst.addr.1249.i, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr24.i, i32 %127) #1, !srcloc !19
  %incdec.ptr28.i = getelementptr i32, ptr %src.addr.1247.i, i32 4
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr25.i) #1, !srcloc !18
  %incdec.ptr30.i194 = getelementptr i32, ptr %dst.addr.1249.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr27.i, i32 %128) #1, !srcloc !19
  %incdec.ptr31.i = getelementptr i32, ptr %src.addr.1247.i, i32 5
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr28.i) #1, !srcloc !18
  %incdec.ptr33.i = getelementptr i32, ptr %dst.addr.1249.i, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr30.i194, i32 %129) #1, !srcloc !19
  %incdec.ptr34.i = getelementptr i32, ptr %src.addr.1247.i, i32 6
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr31.i) #1, !srcloc !18
  %incdec.ptr36.i195 = getelementptr i32, ptr %dst.addr.1249.i, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr33.i, i32 %130) #1, !srcloc !19
  %incdec.ptr37.i = getelementptr i32, ptr %src.addr.1247.i, i32 7
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr34.i) #1, !srcloc !18
  %incdec.ptr39.i196 = getelementptr i32, ptr %dst.addr.1249.i, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr36.i195, i32 %131) #1, !srcloc !19
  %incdec.ptr40.i = getelementptr i32, ptr %src.addr.1247.i, i32 8
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr37.i) #1, !srcloc !18
  %incdec.ptr42.i197 = getelementptr i32, ptr %dst.addr.1249.i, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr39.i196, i32 %132) #1, !srcloc !19
  %sub43.i = add i32 %n.addr.1248.i, -8
  %cmp18.i = icmp ugt i32 %sub43.i, 7
  br i1 %cmp18.i, label %while.body.i198.while.body.i198_crit_edge, label %while.body.i198.while.cond44.preheader.i_crit_edge

while.body.i198.while.cond44.preheader.i_crit_edge: ; preds = %while.body.i198
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.cond44.preheader.i

while.body.i198.while.body.i198_crit_edge:        ; preds = %while.body.i198
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.body.i198

while.body46.i:                                   ; preds = %while.body46.i.while.body46.i_crit_edge, %while.cond44.preheader.i.while.body46.i_crit_edge
  %dst.addr.2256.i = phi ptr [ %incdec.ptr49.i, %while.body46.i.while.body46.i_crit_edge ], [ %dst.addr.1.lcssa.i193, %while.cond44.preheader.i.while.body46.i_crit_edge ]
  %n.addr.2255.i = phi i32 [ %dec.i199, %while.body46.i.while.body46.i_crit_edge ], [ %n.addr.1.lcssa.i192, %while.cond44.preheader.i.while.body46.i_crit_edge ]
  %src.addr.2254.i = phi ptr [ %incdec.ptr47.i200, %while.body46.i.while.body46.i_crit_edge ], [ %src.addr.1.lcssa.i191, %while.cond44.preheader.i.while.body46.i_crit_edge ]
  %dec.i199 = add i32 %n.addr.2255.i, -1
  %incdec.ptr47.i200 = getelementptr i32, ptr %src.addr.2254.i, i32 1
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %src.addr.2254.i) #1, !srcloc !18
  %incdec.ptr49.i = getelementptr i32, ptr %dst.addr.2256.i, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.addr.2256.i, i32 %133) #1, !srcloc !19
  %tobool45.not.i = icmp eq i32 %dec.i199, 0
  br i1 %tobool45.not.i, label %while.body46.i.while.end50.i_crit_edge, label %while.body46.i.while.body46.i_crit_edge

while.body46.i.while.body46.i_crit_edge:          ; preds = %while.body46.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.body46.i

while.body46.i.while.end50.i_crit_edge:           ; preds = %while.body46.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.end50.i

while.end50.i:                                    ; preds = %while.body46.i.while.end50.i_crit_edge, %while.cond44.preheader.i.while.end50.i_crit_edge
  %src.addr.2.lcssa.i201 = phi ptr [ %src.addr.1.lcssa.i191, %while.cond44.preheader.i.while.end50.i_crit_edge ], [ %incdec.ptr47.i200, %while.body46.i.while.end50.i_crit_edge ]
  %dst.addr.2.lcssa.i202 = phi ptr [ %dst.addr.1.lcssa.i193, %while.cond44.preheader.i.while.end50.i_crit_edge ], [ %incdec.ptr49.i, %while.body46.i.while.end50.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mask.0.i35.i)
  %tobool51.not.i = icmp eq i32 %mask.0.i35.i, -1
  br i1 %tobool51.not.i, label %while.end50.i.bitcpy.exit_crit_edge, label %if.then52.i

while.end50.i.bitcpy.exit_crit_edge:              ; preds = %while.end50.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %bitcpy.exit

if.then52.i:                                      ; preds = %while.end50.i
  call void @__sanitizer_cov_trace_pc() #3
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %src.addr.2.lcssa.i201) #1, !srcloc !18
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dst.addr.2.lcssa.i202) #1, !srcloc !18
  %xor.i41.i = xor i32 %135, %134
  %136 = and i32 %xor.i41.i, %mask.0.i35.i
  %xor1.i43.i = xor i32 %136, %134
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.addr.2.lcssa.i202, i32 %xor1.i43.i) #1, !srcloc !19
  br label %bitcpy.exit

if.else58.i:                                      ; preds = %fb_shifted_pixels_mask_long.exit36.i
  %and60.i = and i32 %sub.i145, 31
  %sub61.i = sub nsw i32 0, %sub.i145
  %and63.i = and i32 %sub61.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %add224.i)
  %cmp65.i = icmp ult i32 %add224.i, 33
  br i1 %cmp65.i, label %if.then66.i, label %if.else89.i

if.then66.i:                                      ; preds = %if.else58.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mask.0.i35.i)
  %tobool67.not.i = icmp eq i32 %mask.0.i35.i, -1
  %and69.i = select i1 %tobool67.not.i, i32 -1, i32 %neg.i
  %spec.select3.i = and i32 %and69.i, %mask.0.i222.i
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50) #1, !srcloc !18
  %shr.i46.i = lshr i32 %137, 1
  %shl.i47.i = shl i32 %137, 1
  %138 = and i32 %shr.i46.i, 1431655765
  %139 = and i32 %shl.i47.i, -1431655766
  %xor1.i.i.i204 = or i32 %138, %139
  %val.addr.0.i.i205 = select i1 %tobool.not.i88.i, i32 %137, i32 %xor1.i.i.i204
  %shr4.i.i208 = lshr i32 %val.addr.0.i.i205, 2
  %shl5.i.i209 = shl i32 %val.addr.0.i.i205, 2
  %140 = and i32 %shr4.i.i208, 858993459
  %141 = and i32 %shl5.i.i209, -858993460
  %xor1.i25.i.i210 = or i32 %140, %141
  %val.addr.1.i.i211 = select i1 %tobool2.not.i94.i, i32 %val.addr.0.i.i205, i32 %xor1.i25.i.i210
  %shr11.i.i214 = lshr i32 %val.addr.1.i.i211, 4
  %shl12.i.i215 = shl i32 %val.addr.1.i.i211, 4
  %142 = and i32 %shr11.i.i214, 252645135
  %143 = and i32 %shl12.i.i215, -252645136
  %xor1.i28.i.i216 = or i32 %142, %143
  %val.addr.2.i.i217 = select i1 %tobool9.not.i100.i, i32 %val.addr.1.i.i211, i32 %xor1.i28.i.i216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i145)
  %cmp73.i = icmp sgt i32 %sub.i145, 0
  br i1 %cmp73.i, label %if.then74.i, label %if.else75.i219

if.then74.i:                                      ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #3
  %shl.i218 = shl i32 %val.addr.2.i.i217, %and60.i
  br label %if.end85.i

if.else75.i219:                                   ; preds = %if.then66.i
  %add76.i = add i32 %mul54, %rem51
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %add76.i)
  %cmp77.i = icmp ult i32 %add76.i, 33
  br i1 %cmp77.i, label %if.then78.i, label %if.else79.i

if.then78.i:                                      ; preds = %if.else75.i219
  call void @__sanitizer_cov_trace_pc() #3
  %shr.i220 = lshr i32 %val.addr.2.i.i217, %and63.i
  br label %if.end85.i

if.else79.i:                                      ; preds = %if.else75.i219
  call void @__sanitizer_cov_trace_pc() #3
  %add.ptr.i221 = getelementptr i32, ptr %add.ptr50, i32 1
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i221) #1, !srcloc !18
  %shr.i50.i = lshr i32 %144, 1
  %shl.i51.i = shl i32 %144, 1
  %145 = and i32 %shr.i50.i, 1431655765
  %146 = and i32 %shl.i51.i, -1431655766
  %xor1.i.i52.i = or i32 %145, %146
  %val.addr.0.i53.i = select i1 %tobool.not.i88.i, i32 %144, i32 %xor1.i.i52.i
  %shr4.i56.i = lshr i32 %val.addr.0.i53.i, 2
  %shl5.i57.i = shl i32 %val.addr.0.i53.i, 2
  %147 = and i32 %shr4.i56.i, 858993459
  %148 = and i32 %shl5.i57.i, -858993460
  %xor1.i25.i58.i = or i32 %147, %148
  %val.addr.1.i59.i = select i1 %tobool2.not.i94.i, i32 %val.addr.0.i53.i, i32 %xor1.i25.i58.i
  %shr11.i62.i = lshr i32 %val.addr.1.i59.i, 4
  %shl12.i63.i = shl i32 %val.addr.1.i59.i, 4
  %149 = and i32 %shr11.i62.i, 252645135
  %150 = and i32 %shl12.i63.i, -252645136
  %xor1.i28.i64.i = or i32 %149, %150
  %val.addr.2.i65.i = select i1 %tobool9.not.i100.i, i32 %val.addr.1.i59.i, i32 %xor1.i28.i64.i
  %shr82.i = lshr i32 %val.addr.2.i.i217, %and63.i
  %shl83.i = shl i32 %val.addr.2.i65.i, %and60.i
  %or.i222 = or i32 %shl83.i, %shr82.i
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.else79.i, %if.then78.i, %if.then74.i
  %d0.0.i223 = phi i32 [ %shl.i218, %if.then74.i ], [ %shr.i220, %if.then78.i ], [ %or.i222, %if.else79.i ]
  %shr.i68.i = lshr i32 %d0.0.i223, 1
  %shl.i69.i = shl i32 %d0.0.i223, 1
  %151 = and i32 %shr.i68.i, 1431655765
  %152 = and i32 %shl.i69.i, -1431655766
  %xor1.i.i70.i = or i32 %151, %152
  %val.addr.0.i71.i = select i1 %tobool.not.i88.i, i32 %d0.0.i223, i32 %xor1.i.i70.i
  %shr4.i74.i = lshr i32 %val.addr.0.i71.i, 2
  %shl5.i75.i = shl i32 %val.addr.0.i71.i, 2
  %153 = and i32 %shr4.i74.i, 858993459
  %154 = and i32 %shl5.i75.i, -858993460
  %xor1.i25.i76.i = or i32 %153, %154
  %val.addr.1.i77.i = select i1 %tobool2.not.i94.i, i32 %val.addr.0.i71.i, i32 %xor1.i25.i76.i
  %shr11.i80.i = lshr i32 %val.addr.1.i77.i, 4
  %shl12.i81.i = shl i32 %val.addr.1.i77.i, 4
  %155 = and i32 %shr11.i80.i, 252645135
  %156 = and i32 %shl12.i81.i, -252645136
  %xor1.i28.i82.i = or i32 %155, %156
  %val.addr.2.i83.i = select i1 %tobool9.not.i100.i, i32 %val.addr.1.i77.i, i32 %xor1.i28.i82.i
  %157 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #1, !srcloc !18
  %xor.i84.i = xor i32 %val.addr.2.i83.i, %157
  %and.i85.i = and i32 %spec.select3.i, %xor.i84.i
  %xor1.i86.i = xor i32 %and.i85.i, %157
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %xor1.i86.i) #1, !srcloc !19
  br label %bitcpy.exit

if.else89.i:                                      ; preds = %if.else58.i
  %incdec.ptr90.i = getelementptr i32, ptr %add.ptr50, i32 1
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50) #1, !srcloc !18
  %shr.i89.i = lshr i32 %158, 1
  %shl.i90.i = shl i32 %158, 1
  %159 = and i32 %shr.i89.i, 1431655765
  %160 = and i32 %shl.i90.i, -1431655766
  %xor1.i.i91.i = or i32 %159, %160
  %val.addr.0.i92.i = select i1 %tobool.not.i88.i, i32 %158, i32 %xor1.i.i91.i
  %shr4.i95.i = lshr i32 %val.addr.0.i92.i, 2
  %shl5.i96.i = shl i32 %val.addr.0.i92.i, 2
  %161 = and i32 %shr4.i95.i, 858993459
  %162 = and i32 %shl5.i96.i, -858993460
  %xor1.i25.i97.i = or i32 %161, %162
  %val.addr.1.i98.i = select i1 %tobool2.not.i94.i, i32 %val.addr.0.i92.i, i32 %xor1.i25.i97.i
  %shr11.i101.i = lshr i32 %val.addr.1.i98.i, 4
  %shl12.i102.i = shl i32 %val.addr.1.i98.i, 4
  %163 = and i32 %shr11.i101.i, 252645135
  %164 = and i32 %shl12.i102.i, -252645136
  %xor1.i28.i103.i = or i32 %163, %164
  %val.addr.2.i104.i = select i1 %tobool9.not.i100.i, i32 %val.addr.1.i98.i, i32 %xor1.i28.i103.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i145)
  %cmp93.i = icmp sgt i32 %sub.i145, 0
  br i1 %cmp93.i, label %if.then94.i224, label %if.else98.i

if.then94.i224:                                   ; preds = %if.else89.i
  call void @__sanitizer_cov_trace_pc() #3
  %shl95.i = shl i32 %val.addr.2.i104.i, %and60.i
  br label %if.end107.i

if.else98.i:                                      ; preds = %if.else89.i
  call void @__sanitizer_cov_trace_pc() #3
  %incdec.ptr99.i = getelementptr i32, ptr %add.ptr50, i32 2
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr90.i) #1, !srcloc !18
  %shr.i107.i = lshr i32 %165, 1
  %shl.i108.i = shl i32 %165, 1
  %166 = and i32 %shr.i107.i, 1431655765
  %167 = and i32 %shl.i108.i, -1431655766
  %xor1.i.i109.i = or i32 %166, %167
  %val.addr.0.i110.i = select i1 %tobool.not.i88.i, i32 %165, i32 %xor1.i.i109.i
  %shr4.i113.i = lshr i32 %val.addr.0.i110.i, 2
  %shl5.i114.i = shl i32 %val.addr.0.i110.i, 2
  %168 = and i32 %shr4.i113.i, 858993459
  %169 = and i32 %shl5.i114.i, -858993460
  %xor1.i25.i115.i = or i32 %168, %169
  %val.addr.1.i116.i = select i1 %tobool2.not.i94.i, i32 %val.addr.0.i110.i, i32 %xor1.i25.i115.i
  %shr11.i119.i = lshr i32 %val.addr.1.i116.i, 4
  %shl12.i120.i = shl i32 %val.addr.1.i116.i, 4
  %170 = and i32 %shr11.i119.i, 252645135
  %171 = and i32 %shl12.i120.i, -252645136
  %xor1.i28.i121.i = or i32 %170, %171
  %val.addr.2.i122.i = select i1 %tobool9.not.i100.i, i32 %val.addr.1.i116.i, i32 %xor1.i28.i121.i
  %shr102.i = lshr i32 %val.addr.2.i104.i, %and63.i
  %shl103.i = shl i32 %val.addr.2.i122.i, %and60.i
  %or104.i = or i32 %shl103.i, %shr102.i
  br label %if.end107.i

if.end107.i:                                      ; preds = %if.else98.i, %if.then94.i224
  %src.addr.3.i225 = phi ptr [ %incdec.ptr90.i, %if.then94.i224 ], [ %incdec.ptr99.i, %if.else98.i ]
  %d0.1.i226 = phi i32 [ %shl95.i, %if.then94.i224 ], [ %or104.i, %if.else98.i ]
  %d1.0.i227 = phi i32 [ %val.addr.2.i104.i, %if.then94.i224 ], [ %val.addr.2.i122.i, %if.else98.i ]
  %sub96.neg.pn.i = add i32 %mul54, %rem48
  %n.addr.3.i = add i32 %sub96.neg.pn.i, -32
  %shr.i125.i = lshr i32 %d0.1.i226, 1
  %shl.i126.i = shl i32 %d0.1.i226, 1
  %172 = and i32 %shr.i125.i, 1431655765
  %173 = and i32 %shl.i126.i, -1431655766
  %xor1.i.i127.i = or i32 %172, %173
  %val.addr.0.i128.i = select i1 %tobool.not.i88.i, i32 %d0.1.i226, i32 %xor1.i.i127.i
  %shr4.i131.i = lshr i32 %val.addr.0.i128.i, 2
  %shl5.i132.i = shl i32 %val.addr.0.i128.i, 2
  %174 = and i32 %shr4.i131.i, 858993459
  %175 = and i32 %shl5.i132.i, -858993460
  %xor1.i25.i133.i = or i32 %174, %175
  %val.addr.1.i134.i = select i1 %tobool2.not.i94.i, i32 %val.addr.0.i128.i, i32 %xor1.i25.i133.i
  %shr11.i137.i = lshr i32 %val.addr.1.i134.i, 4
  %shl12.i138.i = shl i32 %val.addr.1.i134.i, 4
  %176 = and i32 %shr11.i137.i, 252645135
  %177 = and i32 %shl12.i138.i, -252645136
  %xor1.i28.i139.i = or i32 %176, %177
  %val.addr.2.i140.i = select i1 %tobool9.not.i100.i, i32 %val.addr.1.i134.i, i32 %xor1.i28.i139.i
  %178 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #1, !srcloc !18
  %xor.i141.i = xor i32 %val.addr.2.i140.i, %178
  %and.i142.i = and i32 %xor.i141.i, %mask.0.i222.i
  %xor1.i143.i = xor i32 %and.i142.i, %178
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %xor1.i143.i) #1, !srcloc !19
  %rem112.i = and i32 %sub96.neg.pn.i, 31
  %div1132.i = lshr i32 %n.addr.3.i, 5
  %dst.addr.3227.i = getelementptr i32, ptr %add.ptr47, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %n.addr.3.i)
  %cmp115228.i = icmp ugt i32 %n.addr.3.i, 127
  %or.cond229.i = and i1 %tobool.not.i.i146, %cmp115228.i
  br i1 %or.cond229.i, label %if.end107.i.while.body117.i_crit_edge, label %if.end107.i.while.cond144.preheader.i_crit_edge

if.end107.i.while.cond144.preheader.i_crit_edge:  ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.cond144.preheader.i

if.end107.i.while.body117.i_crit_edge:            ; preds = %if.end107.i
  br label %while.body117.i

while.cond144.preheader.i:                        ; preds = %while.body117.i.while.cond144.preheader.i_crit_edge, %if.end107.i.while.cond144.preheader.i_crit_edge
  %src.addr.4.lcssa.i228 = phi ptr [ %src.addr.3.i225, %if.end107.i.while.cond144.preheader.i_crit_edge ], [ %incdec.ptr136.i, %while.body117.i.while.cond144.preheader.i_crit_edge ]
  %n.addr.4.lcssa.i = phi i32 [ %div1132.i, %if.end107.i.while.cond144.preheader.i_crit_edge ], [ %sub142.i, %while.body117.i.while.cond144.preheader.i_crit_edge ]
  %d0.2.lcssa.i229 = phi i32 [ %d1.0.i227, %if.end107.i.while.cond144.preheader.i_crit_edge ], [ %182, %while.body117.i.while.cond144.preheader.i_crit_edge ]
  %dst.addr.3.lcssa.i230 = phi ptr [ %dst.addr.3227.i, %if.end107.i.while.cond144.preheader.i_crit_edge ], [ %dst.addr.3.i232, %while.body117.i.while.cond144.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.4.lcssa.i)
  %tobool146.not238.i = icmp eq i32 %n.addr.4.lcssa.i, 0
  br i1 %tobool146.not238.i, label %while.cond144.preheader.i.while.end156.i_crit_edge, label %while.cond144.preheader.i.while.body147.i_crit_edge

while.cond144.preheader.i.while.body147.i_crit_edge: ; preds = %while.cond144.preheader.i
  br label %while.body147.i

while.cond144.preheader.i.while.end156.i_crit_edge: ; preds = %while.cond144.preheader.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.end156.i

while.body117.i:                                  ; preds = %while.body117.i.while.body117.i_crit_edge, %if.end107.i.while.body117.i_crit_edge
  %dst.addr.3234.i = phi ptr [ %dst.addr.3.i232, %while.body117.i.while.body117.i_crit_edge ], [ %dst.addr.3227.i, %if.end107.i.while.body117.i_crit_edge ]
  %d0.2233.i = phi i32 [ %182, %while.body117.i.while.body117.i_crit_edge ], [ %d1.0.i227, %if.end107.i.while.body117.i_crit_edge ]
  %dst.pn232.i = phi ptr [ %incdec.ptr135.i, %while.body117.i.while.body117.i_crit_edge ], [ %add.ptr47, %if.end107.i.while.body117.i_crit_edge ]
  %n.addr.4231.i = phi i32 [ %sub142.i, %while.body117.i.while.body117.i_crit_edge ], [ %div1132.i, %if.end107.i.while.body117.i_crit_edge ]
  %src.addr.4230.i = phi ptr [ %incdec.ptr136.i, %while.body117.i.while.body117.i_crit_edge ], [ %src.addr.3.i225, %if.end107.i.while.body117.i_crit_edge ]
  %incdec.ptr118.i = getelementptr i32, ptr %src.addr.4230.i, i32 1
  %179 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %src.addr.4230.i) #1, !srcloc !18
  %shr120.i = lshr i32 %d0.2233.i, %and63.i
  %shl121.i = shl i32 %179, %and60.i
  %or122.i = or i32 %shl121.i, %shr120.i
  %incdec.ptr123.i = getelementptr i32, ptr %dst.pn232.i, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.addr.3234.i, i32 %or122.i) #1, !srcloc !19
  %incdec.ptr124.i = getelementptr i32, ptr %src.addr.4230.i, i32 2
  %180 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr118.i) #1, !srcloc !18
  %shr126.i = lshr i32 %179, %and63.i
  %shl127.i = shl i32 %180, %and60.i
  %or128.i = or i32 %shl127.i, %shr126.i
  %incdec.ptr129.i = getelementptr i32, ptr %dst.pn232.i, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr123.i, i32 %or128.i) #1, !srcloc !19
  %incdec.ptr130.i = getelementptr i32, ptr %src.addr.4230.i, i32 3
  %181 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr124.i) #1, !srcloc !18
  %shr132.i = lshr i32 %180, %and63.i
  %shl133.i = shl i32 %181, %and60.i
  %or134.i = or i32 %shl133.i, %shr132.i
  %incdec.ptr135.i = getelementptr i32, ptr %dst.pn232.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr129.i, i32 %or134.i) #1, !srcloc !19
  %incdec.ptr136.i = getelementptr i32, ptr %src.addr.4230.i, i32 4
  %182 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr130.i) #1, !srcloc !18
  %shr138.i = lshr i32 %181, %and63.i
  %shl139.i231 = shl i32 %182, %and60.i
  %or140.i = or i32 %shl139.i231, %shr138.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr135.i, i32 %or140.i) #1, !srcloc !19
  %sub142.i = add i32 %n.addr.4231.i, -4
  %dst.addr.3.i232 = getelementptr i32, ptr %dst.pn232.i, i32 5
  %cmp115.i = icmp ugt i32 %sub142.i, 3
  br i1 %cmp115.i, label %while.body117.i.while.body117.i_crit_edge, label %while.body117.i.while.cond144.preheader.i_crit_edge

while.body117.i.while.cond144.preheader.i_crit_edge: ; preds = %while.body117.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.cond144.preheader.i

while.body117.i.while.body117.i_crit_edge:        ; preds = %while.body117.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.body117.i

while.body147.i:                                  ; preds = %while.body147.i.while.body147.i_crit_edge, %while.cond144.preheader.i.while.body147.i_crit_edge
  %d0.3242.i = phi i32 [ %val.addr.2.i161.i, %while.body147.i.while.body147.i_crit_edge ], [ %d0.2.lcssa.i229, %while.cond144.preheader.i.while.body147.i_crit_edge ]
  %dst.addr.4241.i = phi ptr [ %incdec.ptr155.i235, %while.body147.i.while.body147.i_crit_edge ], [ %dst.addr.3.lcssa.i230, %while.cond144.preheader.i.while.body147.i_crit_edge ]
  %n.addr.5240.i = phi i32 [ %dec145.i, %while.body147.i.while.body147.i_crit_edge ], [ %n.addr.4.lcssa.i, %while.cond144.preheader.i.while.body147.i_crit_edge ]
  %src.addr.5239.i = phi ptr [ %incdec.ptr148.i233, %while.body147.i.while.body147.i_crit_edge ], [ %src.addr.4.lcssa.i228, %while.cond144.preheader.i.while.body147.i_crit_edge ]
  %dec145.i = add i32 %n.addr.5240.i, -1
  %incdec.ptr148.i233 = getelementptr i32, ptr %src.addr.5239.i, i32 1
  %183 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %src.addr.5239.i) #1, !srcloc !18
  %shr.i146.i = lshr i32 %183, 1
  %shl.i147.i = shl i32 %183, 1
  %184 = and i32 %shr.i146.i, 1431655765
  %185 = and i32 %shl.i147.i, -1431655766
  %xor1.i.i148.i = or i32 %184, %185
  %val.addr.0.i149.i = select i1 %tobool.not.i88.i, i32 %183, i32 %xor1.i.i148.i
  %shr4.i152.i = lshr i32 %val.addr.0.i149.i, 2
  %shl5.i153.i = shl i32 %val.addr.0.i149.i, 2
  %186 = and i32 %shr4.i152.i, 858993459
  %187 = and i32 %shl5.i153.i, -858993460
  %xor1.i25.i154.i = or i32 %186, %187
  %val.addr.1.i155.i = select i1 %tobool2.not.i94.i, i32 %val.addr.0.i149.i, i32 %xor1.i25.i154.i
  %shr11.i158.i = lshr i32 %val.addr.1.i155.i, 4
  %shl12.i159.i = shl i32 %val.addr.1.i155.i, 4
  %188 = and i32 %shr11.i158.i, 252645135
  %189 = and i32 %shl12.i159.i, -252645136
  %xor1.i28.i160.i = or i32 %188, %189
  %val.addr.2.i161.i = select i1 %tobool9.not.i100.i, i32 %val.addr.1.i155.i, i32 %xor1.i28.i160.i
  %shr151.i = lshr i32 %d0.3242.i, %and63.i
  %shl152.i = shl i32 %val.addr.2.i161.i, %and60.i
  %or153.i234 = or i32 %shl152.i, %shr151.i
  %shr.i164.i = lshr i32 %or153.i234, 1
  %shl.i165.i = shl i32 %or153.i234, 1
  %190 = and i32 %shr.i164.i, 1431655765
  %191 = and i32 %shl.i165.i, -1431655766
  %xor1.i.i166.i = or i32 %190, %191
  %val.addr.0.i167.i = select i1 %tobool.not.i88.i, i32 %or153.i234, i32 %xor1.i.i166.i
  %shr4.i170.i = lshr i32 %val.addr.0.i167.i, 2
  %shl5.i171.i = shl i32 %val.addr.0.i167.i, 2
  %192 = and i32 %shr4.i170.i, 858993459
  %193 = and i32 %shl5.i171.i, -858993460
  %xor1.i25.i172.i = or i32 %192, %193
  %val.addr.1.i173.i = select i1 %tobool2.not.i94.i, i32 %val.addr.0.i167.i, i32 %xor1.i25.i172.i
  %shr11.i176.i = lshr i32 %val.addr.1.i173.i, 4
  %shl12.i177.i = shl i32 %val.addr.1.i173.i, 4
  %194 = and i32 %shr11.i176.i, 252645135
  %195 = and i32 %shl12.i177.i, -252645136
  %xor1.i28.i178.i = or i32 %194, %195
  %val.addr.2.i179.i = select i1 %tobool9.not.i100.i, i32 %val.addr.1.i173.i, i32 %xor1.i28.i178.i
  %incdec.ptr155.i235 = getelementptr i32, ptr %dst.addr.4241.i, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.addr.4241.i, i32 %val.addr.2.i179.i) #1, !srcloc !19
  %tobool146.not.i = icmp eq i32 %dec145.i, 0
  br i1 %tobool146.not.i, label %while.body147.i.while.end156.i_crit_edge, label %while.body147.i.while.body147.i_crit_edge

while.body147.i.while.body147.i_crit_edge:        ; preds = %while.body147.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.body147.i

while.body147.i.while.end156.i_crit_edge:         ; preds = %while.body147.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.end156.i

while.end156.i:                                   ; preds = %while.body147.i.while.end156.i_crit_edge, %while.cond144.preheader.i.while.end156.i_crit_edge
  %src.addr.5.lcssa.i236 = phi ptr [ %src.addr.4.lcssa.i228, %while.cond144.preheader.i.while.end156.i_crit_edge ], [ %incdec.ptr148.i233, %while.body147.i.while.end156.i_crit_edge ]
  %dst.addr.4.lcssa.i237 = phi ptr [ %dst.addr.3.lcssa.i230, %while.cond144.preheader.i.while.end156.i_crit_edge ], [ %incdec.ptr155.i235, %while.body147.i.while.end156.i_crit_edge ]
  %d0.3.lcssa.i238 = phi i32 [ %d0.2.lcssa.i229, %while.cond144.preheader.i.while.end156.i_crit_edge ], [ %val.addr.2.i161.i, %while.body147.i.while.end156.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem112.i)
  %tobool157.not.i = icmp eq i32 %rem112.i, 0
  br i1 %tobool157.not.i, label %while.end156.i.bitcpy.exit_crit_edge, label %if.then158.i

while.end156.i.bitcpy.exit_crit_edge:             ; preds = %while.end156.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %bitcpy.exit

if.then158.i:                                     ; preds = %while.end156.i
  %sub159.i = sub nuw nsw i32 32, %and63.i
  call void @__sanitizer_cov_trace_cmp4(i32 %rem112.i, i32 %sub159.i)
  %cmp160.not.i = icmp ugt i32 %rem112.i, %sub159.i
  br i1 %cmp160.not.i, label %if.else163.i, label %if.then161.i

if.then161.i:                                     ; preds = %if.then158.i
  call void @__sanitizer_cov_trace_pc() #3
  %shr162.i = lshr i32 %d0.3.lcssa.i238, %and63.i
  br label %if.end169.i

if.else163.i:                                     ; preds = %if.then158.i
  call void @__sanitizer_cov_trace_pc() #3
  %196 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %src.addr.5.lcssa.i236) #1, !srcloc !18
  %shr.i182.i = lshr i32 %196, 1
  %shl.i183.i = shl i32 %196, 1
  %197 = and i32 %shr.i182.i, 1431655765
  %198 = and i32 %shl.i183.i, -1431655766
  %xor1.i.i184.i = or i32 %197, %198
  %val.addr.0.i185.i = select i1 %tobool.not.i88.i, i32 %196, i32 %xor1.i.i184.i
  %shr4.i188.i = lshr i32 %val.addr.0.i185.i, 2
  %shl5.i189.i = shl i32 %val.addr.0.i185.i, 2
  %199 = and i32 %shr4.i188.i, 858993459
  %200 = and i32 %shl5.i189.i, -858993460
  %xor1.i25.i190.i = or i32 %199, %200
  %val.addr.1.i191.i = select i1 %tobool2.not.i94.i, i32 %val.addr.0.i185.i, i32 %xor1.i25.i190.i
  %shr11.i194.i = lshr i32 %val.addr.1.i191.i, 4
  %shl12.i195.i = shl i32 %val.addr.1.i191.i, 4
  %201 = and i32 %shr11.i194.i, 252645135
  %202 = and i32 %shl12.i195.i, -252645136
  %xor1.i28.i196.i = or i32 %201, %202
  %val.addr.2.i197.i = select i1 %tobool9.not.i100.i, i32 %val.addr.1.i191.i, i32 %xor1.i28.i196.i
  %shr166.i = lshr i32 %d0.3.lcssa.i238, %and63.i
  %shl167.i = shl i32 %val.addr.2.i197.i, %and60.i
  %or168.i = or i32 %shl167.i, %shr166.i
  br label %if.end169.i

if.end169.i:                                      ; preds = %if.else163.i, %if.then161.i
  %d0.4.i239 = phi i32 [ %shr162.i, %if.then161.i ], [ %or168.i, %if.else163.i ]
  %shr.i200.i = lshr i32 %d0.4.i239, 1
  %shl.i201.i = shl i32 %d0.4.i239, 1
  %203 = and i32 %shr.i200.i, 1431655765
  %204 = and i32 %shl.i201.i, -1431655766
  %xor1.i.i202.i = or i32 %203, %204
  %val.addr.0.i203.i = select i1 %tobool.not.i88.i, i32 %d0.4.i239, i32 %xor1.i.i202.i
  %shr4.i206.i = lshr i32 %val.addr.0.i203.i, 2
  %shl5.i207.i = shl i32 %val.addr.0.i203.i, 2
  %205 = and i32 %shr4.i206.i, 858993459
  %206 = and i32 %shl5.i207.i, -858993460
  %xor1.i25.i208.i = or i32 %205, %206
  %val.addr.1.i209.i = select i1 %tobool2.not.i94.i, i32 %val.addr.0.i203.i, i32 %xor1.i25.i208.i
  %shr11.i212.i = lshr i32 %val.addr.1.i209.i, 4
  %shl12.i213.i = shl i32 %val.addr.1.i209.i, 4
  %207 = and i32 %shr11.i212.i, 252645135
  %208 = and i32 %shl12.i213.i, -252645136
  %xor1.i28.i214.i = or i32 %207, %208
  %val.addr.2.i215.i = select i1 %tobool9.not.i100.i, i32 %val.addr.1.i209.i, i32 %xor1.i28.i214.i
  %209 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dst.addr.4.lcssa.i237) #1, !srcloc !18
  %xor.i216.i = xor i32 %val.addr.2.i215.i, %209
  %210 = and i32 %xor.i216.i, %mask.0.i35.i
  %xor1.i218.i = xor i32 %210, %val.addr.2.i215.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.addr.4.lcssa.i237, i32 %xor1.i218.i) #1, !srcloc !19
  br label %bitcpy.exit

bitcpy.exit:                                      ; preds = %if.end169.i, %while.end156.i.bitcpy.exit_crit_edge, %if.end85.i, %if.then52.i, %while.end50.i.bitcpy.exit_crit_edge, %if.then3.i
  %add55 = add i32 %dst_idx.1244, %mul
  %add56 = add i32 %src_idx.1245, %mul
  %tobool44.not = icmp eq i32 %dec43, 0
  br i1 %tobool44.not, label %bitcpy.exit.cleanup_crit_edge, label %bitcpy.exit.while.body45_crit_edge

bitcpy.exit.while.body45_crit_edge:               ; preds = %bitcpy.exit
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.body45

bitcpy.exit.cleanup_crit_edge:                    ; preds = %bitcpy.exit
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

cleanup:                                          ; preds = %bitcpy.exit.cleanup_crit_edge, %bitcpy_rev.exit.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %while.cond42.preheader.cleanup_crit_edge, %fb_compute_bswapmask.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @__ksymtab_cfb_copyarea, !1, !"__ksymtab_cfb_copyarea", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/core/cfbcopyarea.c", i32 432, i32 1}
!2 = !{ptr @__UNIQUE_ID_author301, !3, !"__UNIQUE_ID_author301", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/core/cfbcopyarea.c", i32 434, i32 1}
!4 = !{ptr @__UNIQUE_ID_description302, !5, !"__UNIQUE_ID_description302", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/core/cfbcopyarea.c", i32 435, i32 1}
!6 = !{ptr @__UNIQUE_ID_file303, !7, !"__UNIQUE_ID_file303", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/core/cfbcopyarea.c", i32 436, i32 1}
!8 = !{ptr @__UNIQUE_ID_license304, !7, !"__UNIQUE_ID_license304", i1 false, i1 false}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{i64 4724724}
!19 = !{i64 4724306}
