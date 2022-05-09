; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/core/sysfillrect.c_pt.bc'
source_filename = "../drivers/video/fbdev/core/sysfillrect.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+sys_fillrect\22, \22a\22\09"
module asm "\09.weak\09__crc_sys_fillrect\09\09\09\09"
module asm "\09.long\09__crc_sys_fillrect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sys_fillrect:\09\09\09\09\09"
module asm "\09.asciz \09\22sys_fillrect\22\09\09\09\09\09"
module asm "__kstrtabns_sys_fillrect:\09\09\09\09\09"
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

@sys_fillrect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013cfb_fillrect(): unknown rop, defaulting to ROP_COPY\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_fillrect\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/video/fbdev/core/sysfillrect.c\00", [57 x i8] zeroinitializer }, align 32
@sys_fillrect._entry_ptr = internal global ptr @sys_fillrect._entry, section ".printk_index", align 4
@sys_fillrect._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013sys_fillrect(): unknown rop, defaulting to ROP_COPY\0A\00", [41 x i8] zeroinitializer }, align 32
@sys_fillrect._entry_ptr.5 = internal global ptr @sys_fillrect._entry.3, section ".printk_index", align 4
@__kstrtab_sys_fillrect = external dso_local constant [0 x i8], align 1
@__kstrtabns_sys_fillrect = external dso_local constant [0 x i8], align 1
@__ksymtab_sys_fillrect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sys_fillrect to i32), ptr @__kstrtab_sys_fillrect, ptr @__kstrtabns_sys_fillrect }, section "___ksymtab+sys_fillrect", align 4
@__UNIQUE_ID_author301 = internal constant [53 x i8] c"sysfillrect.author=Antonino Daplas <adaplas@pol.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description302 = internal constant [60 x i8] c"sysfillrect.description=Generic fill rectangle (sys-to-sys)\00", section ".modinfo", align 1
@__UNIQUE_ID_file303 = internal constant [54 x i8] c"sysfillrect.file=drivers/video/fbdev/core/sysfillrect\00", section ".modinfo", align 1
@__UNIQUE_ID_license304 = internal constant [24 x i8] c"sysfillrect.license=GPL\00", section ".modinfo", align 1
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/video/fbdev/core/fb_draw.h\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"pixel_to_pat(): unsupported pixelformat %d\0A\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.8 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 4, i64 8, i64 12, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 283, i32 4 }
@___asan_gen_.23 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.27 = private constant [42 x i8] c"../drivers/video/fbdev/core/sysfillrect.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 313, i32 4 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [38 x i8] c"../drivers/video/fbdev/core/fb_draw.h\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 72, i32 3 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file303, ptr @__UNIQUE_ID_license304, ptr @__ksymtab_sys_fillrect, ptr @sys_fillrect._entry, ptr @sys_fillrect._entry.3, ptr @sys_fillrect._entry_ptr, ptr @sys_fillrect._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sys_fillrect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sys_fillrect._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sys_fillrect(ptr noundef %p, ptr nocapture noundef readonly %rect) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
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
    i32 4, label %if.end.if.then7_crit_edge141
  ]

if.end.if.then7_crit_edge141:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7

if.then7:                                         ; preds = %if.end.if.then7_crit_edge, %if.end.if.then7_crit_edge141
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
  call void @__sanitizer_cov_trace_pc() #7
  %color8 = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then7
  %fg.0.in = phi ptr [ %arrayidx, %if.then7 ], [ %color8, %if.else ]
  %15 = ptrtoint ptr %fg.0.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %fg.0 = load i32, ptr %fg.0.in, align 4
  %16 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.8)
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %pixel_to_pat.exit

sw.bb.i:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %mul.i = sub i32 0, %fg.0
  br label %pixel_to_pat.exit

sw.bb1.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %mul2.i = mul i32 %fg.0, 1431655765
  br label %pixel_to_pat.exit

sw.bb3.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %mul4.i = mul i32 %fg.0, 286331153
  br label %pixel_to_pat.exit

sw.bb5.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %mul6.i = mul i32 %fg.0, 16843009
  br label %pixel_to_pat.exit

sw.bb7.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %mul8.i = mul i32 %fg.0, 16781313
  br label %pixel_to_pat.exit

sw.bb9.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %mul10.i = mul i32 %fg.0, 65537
  br label %pixel_to_pat.exit

sw.bb11.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %mul12.i = mul i32 %fg.0, 16777217
  br label %pixel_to_pat.exit

do.end.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 72, i32 noundef 9, ptr noundef nonnull @.str.7, i32 noundef %5) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then17:                                        ; preds = %pixel_to_pat.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call20 = tail call i32 %31(ptr noundef %p) #5
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %pixel_to_pat.exit.if.end21_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool22.not = icmp eq i32 %rem, 0
  br i1 %tobool22.not, label %if.then23, label %if.else36

if.then23:                                        ; preds = %if.end21
  %rop = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 5
  %32 = ptrtoint ptr %rop to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rop, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %33, label %do.end [
    i32 1, label %if.then23.sw.epilog_crit_edge
    i32 0, label %sw.bb24
  ]

if.then23.sw.epilog_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end:                                           ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb24, %if.then23.sw.epilog_crit_edge
  %fill_op32.0 = phi ptr [ @bitfill_aligned, %do.end ], [ @bitfill_aligned, %sw.bb24 ], [ @bitfill_aligned_rev, %if.then23.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool26.not133 = icmp eq i32 %3, 0
  br i1 %tobool26.not133, label %sw.epilog.cleanup_crit_edge, label %while.body.lr.ph

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.lr.ph:                                 ; preds = %sw.epilog
  %mul31 = mul i32 %5, %1
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %dst_idx.0136 = phi i32 [ %add16, %while.body.lr.ph ], [ %add35, %while.body.while.body_crit_edge ]
  %dst.0135 = phi ptr [ %21, %while.body.lr.ph ], [ %add.ptr, %while.body.while.body_crit_edge ]
  %height.0134 = phi i32 [ %3, %while.body.lr.ph ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add i32 %height.0134, -1
  %shr28 = ashr i32 %dst_idx.0136, 5
  %add.ptr = getelementptr i32, ptr %dst.0135, i32 %shr28
  %and30 = and i32 %dst_idx.0136, 31
  tail call void %fill_op32.0(ptr noundef %p, ptr noundef %add.ptr, i32 noundef %and30, i32 noundef %retval.0.i, i32 noundef %mul31, i32 noundef 32) #5, !callees !31
  %35 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %line_length, align 4
  %mul34 = shl i32 %36, 3
  %add35 = add i32 %mul34, %and30
  %tobool26.not = icmp eq i32 %dec, 0
  br i1 %tobool26.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else36:                                        ; preds = %if.end21
  %sub37 = sub i32 %5, %rem
  %rop38 = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 5
  %37 = ptrtoint ptr %rop38 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rop38, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %38, label %do.end44 [
    i32 1, label %if.else36.sw.epilog47_crit_edge
    i32 0, label %sw.bb40
  ]

if.else36.sw.epilog47_crit_edge:                  ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog47

sw.bb40:                                          ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog47

do.end44:                                         ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #7
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #8
  br label %sw.epilog47

sw.epilog47:                                      ; preds = %do.end44, %sw.bb40, %if.else36.sw.epilog47_crit_edge
  %fill_op.0 = phi ptr [ @bitfill_unaligned, %do.end44 ], [ @bitfill_unaligned, %sw.bb40 ], [ @bitfill_unaligned_rev, %if.else36.sw.epilog47_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool50.not129 = icmp eq i32 %3, 0
  br i1 %tobool50.not129, label %sw.epilog47.cleanup_crit_edge, label %while.body51.lr.ph

sw.epilog47.cleanup_crit_edge:                    ; preds = %sw.epilog47
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body51.lr.ph:                               ; preds = %sw.epilog47
  %40 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i)
  %mul57 = mul i32 %5, %1
  br label %while.body51

while.body51:                                     ; preds = %while.body51.while.body51_crit_edge, %while.body51.lr.ph
  %dst_idx.1132 = phi i32 [ %add16, %while.body51.lr.ph ], [ %add61, %while.body51.while.body51_crit_edge ]
  %dst.1131 = phi ptr [ %21, %while.body51.lr.ph ], [ %add.ptr52, %while.body51.while.body51_crit_edge ]
  %height.1130 = phi i32 [ %3, %while.body51.lr.ph ], [ %dec49, %while.body51.while.body51_crit_edge ]
  %dec49 = add i32 %height.1130, -1
  %div = sdiv i32 %dst_idx.1132, 32
  %add.ptr52 = getelementptr i32, ptr %dst.1131, i32 %div
  %and54 = and i32 %dst_idx.1132, 31
  %rem55 = urem i32 %and54, %5
  %shl.i = shl i32 %40, %rem55
  %sub.i = sub i32 %5, %rem55
  %shr.i = lshr i32 %40, %sub.i
  %or.i = or i32 %shr.i, %shl.i
  %41 = tail call i32 @llvm.bswap.i32(i32 %or.i)
  tail call void %fill_op.0(ptr noundef %p, ptr noundef %add.ptr52, i32 noundef %and54, i32 noundef %41, i32 noundef %rem, i32 noundef %sub37, i32 noundef %mul57, i32 noundef 32) #5, !callees !32
  %42 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %line_length, align 4
  %mul60 = shl i32 %43, 3
  %add61 = add i32 %mul60, %and54
  %tobool50.not = icmp eq i32 %dec49, 0
  br i1 %tobool50.not, label %while.body51.cleanup_crit_edge, label %while.body51.while.body51_crit_edge

while.body51.while.body51_crit_edge:              ; preds = %while.body51
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body51

while.body51.cleanup_crit_edge:                   ; preds = %while.body51
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %while.body51.cleanup_crit_edge, %sw.epilog47.cleanup_crit_edge, %while.body.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bitfill_aligned_rev(ptr nocapture noundef readonly %p, ptr nocapture noundef %dst, i32 noundef %dst_idx, i32 noundef %pat, i32 noundef %n, i32 noundef %bits) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %tobool.not = icmp eq i32 %n, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  br i1 %cmp.not, label %if.then17, label %if.then11

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cond9)
  %tobool12.not = icmp eq i32 %cond9, -1
  %and = select i1 %tobool12.not, i32 -1, i32 %neg
  %2 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dst, align 4
  %spec.select = and i32 %cond, %pat
  %and.i110 = and i32 %spec.select, %and
  %xor1.i = xor i32 %3, %and.i110
  store i32 %xor1.i, ptr %dst, align 4
  br label %cleanup

if.then17:                                        ; preds = %if.end
  %4 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dst, align 4
  %and.i111 = and i32 %cond, %pat
  %xor1.i112 = xor i32 %5, %and.i111
  store i32 %xor1.i112, ptr %dst, align 4
  %sub20 = sub i32 %add5, %bits
  %div = udiv i32 %sub20, %bits
  %dst.addr.1115 = getelementptr i32, ptr %dst, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %div)
  %cmp22116 = icmp ugt i32 %div, 7
  br i1 %cmp22116, label %if.then17.while.body_crit_edge, label %if.then17.while.cond40.preheader_crit_edge

if.then17.while.cond40.preheader_crit_edge:       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond40.preheader

if.then17.while.body_crit_edge:                   ; preds = %if.then17
  br label %while.body

while.cond40.preheader:                           ; preds = %while.body.while.cond40.preheader_crit_edge, %if.then17.while.cond40.preheader_crit_edge
  %n.addr.1.lcssa = phi i32 [ %div, %if.then17.while.cond40.preheader_crit_edge ], [ %sub39, %while.body.while.cond40.preheader_crit_edge ]
  %dst.addr.1.lcssa = phi ptr [ %dst.addr.1115, %if.then17.while.cond40.preheader_crit_edge ], [ %dst.addr.1, %while.body.while.cond40.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.1.lcssa)
  %tobool41.not121 = icmp eq i32 %n.addr.1.lcssa, 0
  br i1 %tobool41.not121, label %while.cond40.preheader.while.end45_crit_edge, label %while.cond40.preheader.while.body42_crit_edge

while.cond40.preheader.while.body42_crit_edge:    ; preds = %while.cond40.preheader
  br label %while.body42

while.cond40.preheader.while.end45_crit_edge:     ; preds = %while.cond40.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end45

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then17.while.body_crit_edge
  %dst.addr.1119 = phi ptr [ %dst.addr.1, %while.body.while.body_crit_edge ], [ %dst.addr.1115, %if.then17.while.body_crit_edge ]
  %dst.pn118 = phi ptr [ %incdec.ptr35, %while.body.while.body_crit_edge ], [ %dst, %if.then17.while.body_crit_edge ]
  %n.addr.1117 = phi i32 [ %sub39, %while.body.while.body_crit_edge ], [ %div, %if.then17.while.body_crit_edge ]
  %incdec.ptr23 = getelementptr i32, ptr %dst.pn118, i32 2
  %6 = ptrtoint ptr %dst.addr.1119 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dst.addr.1119, align 4
  %xor24 = xor i32 %7, %pat
  store i32 %xor24, ptr %dst.addr.1119, align 4
  %incdec.ptr25 = getelementptr i32, ptr %dst.pn118, i32 3
  %8 = ptrtoint ptr %incdec.ptr23 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %incdec.ptr23, align 4
  %xor26 = xor i32 %9, %pat
  store i32 %xor26, ptr %incdec.ptr23, align 4
  %incdec.ptr27 = getelementptr i32, ptr %dst.pn118, i32 4
  %10 = ptrtoint ptr %incdec.ptr25 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %incdec.ptr25, align 4
  %xor28 = xor i32 %11, %pat
  store i32 %xor28, ptr %incdec.ptr25, align 4
  %incdec.ptr29 = getelementptr i32, ptr %dst.pn118, i32 5
  %12 = ptrtoint ptr %incdec.ptr27 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %incdec.ptr27, align 4
  %xor30 = xor i32 %13, %pat
  store i32 %xor30, ptr %incdec.ptr27, align 4
  %incdec.ptr31 = getelementptr i32, ptr %dst.pn118, i32 6
  %14 = ptrtoint ptr %incdec.ptr29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %incdec.ptr29, align 4
  %xor32 = xor i32 %15, %pat
  store i32 %xor32, ptr %incdec.ptr29, align 4
  %incdec.ptr33 = getelementptr i32, ptr %dst.pn118, i32 7
  %16 = ptrtoint ptr %incdec.ptr31 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %incdec.ptr31, align 4
  %xor34 = xor i32 %17, %pat
  store i32 %xor34, ptr %incdec.ptr31, align 4
  %incdec.ptr35 = getelementptr i32, ptr %dst.pn118, i32 8
  %18 = ptrtoint ptr %incdec.ptr33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %incdec.ptr33, align 4
  %xor36 = xor i32 %19, %pat
  store i32 %xor36, ptr %incdec.ptr33, align 4
  %20 = ptrtoint ptr %incdec.ptr35 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %incdec.ptr35, align 4
  %xor38 = xor i32 %21, %pat
  store i32 %xor38, ptr %incdec.ptr35, align 4
  %sub39 = add i32 %n.addr.1117, -8
  %dst.addr.1 = getelementptr i32, ptr %dst.pn118, i32 9
  %cmp22 = icmp ugt i32 %sub39, 7
  br i1 %cmp22, label %while.body.while.body_crit_edge, label %while.body.while.cond40.preheader_crit_edge

while.body.while.cond40.preheader_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond40.preheader

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body42:                                     ; preds = %while.body42.while.body42_crit_edge, %while.cond40.preheader.while.body42_crit_edge
  %dst.addr.2123 = phi ptr [ %incdec.ptr43, %while.body42.while.body42_crit_edge ], [ %dst.addr.1.lcssa, %while.cond40.preheader.while.body42_crit_edge ]
  %n.addr.2122 = phi i32 [ %dec, %while.body42.while.body42_crit_edge ], [ %n.addr.1.lcssa, %while.cond40.preheader.while.body42_crit_edge ]
  %dec = add i32 %n.addr.2122, -1
  %incdec.ptr43 = getelementptr i32, ptr %dst.addr.2123, i32 1
  %22 = ptrtoint ptr %dst.addr.2123 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dst.addr.2123, align 4
  %xor44 = xor i32 %23, %pat
  store i32 %xor44, ptr %dst.addr.2123, align 4
  %tobool41.not = icmp eq i32 %dec, 0
  br i1 %tobool41.not, label %while.body42.while.end45_crit_edge, label %while.body42.while.body42_crit_edge

while.body42.while.body42_crit_edge:              ; preds = %while.body42
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body42

while.body42.while.end45_crit_edge:               ; preds = %while.body42
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end45

while.end45:                                      ; preds = %while.body42.while.end45_crit_edge, %while.cond40.preheader.while.end45_crit_edge
  %dst.addr.2.lcssa = phi ptr [ %dst.addr.1.lcssa, %while.cond40.preheader.while.end45_crit_edge ], [ %incdec.ptr43, %while.body42.while.end45_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cond9)
  %tobool46.not = icmp eq i32 %cond9, -1
  br i1 %tobool46.not, label %while.end45.cleanup_crit_edge, label %if.then47

while.end45.cleanup_crit_edge:                    ; preds = %while.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then47:                                        ; preds = %while.end45
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %dst.addr.2.lcssa to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dst.addr.2.lcssa, align 4
  %and.i113 = and i32 %neg, %pat
  %xor1.i114 = xor i32 %25, %and.i113
  store i32 %xor1.i114, ptr %dst.addr.2.lcssa, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %while.end45.cleanup_crit_edge, %if.then11, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bitfill_aligned(ptr nocapture noundef readonly %p, ptr nocapture noundef %dst, i32 noundef %dst_idx, i32 noundef %pat, i32 noundef %n, i32 noundef %bits) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %tobool.not = icmp eq i32 %n, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  br i1 %cmp.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %neg = xor i32 %cond9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cond9)
  %tobool12.not = icmp eq i32 %cond9, -1
  %and = select i1 %tobool12.not, i32 -1, i32 %neg
  %spec.select = and i32 %and, %cond
  %2 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dst, align 4
  %xor.i = xor i32 %3, %pat
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cond)
  %cmp16.not = icmp eq i32 %cond, -1
  br i1 %cmp16.not, label %if.else.if.end20_crit_edge, label %if.then17

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dst, align 4
  %xor.i96 = xor i32 %5, %pat
  %and.i97 = and i32 %xor.i96, %cond
  %xor1.i98 = xor i32 %and.i97, %5
  store i32 %xor1.i98, ptr %dst, align 4
  %incdec.ptr = getelementptr i32, ptr %dst, i32 1
  %sub19 = sub i32 %add5, %bits
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.else.if.end20_crit_edge
  %n.addr.0 = phi i32 [ %sub19, %if.then17 ], [ %n, %if.else.if.end20_crit_edge ]
  %dst.addr.0 = phi ptr [ %incdec.ptr, %if.then17 ], [ %dst, %if.else.if.end20_crit_edge ]
  %div = udiv i32 %n.addr.0, %bits
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %div)
  %cmp21102 = icmp ugt i32 %div, 7
  br i1 %cmp21102, label %if.end20.while.body_crit_edge, label %if.end20.while.cond31.preheader_crit_edge

if.end20.while.cond31.preheader_crit_edge:        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond31.preheader

if.end20.while.body_crit_edge:                    ; preds = %if.end20
  br label %while.body

while.cond31.preheader:                           ; preds = %while.body.while.cond31.preheader_crit_edge, %if.end20.while.cond31.preheader_crit_edge
  %n.addr.1.lcssa = phi i32 [ %div, %if.end20.while.cond31.preheader_crit_edge ], [ %sub30, %while.body.while.cond31.preheader_crit_edge ]
  %dst.addr.1.lcssa = phi ptr [ %dst.addr.0, %if.end20.while.cond31.preheader_crit_edge ], [ %incdec.ptr29, %while.body.while.cond31.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.1.lcssa)
  %tobool32.not106 = icmp eq i32 %n.addr.1.lcssa, 0
  br i1 %tobool32.not106, label %while.cond31.preheader.while.end35_crit_edge, label %while.cond31.preheader.while.body33_crit_edge

while.cond31.preheader.while.body33_crit_edge:    ; preds = %while.cond31.preheader
  br label %while.body33

while.cond31.preheader.while.end35_crit_edge:     ; preds = %while.cond31.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end35

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end20.while.body_crit_edge
  %dst.addr.1104 = phi ptr [ %incdec.ptr29, %while.body.while.body_crit_edge ], [ %dst.addr.0, %if.end20.while.body_crit_edge ]
  %n.addr.1103 = phi i32 [ %sub30, %while.body.while.body_crit_edge ], [ %div, %if.end20.while.body_crit_edge ]
  %incdec.ptr22 = getelementptr i32, ptr %dst.addr.1104, i32 1
  %6 = ptrtoint ptr %dst.addr.1104 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %pat, ptr %dst.addr.1104, align 4
  %incdec.ptr23 = getelementptr i32, ptr %dst.addr.1104, i32 2
  %7 = ptrtoint ptr %incdec.ptr22 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %pat, ptr %incdec.ptr22, align 4
  %incdec.ptr24 = getelementptr i32, ptr %dst.addr.1104, i32 3
  %8 = ptrtoint ptr %incdec.ptr23 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %pat, ptr %incdec.ptr23, align 4
  %incdec.ptr25 = getelementptr i32, ptr %dst.addr.1104, i32 4
  %9 = ptrtoint ptr %incdec.ptr24 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %pat, ptr %incdec.ptr24, align 4
  %incdec.ptr26 = getelementptr i32, ptr %dst.addr.1104, i32 5
  %10 = ptrtoint ptr %incdec.ptr25 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %pat, ptr %incdec.ptr25, align 4
  %incdec.ptr27 = getelementptr i32, ptr %dst.addr.1104, i32 6
  %11 = ptrtoint ptr %incdec.ptr26 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %pat, ptr %incdec.ptr26, align 4
  %incdec.ptr28 = getelementptr i32, ptr %dst.addr.1104, i32 7
  %12 = ptrtoint ptr %incdec.ptr27 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %pat, ptr %incdec.ptr27, align 4
  %incdec.ptr29 = getelementptr i32, ptr %dst.addr.1104, i32 8
  %13 = ptrtoint ptr %incdec.ptr28 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %pat, ptr %incdec.ptr28, align 4
  %sub30 = add i32 %n.addr.1103, -8
  %cmp21 = icmp ugt i32 %sub30, 7
  br i1 %cmp21, label %while.body.while.body_crit_edge, label %while.body.while.cond31.preheader_crit_edge

while.body.while.cond31.preheader_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond31.preheader

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body33:                                     ; preds = %while.body33.while.body33_crit_edge, %while.cond31.preheader.while.body33_crit_edge
  %dst.addr.2108 = phi ptr [ %incdec.ptr34, %while.body33.while.body33_crit_edge ], [ %dst.addr.1.lcssa, %while.cond31.preheader.while.body33_crit_edge ]
  %n.addr.2107 = phi i32 [ %dec, %while.body33.while.body33_crit_edge ], [ %n.addr.1.lcssa, %while.cond31.preheader.while.body33_crit_edge ]
  %dec = add i32 %n.addr.2107, -1
  %incdec.ptr34 = getelementptr i32, ptr %dst.addr.2108, i32 1
  %14 = ptrtoint ptr %dst.addr.2108 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %pat, ptr %dst.addr.2108, align 4
  %tobool32.not = icmp eq i32 %dec, 0
  br i1 %tobool32.not, label %while.body33.while.end35_crit_edge, label %while.body33.while.body33_crit_edge

while.body33.while.body33_crit_edge:              ; preds = %while.body33
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body33

while.body33.while.end35_crit_edge:               ; preds = %while.body33
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end35

while.end35:                                      ; preds = %while.body33.while.end35_crit_edge, %while.cond31.preheader.while.end35_crit_edge
  %dst.addr.2.lcssa = phi ptr [ %dst.addr.1.lcssa, %while.cond31.preheader.while.end35_crit_edge ], [ %incdec.ptr34, %while.body33.while.end35_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cond9)
  %tobool36.not = icmp eq i32 %cond9, -1
  br i1 %tobool36.not, label %while.end35.cleanup_crit_edge, label %if.then37

while.end35.cleanup_crit_edge:                    ; preds = %while.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then37:                                        ; preds = %while.end35
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %dst.addr.2.lcssa to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dst.addr.2.lcssa, align 4
  %xor.i99 = xor i32 %16, %pat
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then37, %if.then11
  %xor.i.sink = phi i32 [ %xor.i, %if.then11 ], [ %cond9, %if.then37 ]
  %spec.select.sink = phi i32 [ %spec.select, %if.then11 ], [ %xor.i99, %if.then37 ]
  %.sink = phi i32 [ %3, %if.then11 ], [ %pat, %if.then37 ]
  %dst.sink = phi ptr [ %dst, %if.then11 ], [ %dst.addr.2.lcssa, %if.then37 ]
  %and.i95 = and i32 %spec.select.sink, %xor.i.sink
  %xor1.i = xor i32 %and.i95, %.sink
  %17 = ptrtoint ptr %dst.sink to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %xor1.i, ptr %dst.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %while.end35.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bitfill_unaligned_rev(ptr nocapture noundef readonly %p, ptr nocapture noundef %dst, i32 noundef %dst_idx, i32 noundef %pat, i32 noundef %left, i32 noundef %right, i32 noundef %n, i32 noundef %bits) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %tobool.not = icmp eq i32 %n, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  br i1 %cmp.not, label %if.then17, label %if.then11

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cond9)
  %tobool12.not = icmp eq i32 %cond9, -1
  %and = select i1 %tobool12.not, i32 -1, i32 %neg
  %2 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dst, align 4
  %spec.select = and i32 %cond, %pat
  %and.i131 = and i32 %spec.select, %and
  %xor1.i = xor i32 %3, %and.i131
  store i32 %xor1.i, ptr %dst, align 4
  br label %cleanup

if.then17:                                        ; preds = %if.end
  %4 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dst, align 4
  %and.i132 = and i32 %cond, %pat
  %xor1.i133 = xor i32 %5, %and.i132
  store i32 %xor1.i133, ptr %dst, align 4
  %sub22 = sub i32 %add5, %bits
  %shl20 = shl i32 %pat, %left
  %shr21 = lshr i32 %pat, %right
  %or = or i32 %shr21, %shl20
  %div = udiv i32 %sub22, %bits
  %dst.addr.1136 = getelementptr i32, ptr %dst, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %div)
  %cmp24137 = icmp ugt i32 %div, 3
  br i1 %cmp24137, label %if.then17.while.body_crit_edge, label %if.then17.while.cond46.preheader_crit_edge

if.then17.while.cond46.preheader_crit_edge:       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond46.preheader

if.then17.while.body_crit_edge:                   ; preds = %if.then17
  br label %while.body

while.cond46.preheader:                           ; preds = %while.body.while.cond46.preheader_crit_edge, %if.then17.while.cond46.preheader_crit_edge
  %pat.addr.1.lcssa = phi i32 [ %or, %if.then17.while.cond46.preheader_crit_edge ], [ %or44, %while.body.while.cond46.preheader_crit_edge ]
  %n.addr.1.lcssa = phi i32 [ %div, %if.then17.while.cond46.preheader_crit_edge ], [ %sub45, %while.body.while.cond46.preheader_crit_edge ]
  %dst.addr.1.lcssa = phi ptr [ %dst.addr.1136, %if.then17.while.cond46.preheader_crit_edge ], [ %dst.addr.1, %while.body.while.cond46.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.1.lcssa)
  %tobool47.not144 = icmp eq i32 %n.addr.1.lcssa, 0
  br i1 %tobool47.not144, label %while.cond46.preheader.while.end53_crit_edge, label %while.body48.lr.ph

while.cond46.preheader.while.end53_crit_edge:     ; preds = %while.cond46.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end53

while.body48.lr.ph:                               ; preds = %while.cond46.preheader
  %6 = ptrtoint ptr %dst.addr.1.lcssa to i32
  call void @__asan_load4_noabort(i32 %6)
  %dst.addr.1.lcssa.promoted = load i32, ptr %dst.addr.1.lcssa, align 4
  br label %while.body48

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then17.while.body_crit_edge
  %dst.addr.1141 = phi ptr [ %dst.addr.1, %while.body.while.body_crit_edge ], [ %dst.addr.1136, %if.then17.while.body_crit_edge ]
  %dst.pn140 = phi ptr [ %incdec.ptr35, %while.body.while.body_crit_edge ], [ %dst, %if.then17.while.body_crit_edge ]
  %n.addr.1139 = phi i32 [ %sub45, %while.body.while.body_crit_edge ], [ %div, %if.then17.while.body_crit_edge ]
  %pat.addr.1138 = phi i32 [ %or44, %while.body.while.body_crit_edge ], [ %or, %if.then17.while.body_crit_edge ]
  %incdec.ptr25 = getelementptr i32, ptr %dst.pn140, i32 2
  %7 = ptrtoint ptr %dst.addr.1141 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dst.addr.1141, align 4
  %xor26 = xor i32 %8, %pat.addr.1138
  store i32 %xor26, ptr %dst.addr.1141, align 4
  %shl27 = shl i32 %pat.addr.1138, %left
  %shr28 = lshr i32 %pat.addr.1138, %right
  %or29 = or i32 %shl27, %shr28
  %incdec.ptr30 = getelementptr i32, ptr %dst.pn140, i32 3
  %9 = ptrtoint ptr %incdec.ptr25 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %incdec.ptr25, align 4
  %xor31 = xor i32 %10, %or29
  store i32 %xor31, ptr %incdec.ptr25, align 4
  %shl32 = shl i32 %or29, %left
  %shr33 = lshr i32 %or29, %right
  %or34 = or i32 %shl32, %shr33
  %incdec.ptr35 = getelementptr i32, ptr %dst.pn140, i32 4
  %11 = ptrtoint ptr %incdec.ptr30 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %incdec.ptr30, align 4
  %xor36 = xor i32 %12, %or34
  store i32 %xor36, ptr %incdec.ptr30, align 4
  %shl37 = shl i32 %or34, %left
  %shr38 = lshr i32 %or34, %right
  %or39 = or i32 %shl37, %shr38
  %13 = ptrtoint ptr %incdec.ptr35 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %incdec.ptr35, align 4
  %xor41 = xor i32 %14, %or39
  store i32 %xor41, ptr %incdec.ptr35, align 4
  %shl42 = shl i32 %or39, %left
  %shr43 = lshr i32 %or39, %right
  %or44 = or i32 %shl42, %shr43
  %sub45 = add i32 %n.addr.1139, -4
  %dst.addr.1 = getelementptr i32, ptr %dst.pn140, i32 5
  %cmp24 = icmp ugt i32 %sub45, 3
  br i1 %cmp24, label %while.body.while.body_crit_edge, label %while.body.while.cond46.preheader_crit_edge

while.body.while.cond46.preheader_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond46.preheader

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body48:                                     ; preds = %while.body48.while.body48_crit_edge, %while.body48.lr.ph
  %xor49148 = phi i32 [ %dst.addr.1.lcssa.promoted, %while.body48.lr.ph ], [ %xor49, %while.body48.while.body48_crit_edge ]
  %n.addr.2146 = phi i32 [ %n.addr.1.lcssa, %while.body48.lr.ph ], [ %dec, %while.body48.while.body48_crit_edge ]
  %pat.addr.2145 = phi i32 [ %pat.addr.1.lcssa, %while.body48.lr.ph ], [ %or52, %while.body48.while.body48_crit_edge ]
  %dec = add i32 %n.addr.2146, -1
  %xor49 = xor i32 %xor49148, %pat.addr.2145
  %shl50 = shl i32 %pat.addr.2145, %left
  %shr51 = lshr i32 %pat.addr.2145, %right
  %or52 = or i32 %shl50, %shr51
  %tobool47.not = icmp eq i32 %dec, 0
  br i1 %tobool47.not, label %while.cond46.while.end53_crit_edge, label %while.body48.while.body48_crit_edge

while.body48.while.body48_crit_edge:              ; preds = %while.body48
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body48

while.cond46.while.end53_crit_edge:               ; preds = %while.body48
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %dst.addr.1.lcssa to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %xor49, ptr %dst.addr.1.lcssa, align 4
  br label %while.end53

while.end53:                                      ; preds = %while.cond46.while.end53_crit_edge, %while.cond46.preheader.while.end53_crit_edge
  %pat.addr.2.lcssa = phi i32 [ %or52, %while.cond46.while.end53_crit_edge ], [ %pat.addr.1.lcssa, %while.cond46.preheader.while.end53_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cond9)
  %tobool54.not = icmp eq i32 %cond9, -1
  br i1 %tobool54.not, label %while.end53.cleanup_crit_edge, label %if.then55

while.end53.cleanup_crit_edge:                    ; preds = %while.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then55:                                        ; preds = %while.end53
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %dst.addr.1.lcssa to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dst.addr.1.lcssa, align 4
  %and.i134 = and i32 %pat.addr.2.lcssa, %neg
  %xor1.i135 = xor i32 %17, %and.i134
  store i32 %xor1.i135, ptr %dst.addr.1.lcssa, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %while.end53.cleanup_crit_edge, %if.then11, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bitfill_unaligned(ptr nocapture noundef readonly %p, ptr nocapture noundef %dst, i32 noundef %dst_idx, i32 noundef %pat, i32 noundef %left, i32 noundef %right, i32 noundef %n, i32 noundef %bits) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %tobool.not = icmp eq i32 %n, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  br i1 %cmp.not, label %if.then17, label %if.then11

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %neg = xor i32 %cond9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cond9)
  %tobool12.not = icmp eq i32 %cond9, -1
  %and = select i1 %tobool12.not, i32 -1, i32 %neg
  %spec.select = and i32 %and, %cond
  %2 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dst, align 4
  %xor.i = xor i32 %3, %pat
  %and.i122 = and i32 %spec.select, %xor.i
  %xor1.i = xor i32 %and.i122, %3
  store i32 %xor1.i, ptr %dst, align 4
  br label %cleanup

if.then17:                                        ; preds = %if.end
  %4 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dst, align 4
  %xor.i123 = xor i32 %5, %pat
  %and.i124 = and i32 %xor.i123, %cond
  %xor1.i125 = xor i32 %and.i124, %5
  store i32 %xor1.i125, ptr %dst, align 4
  %sub21 = sub i32 %add5, %bits
  %shl19 = shl i32 %pat, %left
  %shr20 = lshr i32 %pat, %right
  %or = or i32 %shr20, %shl19
  %div = udiv i32 %sub21, %bits
  %dst.addr.1129 = getelementptr i32, ptr %dst, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %div)
  %cmp23130 = icmp ugt i32 %div, 3
  br i1 %cmp23130, label %if.then17.while.body_crit_edge, label %if.then17.while.cond41.preheader_crit_edge

if.then17.while.cond41.preheader_crit_edge:       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond41.preheader

if.then17.while.body_crit_edge:                   ; preds = %if.then17
  br label %while.body

while.cond41.preheader:                           ; preds = %while.body.while.cond41.preheader_crit_edge, %if.then17.while.cond41.preheader_crit_edge
  %pat.addr.1.lcssa = phi i32 [ %or, %if.then17.while.cond41.preheader_crit_edge ], [ %or39, %while.body.while.cond41.preheader_crit_edge ]
  %n.addr.1.lcssa = phi i32 [ %div, %if.then17.while.cond41.preheader_crit_edge ], [ %sub40, %while.body.while.cond41.preheader_crit_edge ]
  %dst.addr.1.lcssa = phi ptr [ %dst.addr.1129, %if.then17.while.cond41.preheader_crit_edge ], [ %dst.addr.1, %while.body.while.cond41.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.1.lcssa)
  %tobool42.not137 = icmp eq i32 %n.addr.1.lcssa, 0
  br i1 %tobool42.not137, label %while.cond41.preheader.while.end48_crit_edge, label %while.cond41.preheader.while.body43_crit_edge

while.cond41.preheader.while.body43_crit_edge:    ; preds = %while.cond41.preheader
  br label %while.body43

while.cond41.preheader.while.end48_crit_edge:     ; preds = %while.cond41.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end48

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then17.while.body_crit_edge
  %dst.addr.1134 = phi ptr [ %dst.addr.1, %while.body.while.body_crit_edge ], [ %dst.addr.1129, %if.then17.while.body_crit_edge ]
  %dst.pn133 = phi ptr [ %incdec.ptr32, %while.body.while.body_crit_edge ], [ %dst, %if.then17.while.body_crit_edge ]
  %n.addr.1132 = phi i32 [ %sub40, %while.body.while.body_crit_edge ], [ %div, %if.then17.while.body_crit_edge ]
  %pat.addr.1131 = phi i32 [ %or39, %while.body.while.body_crit_edge ], [ %or, %if.then17.while.body_crit_edge ]
  %incdec.ptr24 = getelementptr i32, ptr %dst.pn133, i32 2
  %6 = ptrtoint ptr %dst.addr.1134 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %pat.addr.1131, ptr %dst.addr.1134, align 4
  %shl25 = shl i32 %pat.addr.1131, %left
  %shr26 = lshr i32 %pat.addr.1131, %right
  %or27 = or i32 %shl25, %shr26
  %incdec.ptr28 = getelementptr i32, ptr %dst.pn133, i32 3
  %7 = ptrtoint ptr %incdec.ptr24 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or27, ptr %incdec.ptr24, align 4
  %shl29 = shl i32 %or27, %left
  %shr30 = lshr i32 %or27, %right
  %or31 = or i32 %shl29, %shr30
  %incdec.ptr32 = getelementptr i32, ptr %dst.pn133, i32 4
  %8 = ptrtoint ptr %incdec.ptr28 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or31, ptr %incdec.ptr28, align 4
  %shl33 = shl i32 %or31, %left
  %shr34 = lshr i32 %or31, %right
  %or35 = or i32 %shl33, %shr34
  %9 = ptrtoint ptr %incdec.ptr32 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or35, ptr %incdec.ptr32, align 4
  %shl37 = shl i32 %or35, %left
  %shr38 = lshr i32 %or35, %right
  %or39 = or i32 %shl37, %shr38
  %sub40 = add i32 %n.addr.1132, -4
  %dst.addr.1 = getelementptr i32, ptr %dst.pn133, i32 5
  %cmp23 = icmp ugt i32 %sub40, 3
  br i1 %cmp23, label %while.body.while.body_crit_edge, label %while.body.while.cond41.preheader_crit_edge

while.body.while.cond41.preheader_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond41.preheader

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body43:                                     ; preds = %while.body43.while.body43_crit_edge, %while.cond41.preheader.while.body43_crit_edge
  %dst.addr.2140 = phi ptr [ %incdec.ptr44, %while.body43.while.body43_crit_edge ], [ %dst.addr.1.lcssa, %while.cond41.preheader.while.body43_crit_edge ]
  %n.addr.2139 = phi i32 [ %dec, %while.body43.while.body43_crit_edge ], [ %n.addr.1.lcssa, %while.cond41.preheader.while.body43_crit_edge ]
  %pat.addr.2138 = phi i32 [ %or47, %while.body43.while.body43_crit_edge ], [ %pat.addr.1.lcssa, %while.cond41.preheader.while.body43_crit_edge ]
  %dec = add i32 %n.addr.2139, -1
  %incdec.ptr44 = getelementptr i32, ptr %dst.addr.2140, i32 1
  %10 = ptrtoint ptr %dst.addr.2140 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %pat.addr.2138, ptr %dst.addr.2140, align 4
  %shl45 = shl i32 %pat.addr.2138, %left
  %shr46 = lshr i32 %pat.addr.2138, %right
  %or47 = or i32 %shl45, %shr46
  %tobool42.not = icmp eq i32 %dec, 0
  br i1 %tobool42.not, label %while.body43.while.end48_crit_edge, label %while.body43.while.body43_crit_edge

while.body43.while.body43_crit_edge:              ; preds = %while.body43
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body43

while.body43.while.end48_crit_edge:               ; preds = %while.body43
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end48

while.end48:                                      ; preds = %while.body43.while.end48_crit_edge, %while.cond41.preheader.while.end48_crit_edge
  %pat.addr.2.lcssa = phi i32 [ %pat.addr.1.lcssa, %while.cond41.preheader.while.end48_crit_edge ], [ %or47, %while.body43.while.end48_crit_edge ]
  %dst.addr.2.lcssa = phi ptr [ %dst.addr.1.lcssa, %while.cond41.preheader.while.end48_crit_edge ], [ %incdec.ptr44, %while.body43.while.end48_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cond9)
  %tobool49.not = icmp eq i32 %cond9, -1
  br i1 %tobool49.not, label %while.end48.cleanup_crit_edge, label %if.then50

while.end48.cleanup_crit_edge:                    ; preds = %while.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then50:                                        ; preds = %while.end48
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %dst.addr.2.lcssa to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dst.addr.2.lcssa, align 4
  %xor.i126 = xor i32 %12, %pat.addr.2.lcssa
  %13 = and i32 %xor.i126, %cond9
  %xor1.i128 = xor i32 %13, %pat.addr.2.lcssa
  store i32 %xor1.i128, ptr %dst.addr.2.lcssa, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then50, %while.end48.cleanup_crit_edge, %if.then11, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !16, !18, !19, !21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/core/sysfillrect.c", i32 283, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @sys_fillrect._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @sys_fillrect._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/core/sysfillrect.c", i32 313, i32 4}
!8 = !{ptr @sys_fillrect._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @sys_fillrect._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @__ksymtab_sys_fillrect, !11, !"__ksymtab_sys_fillrect", i1 false, i1 false}
!11 = !{!"../drivers/video/fbdev/core/sysfillrect.c", i32 331, i32 1}
!12 = !{ptr @__UNIQUE_ID_author301, !13, !"__UNIQUE_ID_author301", i1 false, i1 false}
!13 = !{!"../drivers/video/fbdev/core/sysfillrect.c", i32 333, i32 1}
!14 = !{ptr @__UNIQUE_ID_description302, !15, !"__UNIQUE_ID_description302", i1 false, i1 false}
!15 = !{!"../drivers/video/fbdev/core/sysfillrect.c", i32 334, i32 1}
!16 = !{ptr @__UNIQUE_ID_file303, !17, !"__UNIQUE_ID_file303", i1 false, i1 false}
!17 = !{!"../drivers/video/fbdev/core/sysfillrect.c", i32 335, i32 1}
!18 = !{ptr @__UNIQUE_ID_license304, !17, !"__UNIQUE_ID_license304", i1 false, i1 false}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/video/fbdev/core/fb_draw.h", i32 72, i32 3}
!21 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{ptr @bitfill_aligned, ptr @bitfill_aligned_rev}
!32 = !{ptr @bitfill_unaligned, ptr @bitfill_unaligned_rev}
