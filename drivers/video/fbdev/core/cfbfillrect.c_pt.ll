; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/core/cfbfillrect.c_pt.bc'
source_filename = "../drivers/video/fbdev/core/cfbfillrect.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+cfb_fillrect\22, \22a\22\09"
module asm "\09.weak\09__crc_cfb_fillrect\09\09\09\09"
module asm "\09.long\09__crc_cfb_fillrect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfb_fillrect:\09\09\09\09\09"
module asm "\09.asciz \09\22cfb_fillrect\22\09\09\09\09\09"
module asm "__kstrtabns_cfb_fillrect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }
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

@cfb_fillrect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 320, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013cfb_fillrect(): unknown rop, defaulting to ROP_COPY\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cfb_fillrect\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/video/fbdev/core/cfbfillrect.c\00", [57 x i8] zeroinitializer }, align 32
@cfb_fillrect._entry_ptr = internal global ptr @cfb_fillrect._entry, section ".printk_index", align 4
@cfb_fillrect._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cfb_fillrect._entry_ptr.4 = internal global ptr @cfb_fillrect._entry.3, section ".printk_index", align 4
@__kstrtab_cfb_fillrect = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfb_fillrect = external dso_local constant [0 x i8], align 1
@__ksymtab_cfb_fillrect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfb_fillrect to i32), ptr @__kstrtab_cfb_fillrect, ptr @__kstrtabns_cfb_fillrect }, section "___ksymtab+cfb_fillrect", align 4
@__UNIQUE_ID_author301 = internal constant [57 x i8] c"cfbfillrect.author=James Simmons <jsimmons@users.sf.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description302 = internal constant [68 x i8] c"cfbfillrect.description=Generic software accelerated fill rectangle\00", section ".modinfo", align 1
@__UNIQUE_ID_file303 = internal constant [54 x i8] c"cfbfillrect.file=drivers/video/fbdev/core/cfbfillrect\00", section ".modinfo", align 1
@__UNIQUE_ID_license304 = internal constant [24 x i8] c"cfbfillrect.license=GPL\00", section ".modinfo", align 1
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/video/fbdev/core/fb_draw.h\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"pixel_to_pat(): unsupported pixelformat %d\0A\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.7 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 4, i64 8, i64 12, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 320, i32 4 }
@___asan_gen_.22 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.23 = private constant [42 x i8] c"../drivers/video/fbdev/core/cfbfillrect.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 350, i32 4 }
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [38 x i8] c"../drivers/video/fbdev/core/fb_draw.h\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 72, i32 3 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file303, ptr @__UNIQUE_ID_license304, ptr @__ksymtab_cfb_fillrect, ptr @cfb_fillrect._entry, ptr @cfb_fillrect._entry.3, ptr @cfb_fillrect._entry_ptr, ptr @cfb_fillrect._entry_ptr.4, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfb_fillrect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfb_fillrect._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cfb_fillrect(ptr noundef %p, ptr nocapture noundef readonly %rect) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %width1 = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 2
  %0 = ptrtoint ptr %width1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width1, align 4
  %height2 = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 3
  %2 = ptrtoint ptr %height2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %height2, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 6, i32 6
  %4 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bits_per_pixel, align 4
  %state = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 28
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %visual = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 7, i32 5
  %8 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %visual, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %if.else [
    i32 2, label %if.end.if.then7_crit_edge
    i32 4, label %if.end.if.then7_crit_edge143
  ]

if.end.if.then7_crit_edge143:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then7

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then7

if.then7:                                         ; preds = %if.end.if.then7_crit_edge, %if.end.if.then7_crit_edge143
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 27
  %11 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pseudo_palette, align 4
  %color = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 4
  %13 = ptrtoint ptr %color to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %color, align 4
  %arrayidx = getelementptr i32, ptr %12, i32 %14
  br label %if.end9

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %color8 = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then7
  %fg.0.in = phi ptr [ %arrayidx, %if.then7 ], [ %color8, %if.else ]
  %15 = ptrtoint ptr %fg.0.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %fg.0 = load i32, ptr %fg.0.in, align 4
  %16 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %5, label %do.end.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb1.i
    i32 4, label %sw.bb3.i
    i32 8, label %sw.bb5.i
    i32 12, label %sw.bb7.i
    i32 16, label %sw.bb9.i
    i32 24, label %sw.bb11.i
    i32 32, label %if.end9.pixel_to_pat.exit_crit_edge
  ]

if.end9.pixel_to_pat.exit_crit_edge:              ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %pixel_to_pat.exit

sw.bb.i:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %mul.i = sub i32 0, %fg.0
  br label %pixel_to_pat.exit

sw.bb1.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %mul2.i = mul i32 %fg.0, 1431655765
  br label %pixel_to_pat.exit

sw.bb3.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %mul4.i = mul i32 %fg.0, 286331153
  br label %pixel_to_pat.exit

sw.bb5.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %mul6.i = mul i32 %fg.0, 16843009
  br label %pixel_to_pat.exit

sw.bb7.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %mul8.i = mul i32 %fg.0, 16781313
  br label %pixel_to_pat.exit

sw.bb9.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %mul10.i = mul i32 %fg.0, 65537
  br label %pixel_to_pat.exit

sw.bb11.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %mul12.i = mul i32 %fg.0, 16777217
  br label %pixel_to_pat.exit

do.end.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 72, i32 noundef 9, ptr noundef nonnull @.str.6, i32 noundef %5) #4
  br label %pixel_to_pat.exit

pixel_to_pat.exit:                                ; preds = %do.end.i, %sw.bb11.i, %sw.bb9.i, %sw.bb7.i, %sw.bb5.i, %sw.bb3.i, %sw.bb1.i, %sw.bb.i, %if.end9.pixel_to_pat.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ %mul12.i, %sw.bb11.i ], [ %mul10.i, %sw.bb9.i ], [ %mul8.i, %sw.bb7.i ], [ %mul6.i, %sw.bb5.i ], [ %mul4.i, %sw.bb3.i ], [ %mul2.i, %sw.bb1.i ], [ %mul.i, %sw.bb.i ], [ %fg.0, %if.end9.pixel_to_pat.exit_crit_edge ]
  %17 = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 25
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %20 = ptrtoint ptr %19 to i32
  %and = and i32 %20, -4
  %21 = inttoptr i32 %and to ptr
  %and11 = shl i32 %20, 3
  %mul = and i32 %and11, 24
  %dy = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 1
  %22 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dy, align 4
  %line_length = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 7, i32 9
  %24 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %line_length, align 4
  %mul13 = shl i32 %23, 3
  %mul14 = mul i32 %mul13, %25
  %26 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rect, align 4
  %mul15 = mul i32 %27, %5
  %add = add i32 %mul, %mul14
  %add16 = add i32 %add, %mul15
  %rem = urem i32 32, %5
  %fbops = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 20
  %28 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fbops, align 4
  %fb_sync = getelementptr inbounds %struct.fb_ops, ptr %29, i32 0, i32 15
  %30 = ptrtoint ptr %fb_sync to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fb_sync, align 4
  %tobool.not = icmp eq ptr %31, null
  br i1 %tobool.not, label %pixel_to_pat.exit.if.end21_crit_edge, label %if.then17

pixel_to_pat.exit.if.end21_crit_edge:             ; preds = %pixel_to_pat.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

if.then17:                                        ; preds = %pixel_to_pat.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call20 = tail call i32 %31(ptr noundef %p) #4
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %pixel_to_pat.exit.if.end21_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool22.not = icmp eq i32 %rem, 0
  br i1 %tobool22.not, label %if.then23, label %if.else37

if.then23:                                        ; preds = %if.end21
  %32 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %33)
  %cmp.i = icmp ult i32 %33, 8
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then23.fb_compute_bswapmask.exit_crit_edge

if.then23.fb_compute_bswapmask.exit_crit_edge:    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #6
  br label %fb_compute_bswapmask.exit

land.lhs.true.i:                                  ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #6
  %nonstd.i = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 6, i32 12
  %34 = ptrtoint ptr %nonstd.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nonstd.i, align 4
  %and.i = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %add.i = sub nuw nsw i32 8, %33
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 %add.i
  br label %fb_compute_bswapmask.exit

fb_compute_bswapmask.exit:                        ; preds = %land.lhs.true.i, %if.then23.fb_compute_bswapmask.exit_crit_edge
  %bswapmask.0.i = phi i32 [ 0, %if.then23.fb_compute_bswapmask.exit_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %rop = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 5
  %36 = ptrtoint ptr %rop to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rop, align 4
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %37, label %do.end [
    i32 1, label %fb_compute_bswapmask.exit.sw.epilog_crit_edge
    i32 0, label %sw.bb25
  ]

fb_compute_bswapmask.exit.sw.epilog_crit_edge:    ; preds = %fb_compute_bswapmask.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb25:                                          ; preds = %fb_compute_bswapmask.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.end:                                           ; preds = %fb_compute_bswapmask.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb25, %fb_compute_bswapmask.exit.sw.epilog_crit_edge
  %fill_op32.0 = phi ptr [ @bitfill_aligned, %do.end ], [ @bitfill_aligned, %sw.bb25 ], [ @bitfill_aligned_rev, %fb_compute_bswapmask.exit.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool27.not135 = icmp eq i32 %3, 0
  br i1 %tobool27.not135, label %sw.epilog.cleanup_crit_edge, label %while.body.lr.ph

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.body.lr.ph:                                 ; preds = %sw.epilog
  %mul32 = mul i32 %5, %1
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %dst_idx.0138 = phi i32 [ %add16, %while.body.lr.ph ], [ %add36, %while.body.while.body_crit_edge ]
  %dst.0137 = phi ptr [ %21, %while.body.lr.ph ], [ %add.ptr, %while.body.while.body_crit_edge ]
  %height.0136 = phi i32 [ %3, %while.body.lr.ph ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add i32 %height.0136, -1
  %shr29 = ashr i32 %dst_idx.0138, 5
  %add.ptr = getelementptr i32, ptr %dst.0137, i32 %shr29
  %and31 = and i32 %dst_idx.0138, 31
  tail call void %fill_op32.0(ptr noundef %p, ptr noundef %add.ptr, i32 noundef %and31, i32 noundef %retval.0.i, i32 noundef %mul32, i32 noundef 32, i32 noundef %bswapmask.0.i) #4, !callees !30
  %39 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %line_length, align 4
  %mul35 = shl i32 %40, 3
  %add36 = add i32 %mul35, %and31
  %tobool27.not = icmp eq i32 %dec, 0
  br i1 %tobool27.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else37:                                        ; preds = %if.end21
  %sub38 = sub i32 %5, %rem
  %rop39 = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 5
  %41 = ptrtoint ptr %rop39 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rop39, align 4
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %42, label %do.end45 [
    i32 1, label %if.else37.sw.epilog48_crit_edge
    i32 0, label %sw.bb41
  ]

if.else37.sw.epilog48_crit_edge:                  ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog48

sw.bb41:                                          ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog48

do.end45:                                         ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #6
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #7
  br label %sw.epilog48

sw.epilog48:                                      ; preds = %do.end45, %sw.bb41, %if.else37.sw.epilog48_crit_edge
  %fill_op.0 = phi ptr [ @bitfill_unaligned, %do.end45 ], [ @bitfill_unaligned, %sw.bb41 ], [ @bitfill_unaligned_rev, %if.else37.sw.epilog48_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool51.not131 = icmp eq i32 %3, 0
  br i1 %tobool51.not131, label %sw.epilog48.cleanup_crit_edge, label %while.body52.lr.ph

sw.epilog48.cleanup_crit_edge:                    ; preds = %sw.epilog48
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.body52.lr.ph:                               ; preds = %sw.epilog48
  %44 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i)
  %mul58 = mul i32 %5, %1
  br label %while.body52

while.body52:                                     ; preds = %while.body52.while.body52_crit_edge, %while.body52.lr.ph
  %dst_idx.1134 = phi i32 [ %add16, %while.body52.lr.ph ], [ %add62, %while.body52.while.body52_crit_edge ]
  %dst.1133 = phi ptr [ %21, %while.body52.lr.ph ], [ %add.ptr53, %while.body52.while.body52_crit_edge ]
  %height.1132 = phi i32 [ %3, %while.body52.lr.ph ], [ %dec50, %while.body52.while.body52_crit_edge ]
  %dec50 = add i32 %height.1132, -1
  %div = sdiv i32 %dst_idx.1134, 32
  %add.ptr53 = getelementptr i32, ptr %dst.1133, i32 %div
  %and55 = and i32 %dst_idx.1134, 31
  %rem56 = urem i32 %and55, %5
  %shl.i = shl i32 %44, %rem56
  %sub.i = sub i32 %5, %rem56
  %shr.i = lshr i32 %44, %sub.i
  %or.i = or i32 %shr.i, %shl.i
  %45 = tail call i32 @llvm.bswap.i32(i32 %or.i)
  tail call void %fill_op.0(ptr noundef %p, ptr noundef %add.ptr53, i32 noundef %and55, i32 noundef %45, i32 noundef %rem, i32 noundef %sub38, i32 noundef %mul58, i32 noundef 32) #4, !callees !31
  %46 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %line_length, align 4
  %mul61 = shl i32 %47, 3
  %add62 = add i32 %mul61, %and55
  %tobool51.not = icmp eq i32 %dec50, 0
  br i1 %tobool51.not, label %while.body52.cleanup_crit_edge, label %while.body52.while.body52_crit_edge

while.body52.while.body52_crit_edge:              ; preds = %while.body52
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body52

while.body52.cleanup_crit_edge:                   ; preds = %while.body52
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %while.body52.cleanup_crit_edge, %sw.epilog48.cleanup_crit_edge, %while.body.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bitfill_aligned_rev(ptr nocapture noundef readonly %p, ptr noundef %dst, i32 noundef %dst_idx, i32 noundef %pat, i32 noundef %n, i32 noundef %bits, i32 noundef %bswapmask) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %tobool.not = icmp eq i32 %n, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bswapmask)
  %tobool.not.i = icmp eq i32 %bswapmask, 0
  %flags.i.i = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 2
  %0 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %1, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i136, label %if.else.i

if.else.i:                                        ; preds = %if.end
  %shl3.i = select i1 %tobool.i.not.i, i32 255, i32 -16777216
  %and.i = and i32 %bswapmask, %dst_idx
  %shl6.i = shl i32 -16777216, %and.i
  %shr9.i = lshr i32 255, %and.i
  %cond11.i = select i1 %tobool.i.not.i, i32 %shr9.i, i32 %shl6.i
  %and12.i = and i32 %cond11.i, %shl3.i
  %neg18.i = xor i32 %bswapmask, -1
  %and19.i = and i32 %neg18.i, %dst_idx
  br i1 %tobool.i.not.i, label %cond.false28.i, label %cond.true24.i

cond.true24.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  %shr16.i = lshr i32 %and12.i, %and19.i
  %add.i = add i32 %bswapmask, %dst_idx
  %and26.i = and i32 %add.i, %neg18.i
  %shr27.i = lshr i32 -1, %and26.i
  br label %if.else.i145

cond.false28.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  %shl20.i = shl i32 %and12.i, %and19.i
  %add29.i = add i32 %bswapmask, %dst_idx
  %and31.i = and i32 %add29.i, %neg18.i
  %shl32.i = shl nsw i32 -1, %and31.i
  br label %if.else.i145

if.then.i136:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %shr.i = lshr i32 -1, %dst_idx
  %shl.i = shl nsw i32 -1, %dst_idx
  %cond.i = select i1 %tobool.i.not.i, i32 %shl.i, i32 %shr.i
  %add168 = add i32 %n, %dst_idx
  %rem169 = urem i32 %add168, %bits
  %shr.i133 = lshr i32 -1, %rem169
  %shl.i134 = shl nsw i32 -1, %rem169
  %cond.i135 = select i1 %tobool.i.not.i, i32 %shl.i134, i32 %shr.i133
  br label %fb_shifted_pixels_mask_long.exit161

if.else.i145:                                     ; preds = %cond.false28.i, %cond.true24.i
  %shl3.i137 = phi i32 [ 255, %cond.false28.i ], [ -16777216, %cond.true24.i ]
  %cond2273.i = phi i32 [ %shl20.i, %cond.false28.i ], [ %shr16.i, %cond.true24.i ]
  %cond34.i = phi i32 [ %shl32.i, %cond.false28.i ], [ %shr27.i, %cond.true24.i ]
  %or.i = or i32 %cond34.i, %cond2273.i
  %add = add i32 %n, %dst_idx
  %rem = urem i32 %add, %bits
  %and.i138 = and i32 %rem, %bswapmask
  %shl6.i139 = shl i32 -16777216, %and.i138
  %shr9.i140 = lshr i32 255, %and.i138
  %cond11.i141 = select i1 %tobool.i.not.i, i32 %shr9.i140, i32 %shl6.i139
  %and12.i142 = and i32 %cond11.i141, %shl3.i137
  %and19.i144 = and i32 %rem, %neg18.i
  br i1 %tobool.i.not.i, label %cond.false28.i155, label %cond.true24.i150

cond.true24.i150:                                 ; preds = %if.else.i145
  call void @__sanitizer_cov_trace_pc() #6
  %shr16.i146 = lshr i32 %and12.i142, %and19.i144
  %add.i147 = add i32 %rem, %bswapmask
  %and26.i148 = and i32 %add.i147, %neg18.i
  %shr27.i149 = lshr i32 -1, %and26.i148
  br label %cond.end33.i159

cond.false28.i155:                                ; preds = %if.else.i145
  call void @__sanitizer_cov_trace_pc() #6
  %shl20.i151 = shl i32 %and12.i142, %and19.i144
  %add29.i152 = add i32 %rem, %bswapmask
  %and31.i153 = and i32 %add29.i152, %neg18.i
  %shl32.i154 = shl nsw i32 -1, %and31.i153
  br label %cond.end33.i159

cond.end33.i159:                                  ; preds = %cond.false28.i155, %cond.true24.i150
  %cond2273.i156 = phi i32 [ %shr16.i146, %cond.true24.i150 ], [ %shl20.i151, %cond.false28.i155 ]
  %cond34.i157 = phi i32 [ %shr27.i149, %cond.true24.i150 ], [ %shl32.i154, %cond.false28.i155 ]
  %or.i158 = or i32 %cond34.i157, %cond2273.i156
  br label %fb_shifted_pixels_mask_long.exit161

fb_shifted_pixels_mask_long.exit161:              ; preds = %cond.end33.i159, %if.then.i136
  %add172 = phi i32 [ %add, %cond.end33.i159 ], [ %add168, %if.then.i136 ]
  %mask.0.i170 = phi i32 [ %or.i, %cond.end33.i159 ], [ %cond.i, %if.then.i136 ]
  %mask.0.i160 = phi i32 [ %or.i158, %cond.end33.i159 ], [ %cond.i135, %if.then.i136 ]
  %neg = xor i32 %mask.0.i160, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %add172, i32 %bits)
  %cmp.not = icmp ugt i32 %add172, %bits
  br i1 %cmp.not, label %if.end15, label %if.then3

if.then3:                                         ; preds = %fb_shifted_pixels_mask_long.exit161
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mask.0.i160)
  %tobool4.not = icmp eq i32 %mask.0.i160, -1
  %and = select i1 %tobool4.not, i32 -1, i32 %neg
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dst) #4, !srcloc !32
  %spec.select = and i32 %mask.0.i170, %pat
  %and.i162 = and i32 %spec.select, %and
  %xor1.i = xor i32 %2, %and.i162
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst, i32 %xor1.i) #4, !srcloc !33
  br label %cleanup

if.end15:                                         ; preds = %fb_shifted_pixels_mask_long.exit161
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dst) #4, !srcloc !32
  %and.i163 = and i32 %mask.0.i170, %pat
  %xor1.i164 = xor i32 %3, %and.i163
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst, i32 %xor1.i164) #4, !srcloc !33
  %incdec.ptr = getelementptr i32, ptr %dst, i32 1
  %sub.neg = add i32 %n, %dst_idx
  %sub14 = sub i32 %sub.neg, %bits
  %div = udiv i32 %sub14, %bits
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %div)
  %cmp16175 = icmp ugt i32 %div, 7
  br i1 %cmp16175, label %if.end15.while.body_crit_edge, label %if.end15.while.cond42.preheader_crit_edge

if.end15.while.cond42.preheader_crit_edge:        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond42.preheader

if.end15.while.body_crit_edge:                    ; preds = %if.end15
  br label %while.body

while.cond42.preheader:                           ; preds = %while.body.while.cond42.preheader_crit_edge, %if.end15.while.cond42.preheader_crit_edge
  %n.addr.1.lcssa = phi i32 [ %div, %if.end15.while.cond42.preheader_crit_edge ], [ %sub41, %while.body.while.cond42.preheader_crit_edge ]
  %dst.addr.1.lcssa = phi ptr [ %incdec.ptr, %if.end15.while.cond42.preheader_crit_edge ], [ %incdec.ptr40, %while.body.while.cond42.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.1.lcssa)
  %tobool43.not179 = icmp eq i32 %n.addr.1.lcssa, 0
  br i1 %tobool43.not179, label %while.cond42.preheader.while.end48_crit_edge, label %while.cond42.preheader.while.body44_crit_edge

while.cond42.preheader.while.body44_crit_edge:    ; preds = %while.cond42.preheader
  br label %while.body44

while.cond42.preheader.while.end48_crit_edge:     ; preds = %while.cond42.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end48

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end15.while.body_crit_edge
  %dst.addr.1177 = phi ptr [ %incdec.ptr40, %while.body.while.body_crit_edge ], [ %incdec.ptr, %if.end15.while.body_crit_edge ]
  %n.addr.1176 = phi i32 [ %sub41, %while.body.while.body_crit_edge ], [ %div, %if.end15.while.body_crit_edge ]
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dst.addr.1177) #4, !srcloc !32
  %xor18 = xor i32 %4, %pat
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.addr.1177, i32 %xor18) #4, !srcloc !33
  %incdec.ptr19 = getelementptr i32, ptr %dst.addr.1177, i32 1
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr19) #4, !srcloc !32
  %xor21 = xor i32 %5, %pat
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr19, i32 %xor21) #4, !srcloc !33
  %incdec.ptr22 = getelementptr i32, ptr %dst.addr.1177, i32 2
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr22) #4, !srcloc !32
  %xor24 = xor i32 %6, %pat
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr22, i32 %xor24) #4, !srcloc !33
  %incdec.ptr25 = getelementptr i32, ptr %dst.addr.1177, i32 3
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr25) #4, !srcloc !32
  %xor27 = xor i32 %7, %pat
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr25, i32 %xor27) #4, !srcloc !33
  %incdec.ptr28 = getelementptr i32, ptr %dst.addr.1177, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr28) #4, !srcloc !32
  %xor30 = xor i32 %8, %pat
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr28, i32 %xor30) #4, !srcloc !33
  %incdec.ptr31 = getelementptr i32, ptr %dst.addr.1177, i32 5
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr31) #4, !srcloc !32
  %xor33 = xor i32 %9, %pat
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr31, i32 %xor33) #4, !srcloc !33
  %incdec.ptr34 = getelementptr i32, ptr %dst.addr.1177, i32 6
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr34) #4, !srcloc !32
  %xor36 = xor i32 %10, %pat
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr34, i32 %xor36) #4, !srcloc !33
  %incdec.ptr37 = getelementptr i32, ptr %dst.addr.1177, i32 7
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr37) #4, !srcloc !32
  %xor39 = xor i32 %11, %pat
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr37, i32 %xor39) #4, !srcloc !33
  %incdec.ptr40 = getelementptr i32, ptr %dst.addr.1177, i32 8
  %sub41 = add i32 %n.addr.1176, -8
  %cmp16 = icmp ugt i32 %sub41, 7
  br i1 %cmp16, label %while.body.while.body_crit_edge, label %while.body.while.cond42.preheader_crit_edge

while.body.while.cond42.preheader_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond42.preheader

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.body44:                                     ; preds = %while.body44.while.body44_crit_edge, %while.cond42.preheader.while.body44_crit_edge
  %dst.addr.2181 = phi ptr [ %incdec.ptr47, %while.body44.while.body44_crit_edge ], [ %dst.addr.1.lcssa, %while.cond42.preheader.while.body44_crit_edge ]
  %n.addr.2180 = phi i32 [ %dec, %while.body44.while.body44_crit_edge ], [ %n.addr.1.lcssa, %while.cond42.preheader.while.body44_crit_edge ]
  %dec = add i32 %n.addr.2180, -1
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dst.addr.2181) #4, !srcloc !32
  %xor46 = xor i32 %12, %pat
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.addr.2181, i32 %xor46) #4, !srcloc !33
  %incdec.ptr47 = getelementptr i32, ptr %dst.addr.2181, i32 1
  %tobool43.not = icmp eq i32 %dec, 0
  br i1 %tobool43.not, label %while.body44.while.end48_crit_edge, label %while.body44.while.body44_crit_edge

while.body44.while.body44_crit_edge:              ; preds = %while.body44
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body44

while.body44.while.end48_crit_edge:               ; preds = %while.body44
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end48

while.end48:                                      ; preds = %while.body44.while.end48_crit_edge, %while.cond42.preheader.while.end48_crit_edge
  %dst.addr.2.lcssa = phi ptr [ %dst.addr.1.lcssa, %while.cond42.preheader.while.end48_crit_edge ], [ %incdec.ptr47, %while.body44.while.end48_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mask.0.i160)
  %tobool49.not = icmp eq i32 %mask.0.i160, -1
  br i1 %tobool49.not, label %while.end48.cleanup_crit_edge, label %if.then50

while.end48.cleanup_crit_edge:                    ; preds = %while.end48
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then50:                                        ; preds = %while.end48
  call void @__sanitizer_cov_trace_pc() #6
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dst.addr.2.lcssa) #4, !srcloc !32
  %and.i165 = and i32 %neg, %pat
  %xor1.i166 = xor i32 %13, %and.i165
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.addr.2.lcssa, i32 %xor1.i166) #4, !srcloc !33
  br label %cleanup

cleanup:                                          ; preds = %if.then50, %while.end48.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bitfill_aligned(ptr nocapture noundef readonly %p, ptr noundef %dst, i32 noundef %dst_idx, i32 noundef %pat, i32 noundef %n, i32 noundef %bits, i32 noundef %bswapmask) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %tobool.not = icmp eq i32 %n, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bswapmask)
  %tobool.not.i = icmp eq i32 %bswapmask, 0
  %flags.i.i = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 2
  %0 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %1, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i91, label %if.else.i

if.else.i:                                        ; preds = %if.end
  %shl3.i = select i1 %tobool.i.not.i, i32 255, i32 -16777216
  %and.i = and i32 %bswapmask, %dst_idx
  %shl6.i = shl i32 -16777216, %and.i
  %shr9.i = lshr i32 255, %and.i
  %cond11.i = select i1 %tobool.i.not.i, i32 %shr9.i, i32 %shl6.i
  %and12.i = and i32 %cond11.i, %shl3.i
  %neg18.i = xor i32 %bswapmask, -1
  %and19.i = and i32 %neg18.i, %dst_idx
  br i1 %tobool.i.not.i, label %cond.false28.i, label %cond.true24.i

cond.true24.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  %shr16.i = lshr i32 %and12.i, %and19.i
  %add.i = add i32 %bswapmask, %dst_idx
  %and26.i = and i32 %add.i, %neg18.i
  %shr27.i = lshr i32 -1, %and26.i
  br label %if.else.i100

cond.false28.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  %shl20.i = shl i32 %and12.i, %and19.i
  %add29.i = add i32 %bswapmask, %dst_idx
  %and31.i = and i32 %add29.i, %neg18.i
  %shl32.i = shl nsw i32 -1, %and31.i
  br label %if.else.i100

if.then.i91:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %shr.i = lshr i32 -1, %dst_idx
  %shl.i = shl nsw i32 -1, %dst_idx
  %cond.i = select i1 %tobool.i.not.i, i32 %shl.i, i32 %shr.i
  %add125 = add i32 %n, %dst_idx
  %rem126 = urem i32 %add125, %bits
  %shr.i88 = lshr i32 -1, %rem126
  %shl.i89 = shl nsw i32 -1, %rem126
  %cond.i90 = select i1 %tobool.i.not.i, i32 %shl.i89, i32 %shr.i88
  br label %fb_shifted_pixels_mask_long.exit116

if.else.i100:                                     ; preds = %cond.false28.i, %cond.true24.i
  %shl3.i92 = phi i32 [ 255, %cond.false28.i ], [ -16777216, %cond.true24.i ]
  %cond2273.i = phi i32 [ %shl20.i, %cond.false28.i ], [ %shr16.i, %cond.true24.i ]
  %cond34.i = phi i32 [ %shl32.i, %cond.false28.i ], [ %shr27.i, %cond.true24.i ]
  %or.i = or i32 %cond34.i, %cond2273.i
  %add = add i32 %n, %dst_idx
  %rem = urem i32 %add, %bits
  %and.i93 = and i32 %rem, %bswapmask
  %shl6.i94 = shl i32 -16777216, %and.i93
  %shr9.i95 = lshr i32 255, %and.i93
  %cond11.i96 = select i1 %tobool.i.not.i, i32 %shr9.i95, i32 %shl6.i94
  %and12.i97 = and i32 %cond11.i96, %shl3.i92
  %and19.i99 = and i32 %rem, %neg18.i
  br i1 %tobool.i.not.i, label %cond.false28.i110, label %cond.true24.i105

cond.true24.i105:                                 ; preds = %if.else.i100
  call void @__sanitizer_cov_trace_pc() #6
  %shr16.i101 = lshr i32 %and12.i97, %and19.i99
  %add.i102 = add i32 %rem, %bswapmask
  %and26.i103 = and i32 %add.i102, %neg18.i
  %shr27.i104 = lshr i32 -1, %and26.i103
  br label %cond.end33.i114

cond.false28.i110:                                ; preds = %if.else.i100
  call void @__sanitizer_cov_trace_pc() #6
  %shl20.i106 = shl i32 %and12.i97, %and19.i99
  %add29.i107 = add i32 %rem, %bswapmask
  %and31.i108 = and i32 %add29.i107, %neg18.i
  %shl32.i109 = shl nsw i32 -1, %and31.i108
  br label %cond.end33.i114

cond.end33.i114:                                  ; preds = %cond.false28.i110, %cond.true24.i105
  %cond2273.i111 = phi i32 [ %shr16.i101, %cond.true24.i105 ], [ %shl20.i106, %cond.false28.i110 ]
  %cond34.i112 = phi i32 [ %shr27.i104, %cond.true24.i105 ], [ %shl32.i109, %cond.false28.i110 ]
  %or.i113 = or i32 %cond34.i112, %cond2273.i111
  br label %fb_shifted_pixels_mask_long.exit116

fb_shifted_pixels_mask_long.exit116:              ; preds = %cond.end33.i114, %if.then.i91
  %add129 = phi i32 [ %add, %cond.end33.i114 ], [ %add125, %if.then.i91 ]
  %mask.0.i127 = phi i32 [ %or.i, %cond.end33.i114 ], [ %cond.i, %if.then.i91 ]
  %mask.0.i115 = phi i32 [ %or.i113, %cond.end33.i114 ], [ %cond.i90, %if.then.i91 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add129, i32 %bits)
  %cmp.not = icmp ugt i32 %add129, %bits
  br i1 %cmp.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %fb_shifted_pixels_mask_long.exit116
  call void @__sanitizer_cov_trace_pc() #6
  %neg = xor i32 %mask.0.i115, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mask.0.i115)
  %tobool4.not = icmp eq i32 %mask.0.i115, -1
  %and = select i1 %tobool4.not, i32 -1, i32 %neg
  %spec.select = and i32 %and, %mask.0.i127
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dst) #4, !srcloc !32
  %xor.i = xor i32 %2, %pat
  %and.i117 = and i32 %spec.select, %xor.i
  %xor1.i = xor i32 %and.i117, %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst, i32 %xor1.i) #4, !srcloc !33
  br label %cleanup

if.else:                                          ; preds = %fb_shifted_pixels_mask_long.exit116
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mask.0.i127)
  %cmp9.not = icmp eq i32 %mask.0.i127, -1
  br i1 %cmp9.not, label %if.else.if.end14_crit_edge, label %if.then10

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dst) #4, !srcloc !32
  %xor.i118 = xor i32 %3, %pat
  %and.i119 = and i32 %xor.i118, %mask.0.i127
  %xor1.i120 = xor i32 %and.i119, %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst, i32 %xor1.i120) #4, !srcloc !33
  %incdec.ptr = getelementptr i32, ptr %dst, i32 1
  %sub.neg = add i32 %n, %dst_idx
  %sub13 = sub i32 %sub.neg, %bits
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.else.if.end14_crit_edge
  %n.addr.0 = phi i32 [ %sub13, %if.then10 ], [ %n, %if.else.if.end14_crit_edge ]
  %dst.addr.0 = phi ptr [ %incdec.ptr, %if.then10 ], [ %dst, %if.else.if.end14_crit_edge ]
  %div = udiv i32 %n.addr.0, %bits
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %div)
  %cmp15132 = icmp ugt i32 %div, 7
  br i1 %cmp15132, label %if.end14.while.body_crit_edge, label %if.end14.while.cond25.preheader_crit_edge

if.end14.while.cond25.preheader_crit_edge:        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond25.preheader

if.end14.while.body_crit_edge:                    ; preds = %if.end14
  br label %while.body

while.cond25.preheader:                           ; preds = %while.body.while.cond25.preheader_crit_edge, %if.end14.while.cond25.preheader_crit_edge
  %n.addr.1.lcssa = phi i32 [ %div, %if.end14.while.cond25.preheader_crit_edge ], [ %sub24, %while.body.while.cond25.preheader_crit_edge ]
  %dst.addr.1.lcssa = phi ptr [ %dst.addr.0, %if.end14.while.cond25.preheader_crit_edge ], [ %incdec.ptr23, %while.body.while.cond25.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.1.lcssa)
  %tobool26.not136 = icmp eq i32 %n.addr.1.lcssa, 0
  br i1 %tobool26.not136, label %while.cond25.preheader.while.end29_crit_edge, label %while.cond25.preheader.while.body27_crit_edge

while.cond25.preheader.while.body27_crit_edge:    ; preds = %while.cond25.preheader
  br label %while.body27

while.cond25.preheader.while.end29_crit_edge:     ; preds = %while.cond25.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end29

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end14.while.body_crit_edge
  %dst.addr.1134 = phi ptr [ %incdec.ptr23, %while.body.while.body_crit_edge ], [ %dst.addr.0, %if.end14.while.body_crit_edge ]
  %n.addr.1133 = phi i32 [ %sub24, %while.body.while.body_crit_edge ], [ %div, %if.end14.while.body_crit_edge ]
  %incdec.ptr16 = getelementptr i32, ptr %dst.addr.1134, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.addr.1134, i32 %pat) #4, !srcloc !33
  %incdec.ptr17 = getelementptr i32, ptr %dst.addr.1134, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr16, i32 %pat) #4, !srcloc !33
  %incdec.ptr18 = getelementptr i32, ptr %dst.addr.1134, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr17, i32 %pat) #4, !srcloc !33
  %incdec.ptr19 = getelementptr i32, ptr %dst.addr.1134, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr18, i32 %pat) #4, !srcloc !33
  %incdec.ptr20 = getelementptr i32, ptr %dst.addr.1134, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr19, i32 %pat) #4, !srcloc !33
  %incdec.ptr21 = getelementptr i32, ptr %dst.addr.1134, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr20, i32 %pat) #4, !srcloc !33
  %incdec.ptr22 = getelementptr i32, ptr %dst.addr.1134, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr21, i32 %pat) #4, !srcloc !33
  %incdec.ptr23 = getelementptr i32, ptr %dst.addr.1134, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr22, i32 %pat) #4, !srcloc !33
  %sub24 = add i32 %n.addr.1133, -8
  %cmp15 = icmp ugt i32 %sub24, 7
  br i1 %cmp15, label %while.body.while.body_crit_edge, label %while.body.while.cond25.preheader_crit_edge

while.body.while.cond25.preheader_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond25.preheader

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.body27:                                     ; preds = %while.body27.while.body27_crit_edge, %while.cond25.preheader.while.body27_crit_edge
  %dst.addr.2138 = phi ptr [ %incdec.ptr28, %while.body27.while.body27_crit_edge ], [ %dst.addr.1.lcssa, %while.cond25.preheader.while.body27_crit_edge ]
  %n.addr.2137 = phi i32 [ %dec, %while.body27.while.body27_crit_edge ], [ %n.addr.1.lcssa, %while.cond25.preheader.while.body27_crit_edge ]
  %dec = add i32 %n.addr.2137, -1
  %incdec.ptr28 = getelementptr i32, ptr %dst.addr.2138, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.addr.2138, i32 %pat) #4, !srcloc !33
  %tobool26.not = icmp eq i32 %dec, 0
  br i1 %tobool26.not, label %while.body27.while.end29_crit_edge, label %while.body27.while.body27_crit_edge

while.body27.while.body27_crit_edge:              ; preds = %while.body27
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body27

while.body27.while.end29_crit_edge:               ; preds = %while.body27
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end29

while.end29:                                      ; preds = %while.body27.while.end29_crit_edge, %while.cond25.preheader.while.end29_crit_edge
  %dst.addr.2.lcssa = phi ptr [ %dst.addr.1.lcssa, %while.cond25.preheader.while.end29_crit_edge ], [ %incdec.ptr28, %while.body27.while.end29_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mask.0.i115)
  %tobool30.not = icmp eq i32 %mask.0.i115, -1
  br i1 %tobool30.not, label %while.end29.cleanup_crit_edge, label %if.then31

while.end29.cleanup_crit_edge:                    ; preds = %while.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then31:                                        ; preds = %while.end29
  call void @__sanitizer_cov_trace_pc() #6
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dst.addr.2.lcssa) #4, !srcloc !32
  %xor.i121 = xor i32 %4, %pat
  %5 = and i32 %xor.i121, %mask.0.i115
  %xor1.i123 = xor i32 %5, %pat
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.addr.2.lcssa, i32 %xor1.i123) #4, !srcloc !33
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %while.end29.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bitfill_unaligned_rev(ptr nocapture noundef readonly %p, ptr noundef %dst, i32 noundef %dst_idx, i32 noundef %pat, i32 noundef %left, i32 noundef %right, i32 noundef %n, i32 noundef %bits) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %tobool.not = icmp eq i32 %n, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags.i = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 2
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %shr = lshr i32 -1, %dst_idx
  %shl = shl nsw i32 -1, %dst_idx
  %cond = select i1 %tobool.i.not, i32 %shl, i32 %shr
  %add5 = add i32 %n, %dst_idx
  %rem6 = urem i32 %add5, %bits
  %shl7 = shl nsw i32 -1, %rem6
  %shr3 = lshr i32 -1, %rem6
  %cond9 = select i1 %tobool.i.not, i32 %shl7, i32 %shr3
  %neg = xor i32 %cond9, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %add5, i32 %bits)
  %cmp.not = icmp ugt i32 %add5, %bits
  br i1 %cmp.not, label %if.then18, label %if.then11

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cond9)
  %tobool12.not = icmp eq i32 %cond9, -1
  %and = select i1 %tobool12.not, i32 -1, i32 %neg
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dst) #4, !srcloc !32
  %spec.select = and i32 %cond, %pat
  %and.i153 = and i32 %spec.select, %and
  %xor1.i = xor i32 %2, %and.i153
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst, i32 %xor1.i) #4, !srcloc !33
  br label %cleanup

if.then18:                                        ; preds = %if.end
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dst) #4, !srcloc !32
  %and.i154 = and i32 %cond, %pat
  %xor1.i155 = xor i32 %3, %and.i154
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst, i32 %xor1.i155) #4, !srcloc !33
  %sub24 = sub i32 %add5, %bits
  %shl22 = shl i32 %pat, %left
  %shr23 = lshr i32 %pat, %right
  %or = or i32 %shr23, %shl22
  %div = udiv i32 %sub24, %bits
  %dst.addr.1158 = getelementptr i32, ptr %dst, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %div)
  %cmp26159 = icmp ugt i32 %div, 3
  br i1 %cmp26159, label %if.then18.while.body_crit_edge, label %if.then18.while.cond52.preheader_crit_edge

if.then18.while.cond52.preheader_crit_edge:       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond52.preheader

if.then18.while.body_crit_edge:                   ; preds = %if.then18
  br label %while.body

while.cond52.preheader:                           ; preds = %while.body.while.cond52.preheader_crit_edge, %if.then18.while.cond52.preheader_crit_edge
  %pat.addr.1.lcssa = phi i32 [ %or, %if.then18.while.cond52.preheader_crit_edge ], [ %or50, %while.body.while.cond52.preheader_crit_edge ]
  %n.addr.1.lcssa = phi i32 [ %div, %if.then18.while.cond52.preheader_crit_edge ], [ %sub51, %while.body.while.cond52.preheader_crit_edge ]
  %dst.addr.1.lcssa = phi ptr [ %dst.addr.1158, %if.then18.while.cond52.preheader_crit_edge ], [ %dst.addr.1, %while.body.while.cond52.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.1.lcssa)
  %tobool53.not166 = icmp eq i32 %n.addr.1.lcssa, 0
  br i1 %tobool53.not166, label %while.cond52.preheader.while.end61_crit_edge, label %while.cond52.preheader.while.body54_crit_edge

while.cond52.preheader.while.body54_crit_edge:    ; preds = %while.cond52.preheader
  br label %while.body54

while.cond52.preheader.while.end61_crit_edge:     ; preds = %while.cond52.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end61

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then18.while.body_crit_edge
  %dst.addr.1163 = phi ptr [ %dst.addr.1, %while.body.while.body_crit_edge ], [ %dst.addr.1158, %if.then18.while.body_crit_edge ]
  %dst.pn162 = phi ptr [ %incdec.ptr41, %while.body.while.body_crit_edge ], [ %dst, %if.then18.while.body_crit_edge ]
  %n.addr.1161 = phi i32 [ %sub51, %while.body.while.body_crit_edge ], [ %div, %if.then18.while.body_crit_edge ]
  %pat.addr.1160 = phi i32 [ %or50, %while.body.while.body_crit_edge ], [ %or, %if.then18.while.body_crit_edge ]
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dst.addr.1163) #4, !srcloc !32
  %xor28 = xor i32 %4, %pat.addr.1160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.addr.1163, i32 %xor28) #4, !srcloc !33
  %incdec.ptr29 = getelementptr i32, ptr %dst.pn162, i32 2
  %shl30 = shl i32 %pat.addr.1160, %left
  %shr31 = lshr i32 %pat.addr.1160, %right
  %or32 = or i32 %shl30, %shr31
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr29) #4, !srcloc !32
  %xor34 = xor i32 %5, %or32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr29, i32 %xor34) #4, !srcloc !33
  %incdec.ptr35 = getelementptr i32, ptr %dst.pn162, i32 3
  %shl36 = shl i32 %or32, %left
  %shr37 = lshr i32 %or32, %right
  %or38 = or i32 %shl36, %shr37
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr35) #4, !srcloc !32
  %xor40 = xor i32 %6, %or38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr35, i32 %xor40) #4, !srcloc !33
  %incdec.ptr41 = getelementptr i32, ptr %dst.pn162, i32 4
  %shl42 = shl i32 %or38, %left
  %shr43 = lshr i32 %or38, %right
  %or44 = or i32 %shl42, %shr43
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr41) #4, !srcloc !32
  %xor46 = xor i32 %7, %or44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr41, i32 %xor46) #4, !srcloc !33
  %shl48 = shl i32 %or44, %left
  %shr49 = lshr i32 %or44, %right
  %or50 = or i32 %shl48, %shr49
  %sub51 = add i32 %n.addr.1161, -4
  %dst.addr.1 = getelementptr i32, ptr %dst.pn162, i32 5
  %cmp26 = icmp ugt i32 %sub51, 3
  br i1 %cmp26, label %while.body.while.body_crit_edge, label %while.body.while.cond52.preheader_crit_edge

while.body.while.cond52.preheader_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond52.preheader

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.body54:                                     ; preds = %while.body54.while.body54_crit_edge, %while.cond52.preheader.while.body54_crit_edge
  %dst.addr.2169 = phi ptr [ %incdec.ptr57, %while.body54.while.body54_crit_edge ], [ %dst.addr.1.lcssa, %while.cond52.preheader.while.body54_crit_edge ]
  %n.addr.2168 = phi i32 [ %dec, %while.body54.while.body54_crit_edge ], [ %n.addr.1.lcssa, %while.cond52.preheader.while.body54_crit_edge ]
  %pat.addr.2167 = phi i32 [ %or60, %while.body54.while.body54_crit_edge ], [ %pat.addr.1.lcssa, %while.cond52.preheader.while.body54_crit_edge ]
  %dec = add i32 %n.addr.2168, -1
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dst.addr.2169) #4, !srcloc !32
  %xor56 = xor i32 %8, %pat.addr.2167
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.addr.2169, i32 %xor56) #4, !srcloc !33
  %incdec.ptr57 = getelementptr i32, ptr %dst.addr.2169, i32 1
  %shl58 = shl i32 %pat.addr.2167, %left
  %shr59 = lshr i32 %pat.addr.2167, %right
  %or60 = or i32 %shl58, %shr59
  %tobool53.not = icmp eq i32 %dec, 0
  br i1 %tobool53.not, label %while.body54.while.end61_crit_edge, label %while.body54.while.body54_crit_edge

while.body54.while.body54_crit_edge:              ; preds = %while.body54
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body54

while.body54.while.end61_crit_edge:               ; preds = %while.body54
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end61

while.end61:                                      ; preds = %while.body54.while.end61_crit_edge, %while.cond52.preheader.while.end61_crit_edge
  %pat.addr.2.lcssa = phi i32 [ %pat.addr.1.lcssa, %while.cond52.preheader.while.end61_crit_edge ], [ %or60, %while.body54.while.end61_crit_edge ]
  %dst.addr.2.lcssa = phi ptr [ %dst.addr.1.lcssa, %while.cond52.preheader.while.end61_crit_edge ], [ %incdec.ptr57, %while.body54.while.end61_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cond9)
  %tobool62.not = icmp eq i32 %cond9, -1
  br i1 %tobool62.not, label %while.end61.cleanup_crit_edge, label %if.then63

while.end61.cleanup_crit_edge:                    ; preds = %while.end61
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then63:                                        ; preds = %while.end61
  call void @__sanitizer_cov_trace_pc() #6
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dst.addr.2.lcssa) #4, !srcloc !32
  %and.i156 = and i32 %pat.addr.2.lcssa, %neg
  %xor1.i157 = xor i32 %9, %and.i156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.addr.2.lcssa, i32 %xor1.i157) #4, !srcloc !33
  br label %cleanup

cleanup:                                          ; preds = %if.then63, %while.end61.cleanup_crit_edge, %if.then11, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bitfill_unaligned(ptr nocapture noundef readonly %p, ptr noundef %dst, i32 noundef %dst_idx, i32 noundef %pat, i32 noundef %left, i32 noundef %right, i32 noundef %n, i32 noundef %bits) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %tobool.not = icmp eq i32 %n, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags.i = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 2
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %shr = lshr i32 -1, %dst_idx
  %shl = shl nsw i32 -1, %dst_idx
  %cond = select i1 %tobool.i.not, i32 %shl, i32 %shr
  %add5 = add i32 %n, %dst_idx
  %rem6 = urem i32 %add5, %bits
  %shl7 = shl nsw i32 -1, %rem6
  %shr3 = lshr i32 -1, %rem6
  %cond9 = select i1 %tobool.i.not, i32 %shl7, i32 %shr3
  call void @__sanitizer_cov_trace_cmp4(i32 %add5, i32 %bits)
  %cmp.not = icmp ugt i32 %add5, %bits
  br i1 %cmp.not, label %if.then18, label %if.then11

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %neg = xor i32 %cond9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cond9)
  %tobool12.not = icmp eq i32 %cond9, -1
  %and = select i1 %tobool12.not, i32 -1, i32 %neg
  %spec.select = and i32 %and, %cond
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dst) #4, !srcloc !32
  %xor.i = xor i32 %2, %pat
  %and.i125 = and i32 %spec.select, %xor.i
  %xor1.i = xor i32 %and.i125, %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst, i32 %xor1.i) #4, !srcloc !33
  br label %cleanup

if.then18:                                        ; preds = %if.end
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dst) #4, !srcloc !32
  %xor.i126 = xor i32 %3, %pat
  %and.i127 = and i32 %xor.i126, %cond
  %xor1.i128 = xor i32 %and.i127, %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst, i32 %xor1.i128) #4, !srcloc !33
  %sub23 = sub i32 %add5, %bits
  %shl21 = shl i32 %pat, %left
  %shr22 = lshr i32 %pat, %right
  %or = or i32 %shr22, %shl21
  %div = udiv i32 %sub23, %bits
  %dst.addr.1132 = getelementptr i32, ptr %dst, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %div)
  %cmp25133 = icmp ugt i32 %div, 3
  br i1 %cmp25133, label %if.then18.while.body_crit_edge, label %if.then18.while.cond43.preheader_crit_edge

if.then18.while.cond43.preheader_crit_edge:       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond43.preheader

if.then18.while.body_crit_edge:                   ; preds = %if.then18
  br label %while.body

while.cond43.preheader:                           ; preds = %while.body.while.cond43.preheader_crit_edge, %if.then18.while.cond43.preheader_crit_edge
  %pat.addr.1.lcssa = phi i32 [ %or, %if.then18.while.cond43.preheader_crit_edge ], [ %or41, %while.body.while.cond43.preheader_crit_edge ]
  %n.addr.1.lcssa = phi i32 [ %div, %if.then18.while.cond43.preheader_crit_edge ], [ %sub42, %while.body.while.cond43.preheader_crit_edge ]
  %dst.addr.1.lcssa = phi ptr [ %dst.addr.1132, %if.then18.while.cond43.preheader_crit_edge ], [ %dst.addr.1, %while.body.while.cond43.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.1.lcssa)
  %tobool44.not140 = icmp eq i32 %n.addr.1.lcssa, 0
  br i1 %tobool44.not140, label %while.cond43.preheader.while.end50_crit_edge, label %while.cond43.preheader.while.body45_crit_edge

while.cond43.preheader.while.body45_crit_edge:    ; preds = %while.cond43.preheader
  br label %while.body45

while.cond43.preheader.while.end50_crit_edge:     ; preds = %while.cond43.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end50

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then18.while.body_crit_edge
  %dst.addr.1137 = phi ptr [ %dst.addr.1, %while.body.while.body_crit_edge ], [ %dst.addr.1132, %if.then18.while.body_crit_edge ]
  %dst.pn136 = phi ptr [ %incdec.ptr34, %while.body.while.body_crit_edge ], [ %dst, %if.then18.while.body_crit_edge ]
  %n.addr.1135 = phi i32 [ %sub42, %while.body.while.body_crit_edge ], [ %div, %if.then18.while.body_crit_edge ]
  %pat.addr.1134 = phi i32 [ %or41, %while.body.while.body_crit_edge ], [ %or, %if.then18.while.body_crit_edge ]
  %incdec.ptr26 = getelementptr i32, ptr %dst.pn136, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.addr.1137, i32 %pat.addr.1134) #4, !srcloc !33
  %shl27 = shl i32 %pat.addr.1134, %left
  %shr28 = lshr i32 %pat.addr.1134, %right
  %or29 = or i32 %shl27, %shr28
  %incdec.ptr30 = getelementptr i32, ptr %dst.pn136, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr26, i32 %or29) #4, !srcloc !33
  %shl31 = shl i32 %or29, %left
  %shr32 = lshr i32 %or29, %right
  %or33 = or i32 %shl31, %shr32
  %incdec.ptr34 = getelementptr i32, ptr %dst.pn136, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr30, i32 %or33) #4, !srcloc !33
  %shl35 = shl i32 %or33, %left
  %shr36 = lshr i32 %or33, %right
  %or37 = or i32 %shl35, %shr36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %incdec.ptr34, i32 %or37) #4, !srcloc !33
  %shl39 = shl i32 %or37, %left
  %shr40 = lshr i32 %or37, %right
  %or41 = or i32 %shl39, %shr40
  %sub42 = add i32 %n.addr.1135, -4
  %dst.addr.1 = getelementptr i32, ptr %dst.pn136, i32 5
  %cmp25 = icmp ugt i32 %sub42, 3
  br i1 %cmp25, label %while.body.while.body_crit_edge, label %while.body.while.cond43.preheader_crit_edge

while.body.while.cond43.preheader_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond43.preheader

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.body45:                                     ; preds = %while.body45.while.body45_crit_edge, %while.cond43.preheader.while.body45_crit_edge
  %dst.addr.2143 = phi ptr [ %incdec.ptr46, %while.body45.while.body45_crit_edge ], [ %dst.addr.1.lcssa, %while.cond43.preheader.while.body45_crit_edge ]
  %n.addr.2142 = phi i32 [ %dec, %while.body45.while.body45_crit_edge ], [ %n.addr.1.lcssa, %while.cond43.preheader.while.body45_crit_edge ]
  %pat.addr.2141 = phi i32 [ %or49, %while.body45.while.body45_crit_edge ], [ %pat.addr.1.lcssa, %while.cond43.preheader.while.body45_crit_edge ]
  %dec = add i32 %n.addr.2142, -1
  %incdec.ptr46 = getelementptr i32, ptr %dst.addr.2143, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.addr.2143, i32 %pat.addr.2141) #4, !srcloc !33
  %shl47 = shl i32 %pat.addr.2141, %left
  %shr48 = lshr i32 %pat.addr.2141, %right
  %or49 = or i32 %shl47, %shr48
  %tobool44.not = icmp eq i32 %dec, 0
  br i1 %tobool44.not, label %while.body45.while.end50_crit_edge, label %while.body45.while.body45_crit_edge

while.body45.while.body45_crit_edge:              ; preds = %while.body45
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body45

while.body45.while.end50_crit_edge:               ; preds = %while.body45
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end50

while.end50:                                      ; preds = %while.body45.while.end50_crit_edge, %while.cond43.preheader.while.end50_crit_edge
  %pat.addr.2.lcssa = phi i32 [ %pat.addr.1.lcssa, %while.cond43.preheader.while.end50_crit_edge ], [ %or49, %while.body45.while.end50_crit_edge ]
  %dst.addr.2.lcssa = phi ptr [ %dst.addr.1.lcssa, %while.cond43.preheader.while.end50_crit_edge ], [ %incdec.ptr46, %while.body45.while.end50_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cond9)
  %tobool51.not = icmp eq i32 %cond9, -1
  br i1 %tobool51.not, label %while.end50.cleanup_crit_edge, label %if.then52

while.end50.cleanup_crit_edge:                    ; preds = %while.end50
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then52:                                        ; preds = %while.end50
  call void @__sanitizer_cov_trace_pc() #6
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dst.addr.2.lcssa) #4, !srcloc !32
  %xor.i129 = xor i32 %4, %pat.addr.2.lcssa
  %5 = and i32 %xor.i129, %cond9
  %xor1.i131 = xor i32 %5, %pat.addr.2.lcssa
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.addr.2.lcssa, i32 %xor1.i131) #4, !srcloc !33
  br label %cleanup

cleanup:                                          ; preds = %if.then52, %while.end50.cleanup_crit_edge, %if.then11, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !13, !15, !17, !18, !20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/core/cfbfillrect.c", i32 320, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @cfb_fillrect._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @cfb_fillrect._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @cfb_fillrect._entry.3, !7, !"_entry", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/core/cfbfillrect.c", i32 350, i32 4}
!8 = !{ptr @cfb_fillrect._entry_ptr.4, !7, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @__ksymtab_cfb_fillrect, !10, !"__ksymtab_cfb_fillrect", i1 false, i1 false}
!10 = !{!"../drivers/video/fbdev/core/cfbfillrect.c", i32 367, i32 1}
!11 = !{ptr @__UNIQUE_ID_author301, !12, !"__UNIQUE_ID_author301", i1 false, i1 false}
!12 = !{!"../drivers/video/fbdev/core/cfbfillrect.c", i32 369, i32 1}
!13 = !{ptr @__UNIQUE_ID_description302, !14, !"__UNIQUE_ID_description302", i1 false, i1 false}
!14 = !{!"../drivers/video/fbdev/core/cfbfillrect.c", i32 370, i32 1}
!15 = !{ptr @__UNIQUE_ID_file303, !16, !"__UNIQUE_ID_file303", i1 false, i1 false}
!16 = !{!"../drivers/video/fbdev/core/cfbfillrect.c", i32 371, i32 1}
!17 = !{ptr @__UNIQUE_ID_license304, !16, !"__UNIQUE_ID_license304", i1 false, i1 false}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/video/fbdev/core/fb_draw.h", i32 72, i32 3}
!20 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{ptr @bitfill_aligned, ptr @bitfill_aligned_rev}
!31 = !{ptr @bitfill_unaligned, ptr @bitfill_unaligned_rev}
!32 = !{i64 4722118}
!33 = !{i64 4721700}
