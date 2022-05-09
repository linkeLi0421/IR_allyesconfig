; ModuleID = '/llk/IR_all_yes/drivers/media/platform/omap/omap_voutlib.c_pt.bc'
source_filename = "../drivers/media/platform/omap/omap_voutlib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+omap_vout_default_crop\22, \22a\22\09"
module asm "\09.weak\09__crc_omap_vout_default_crop\09\09\09\09"
module asm "\09.long\09__crc_omap_vout_default_crop\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_omap_vout_default_crop:\09\09\09\09\09"
module asm "\09.asciz \09\22omap_vout_default_crop\22\09\09\09\09\09"
module asm "__kstrtabns_omap_vout_default_crop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+omap_vout_try_window\22, \22a\22\09"
module asm "\09.weak\09__crc_omap_vout_try_window\09\09\09\09"
module asm "\09.long\09__crc_omap_vout_try_window\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_omap_vout_try_window:\09\09\09\09\09"
module asm "\09.asciz \09\22omap_vout_try_window\22\09\09\09\09\09"
module asm "__kstrtabns_omap_vout_try_window:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+omap_vout_new_window\22, \22a\22\09"
module asm "\09.weak\09__crc_omap_vout_new_window\09\09\09\09"
module asm "\09.long\09__crc_omap_vout_new_window\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_omap_vout_new_window:\09\09\09\09\09"
module asm "\09.asciz \09\22omap_vout_new_window\22\09\09\09\09\09"
module asm "__kstrtabns_omap_vout_new_window:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+omap_vout_new_crop\22, \22a\22\09"
module asm "\09.weak\09__crc_omap_vout_new_crop\09\09\09\09"
module asm "\09.long\09__crc_omap_vout_new_crop\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_omap_vout_new_crop:\09\09\09\09\09"
module asm "\09.asciz \09\22omap_vout_new_crop\22\09\09\09\09\09"
module asm "__kstrtabns_omap_vout_new_crop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+omap_vout_new_format\22, \22a\22\09"
module asm "\09.weak\09__crc_omap_vout_new_format\09\09\09\09"
module asm "\09.long\09__crc_omap_vout_new_format\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_omap_vout_new_format:\09\09\09\09\09"
module asm "\09.asciz \09\22omap_vout_new_format\22\09\09\09\09\09"
module asm "__kstrtabns_omap_vout_new_format:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.v4l2_framebuffer = type { i32, i32, ptr, %struct.anon }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon, i32, i32 }
%union.anon = type { i32 }
%struct.v4l2_window = type { %struct.v4l2_rect, i32, i32, ptr, i32, ptr, i8 }
%struct.page = type { i32, %union.anon.0, %union.anon.68, %struct.atomic_t, i32 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.68 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@__UNIQUE_ID_author234 = internal constant [35 x i8] c"omap_vout.author=Texas Instruments\00", section ".modinfo", align 1
@__UNIQUE_ID_description235 = internal constant [41 x i8] c"omap_vout.description=OMAP Video library\00", section ".modinfo", align 1
@__UNIQUE_ID_file236 = internal constant [53 x i8] c"omap_vout.file=drivers/media/platform/omap/omap-vout\00", section ".modinfo", align 1
@__UNIQUE_ID_license237 = internal constant [22 x i8] c"omap_vout.license=GPL\00", section ".modinfo", align 1
@__kstrtab_omap_vout_default_crop = external dso_local constant [0 x i8], align 1
@__kstrtabns_omap_vout_default_crop = external dso_local constant [0 x i8], align 1
@__ksymtab_omap_vout_default_crop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @omap_vout_default_crop to i32), ptr @__kstrtab_omap_vout_default_crop, ptr @__kstrtabns_omap_vout_default_crop }, section "___ksymtab_gpl+omap_vout_default_crop", align 4
@__kstrtab_omap_vout_try_window = external dso_local constant [0 x i8], align 1
@__kstrtabns_omap_vout_try_window = external dso_local constant [0 x i8], align 1
@__ksymtab_omap_vout_try_window = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @omap_vout_try_window to i32), ptr @__kstrtab_omap_vout_try_window, ptr @__kstrtabns_omap_vout_try_window }, section "___ksymtab_gpl+omap_vout_try_window", align 4
@__kstrtab_omap_vout_new_window = external dso_local constant [0 x i8], align 1
@__kstrtabns_omap_vout_new_window = external dso_local constant [0 x i8], align 1
@__ksymtab_omap_vout_new_window = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @omap_vout_new_window to i32), ptr @__kstrtab_omap_vout_new_window, ptr @__kstrtabns_omap_vout_new_window }, section "___ksymtab_gpl+omap_vout_new_window", align 4
@__kstrtab_omap_vout_new_crop = external dso_local constant [0 x i8], align 1
@__kstrtabns_omap_vout_new_crop = external dso_local constant [0 x i8], align 1
@__ksymtab_omap_vout_new_crop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @omap_vout_new_crop to i32), ptr @__kstrtab_omap_vout_new_crop, ptr @__kstrtabns_omap_vout_new_crop }, section "___ksymtab_gpl+omap_vout_new_crop", align 4
@__kstrtab_omap_vout_new_format = external dso_local constant [0 x i8], align 1
@__kstrtabns_omap_vout_new_format = external dso_local constant [0 x i8], align 1
@__ksymtab_omap_vout_new_format = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @omap_vout_new_format to i32), ptr @__kstrtab_omap_vout_new_format, ptr @__kstrtabns_omap_vout_new_format }, section "___ksymtab_gpl+omap_vout_new_format", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"VM_BUG_ON_PAGE(1 && PageCompound(page))\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@___asan_gen_ = private constant [46 x i8] c"../drivers/media/platform/omap/omap_voutlib.c\00", align 1
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 440, i32 1 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_author234, ptr @__UNIQUE_ID_description235, ptr @__UNIQUE_ID_file236, ptr @__UNIQUE_ID_license237, ptr @__ksymtab_omap_vout_default_crop, ptr @__ksymtab_omap_vout_new_crop, ptr @__ksymtab_omap_vout_new_format, ptr @__ksymtab_omap_vout_new_window, ptr @__ksymtab_omap_vout_try_window, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @omap_vout_default_crop(ptr nocapture noundef readonly %pix, ptr nocapture noundef readonly %fbuf, ptr nocapture noundef %crop) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pix to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pix, align 4
  %fmt = getelementptr inbounds %struct.v4l2_framebuffer, ptr %fbuf, i32 0, i32 3
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fmt, align 4
  %4 = tail call i32 @llvm.umin.i32(i32 %1, i32 %3)
  %width5 = getelementptr inbounds %struct.v4l2_rect, ptr %crop, i32 0, i32 2
  %5 = ptrtoint ptr %width5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %width5, align 4
  %height = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 1
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height, align 4
  %height7 = getelementptr inbounds %struct.v4l2_framebuffer, ptr %fbuf, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %height7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height7, align 4
  %10 = tail call i32 @llvm.umin.i32(i32 %7, i32 %9)
  %height16 = getelementptr inbounds %struct.v4l2_rect, ptr %crop, i32 0, i32 3
  %and = and i32 %4, -2
  %11 = ptrtoint ptr %width5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and, ptr %width5, align 4
  %and19 = and i32 %10, -2
  %12 = ptrtoint ptr %height16 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and19, ptr %height16, align 4
  %13 = ptrtoint ptr %pix to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pix, align 4
  %sub = sub i32 %14, %and
  %shr = lshr i32 %sub, 1
  %and22 = and i32 %shr, 2147483646
  %15 = ptrtoint ptr %crop to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and22, ptr %crop, align 4
  %16 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height, align 4
  %sub25 = sub i32 %17, %and19
  %shr26 = lshr i32 %sub25, 1
  %and27 = and i32 %shr26, 2147483646
  %top = getelementptr inbounds %struct.v4l2_rect, ptr %crop, i32 0, i32 1
  %18 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and27, ptr %top, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @omap_vout_try_window(ptr nocapture noundef readonly %fbuf, ptr nocapture noundef %new_win) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %new_win to i32
  call void @__asan_load4_noabort(i32 %0)
  %try_win.sroa.0.0.copyload = load i32, ptr %new_win, align 4
  %try_win.sroa.10.0.w.sroa_idx = getelementptr inbounds i8, ptr %new_win, i32 4
  %1 = ptrtoint ptr %try_win.sroa.10.0.w.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %1)
  %try_win.sroa.10.0.copyload = load i32, ptr %try_win.sroa.10.0.w.sroa_idx, align 4
  %try_win.sroa.16.0.w.sroa_idx = getelementptr inbounds i8, ptr %new_win, i32 8
  %2 = ptrtoint ptr %try_win.sroa.16.0.w.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %try_win.sroa.16.0.copyload = load i32, ptr %try_win.sroa.16.0.w.sroa_idx, align 4
  %try_win.sroa.27.0.w.sroa_idx = getelementptr inbounds i8, ptr %new_win, i32 12
  %3 = ptrtoint ptr %try_win.sroa.27.0.w.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %try_win.sroa.27.0.copyload = load i32, ptr %try_win.sroa.27.0.w.sroa_idx, align 4
  %4 = tail call i32 @llvm.smin.i32(i32 %try_win.sroa.0.0.copyload, i32 0)
  %spec.select = add i32 %try_win.sroa.16.0.copyload, %4
  %5 = tail call i32 @llvm.smax.i32(i32 %try_win.sroa.0.0.copyload, i32 0)
  %6 = tail call i32 @llvm.smin.i32(i32 %try_win.sroa.10.0.copyload, i32 0)
  %try_win.sroa.27.0 = add i32 %try_win.sroa.27.0.copyload, %6
  %7 = tail call i32 @llvm.smax.i32(i32 %try_win.sroa.10.0.copyload, i32 0)
  %fmt = getelementptr inbounds %struct.v4l2_framebuffer, ptr %fbuf, i32 0, i32 3
  %8 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fmt, align 4
  %10 = tail call i32 @llvm.umin.i32(i32 %spec.select, i32 %9)
  %height18 = getelementptr inbounds %struct.v4l2_framebuffer, ptr %fbuf, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %height18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height18, align 4
  %13 = tail call i32 @llvm.umin.i32(i32 %try_win.sroa.27.0, i32 %12)
  %add30 = add i32 %10, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %add30, i32 %9)
  %cmp33 = icmp ugt i32 %add30, %9
  %sub = sub i32 %9, %5
  %try_win.sroa.16.1 = select i1 %cmp33, i32 %sub, i32 %10
  %add42 = add i32 %13, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %add42, i32 %12)
  %cmp45 = icmp ugt i32 %add42, %12
  %sub50 = sub i32 %12, %7
  %try_win.sroa.27.1 = select i1 %cmp45, i32 %sub50, i32 %13
  %and = and i32 %try_win.sroa.16.1, -2
  %and55 = and i32 %try_win.sroa.27.1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp57 = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %cmp59 = icmp eq i32 %and55, 0
  %or.cond = select i1 %cmp57, i1 true, i1 %cmp59
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end61

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end61:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %new_win to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %5, ptr %new_win, align 4
  %15 = ptrtoint ptr %try_win.sroa.10.0.w.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %7, ptr %try_win.sroa.10.0.w.sroa_idx, align 4
  %16 = ptrtoint ptr %try_win.sroa.16.0.w.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and, ptr %try_win.sroa.16.0.w.sroa_idx, align 4
  %17 = ptrtoint ptr %try_win.sroa.27.0.w.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and55, ptr %try_win.sroa.27.0.w.sroa_idx, align 4
  %field = getelementptr inbounds %struct.v4l2_window, ptr %new_win, i32 0, i32 1
  %18 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %field, align 4
  %clips = getelementptr inbounds %struct.v4l2_window, ptr %new_win, i32 0, i32 3
  %19 = ptrtoint ptr %clips to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %clips, align 4
  %clipcount = getelementptr inbounds %struct.v4l2_window, ptr %new_win, i32 0, i32 4
  %20 = ptrtoint ptr %clipcount to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %clipcount, align 4
  %bitmap = getelementptr inbounds %struct.v4l2_window, ptr %new_win, i32 0, i32 5
  %21 = ptrtoint ptr %bitmap to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %bitmap, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end61 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @omap_vout_new_window(ptr nocapture readnone %crop, ptr nocapture noundef writeonly %win, ptr nocapture noundef readonly %fbuf, ptr nocapture noundef %new_win) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %new_win to i32
  call void @__asan_load4_noabort(i32 %0)
  %try_win.sroa.0.0.copyload.i = load i32, ptr %new_win, align 4
  %try_win.sroa.10.0.w.sroa_idx.i = getelementptr inbounds i8, ptr %new_win, i32 4
  %1 = ptrtoint ptr %try_win.sroa.10.0.w.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %try_win.sroa.10.0.copyload.i = load i32, ptr %try_win.sroa.10.0.w.sroa_idx.i, align 4
  %try_win.sroa.16.0.w.sroa_idx.i = getelementptr inbounds i8, ptr %new_win, i32 8
  %2 = ptrtoint ptr %try_win.sroa.16.0.w.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %try_win.sroa.16.0.copyload.i = load i32, ptr %try_win.sroa.16.0.w.sroa_idx.i, align 4
  %try_win.sroa.27.0.w.sroa_idx.i = getelementptr inbounds i8, ptr %new_win, i32 12
  %3 = ptrtoint ptr %try_win.sroa.27.0.w.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %try_win.sroa.27.0.copyload.i = load i32, ptr %try_win.sroa.27.0.w.sroa_idx.i, align 4
  %4 = tail call i32 @llvm.smin.i32(i32 %try_win.sroa.0.0.copyload.i, i32 0) #6
  %spec.select.i = add i32 %try_win.sroa.16.0.copyload.i, %4
  %5 = tail call i32 @llvm.smax.i32(i32 %try_win.sroa.0.0.copyload.i, i32 0) #6
  %6 = tail call i32 @llvm.smin.i32(i32 %try_win.sroa.10.0.copyload.i, i32 0) #6
  %try_win.sroa.27.0.i = add i32 %try_win.sroa.27.0.copyload.i, %6
  %7 = tail call i32 @llvm.smax.i32(i32 %try_win.sroa.10.0.copyload.i, i32 0) #6
  %fmt.i = getelementptr inbounds %struct.v4l2_framebuffer, ptr %fbuf, i32 0, i32 3
  %8 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fmt.i, align 4
  %10 = tail call i32 @llvm.umin.i32(i32 %spec.select.i, i32 %9) #6
  %height18.i = getelementptr inbounds %struct.v4l2_framebuffer, ptr %fbuf, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %height18.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height18.i, align 4
  %13 = tail call i32 @llvm.umin.i32(i32 %try_win.sroa.27.0.i, i32 %12) #6
  %add30.i = add i32 %10, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %add30.i, i32 %9)
  %cmp33.i = icmp ugt i32 %add30.i, %9
  %sub.i = sub i32 %9, %5
  %try_win.sroa.16.1.i = select i1 %cmp33.i, i32 %sub.i, i32 %10
  %add42.i = add i32 %13, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %add42.i, i32 %12)
  %cmp45.i = icmp ugt i32 %add42.i, %12
  %sub50.i = sub i32 %12, %7
  %try_win.sroa.27.1.i = select i1 %cmp45.i, i32 %sub50.i, i32 %13
  %and.i = and i32 %try_win.sroa.16.1.i, -2
  %and55.i = and i32 %try_win.sroa.27.1.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp57.i = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i)
  %cmp59.i = icmp eq i32 %and55.i, 0
  %or.cond.i = select i1 %cmp57.i, i1 true, i1 %cmp59.i
  br i1 %or.cond.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %new_win to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %5, ptr %new_win, align 4
  %15 = ptrtoint ptr %try_win.sroa.10.0.w.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %7, ptr %try_win.sroa.10.0.w.sroa_idx.i, align 4
  %16 = ptrtoint ptr %try_win.sroa.16.0.w.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and.i, ptr %try_win.sroa.16.0.w.sroa_idx.i, align 4
  %17 = ptrtoint ptr %try_win.sroa.27.0.w.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and55.i, ptr %try_win.sroa.27.0.w.sroa_idx.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_window, ptr %new_win, i32 0, i32 1
  %18 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %field.i, align 4
  %clips.i = getelementptr inbounds %struct.v4l2_window, ptr %new_win, i32 0, i32 3
  %19 = ptrtoint ptr %clips.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %clips.i, align 4
  %clipcount.i = getelementptr inbounds %struct.v4l2_window, ptr %new_win, i32 0, i32 4
  %20 = ptrtoint ptr %clipcount.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %clipcount.i, align 4
  %bitmap.i = getelementptr inbounds %struct.v4l2_window, ptr %new_win, i32 0, i32 5
  %21 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %bitmap.i, align 4
  %22 = call ptr @memcpy(ptr %win, ptr %new_win, i32 16)
  %23 = load i32, ptr %field.i, align 4
  %field2 = getelementptr inbounds %struct.v4l2_window, ptr %win, i32 0, i32 1
  %24 = ptrtoint ptr %field2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %field2, align 4
  %chromakey = getelementptr inbounds %struct.v4l2_window, ptr %new_win, i32 0, i32 2
  %25 = ptrtoint ptr %chromakey to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %chromakey, align 4
  %chromakey3 = getelementptr inbounds %struct.v4l2_window, ptr %win, i32 0, i32 2
  %27 = ptrtoint ptr %chromakey3 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %chromakey3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @omap_vout_dss_omap24xx() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @omap_vout_dss_omap34xx() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 false
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @omap_vout_new_crop(ptr nocapture noundef readonly %pix, ptr nocapture noundef writeonly %crop, ptr nocapture noundef %win, ptr nocapture noundef readonly %fbuf, ptr nocapture noundef readonly %new_crop) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %new_crop to i32
  call void @__asan_load4_noabort(i32 %0)
  %try_crop.sroa.0.0.copyload = load i32, ptr %new_crop, align 4
  %try_crop.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %new_crop, i32 4
  %1 = ptrtoint ptr %try_crop.sroa.10.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %1)
  %try_crop.sroa.10.0.copyload = load i32, ptr %try_crop.sroa.10.0..sroa_idx, align 4
  %try_crop.sroa.16.0..sroa_idx = getelementptr inbounds i8, ptr %new_crop, i32 8
  %2 = ptrtoint ptr %try_crop.sroa.16.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %try_crop.sroa.16.0.copyload = load i32, ptr %try_crop.sroa.16.0..sroa_idx, align 4
  %try_crop.sroa.39.0..sroa_idx = getelementptr inbounds i8, ptr %new_crop, i32 12
  %3 = ptrtoint ptr %try_crop.sroa.39.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %try_crop.sroa.39.0.copyload = load i32, ptr %try_crop.sroa.39.0..sroa_idx, align 4
  %4 = tail call i32 @llvm.smin.i32(i32 %try_crop.sroa.0.0.copyload, i32 0)
  %spec.select = add i32 %try_crop.sroa.16.0.copyload, %4
  %5 = tail call i32 @llvm.smax.i32(i32 %try_crop.sroa.0.0.copyload, i32 0)
  %6 = tail call i32 @llvm.smin.i32(i32 %try_crop.sroa.10.0.copyload, i32 0)
  %try_crop.sroa.39.0 = add i32 %try_crop.sroa.39.0.copyload, %6
  %7 = tail call i32 @llvm.smax.i32(i32 %try_crop.sroa.10.0.copyload, i32 0)
  %8 = ptrtoint ptr %pix to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pix, align 4
  %10 = tail call i32 @llvm.umin.i32(i32 %spec.select, i32 %9)
  %height16 = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 1
  %11 = ptrtoint ptr %height16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height16, align 4
  %13 = tail call i32 @llvm.umin.i32(i32 %try_crop.sroa.39.0, i32 %12)
  %add27 = add i32 %10, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %add27, i32 %9)
  %cmp29 = icmp ugt i32 %add27, %9
  %sub = sub i32 %9, %5
  %try_crop.sroa.16.1 = select i1 %cmp29, i32 %sub, i32 %10
  %add37 = add i32 %13, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %add37, i32 %12)
  %cmp39 = icmp ugt i32 %add37, %12
  %sub43 = sub i32 %12, %7
  %try_crop.sroa.39.1 = select i1 %cmp39, i32 %sub43, i32 %13
  %and = and i32 %try_crop.sroa.16.1, -2
  %and48 = and i32 %try_crop.sroa.39.1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp50 = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %cmp52 = icmp eq i32 %and48, 0
  %or.cond = select i1 %cmp50, i1 true, i1 %cmp52
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end54

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end54:                                         ; preds = %entry
  %mul = shl i32 %and48, 10
  %height69 = getelementptr inbounds %struct.v4l2_rect, ptr %win, i32 0, i32 3
  %14 = ptrtoint ptr %height69 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height69, align 4
  %div = udiv i32 %mul, %15
  %div81 = udiv i32 %mul, %div
  %and82 = and i32 %div81, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %cmp87 = icmp eq i32 %and82, 0
  %storemerge312 = select i1 %cmp87, i32 2, i32 %and82
  %16 = ptrtoint ptr %height69 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %storemerge312, ptr %height69, align 4
  %top95 = getelementptr inbounds %struct.v4l2_rect, ptr %win, i32 0, i32 1
  %17 = ptrtoint ptr %top95 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %top95, align 4
  %add96 = add i32 %storemerge312, %18
  %fmt = getelementptr inbounds %struct.v4l2_framebuffer, ptr %fbuf, i32 0, i32 3
  %height97 = getelementptr inbounds %struct.v4l2_framebuffer, ptr %fbuf, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %height97 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %height97, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add96, i32 %20)
  %cmp98 = icmp ugt i32 %add96, %20
  br i1 %cmp98, label %if.then99, label %if.end54.if.end113_crit_edge

if.end54.if.end113_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end113

if.then99:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  %sub104 = sub i32 %20, %18
  %and105 = and i32 %sub104, -2
  %21 = ptrtoint ptr %height69 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and105, ptr %height69, align 4
  br label %if.end113

if.end113:                                        ; preds = %if.then99, %if.end54.if.end113_crit_edge
  %mul115 = shl i32 %and, 10
  %width117 = getelementptr inbounds %struct.v4l2_rect, ptr %win, i32 0, i32 2
  %22 = ptrtoint ptr %width117 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %width117, align 4
  %div118 = udiv i32 %mul115, %23
  %div132 = udiv i32 %mul115, %div118
  %and133 = and i32 %div132, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133)
  %cmp138 = icmp eq i32 %and133, 0
  %storemerge = select i1 %cmp138, i32 2, i32 %and133
  %24 = ptrtoint ptr %width117 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %storemerge, ptr %width117, align 4
  %25 = ptrtoint ptr %win to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %win, align 4
  %add147 = add i32 %storemerge, %26
  %27 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add147, i32 %28)
  %cmp150 = icmp ugt i32 %add147, %28
  br i1 %cmp150, label %if.then151, label %if.end113.if.end165_crit_edge

if.end113.if.end165_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end165

if.then151:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #8
  %sub156 = sub i32 %28, %26
  %and157 = and i32 %sub156, -2
  %29 = ptrtoint ptr %width117 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and157, ptr %width117, align 4
  br label %if.end165

if.end165:                                        ; preds = %if.then151, %if.end113.if.end165_crit_edge
  %30 = ptrtoint ptr %crop to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %5, ptr %crop, align 4
  %try_crop.sroa.10.0..sroa_idx239 = getelementptr inbounds i8, ptr %crop, i32 4
  %31 = ptrtoint ptr %try_crop.sroa.10.0..sroa_idx239 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %7, ptr %try_crop.sroa.10.0..sroa_idx239, align 4
  %try_crop.sroa.16.0..sroa_idx244 = getelementptr inbounds i8, ptr %crop, i32 8
  %32 = ptrtoint ptr %try_crop.sroa.16.0..sroa_idx244 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and, ptr %try_crop.sroa.16.0..sroa_idx244, align 4
  %try_crop.sroa.39.0..sroa_idx258 = getelementptr inbounds i8, ptr %crop, i32 12
  %33 = ptrtoint ptr %try_crop.sroa.39.0..sroa_idx258 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and48, ptr %try_crop.sroa.39.0..sroa_idx258, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end165, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end165 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @omap_vout_new_format(ptr nocapture noundef readonly %pix, ptr nocapture noundef readonly %fbuf, ptr nocapture noundef %crop, ptr nocapture noundef %win) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pix to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pix, align 4
  %fmt.i = getelementptr inbounds %struct.v4l2_framebuffer, ptr %fbuf, i32 0, i32 3
  %2 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fmt.i, align 4
  %4 = tail call i32 @llvm.umin.i32(i32 %1, i32 %3) #6
  %width5.i = getelementptr inbounds %struct.v4l2_rect, ptr %crop, i32 0, i32 2
  %5 = ptrtoint ptr %width5.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %width5.i, align 4
  %height.i = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 1
  %6 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height.i, align 4
  %height7.i = getelementptr inbounds %struct.v4l2_framebuffer, ptr %fbuf, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %height7.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height7.i, align 4
  %10 = tail call i32 @llvm.umin.i32(i32 %7, i32 %9) #6
  %height16.i = getelementptr inbounds %struct.v4l2_rect, ptr %crop, i32 0, i32 3
  %and.i = and i32 %4, -2
  %11 = ptrtoint ptr %width5.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and.i, ptr %width5.i, align 4
  %and19.i = and i32 %10, -2
  %12 = ptrtoint ptr %height16.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and19.i, ptr %height16.i, align 4
  %13 = ptrtoint ptr %pix to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pix, align 4
  %sub.i = sub i32 %14, %and.i
  %shr.i = lshr i32 %sub.i, 1
  %and22.i = and i32 %shr.i, 2147483646
  %15 = ptrtoint ptr %crop to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and22.i, ptr %crop, align 4
  %16 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height.i, align 4
  %sub25.i = sub i32 %17, %and19.i
  %shr26.i = lshr i32 %sub25.i, 1
  %and27.i = and i32 %shr26.i, 2147483646
  %top.i = getelementptr inbounds %struct.v4l2_rect, ptr %crop, i32 0, i32 1
  %18 = ptrtoint ptr %top.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and27.i, ptr %top.i, align 4
  %width1 = getelementptr inbounds %struct.v4l2_rect, ptr %win, i32 0, i32 2
  %19 = ptrtoint ptr %width1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and.i, ptr %width1, align 4
  %20 = load i32, ptr %height16.i, align 4
  %height3 = getelementptr inbounds %struct.v4l2_rect, ptr %win, i32 0, i32 3
  %21 = ptrtoint ptr %height3 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %height3, align 4
  %22 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fmt.i, align 4
  %sub = sub i32 %23, %and.i
  %shr = lshr i32 %sub, 1
  %and = and i32 %shr, 2147483646
  %24 = ptrtoint ptr %win to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and, ptr %win, align 4
  %25 = ptrtoint ptr %height7.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %height7.i, align 4
  %sub12 = sub i32 %26, %20
  %shr13 = lshr i32 %sub12, 1
  %and14 = and i32 %shr13, 2147483646
  %top = getelementptr inbounds %struct.v4l2_rect, ptr %win, i32 0, i32 1
  %27 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and14, ptr %top, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_vout_alloc_buffer(i32 noundef %buf_size, ptr nocapture noundef writeonly %phys_addr) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %buf_size, 4095
  %and = and i32 %add, -4096
  %dec.i = add i32 %and, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %dec.i)
  %tobool.not.i.i = icmp eq i32 %dec.i, 4095
  %shr.i = lshr i32 %dec.i, 12
  %0 = tail call i32 @llvm.ctlz.i32(i32 %shr.i, i1 true) #6, !range !29
  %sub.i.i = sub nuw nsw i32 32, %0
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  %call1 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef %cond.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not17 = icmp eq i32 %and, 0
  %or.cond = or i1 %tobool.not, %cmp.not17
  br i1 %or.cond, label %entry.if.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

while.body:                                       ; preds = %SetPageReserved.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %addr.019 = phi i32 [ %add4, %SetPageReserved.exit.while.body_crit_edge ], [ %call1, %entry.while.body_crit_edge ]
  %size.018 = phi i32 [ %sub5, %SetPageReserved.exit.while.body_crit_edge ], [ %and, %entry.while.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %1 = load ptr, ptr @mem_map, align 4
  %sub = add i32 %addr.019, 1073741824
  %shr = lshr i32 %sub, 12
  %add.ptr = getelementptr %struct.page, ptr %1, i32 %shr
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %add.ptr, align 4
  %4 = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i13 = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i13, label %PageCompound.exit.i, label %while.body.if.then.i15_crit_edge

while.body.if.then.i15_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i15

PageCompound.exit.i:                              ; preds = %while.body
  %5 = getelementptr %struct.page, ptr %1, i32 %shr, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i14 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i14, label %do.body7.i, label %PageCompound.exit.i.if.then.i15_crit_edge, !prof !30

PageCompound.exit.i.if.then.i15_crit_edge:        ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i15

if.then.i15:                                      ; preds = %PageCompound.exit.i.if.then.i15_crit_edge, %while.body.if.then.i15_crit_edge
  tail call void @dump_page(ptr noundef %add.ptr, ptr noundef nonnull @.str) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 440, 0\0A.popsection", ""() #6, !srcloc !31
  unreachable

do.body7.i:                                       ; preds = %PageCompound.exit.i
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.i.not.i = icmp eq i32 %9, -1
  br i1 %cmp.i.not.i, label %if.then16.i, label %SetPageReserved.exit, !prof !32

if.then16.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dump_page(ptr noundef %add.ptr, ptr noundef nonnull @.str.1) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 440, 0\0A.popsection", ""() #6, !srcloc !33
  unreachable

SetPageReserved.exit:                             ; preds = %do.body7.i
  tail call void @_set_bit(i32 noundef 12, ptr noundef %add.ptr) #6
  %add4 = add i32 %addr.019, 4096
  %sub5 = add i32 %size.018, -4096
  %cmp.not = icmp eq i32 %sub5, 0
  br i1 %cmp.not, label %SetPageReserved.exit.if.end_crit_edge, label %SetPageReserved.exit.while.body_crit_edge

SetPageReserved.exit.while.body_crit_edge:        ; preds = %SetPageReserved.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

SetPageReserved.exit.if.end_crit_edge:            ; preds = %SetPageReserved.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %SetPageReserved.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %call.i = tail call i32 @__virt_to_phys(i32 noundef %call1) #6
  %10 = ptrtoint ptr %phys_addr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call.i, ptr %phys_addr, align 4
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_vout_free_buffer(i32 noundef %virtaddr, i32 noundef %buf_size) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %buf_size, 4095
  %and = and i32 %add, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not13 = icmp eq i32 %and, 0
  br i1 %cmp.not13, label %entry.get_order.exit_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.get_order.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_order.exit

while.body:                                       ; preds = %ClearPageReserved.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %addr.015 = phi i32 [ %add3, %ClearPageReserved.exit.while.body_crit_edge ], [ %virtaddr, %entry.while.body_crit_edge ]
  %size.014 = phi i32 [ %sub4, %ClearPageReserved.exit.while.body_crit_edge ], [ %and, %entry.while.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %0 = load ptr, ptr @mem_map, align 4
  %sub = add i32 %addr.015, 1073741824
  %shr = lshr i32 %sub, 12
  %add.ptr = getelementptr %struct.page, ptr %0, i32 %shr
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %add.ptr, align 4
  %3 = and i32 %2, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i.i, label %PageCompound.exit.i, label %while.body.if.then.i_crit_edge

while.body.if.then.i_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

PageCompound.exit.i:                              ; preds = %while.body
  %4 = getelementptr %struct.page, ptr %0, i32 %shr, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %PageCompound.exit.i.if.then.i_crit_edge, !prof !30

PageCompound.exit.i.if.then.i_crit_edge:          ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.i:                                        ; preds = %PageCompound.exit.i.if.then.i_crit_edge, %while.body.if.then.i_crit_edge
  tail call void @dump_page(ptr noundef %add.ptr, ptr noundef nonnull @.str) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 440, 0\0A.popsection", ""() #6, !srcloc !34
  unreachable

do.body7.i:                                       ; preds = %PageCompound.exit.i
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp.i.not.i = icmp eq i32 %8, -1
  br i1 %cmp.i.not.i, label %if.then16.i, label %ClearPageReserved.exit, !prof !32

if.then16.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dump_page(ptr noundef %add.ptr, ptr noundef nonnull @.str.1) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 440, 0\0A.popsection", ""() #6, !srcloc !35
  unreachable

ClearPageReserved.exit:                           ; preds = %do.body7.i
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %add.ptr) #6
  %add3 = add i32 %addr.015, 4096
  %sub4 = add i32 %size.014, -4096
  %cmp.not = icmp eq i32 %sub4, 0
  br i1 %cmp.not, label %ClearPageReserved.exit.get_order.exit_crit_edge, label %ClearPageReserved.exit.while.body_crit_edge

ClearPageReserved.exit.while.body_crit_edge:      ; preds = %ClearPageReserved.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

ClearPageReserved.exit.get_order.exit_crit_edge:  ; preds = %ClearPageReserved.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_order.exit

get_order.exit:                                   ; preds = %ClearPageReserved.exit.get_order.exit_crit_edge, %entry.get_order.exit_crit_edge
  %dec.i = add i32 %and, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %dec.i)
  %tobool.not.i.i11 = icmp eq i32 %dec.i, 4095
  %shr.i = lshr i32 %dec.i, 12
  %9 = tail call i32 @llvm.ctlz.i32(i32 %shr.i, i1 true) #6, !range !29
  %sub.i.i = sub nuw nsw i32 32, %9
  %cond.i.i = select i1 %tobool.not.i.i11, i32 0, i32 %sub.i.i
  tail call void @free_pages(i32 noundef %virtaddr, i32 noundef %cond.i.i) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @__UNIQUE_ID_author234, !1, !"__UNIQUE_ID_author234", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/omap/omap_voutlib.c", i32 33, i32 1}
!2 = !{ptr @__UNIQUE_ID_description235, !3, !"__UNIQUE_ID_description235", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/omap/omap_voutlib.c", i32 34, i32 1}
!4 = !{ptr @__UNIQUE_ID_file236, !5, !"__UNIQUE_ID_file236", i1 false, i1 false}
!5 = !{!"../drivers/media/platform/omap/omap_voutlib.c", i32 35, i32 1}
!6 = !{ptr @__UNIQUE_ID_license237, !5, !"__UNIQUE_ID_license237", i1 false, i1 false}
!7 = !{ptr @__ksymtab_omap_vout_default_crop, !8, !"__ksymtab_omap_vout_default_crop", i1 false, i1 false}
!8 = !{!"../drivers/media/platform/omap/omap_voutlib.c", i32 55, i32 1}
!9 = !{ptr @__ksymtab_omap_vout_try_window, !10, !"__ksymtab_omap_vout_try_window", i1 false, i1 false}
!10 = !{!"../drivers/media/platform/omap/omap_voutlib.c", i32 105, i32 1}
!11 = !{ptr @__ksymtab_omap_vout_new_window, !12, !"__ksymtab_omap_vout_new_window", i1 false, i1 false}
!12 = !{!"../drivers/media/platform/omap/omap_voutlib.c", i32 157, i32 1}
!13 = !{ptr @__ksymtab_omap_vout_new_crop, !14, !"__ksymtab_omap_vout_new_crop", i1 false, i1 false}
!14 = !{!"../drivers/media/platform/omap/omap_voutlib.c", i32 276, i32 1}
!15 = !{ptr @__ksymtab_omap_vout_new_format, !16, !"__ksymtab_omap_vout_new_format", i1 false, i1 false}
!16 = !{!"../drivers/media/platform/omap/omap_voutlib.c", i32 300, i32 1}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../include/linux/page-flags.h", i32 440, i32 1}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{i32 0, i32 33}
!30 = !{!"branch_weights", i32 2000, i32 1}
!31 = !{i64 2150575267, i64 2150575440, i64 2150575455, i64 2150575507, i64 2150575566, i64 2150575590, i64 2150575631, i64 2150575652, i64 2150575680, i64 2150575712}
!32 = !{!"branch_weights", i32 1, i32 2000}
!33 = !{i64 2150576038, i64 2150576211, i64 2150576226, i64 2150576278, i64 2150576337, i64 2150576361, i64 2150576402, i64 2150576423, i64 2150576451, i64 2150576483}
!34 = !{i64 2150583426, i64 2150583599, i64 2150583614, i64 2150583666, i64 2150583725, i64 2150583749, i64 2150583790, i64 2150583811, i64 2150583839, i64 2150583871}
!35 = !{i64 2150584197, i64 2150584370, i64 2150584385, i64 2150584437, i64 2150584496, i64 2150584520, i64 2150584561, i64 2150584582, i64 2150584610, i64 2150584642}
