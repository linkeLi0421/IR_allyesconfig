; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/core/syscopyarea.c_pt.bc'
source_filename = "../drivers/video/fbdev/core/syscopyarea.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+sys_copyarea\22, \22a\22\09"
module asm "\09.weak\09__crc_sys_copyarea\09\09\09\09"
module asm "\09.long\09__crc_sys_copyarea\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sys_copyarea:\09\09\09\09\09"
module asm "\09.asciz \09\22sys_copyarea\22\09\09\09\09\09"
module asm "__kstrtabns_sys_copyarea:\09\09\09\09\09"
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

@__kstrtab_sys_copyarea = external dso_local constant [0 x i8], align 1
@__kstrtabns_sys_copyarea = external dso_local constant [0 x i8], align 1
@__ksymtab_sys_copyarea = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sys_copyarea to i32), ptr @__kstrtab_sys_copyarea, ptr @__kstrtabns_sys_copyarea }, section "___ksymtab+sys_copyarea", align 4
@__UNIQUE_ID_author301 = internal constant [53 x i8] c"syscopyarea.author=Antonino Daplas <adaplas@pol.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description302 = internal constant [54 x i8] c"syscopyarea.description=Generic copyarea (sys-to-sys)\00", section ".modinfo", align 1
@__UNIQUE_ID_file303 = internal constant [54 x i8] c"syscopyarea.file=drivers/video/fbdev/core/syscopyarea\00", section ".modinfo", align 1
@__UNIQUE_ID_license304 = internal constant [24 x i8] c"syscopyarea.license=GPL\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file303, ptr @__UNIQUE_ID_license304, ptr @__ksymtab_sys_copyarea], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sys_copyarea(ptr noundef %p, ptr nocapture noundef readonly %area) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %height5 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 3
  %0 = ptrtoint ptr %height5 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %height5, align 4
  %width6 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 2
  %2 = ptrtoint ptr %width6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width6, align 4
  %line_length = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 7, i32 9
  %4 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %line_length, align 4
  %mul = shl i32 %5, 3
  %state = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 28
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %sy4 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 5
  %8 = ptrtoint ptr %sy4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sy4, align 4
  %sx3 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 4
  %10 = ptrtoint ptr %sx3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sx3, align 4
  %dy2 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 1
  %12 = ptrtoint ptr %dy2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dy2, align 4
  %14 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %area, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %9)
  %cmp7 = icmp eq i32 %13, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %11)
  %cmp8 = icmp ugt i32 %15, %11
  %or.cond = select i1 %cmp7, i1 %cmp8, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %9)
  %cmp9 = icmp ugt i32 %13, %9
  %or.cond136 = or i1 %cmp9, %or.cond
  %add = select i1 %or.cond136, i32 %1, i32 0
  %dy.0 = add i32 %add, %13
  %sy.0 = add i32 %add, %9
  %16 = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 25
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %19 = ptrtoint ptr %18 to i32
  %and = and i32 %19, -4
  %20 = inttoptr i32 %and to ptr
  %and14 = shl i32 %19, 3
  %mul15 = and i32 %and14, 24
  %mul16 = mul i32 %dy.0, %mul
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 6, i32 6
  %21 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bits_per_pixel, align 4
  %mul17 = mul i32 %22, %15
  %add18 = add i32 %mul15, %mul17
  %add19 = add i32 %add18, %mul16
  %mul20 = mul i32 %sy.0, %mul
  %mul23 = mul i32 %22, %11
  %add24 = add i32 %mul15, %mul23
  %add25 = add i32 %add24, %mul20
  %fbops = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 20
  %23 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fbops, align 4
  %fb_sync = getelementptr inbounds %struct.fb_ops, ptr %24, i32 0, i32 15
  %25 = ptrtoint ptr %fb_sync to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fb_sync, align 4
  %tobool.not = icmp eq ptr %26, null
  br i1 %tobool.not, label %if.end.if.end29_crit_edge, label %if.then26

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end29

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #3
  %call = tail call i32 %26(ptr noundef %p) #1
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end.if.end29_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool32.not188 = icmp eq i32 %1, 0
  br i1 %or.cond136, label %while.cond.preheader, label %while.cond41.preheader

while.cond41.preheader:                           ; preds = %if.end29
  br i1 %tobool32.not188, label %while.cond41.preheader.cleanup_crit_edge, label %while.body44.lr.ph

while.cond41.preheader.cleanup_crit_edge:         ; preds = %while.cond41.preheader
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

while.body44.lr.ph:                               ; preds = %while.cond41.preheader
  %flags.i.i138 = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 2
  br label %while.body44

while.cond.preheader:                             ; preds = %if.end29
  br i1 %tobool32.not188, label %while.cond.preheader.cleanup_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %flags.i.i = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %bitcpy_rev.exit.while.body_crit_edge, %while.body.lr.ph
  %src_idx.0191 = phi i32 [ %add25, %while.body.lr.ph ], [ %sub34, %bitcpy_rev.exit.while.body_crit_edge ]
  %dst_idx.0190 = phi i32 [ %add19, %while.body.lr.ph ], [ %sub33, %bitcpy_rev.exit.while.body_crit_edge ]
  %height.0189 = phi i32 [ %1, %while.body.lr.ph ], [ %dec, %bitcpy_rev.exit.while.body_crit_edge ]
  %dec = add i32 %height.0189, -1
  %sub33 = sub i32 %dst_idx.0190, %mul
  %sub34 = sub i32 %src_idx.0191, %mul
  %div134 = lshr i32 %sub33, 5
  %add.ptr = getelementptr i32, ptr %20, i32 %div134
  %rem = and i32 %sub33, 31
  %div35135 = lshr i32 %sub34, 5
  %add.ptr36 = getelementptr i32, ptr %20, i32 %div35135
  %rem37 = and i32 %sub34, 31
  %27 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bits_per_pixel, align 4
  %mul40 = mul i32 %28, %3
  %add.i = add i32 %mul40, %rem
  %sub.i = add i32 %add.i, -1
  %div1.i = lshr i32 %sub.i, 5
  %add.ptr.i = getelementptr i32, ptr %add.ptr, i32 %div1.i
  %add1.i = add nsw i32 %rem37, -1
  %sub2.i = add i32 %add1.i, %mul40
  %div32.i = lshr i32 %sub2.i, 5
  %add.ptr4.i = getelementptr i32, ptr %add.ptr36, i32 %div32.i
  %rem.i = and i32 %sub.i, 31
  %rem9.i = and i32 %sub2.i, 31
  %sub10.i = sub nsw i32 %rem.i, %rem9.i
  %29 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %30, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  %rem12.i = and i32 %add.i, 31
  %shr.i = lshr i32 -1, %rem12.i
  %shl.i = shl nsw i32 -1, %rem12.i
  %cond.i = select i1 %tobool.i.not.i, i32 %shl.i, i32 %shr.i
  %neg.i = xor i32 %cond.i, -1
  %shr21.i = lshr i32 -1, %rem
  %shl27.i = shl nsw i32 -1, %rem
  %cond29.i = select i1 %tobool.i.not.i, i32 %shl27.i, i32 %shr21.i
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i, i32 %rem9.i)
  %tobool.not.i = icmp eq i32 %rem.i, %rem9.i
  br i1 %tobool.not.i, label %if.then.i, label %if.else72.i

if.then.i:                                        ; preds = %while.body
  %add30.i = add nuw nsw i32 %rem.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul40, i32 %add30.i)
  %cmp.not.i = icmp ugt i32 %mul40, %add30.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cond.i)
  %tobool35.not.i = icmp eq i32 %cond.i, -1
  br i1 %cmp.not.i, label %if.else.i, label %if.then31.i

if.then31.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #3
  %and.i = select i1 %tobool35.not.i, i32 -1, i32 %neg.i
  %spec.select.i = and i32 %and.i, %cond29.i
  %31 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr4.i, align 4
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr.i, align 4
  %xor.i.i = xor i32 %34, %32
  %and.i9.i = and i32 %spec.select.i, %xor.i.i
  %xor1.i.i = xor i32 %and.i9.i, %34
  store i32 %xor1.i.i, ptr %add.ptr.i, align 4
  br label %bitcpy_rev.exit

if.else.i:                                        ; preds = %if.then.i
  br i1 %tobool35.not.i, label %if.else.i.if.end41.i_crit_edge, label %if.then36.i

if.else.i.if.end41.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end41.i

if.then36.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #3
  %35 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr4.i, align 4
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr.i, align 4
  %xor.i10.i = xor i32 %38, %36
  %39 = and i32 %xor.i10.i, %cond.i
  %xor1.i12.i = xor i32 %39, %36
  store i32 %xor1.i12.i, ptr %add.ptr.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %add.ptr.i, i32 -1
  %incdec.ptr38.i = getelementptr i32, ptr %add.ptr4.i, i32 -1
  %sub40.i = sub i32 %mul40, %add30.i
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then36.i, %if.else.i.if.end41.i_crit_edge
  %src.addr.0.i = phi ptr [ %incdec.ptr38.i, %if.then36.i ], [ %add.ptr4.i, %if.else.i.if.end41.i_crit_edge ]
  %dst.addr.0.i = phi ptr [ %incdec.ptr.i, %if.then36.i ], [ %add.ptr.i, %if.else.i.if.end41.i_crit_edge ]
  %n.addr.0.i = phi i32 [ %sub40.i, %if.then36.i ], [ %mul40, %if.else.i.if.end41.i_crit_edge ]
  %div423.i = lshr i32 %n.addr.0.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %n.addr.0.i)
  %cmp4349.i = icmp ugt i32 %n.addr.0.i, 255
  br i1 %cmp4349.i, label %if.end41.i.while.body.i_crit_edge, label %if.end41.i.while.cond61.preheader.i_crit_edge

if.end41.i.while.cond61.preheader.i_crit_edge:    ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.cond61.preheader.i

if.end41.i.while.body.i_crit_edge:                ; preds = %if.end41.i
  br label %while.body.i

while.cond61.preheader.i:                         ; preds = %while.body.i.while.cond61.preheader.i_crit_edge, %if.end41.i.while.cond61.preheader.i_crit_edge
  %src.addr.1.lcssa.i = phi ptr [ %src.addr.0.i, %if.end41.i.while.cond61.preheader.i_crit_edge ], [ %incdec.ptr58.i, %while.body.i.while.cond61.preheader.i_crit_edge ]
  %dst.addr.1.lcssa.i = phi ptr [ %dst.addr.0.i, %if.end41.i.while.cond61.preheader.i_crit_edge ], [ %incdec.ptr59.i, %while.body.i.while.cond61.preheader.i_crit_edge ]
  %n.addr.1.lcssa.i = phi i32 [ %div423.i, %if.end41.i.while.cond61.preheader.i_crit_edge ], [ %sub60.i, %while.body.i.while.cond61.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.1.lcssa.i)
  %tobool62.not56.i = icmp eq i32 %n.addr.1.lcssa.i, 0
  br i1 %tobool62.not56.i, label %while.cond61.preheader.i.while.end66.i_crit_edge, label %while.cond61.preheader.i.while.body63.i_crit_edge

while.cond61.preheader.i.while.body63.i_crit_edge: ; preds = %while.cond61.preheader.i
  br label %while.body63.i

while.cond61.preheader.i.while.end66.i_crit_edge: ; preds = %while.cond61.preheader.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.end66.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end41.i.while.body.i_crit_edge
  %n.addr.152.i = phi i32 [ %sub60.i, %while.body.i.while.body.i_crit_edge ], [ %div423.i, %if.end41.i.while.body.i_crit_edge ]
  %dst.addr.151.i = phi ptr [ %incdec.ptr59.i, %while.body.i.while.body.i_crit_edge ], [ %dst.addr.0.i, %if.end41.i.while.body.i_crit_edge ]
  %src.addr.150.i = phi ptr [ %incdec.ptr58.i, %while.body.i.while.body.i_crit_edge ], [ %src.addr.0.i, %if.end41.i.while.body.i_crit_edge ]
  %incdec.ptr44.i = getelementptr i32, ptr %src.addr.150.i, i32 -1
  %40 = ptrtoint ptr %src.addr.150.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %src.addr.150.i, align 4
  %incdec.ptr45.i = getelementptr i32, ptr %dst.addr.151.i, i32 -1
  %42 = ptrtoint ptr %dst.addr.151.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %dst.addr.151.i, align 4
  %incdec.ptr46.i = getelementptr i32, ptr %src.addr.150.i, i32 -2
  %43 = ptrtoint ptr %incdec.ptr44.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %incdec.ptr44.i, align 4
  %incdec.ptr47.i = getelementptr i32, ptr %dst.addr.151.i, i32 -2
  %45 = ptrtoint ptr %incdec.ptr45.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %incdec.ptr45.i, align 4
  %incdec.ptr48.i = getelementptr i32, ptr %src.addr.150.i, i32 -3
  %46 = ptrtoint ptr %incdec.ptr46.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %incdec.ptr46.i, align 4
  %incdec.ptr49.i = getelementptr i32, ptr %dst.addr.151.i, i32 -3
  %48 = ptrtoint ptr %incdec.ptr47.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %incdec.ptr47.i, align 4
  %incdec.ptr50.i = getelementptr i32, ptr %src.addr.150.i, i32 -4
  %49 = ptrtoint ptr %incdec.ptr48.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %incdec.ptr48.i, align 4
  %incdec.ptr51.i = getelementptr i32, ptr %dst.addr.151.i, i32 -4
  %51 = ptrtoint ptr %incdec.ptr49.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %incdec.ptr49.i, align 4
  %incdec.ptr52.i = getelementptr i32, ptr %src.addr.150.i, i32 -5
  %52 = ptrtoint ptr %incdec.ptr50.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %incdec.ptr50.i, align 4
  %incdec.ptr53.i = getelementptr i32, ptr %dst.addr.151.i, i32 -5
  %54 = ptrtoint ptr %incdec.ptr51.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %incdec.ptr51.i, align 4
  %incdec.ptr54.i = getelementptr i32, ptr %src.addr.150.i, i32 -6
  %55 = ptrtoint ptr %incdec.ptr52.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %incdec.ptr52.i, align 4
  %incdec.ptr55.i = getelementptr i32, ptr %dst.addr.151.i, i32 -6
  %57 = ptrtoint ptr %incdec.ptr53.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %incdec.ptr53.i, align 4
  %incdec.ptr56.i = getelementptr i32, ptr %src.addr.150.i, i32 -7
  %58 = ptrtoint ptr %incdec.ptr54.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %incdec.ptr54.i, align 4
  %incdec.ptr57.i = getelementptr i32, ptr %dst.addr.151.i, i32 -7
  %60 = ptrtoint ptr %incdec.ptr55.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %incdec.ptr55.i, align 4
  %incdec.ptr58.i = getelementptr i32, ptr %src.addr.150.i, i32 -8
  %61 = ptrtoint ptr %incdec.ptr56.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %incdec.ptr56.i, align 4
  %incdec.ptr59.i = getelementptr i32, ptr %dst.addr.151.i, i32 -8
  %63 = ptrtoint ptr %incdec.ptr57.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %incdec.ptr57.i, align 4
  %sub60.i = add i32 %n.addr.152.i, -8
  %cmp43.i = icmp ugt i32 %sub60.i, 7
  br i1 %cmp43.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.cond61.preheader.i_crit_edge

while.body.i.while.cond61.preheader.i_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.cond61.preheader.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.body.i

while.body63.i:                                   ; preds = %while.body63.i.while.body63.i_crit_edge, %while.cond61.preheader.i.while.body63.i_crit_edge
  %n.addr.259.i = phi i32 [ %dec.i, %while.body63.i.while.body63.i_crit_edge ], [ %n.addr.1.lcssa.i, %while.cond61.preheader.i.while.body63.i_crit_edge ]
  %dst.addr.258.i = phi ptr [ %incdec.ptr65.i, %while.body63.i.while.body63.i_crit_edge ], [ %dst.addr.1.lcssa.i, %while.cond61.preheader.i.while.body63.i_crit_edge ]
  %src.addr.257.i = phi ptr [ %incdec.ptr64.i, %while.body63.i.while.body63.i_crit_edge ], [ %src.addr.1.lcssa.i, %while.cond61.preheader.i.while.body63.i_crit_edge ]
  %dec.i = add i32 %n.addr.259.i, -1
  %incdec.ptr64.i = getelementptr i32, ptr %src.addr.257.i, i32 -1
  %64 = ptrtoint ptr %src.addr.257.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %src.addr.257.i, align 4
  %incdec.ptr65.i = getelementptr i32, ptr %dst.addr.258.i, i32 -1
  %66 = ptrtoint ptr %dst.addr.258.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %dst.addr.258.i, align 4
  %tobool62.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool62.not.i, label %while.body63.i.while.end66.i_crit_edge, label %while.body63.i.while.body63.i_crit_edge

while.body63.i.while.body63.i_crit_edge:          ; preds = %while.body63.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.body63.i

while.body63.i.while.end66.i_crit_edge:           ; preds = %while.body63.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.end66.i

while.end66.i:                                    ; preds = %while.body63.i.while.end66.i_crit_edge, %while.cond61.preheader.i.while.end66.i_crit_edge
  %src.addr.2.lcssa.i = phi ptr [ %src.addr.1.lcssa.i, %while.cond61.preheader.i.while.end66.i_crit_edge ], [ %incdec.ptr64.i, %while.body63.i.while.end66.i_crit_edge ]
  %dst.addr.2.lcssa.i = phi ptr [ %dst.addr.1.lcssa.i, %while.cond61.preheader.i.while.end66.i_crit_edge ], [ %incdec.ptr65.i, %while.body63.i.while.end66.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cond29.i)
  %cmp67.not.i = icmp eq i32 %cond29.i, -1
  br i1 %cmp67.not.i, label %while.end66.i.bitcpy_rev.exit_crit_edge, label %if.then68.i

while.end66.i.bitcpy_rev.exit_crit_edge:          ; preds = %while.end66.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %bitcpy_rev.exit

if.then68.i:                                      ; preds = %while.end66.i
  call void @__sanitizer_cov_trace_pc() #3
  %67 = ptrtoint ptr %src.addr.2.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %src.addr.2.lcssa.i, align 4
  %69 = ptrtoint ptr %dst.addr.2.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %dst.addr.2.lcssa.i, align 4
  %xor.i13.i = xor i32 %70, %68
  %and.i14.i = and i32 %xor.i13.i, %cond29.i
  %xor1.i15.i = xor i32 %and.i14.i, %70
  store i32 %xor1.i15.i, ptr %dst.addr.2.lcssa.i, align 4
  br label %bitcpy_rev.exit

if.else72.i:                                      ; preds = %while.body
  %and74.i = and i32 %sub10.i, 31
  %sub75.i = sub nsw i32 0, %sub10.i
  %and77.i = and i32 %sub75.i, 31
  %add78.i = add nuw nsw i32 %rem.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul40, i32 %add78.i)
  %cmp79.not.i = icmp ugt i32 %mul40, %add78.i
  br i1 %cmp79.not.i, label %if.else102.i, label %if.then80.i

if.then80.i:                                      ; preds = %if.else72.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cond.i)
  %tobool81.not.i = icmp eq i32 %cond.i, -1
  %and83.i = select i1 %tobool81.not.i, i32 -1, i32 %neg.i
  %spec.select5.i = and i32 %and83.i, %cond29.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub10.i)
  %cmp85.i = icmp slt i32 %sub10.i, 0
  br i1 %cmp85.i, label %if.then86.i, label %if.else89.i

if.then86.i:                                      ; preds = %if.then80.i
  call void @__sanitizer_cov_trace_pc() #3
  %71 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %add.ptr4.i, align 4
  %shr87.i = lshr i32 %72, %and77.i
  %73 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %add.ptr.i, align 4
  %xor.i16.i = xor i32 %74, %shr87.i
  %and.i17.i = and i32 %xor.i16.i, %spec.select5.i
  %xor1.i18.i = xor i32 %and.i17.i, %74
  store i32 %xor1.i18.i, ptr %add.ptr.i, align 4
  br label %bitcpy_rev.exit

if.else89.i:                                      ; preds = %if.then80.i
  %add90.i = add nuw nsw i32 %rem9.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add90.i, i32 %mul40)
  %cmp91.not.i = icmp ult i32 %add90.i, %mul40
  %75 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %add.ptr4.i, align 4
  %shl96.i = shl i32 %76, %and74.i
  br i1 %cmp91.not.i, label %if.else95.i, label %if.then92.i

if.then92.i:                                      ; preds = %if.else89.i
  call void @__sanitizer_cov_trace_pc() #3
  %77 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %add.ptr.i, align 4
  %xor.i19.i = xor i32 %78, %shl96.i
  %and.i20.i = and i32 %xor.i19.i, %spec.select5.i
  %xor1.i21.i = xor i32 %and.i20.i, %78
  store i32 %xor1.i21.i, ptr %add.ptr.i, align 4
  br label %bitcpy_rev.exit

if.else95.i:                                      ; preds = %if.else89.i
  call void @__sanitizer_cov_trace_pc() #3
  %add.ptr97.i = getelementptr i32, ptr %add.ptr4.i, i32 -1
  %79 = ptrtoint ptr %add.ptr97.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %add.ptr97.i, align 4
  %shr98.i = lshr i32 %80, %and77.i
  %or.i = or i32 %shr98.i, %shl96.i
  %81 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %add.ptr.i, align 4
  %xor.i22.i = xor i32 %or.i, %82
  %and.i23.i = and i32 %xor.i22.i, %spec.select5.i
  %xor1.i24.i = xor i32 %and.i23.i, %82
  store i32 %xor1.i24.i, ptr %add.ptr.i, align 4
  br label %bitcpy_rev.exit

if.else102.i:                                     ; preds = %if.else72.i
  %incdec.ptr103.i = getelementptr i32, ptr %add.ptr4.i, i32 -1
  %83 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %add.ptr4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub10.i)
  %cmp104.i = icmp slt i32 %sub10.i, 0
  br i1 %cmp104.i, label %if.then105.i, label %if.else107.i

if.then105.i:                                     ; preds = %if.else102.i
  call void @__sanitizer_cov_trace_pc() #3
  %shr106.i = lshr i32 %84, %and77.i
  br label %if.end112.i

if.else107.i:                                     ; preds = %if.else102.i
  call void @__sanitizer_cov_trace_pc() #3
  %incdec.ptr108.i = getelementptr i32, ptr %incdec.ptr103.i, i32 -1
  %85 = ptrtoint ptr %incdec.ptr103.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %incdec.ptr103.i, align 4
  %shl109.i = shl i32 %84, %and74.i
  %shr110.i = lshr i32 %86, %and77.i
  %or111.i = or i32 %shr110.i, %shl109.i
  br label %if.end112.i

if.end112.i:                                      ; preds = %if.else107.i, %if.then105.i
  %src.addr.3.i = phi ptr [ %incdec.ptr103.i, %if.then105.i ], [ %incdec.ptr108.i, %if.else107.i ]
  %d0.0.i = phi i32 [ %shr106.i, %if.then105.i ], [ %or111.i, %if.else107.i ]
  %d1.0.i = phi i32 [ %84, %if.then105.i ], [ %86, %if.else107.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cond.i)
  %tobool113.not.i = icmp eq i32 %cond.i, -1
  br i1 %tobool113.not.i, label %if.end112.i.if.end117.i_crit_edge, label %if.else115.i

if.end112.i.if.end117.i_crit_edge:                ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end117.i

if.else115.i:                                     ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #3
  %87 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %add.ptr.i, align 4
  %xor.i25.i = xor i32 %88, %d0.0.i
  %89 = and i32 %xor.i25.i, %cond.i
  %xor1.i27.i = xor i32 %89, %d0.0.i
  br label %if.end117.i

if.end117.i:                                      ; preds = %if.else115.i, %if.end112.i.if.end117.i_crit_edge
  %storemerge.i = phi i32 [ %xor1.i27.i, %if.else115.i ], [ %d0.0.i, %if.end112.i.if.end117.i_crit_edge ]
  %90 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %storemerge.i, ptr %add.ptr.i, align 4
  %sub120.i = sub i32 %mul40, %add78.i
  %rem121.i = and i32 %sub120.i, 31
  %div1224.i = lshr i32 %sub120.i, 5
  %dst.addr.331.i = getelementptr i32, ptr %add.ptr.i, i32 -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %sub120.i)
  %cmp12432.i = icmp ugt i32 %sub120.i, 127
  br i1 %cmp12432.i, label %if.end117.i.while.body125.i_crit_edge, label %if.end117.i.while.cond148.preheader.i_crit_edge

if.end117.i.while.cond148.preheader.i_crit_edge:  ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.cond148.preheader.i

if.end117.i.while.body125.i_crit_edge:            ; preds = %if.end117.i
  br label %while.body125.i

while.cond148.preheader.i:                        ; preds = %while.body125.i.while.cond148.preheader.i_crit_edge, %if.end117.i.while.cond148.preheader.i_crit_edge
  %src.addr.4.lcssa.i = phi ptr [ %src.addr.3.i, %if.end117.i.while.cond148.preheader.i_crit_edge ], [ %incdec.ptr141.i, %while.body125.i.while.cond148.preheader.i_crit_edge ]
  %n.addr.3.lcssa.i = phi i32 [ %div1224.i, %if.end117.i.while.cond148.preheader.i_crit_edge ], [ %sub146.i, %while.body125.i.while.cond148.preheader.i_crit_edge ]
  %d0.1.lcssa.i = phi i32 [ %d1.0.i, %if.end117.i.while.cond148.preheader.i_crit_edge ], [ %101, %while.body125.i.while.cond148.preheader.i_crit_edge ]
  %dst.addr.3.lcssa.i = phi ptr [ %dst.addr.331.i, %if.end117.i.while.cond148.preheader.i_crit_edge ], [ %dst.addr.3.i, %while.body125.i.while.cond148.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.3.lcssa.i)
  %tobool150.not41.i = icmp eq i32 %n.addr.3.lcssa.i, 0
  br i1 %tobool150.not41.i, label %while.cond148.preheader.i.while.end157.i_crit_edge, label %while.cond148.preheader.i.while.body151.i_crit_edge

while.cond148.preheader.i.while.body151.i_crit_edge: ; preds = %while.cond148.preheader.i
  br label %while.body151.i

while.cond148.preheader.i.while.end157.i_crit_edge: ; preds = %while.cond148.preheader.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.end157.i

while.body125.i:                                  ; preds = %while.body125.i.while.body125.i_crit_edge, %if.end117.i.while.body125.i_crit_edge
  %dst.addr.337.i = phi ptr [ %dst.addr.3.i, %while.body125.i.while.body125.i_crit_edge ], [ %dst.addr.331.i, %if.end117.i.while.body125.i_crit_edge ]
  %d0.136.i = phi i32 [ %101, %while.body125.i.while.body125.i_crit_edge ], [ %d1.0.i, %if.end117.i.while.body125.i_crit_edge ]
  %n.addr.335.i = phi i32 [ %sub146.i, %while.body125.i.while.body125.i_crit_edge ], [ %div1224.i, %if.end117.i.while.body125.i_crit_edge ]
  %add.ptr.pn34.i = phi ptr [ %incdec.ptr140.i, %while.body125.i.while.body125.i_crit_edge ], [ %add.ptr.i, %if.end117.i.while.body125.i_crit_edge ]
  %src.addr.433.i = phi ptr [ %incdec.ptr141.i, %while.body125.i.while.body125.i_crit_edge ], [ %src.addr.3.i, %if.end117.i.while.body125.i_crit_edge ]
  %incdec.ptr126.i = getelementptr i32, ptr %src.addr.433.i, i32 -1
  %91 = ptrtoint ptr %src.addr.433.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %src.addr.433.i, align 4
  %shl127.i = shl i32 %d0.136.i, %and74.i
  %shr128.i = lshr i32 %92, %and77.i
  %or129.i = or i32 %shr128.i, %shl127.i
  %incdec.ptr130.i = getelementptr i32, ptr %add.ptr.pn34.i, i32 -2
  %93 = ptrtoint ptr %dst.addr.337.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %or129.i, ptr %dst.addr.337.i, align 4
  %incdec.ptr131.i = getelementptr i32, ptr %src.addr.433.i, i32 -2
  %94 = ptrtoint ptr %incdec.ptr126.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %incdec.ptr126.i, align 4
  %shl132.i = shl i32 %92, %and74.i
  %shr133.i = lshr i32 %95, %and77.i
  %or134.i = or i32 %shr133.i, %shl132.i
  %incdec.ptr135.i = getelementptr i32, ptr %add.ptr.pn34.i, i32 -3
  %96 = ptrtoint ptr %incdec.ptr130.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %or134.i, ptr %incdec.ptr130.i, align 4
  %incdec.ptr136.i = getelementptr i32, ptr %src.addr.433.i, i32 -3
  %97 = ptrtoint ptr %incdec.ptr131.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %incdec.ptr131.i, align 4
  %shl137.i = shl i32 %95, %and74.i
  %shr138.i = lshr i32 %98, %and77.i
  %or139.i = or i32 %shr138.i, %shl137.i
  %incdec.ptr140.i = getelementptr i32, ptr %add.ptr.pn34.i, i32 -4
  %99 = ptrtoint ptr %incdec.ptr135.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %or139.i, ptr %incdec.ptr135.i, align 4
  %incdec.ptr141.i = getelementptr i32, ptr %src.addr.433.i, i32 -4
  %100 = ptrtoint ptr %incdec.ptr136.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %incdec.ptr136.i, align 4
  %shl142.i = shl i32 %98, %and74.i
  %shr143.i = lshr i32 %101, %and77.i
  %or144.i = or i32 %shr143.i, %shl142.i
  %102 = ptrtoint ptr %incdec.ptr140.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %or144.i, ptr %incdec.ptr140.i, align 4
  %sub146.i = add i32 %n.addr.335.i, -4
  %dst.addr.3.i = getelementptr i32, ptr %add.ptr.pn34.i, i32 -5
  %cmp124.i = icmp ugt i32 %sub146.i, 3
  br i1 %cmp124.i, label %while.body125.i.while.body125.i_crit_edge, label %while.body125.i.while.cond148.preheader.i_crit_edge

while.body125.i.while.cond148.preheader.i_crit_edge: ; preds = %while.body125.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.cond148.preheader.i

while.body125.i.while.body125.i_crit_edge:        ; preds = %while.body125.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.body125.i

while.body151.i:                                  ; preds = %while.body151.i.while.body151.i_crit_edge, %while.cond148.preheader.i.while.body151.i_crit_edge
  %d0.245.i = phi i32 [ %104, %while.body151.i.while.body151.i_crit_edge ], [ %d0.1.lcssa.i, %while.cond148.preheader.i.while.body151.i_crit_edge ]
  %n.addr.444.i = phi i32 [ %dec149.i, %while.body151.i.while.body151.i_crit_edge ], [ %n.addr.3.lcssa.i, %while.cond148.preheader.i.while.body151.i_crit_edge ]
  %dst.addr.443.i = phi ptr [ %incdec.ptr156.i, %while.body151.i.while.body151.i_crit_edge ], [ %dst.addr.3.lcssa.i, %while.cond148.preheader.i.while.body151.i_crit_edge ]
  %src.addr.542.i = phi ptr [ %incdec.ptr152.i, %while.body151.i.while.body151.i_crit_edge ], [ %src.addr.4.lcssa.i, %while.cond148.preheader.i.while.body151.i_crit_edge ]
  %dec149.i = add i32 %n.addr.444.i, -1
  %incdec.ptr152.i = getelementptr i32, ptr %src.addr.542.i, i32 -1
  %103 = ptrtoint ptr %src.addr.542.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %src.addr.542.i, align 4
  %shl153.i = shl i32 %d0.245.i, %and74.i
  %shr154.i = lshr i32 %104, %and77.i
  %or155.i = or i32 %shr154.i, %shl153.i
  %incdec.ptr156.i = getelementptr i32, ptr %dst.addr.443.i, i32 -1
  %105 = ptrtoint ptr %dst.addr.443.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %or155.i, ptr %dst.addr.443.i, align 4
  %tobool150.not.i = icmp eq i32 %dec149.i, 0
  br i1 %tobool150.not.i, label %while.body151.i.while.end157.i_crit_edge, label %while.body151.i.while.body151.i_crit_edge

while.body151.i.while.body151.i_crit_edge:        ; preds = %while.body151.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.body151.i

while.body151.i.while.end157.i_crit_edge:         ; preds = %while.body151.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.end157.i

while.end157.i:                                   ; preds = %while.body151.i.while.end157.i_crit_edge, %while.cond148.preheader.i.while.end157.i_crit_edge
  %src.addr.5.lcssa.i = phi ptr [ %src.addr.4.lcssa.i, %while.cond148.preheader.i.while.end157.i_crit_edge ], [ %incdec.ptr152.i, %while.body151.i.while.end157.i_crit_edge ]
  %dst.addr.4.lcssa.i = phi ptr [ %dst.addr.3.lcssa.i, %while.cond148.preheader.i.while.end157.i_crit_edge ], [ %incdec.ptr156.i, %while.body151.i.while.end157.i_crit_edge ]
  %d0.2.lcssa.i = phi i32 [ %d0.1.lcssa.i, %while.cond148.preheader.i.while.end157.i_crit_edge ], [ %104, %while.body151.i.while.end157.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem121.i)
  %tobool158.not.i = icmp eq i32 %rem121.i, 0
  br i1 %tobool158.not.i, label %while.end157.i.bitcpy_rev.exit_crit_edge, label %if.then159.i

while.end157.i.bitcpy_rev.exit_crit_edge:         ; preds = %while.end157.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %bitcpy_rev.exit

if.then159.i:                                     ; preds = %while.end157.i
  %sub160.i = sub nuw nsw i32 32, %and74.i
  call void @__sanitizer_cov_trace_cmp4(i32 %rem121.i, i32 %sub160.i)
  %cmp161.not.i = icmp ugt i32 %rem121.i, %sub160.i
  br i1 %cmp161.not.i, label %if.else164.i, label %if.then162.i

if.then162.i:                                     ; preds = %if.then159.i
  call void @__sanitizer_cov_trace_pc() #3
  %shl163.i = shl i32 %d0.2.lcssa.i, %and74.i
  br label %if.end168.i

if.else164.i:                                     ; preds = %if.then159.i
  call void @__sanitizer_cov_trace_pc() #3
  %106 = ptrtoint ptr %src.addr.5.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %src.addr.5.lcssa.i, align 4
  %shl165.i = shl i32 %d0.2.lcssa.i, %and74.i
  %shr166.i = lshr i32 %107, %and77.i
  %or167.i = or i32 %shr166.i, %shl165.i
  br label %if.end168.i

if.end168.i:                                      ; preds = %if.else164.i, %if.then162.i
  %d0.3.i = phi i32 [ %shl163.i, %if.then162.i ], [ %or167.i, %if.else164.i ]
  %108 = ptrtoint ptr %dst.addr.4.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %dst.addr.4.lcssa.i, align 4
  %xor.i28.i = xor i32 %109, %d0.3.i
  %and.i29.i = and i32 %xor.i28.i, %cond29.i
  %xor1.i30.i = xor i32 %and.i29.i, %109
  store i32 %xor1.i30.i, ptr %dst.addr.4.lcssa.i, align 4
  br label %bitcpy_rev.exit

bitcpy_rev.exit:                                  ; preds = %if.end168.i, %while.end157.i.bitcpy_rev.exit_crit_edge, %if.else95.i, %if.then92.i, %if.then86.i, %if.then68.i, %while.end66.i.bitcpy_rev.exit_crit_edge, %if.then31.i
  %tobool32.not = icmp eq i32 %dec, 0
  br i1 %tobool32.not, label %bitcpy_rev.exit.cleanup_crit_edge, label %bitcpy_rev.exit.while.body_crit_edge

bitcpy_rev.exit.while.body_crit_edge:             ; preds = %bitcpy_rev.exit
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.body

bitcpy_rev.exit.cleanup_crit_edge:                ; preds = %bitcpy_rev.exit
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

while.body44:                                     ; preds = %bitcpy.exit.while.body44_crit_edge, %while.body44.lr.ph
  %src_idx.1187 = phi i32 [ %add25, %while.body44.lr.ph ], [ %add55, %bitcpy.exit.while.body44_crit_edge ]
  %dst_idx.1186 = phi i32 [ %add19, %while.body44.lr.ph ], [ %add54, %bitcpy.exit.while.body44_crit_edge ]
  %height.1185 = phi i32 [ %1, %while.body44.lr.ph ], [ %dec42, %bitcpy.exit.while.body44_crit_edge ]
  %dec42 = add i32 %height.1185, -1
  %div45132 = lshr i32 %dst_idx.1186, 5
  %add.ptr46 = getelementptr i32, ptr %20, i32 %div45132
  %rem47 = and i32 %dst_idx.1186, 31
  %div48133 = lshr i32 %src_idx.1187, 5
  %add.ptr49 = getelementptr i32, ptr %20, i32 %div48133
  %rem50 = and i32 %src_idx.1187, 31
  %110 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %bits_per_pixel, align 4
  %mul53 = mul i32 %111, %3
  %sub.i137 = sub nsw i32 %rem47, %rem50
  %112 = ptrtoint ptr %flags.i.i138 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %flags.i.i138, align 4
  %and.i.i139 = and i32 %113, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i139)
  %tobool.i.not.i140 = icmp eq i32 %and.i.i139, 0
  %shr.i141 = lshr i32 -1, %rem47
  %shl.i142 = shl nsw i32 -1, %rem47
  %cond.i143 = select i1 %tobool.i.not.i140, i32 %shl.i142, i32 %shr.i141
  %add5.i = add i32 %mul53, %rem47
  %rem6.i = and i32 %add5.i, 31
  %shr3.i = lshr i32 -1, %rem6.i
  %shl7.i = shl nsw i32 -1, %rem6.i
  %cond9.i = select i1 %tobool.i.not.i140, i32 %shl7.i, i32 %shr3.i
  %neg.i144 = xor i32 %cond9.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %rem47, i32 %rem50)
  %tobool.not.i145 = icmp eq i32 %rem47, %rem50
  br i1 %tobool.not.i145, label %if.then.i146, label %if.else51.i

if.then.i146:                                     ; preds = %while.body44
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %add5.i)
  %cmp.i = icmp ult i32 %add5.i, 33
  br i1 %cmp.i, label %if.then11.i, label %if.else.i151

if.then11.i:                                      ; preds = %if.then.i146
  call void @__sanitizer_cov_trace_pc() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cond9.i)
  %tobool12.not.i = icmp eq i32 %cond9.i, -1
  %and.i147 = select i1 %tobool12.not.i, i32 -1, i32 %neg.i144
  %spec.select.i148 = and i32 %and.i147, %cond.i143
  %114 = ptrtoint ptr %add.ptr49 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %add.ptr49, align 4
  %116 = ptrtoint ptr %add.ptr46 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %add.ptr46, align 4
  %xor.i.i149 = xor i32 %117, %115
  %and.i7.i = and i32 %spec.select.i148, %xor.i.i149
  %xor1.i.i150 = xor i32 %and.i7.i, %117
  store i32 %xor1.i.i150, ptr %add.ptr46, align 4
  br label %bitcpy.exit

if.else.i151:                                     ; preds = %if.then.i146
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cond.i143)
  %cmp15.not.i = icmp eq i32 %cond.i143, -1
  br i1 %cmp15.not.i, label %if.else.i151.if.end21.i_crit_edge, label %if.then16.i

if.else.i151.if.end21.i_crit_edge:                ; preds = %if.else.i151
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end21.i

if.then16.i:                                      ; preds = %if.else.i151
  call void @__sanitizer_cov_trace_pc() #3
  %118 = ptrtoint ptr %add.ptr49 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %add.ptr49, align 4
  %120 = ptrtoint ptr %add.ptr46 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %add.ptr46, align 4
  %xor.i8.i = xor i32 %121, %119
  %and.i9.i152 = and i32 %xor.i8.i, %cond.i143
  %xor1.i10.i = xor i32 %and.i9.i152, %121
  store i32 %xor1.i10.i, ptr %add.ptr46, align 4
  %incdec.ptr.i153 = getelementptr i32, ptr %add.ptr46, i32 1
  %incdec.ptr18.i = getelementptr i32, ptr %add.ptr49, i32 1
  %sub20.i = add i32 %add5.i, -32
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then16.i, %if.else.i151.if.end21.i_crit_edge
  %src.addr.0.i154 = phi ptr [ %incdec.ptr18.i, %if.then16.i ], [ %add.ptr49, %if.else.i151.if.end21.i_crit_edge ]
  %dst.addr.0.i155 = phi ptr [ %incdec.ptr.i153, %if.then16.i ], [ %add.ptr46, %if.else.i151.if.end21.i_crit_edge ]
  %n.addr.0.i156 = phi i32 [ %sub20.i, %if.then16.i ], [ %mul53, %if.else.i151.if.end21.i_crit_edge ]
  %div1.i157 = lshr i32 %n.addr.0.i156, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %n.addr.0.i156)
  %cmp2250.i = icmp ugt i32 %n.addr.0.i156, 255
  br i1 %cmp2250.i, label %if.end21.i.while.body.i162_crit_edge, label %if.end21.i.while.cond40.preheader.i_crit_edge

if.end21.i.while.cond40.preheader.i_crit_edge:    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.cond40.preheader.i

if.end21.i.while.body.i162_crit_edge:             ; preds = %if.end21.i
  br label %while.body.i162

while.cond40.preheader.i:                         ; preds = %while.body.i162.while.cond40.preheader.i_crit_edge, %if.end21.i.while.cond40.preheader.i_crit_edge
  %src.addr.1.lcssa.i158 = phi ptr [ %src.addr.0.i154, %if.end21.i.while.cond40.preheader.i_crit_edge ], [ %incdec.ptr37.i, %while.body.i162.while.cond40.preheader.i_crit_edge ]
  %dst.addr.1.lcssa.i159 = phi ptr [ %dst.addr.0.i155, %if.end21.i.while.cond40.preheader.i_crit_edge ], [ %incdec.ptr38.i161, %while.body.i162.while.cond40.preheader.i_crit_edge ]
  %n.addr.1.lcssa.i160 = phi i32 [ %div1.i157, %if.end21.i.while.cond40.preheader.i_crit_edge ], [ %sub39.i, %while.body.i162.while.cond40.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.1.lcssa.i160)
  %tobool41.not57.i = icmp eq i32 %n.addr.1.lcssa.i160, 0
  br i1 %tobool41.not57.i, label %while.cond40.preheader.i.while.end45.i_crit_edge, label %while.cond40.preheader.i.while.body42.i_crit_edge

while.cond40.preheader.i.while.body42.i_crit_edge: ; preds = %while.cond40.preheader.i
  br label %while.body42.i

while.cond40.preheader.i.while.end45.i_crit_edge: ; preds = %while.cond40.preheader.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.end45.i

while.body.i162:                                  ; preds = %while.body.i162.while.body.i162_crit_edge, %if.end21.i.while.body.i162_crit_edge
  %n.addr.153.i = phi i32 [ %sub39.i, %while.body.i162.while.body.i162_crit_edge ], [ %div1.i157, %if.end21.i.while.body.i162_crit_edge ]
  %dst.addr.152.i = phi ptr [ %incdec.ptr38.i161, %while.body.i162.while.body.i162_crit_edge ], [ %dst.addr.0.i155, %if.end21.i.while.body.i162_crit_edge ]
  %src.addr.151.i = phi ptr [ %incdec.ptr37.i, %while.body.i162.while.body.i162_crit_edge ], [ %src.addr.0.i154, %if.end21.i.while.body.i162_crit_edge ]
  %incdec.ptr23.i = getelementptr i32, ptr %src.addr.151.i, i32 1
  %122 = ptrtoint ptr %src.addr.151.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %src.addr.151.i, align 4
  %incdec.ptr24.i = getelementptr i32, ptr %dst.addr.152.i, i32 1
  %124 = ptrtoint ptr %dst.addr.152.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %dst.addr.152.i, align 4
  %incdec.ptr25.i = getelementptr i32, ptr %src.addr.151.i, i32 2
  %125 = ptrtoint ptr %incdec.ptr23.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %incdec.ptr23.i, align 4
  %incdec.ptr26.i = getelementptr i32, ptr %dst.addr.152.i, i32 2
  %127 = ptrtoint ptr %incdec.ptr24.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %incdec.ptr24.i, align 4
  %incdec.ptr27.i = getelementptr i32, ptr %src.addr.151.i, i32 3
  %128 = ptrtoint ptr %incdec.ptr25.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %incdec.ptr25.i, align 4
  %incdec.ptr28.i = getelementptr i32, ptr %dst.addr.152.i, i32 3
  %130 = ptrtoint ptr %incdec.ptr26.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %incdec.ptr26.i, align 4
  %incdec.ptr29.i = getelementptr i32, ptr %src.addr.151.i, i32 4
  %131 = ptrtoint ptr %incdec.ptr27.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %incdec.ptr27.i, align 4
  %incdec.ptr30.i = getelementptr i32, ptr %dst.addr.152.i, i32 4
  %133 = ptrtoint ptr %incdec.ptr28.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %incdec.ptr28.i, align 4
  %incdec.ptr31.i = getelementptr i32, ptr %src.addr.151.i, i32 5
  %134 = ptrtoint ptr %incdec.ptr29.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %incdec.ptr29.i, align 4
  %incdec.ptr32.i = getelementptr i32, ptr %dst.addr.152.i, i32 5
  %136 = ptrtoint ptr %incdec.ptr30.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %incdec.ptr30.i, align 4
  %incdec.ptr33.i = getelementptr i32, ptr %src.addr.151.i, i32 6
  %137 = ptrtoint ptr %incdec.ptr31.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %incdec.ptr31.i, align 4
  %incdec.ptr34.i = getelementptr i32, ptr %dst.addr.152.i, i32 6
  %139 = ptrtoint ptr %incdec.ptr32.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %138, ptr %incdec.ptr32.i, align 4
  %incdec.ptr35.i = getelementptr i32, ptr %src.addr.151.i, i32 7
  %140 = ptrtoint ptr %incdec.ptr33.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %incdec.ptr33.i, align 4
  %incdec.ptr36.i = getelementptr i32, ptr %dst.addr.152.i, i32 7
  %142 = ptrtoint ptr %incdec.ptr34.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %incdec.ptr34.i, align 4
  %incdec.ptr37.i = getelementptr i32, ptr %src.addr.151.i, i32 8
  %143 = ptrtoint ptr %incdec.ptr35.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %incdec.ptr35.i, align 4
  %incdec.ptr38.i161 = getelementptr i32, ptr %dst.addr.152.i, i32 8
  %145 = ptrtoint ptr %incdec.ptr36.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %incdec.ptr36.i, align 4
  %sub39.i = add i32 %n.addr.153.i, -8
  %cmp22.i = icmp ugt i32 %sub39.i, 7
  br i1 %cmp22.i, label %while.body.i162.while.body.i162_crit_edge, label %while.body.i162.while.cond40.preheader.i_crit_edge

while.body.i162.while.cond40.preheader.i_crit_edge: ; preds = %while.body.i162
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.cond40.preheader.i

while.body.i162.while.body.i162_crit_edge:        ; preds = %while.body.i162
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.body.i162

while.body42.i:                                   ; preds = %while.body42.i.while.body42.i_crit_edge, %while.cond40.preheader.i.while.body42.i_crit_edge
  %n.addr.260.i = phi i32 [ %dec.i163, %while.body42.i.while.body42.i_crit_edge ], [ %n.addr.1.lcssa.i160, %while.cond40.preheader.i.while.body42.i_crit_edge ]
  %dst.addr.259.i = phi ptr [ %incdec.ptr44.i164, %while.body42.i.while.body42.i_crit_edge ], [ %dst.addr.1.lcssa.i159, %while.cond40.preheader.i.while.body42.i_crit_edge ]
  %src.addr.258.i = phi ptr [ %incdec.ptr43.i, %while.body42.i.while.body42.i_crit_edge ], [ %src.addr.1.lcssa.i158, %while.cond40.preheader.i.while.body42.i_crit_edge ]
  %dec.i163 = add i32 %n.addr.260.i, -1
  %incdec.ptr43.i = getelementptr i32, ptr %src.addr.258.i, i32 1
  %146 = ptrtoint ptr %src.addr.258.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %src.addr.258.i, align 4
  %incdec.ptr44.i164 = getelementptr i32, ptr %dst.addr.259.i, i32 1
  %148 = ptrtoint ptr %dst.addr.259.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %dst.addr.259.i, align 4
  %tobool41.not.i = icmp eq i32 %dec.i163, 0
  br i1 %tobool41.not.i, label %while.body42.i.while.end45.i_crit_edge, label %while.body42.i.while.body42.i_crit_edge

while.body42.i.while.body42.i_crit_edge:          ; preds = %while.body42.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.body42.i

while.body42.i.while.end45.i_crit_edge:           ; preds = %while.body42.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.end45.i

while.end45.i:                                    ; preds = %while.body42.i.while.end45.i_crit_edge, %while.cond40.preheader.i.while.end45.i_crit_edge
  %src.addr.2.lcssa.i165 = phi ptr [ %src.addr.1.lcssa.i158, %while.cond40.preheader.i.while.end45.i_crit_edge ], [ %incdec.ptr43.i, %while.body42.i.while.end45.i_crit_edge ]
  %dst.addr.2.lcssa.i166 = phi ptr [ %dst.addr.1.lcssa.i159, %while.cond40.preheader.i.while.end45.i_crit_edge ], [ %incdec.ptr44.i164, %while.body42.i.while.end45.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cond9.i)
  %tobool46.not.i = icmp eq i32 %cond9.i, -1
  br i1 %tobool46.not.i, label %while.end45.i.bitcpy.exit_crit_edge, label %if.then47.i

while.end45.i.bitcpy.exit_crit_edge:              ; preds = %while.end45.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %bitcpy.exit

if.then47.i:                                      ; preds = %while.end45.i
  call void @__sanitizer_cov_trace_pc() #3
  %149 = ptrtoint ptr %src.addr.2.lcssa.i165 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %src.addr.2.lcssa.i165, align 4
  %151 = ptrtoint ptr %dst.addr.2.lcssa.i166 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %dst.addr.2.lcssa.i166, align 4
  %xor.i11.i = xor i32 %152, %150
  %153 = and i32 %xor.i11.i, %cond9.i
  %xor1.i13.i = xor i32 %153, %150
  store i32 %xor1.i13.i, ptr %dst.addr.2.lcssa.i166, align 4
  br label %bitcpy.exit

if.else51.i:                                      ; preds = %while.body44
  %and53.i = and i32 %sub.i137, 31
  %sub54.i = sub nsw i32 0, %sub.i137
  %and56.i = and i32 %sub54.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %add5.i)
  %cmp58.i = icmp ult i32 %add5.i, 33
  br i1 %cmp58.i, label %if.then59.i, label %if.else81.i

if.then59.i:                                      ; preds = %if.else51.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cond9.i)
  %tobool60.not.i = icmp eq i32 %cond9.i, -1
  %and62.i = select i1 %tobool60.not.i, i32 -1, i32 %neg.i144
  %spec.select3.i = and i32 %and62.i, %cond.i143
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i137)
  %cmp64.i = icmp sgt i32 %sub.i137, 0
  br i1 %cmp64.i, label %if.then65.i, label %if.else68.i

if.then65.i:                                      ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #3
  %154 = ptrtoint ptr %add.ptr49 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %add.ptr49, align 4
  %shl66.i = shl i32 %155, %and56.i
  %156 = ptrtoint ptr %add.ptr46 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %add.ptr46, align 4
  %xor.i14.i = xor i32 %157, %shl66.i
  %and.i15.i = and i32 %xor.i14.i, %spec.select3.i
  %xor1.i16.i = xor i32 %and.i15.i, %157
  store i32 %xor1.i16.i, ptr %add.ptr46, align 4
  br label %bitcpy.exit

if.else68.i:                                      ; preds = %if.then59.i
  %add69.i = add i32 %mul53, %rem50
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %add69.i)
  %cmp70.i = icmp ult i32 %add69.i, 33
  br i1 %cmp70.i, label %if.then71.i, label %if.else74.i

if.then71.i:                                      ; preds = %if.else68.i
  call void @__sanitizer_cov_trace_pc() #3
  %158 = ptrtoint ptr %add.ptr49 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %add.ptr49, align 4
  %shr72.i = lshr i32 %159, %and53.i
  %160 = ptrtoint ptr %add.ptr46 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %add.ptr46, align 4
  %xor.i17.i = xor i32 %161, %shr72.i
  %and.i18.i = and i32 %xor.i17.i, %spec.select3.i
  %xor1.i19.i = xor i32 %and.i18.i, %161
  store i32 %xor1.i19.i, ptr %add.ptr46, align 4
  br label %bitcpy.exit

if.else74.i:                                      ; preds = %if.else68.i
  call void @__sanitizer_cov_trace_pc() #3
  %incdec.ptr75.i = getelementptr i32, ptr %add.ptr49, i32 1
  %162 = ptrtoint ptr %add.ptr49 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %add.ptr49, align 4
  %164 = ptrtoint ptr %incdec.ptr75.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %incdec.ptr75.i, align 4
  %shr76.i = lshr i32 %163, %and53.i
  %shl77.i = shl i32 %165, %and56.i
  %or.i167 = or i32 %shl77.i, %shr76.i
  %166 = ptrtoint ptr %add.ptr46 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %add.ptr46, align 4
  %xor.i20.i = xor i32 %or.i167, %167
  %and.i21.i = and i32 %xor.i20.i, %spec.select3.i
  %xor1.i22.i = xor i32 %and.i21.i, %167
  store i32 %xor1.i22.i, ptr %add.ptr46, align 4
  br label %bitcpy.exit

if.else81.i:                                      ; preds = %if.else51.i
  %incdec.ptr82.i = getelementptr i32, ptr %add.ptr49, i32 1
  %168 = ptrtoint ptr %add.ptr49 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %add.ptr49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i137)
  %cmp83.i = icmp sgt i32 %sub.i137, 0
  br i1 %cmp83.i, label %if.then84.i, label %if.else90.i

if.then84.i:                                      ; preds = %if.else81.i
  call void @__sanitizer_cov_trace_pc() #3
  %shl85.i = shl i32 %169, %and56.i
  %170 = ptrtoint ptr %add.ptr46 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %add.ptr46, align 4
  %xor.i23.i = xor i32 %171, %shl85.i
  br label %if.end99.i

if.else90.i:                                      ; preds = %if.else81.i
  call void @__sanitizer_cov_trace_pc() #3
  %incdec.ptr91.i = getelementptr i32, ptr %add.ptr49, i32 2
  %172 = ptrtoint ptr %incdec.ptr82.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %incdec.ptr82.i, align 4
  %shr92.i = lshr i32 %169, %and53.i
  %shl93.i = shl i32 %173, %and56.i
  %or94.i = or i32 %shl93.i, %shr92.i
  %174 = ptrtoint ptr %add.ptr46 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %add.ptr46, align 4
  %xor.i26.i = xor i32 %or94.i, %175
  br label %if.end99.i

if.end99.i:                                       ; preds = %if.else90.i, %if.then84.i
  %xor.i26.sink.i = phi i32 [ %xor.i26.i, %if.else90.i ], [ %xor.i23.i, %if.then84.i ]
  %.sink.i = phi i32 [ %175, %if.else90.i ], [ %171, %if.then84.i ]
  %src.addr.3.i168 = phi ptr [ %incdec.ptr91.i, %if.else90.i ], [ %incdec.ptr82.i, %if.then84.i ]
  %d0.0.i169 = phi i32 [ %173, %if.else90.i ], [ %169, %if.then84.i ]
  %and.i27.i = and i32 %xor.i26.sink.i, %cond.i143
  %xor1.i28.i = xor i32 %and.i27.i, %.sink.i
  %176 = ptrtoint ptr %add.ptr46 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %xor1.i28.i, ptr %add.ptr46, align 4
  %n.addr.3.i = add i32 %add5.i, -32
  %div1012.i = lshr i32 %n.addr.3.i, 5
  %dst.addr.432.i = getelementptr i32, ptr %add.ptr46, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %n.addr.3.i)
  %cmp10333.i = icmp ugt i32 %n.addr.3.i, 127
  br i1 %cmp10333.i, label %if.end99.i.while.body104.i_crit_edge, label %if.end99.i.while.cond127.preheader.i_crit_edge

if.end99.i.while.cond127.preheader.i_crit_edge:   ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.cond127.preheader.i

if.end99.i.while.body104.i_crit_edge:             ; preds = %if.end99.i
  br label %while.body104.i

while.cond127.preheader.i:                        ; preds = %while.body104.i.while.cond127.preheader.i_crit_edge, %if.end99.i.while.cond127.preheader.i_crit_edge
  %src.addr.4.lcssa.i170 = phi ptr [ %src.addr.3.i168, %if.end99.i.while.cond127.preheader.i_crit_edge ], [ %incdec.ptr120.i, %while.body104.i.while.cond127.preheader.i_crit_edge ]
  %n.addr.4.lcssa.i = phi i32 [ %div1012.i, %if.end99.i.while.cond127.preheader.i_crit_edge ], [ %sub125.i, %while.body104.i.while.cond127.preheader.i_crit_edge ]
  %d0.1.lcssa.i171 = phi i32 [ %d0.0.i169, %if.end99.i.while.cond127.preheader.i_crit_edge ], [ %187, %while.body104.i.while.cond127.preheader.i_crit_edge ]
  %dst.addr.4.lcssa.i172 = phi ptr [ %dst.addr.432.i, %if.end99.i.while.cond127.preheader.i_crit_edge ], [ %dst.addr.4.i, %while.body104.i.while.cond127.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.4.lcssa.i)
  %tobool129.not42.i = icmp eq i32 %n.addr.4.lcssa.i, 0
  br i1 %tobool129.not42.i, label %while.cond127.preheader.i.while.end136.i_crit_edge, label %while.cond127.preheader.i.while.body130.i_crit_edge

while.cond127.preheader.i.while.body130.i_crit_edge: ; preds = %while.cond127.preheader.i
  br label %while.body130.i

while.cond127.preheader.i.while.end136.i_crit_edge: ; preds = %while.cond127.preheader.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.end136.i

while.body104.i:                                  ; preds = %while.body104.i.while.body104.i_crit_edge, %if.end99.i.while.body104.i_crit_edge
  %dst.addr.438.i = phi ptr [ %dst.addr.4.i, %while.body104.i.while.body104.i_crit_edge ], [ %dst.addr.432.i, %if.end99.i.while.body104.i_crit_edge ]
  %d0.137.i = phi i32 [ %187, %while.body104.i.while.body104.i_crit_edge ], [ %d0.0.i169, %if.end99.i.while.body104.i_crit_edge ]
  %n.addr.436.i = phi i32 [ %sub125.i, %while.body104.i.while.body104.i_crit_edge ], [ %div1012.i, %if.end99.i.while.body104.i_crit_edge ]
  %dst.pn35.i = phi ptr [ %incdec.ptr119.i, %while.body104.i.while.body104.i_crit_edge ], [ %add.ptr46, %if.end99.i.while.body104.i_crit_edge ]
  %src.addr.434.i = phi ptr [ %incdec.ptr120.i, %while.body104.i.while.body104.i_crit_edge ], [ %src.addr.3.i168, %if.end99.i.while.body104.i_crit_edge ]
  %incdec.ptr105.i = getelementptr i32, ptr %src.addr.434.i, i32 1
  %177 = ptrtoint ptr %src.addr.434.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %src.addr.434.i, align 4
  %shr106.i173 = lshr i32 %d0.137.i, %and53.i
  %shl107.i = shl i32 %178, %and56.i
  %or108.i = or i32 %shl107.i, %shr106.i173
  %incdec.ptr109.i = getelementptr i32, ptr %dst.pn35.i, i32 2
  %179 = ptrtoint ptr %dst.addr.438.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %or108.i, ptr %dst.addr.438.i, align 4
  %incdec.ptr110.i = getelementptr i32, ptr %src.addr.434.i, i32 2
  %180 = ptrtoint ptr %incdec.ptr105.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %incdec.ptr105.i, align 4
  %shr111.i = lshr i32 %178, %and53.i
  %shl112.i = shl i32 %181, %and56.i
  %or113.i = or i32 %shl112.i, %shr111.i
  %incdec.ptr114.i = getelementptr i32, ptr %dst.pn35.i, i32 3
  %182 = ptrtoint ptr %incdec.ptr109.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %or113.i, ptr %incdec.ptr109.i, align 4
  %incdec.ptr115.i = getelementptr i32, ptr %src.addr.434.i, i32 3
  %183 = ptrtoint ptr %incdec.ptr110.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %incdec.ptr110.i, align 4
  %shr116.i = lshr i32 %181, %and53.i
  %shl117.i = shl i32 %184, %and56.i
  %or118.i = or i32 %shl117.i, %shr116.i
  %incdec.ptr119.i = getelementptr i32, ptr %dst.pn35.i, i32 4
  %185 = ptrtoint ptr %incdec.ptr114.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %or118.i, ptr %incdec.ptr114.i, align 4
  %incdec.ptr120.i = getelementptr i32, ptr %src.addr.434.i, i32 4
  %186 = ptrtoint ptr %incdec.ptr115.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %incdec.ptr115.i, align 4
  %shr121.i = lshr i32 %184, %and53.i
  %shl122.i = shl i32 %187, %and56.i
  %or123.i = or i32 %shl122.i, %shr121.i
  %188 = ptrtoint ptr %incdec.ptr119.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %or123.i, ptr %incdec.ptr119.i, align 4
  %sub125.i = add i32 %n.addr.436.i, -4
  %dst.addr.4.i = getelementptr i32, ptr %dst.pn35.i, i32 5
  %cmp103.i = icmp ugt i32 %sub125.i, 3
  br i1 %cmp103.i, label %while.body104.i.while.body104.i_crit_edge, label %while.body104.i.while.cond127.preheader.i_crit_edge

while.body104.i.while.cond127.preheader.i_crit_edge: ; preds = %while.body104.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.cond127.preheader.i

while.body104.i.while.body104.i_crit_edge:        ; preds = %while.body104.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.body104.i

while.body130.i:                                  ; preds = %while.body130.i.while.body130.i_crit_edge, %while.cond127.preheader.i.while.body130.i_crit_edge
  %d0.246.i = phi i32 [ %190, %while.body130.i.while.body130.i_crit_edge ], [ %d0.1.lcssa.i171, %while.cond127.preheader.i.while.body130.i_crit_edge ]
  %n.addr.545.i = phi i32 [ %dec128.i, %while.body130.i.while.body130.i_crit_edge ], [ %n.addr.4.lcssa.i, %while.cond127.preheader.i.while.body130.i_crit_edge ]
  %dst.addr.544.i = phi ptr [ %incdec.ptr135.i176, %while.body130.i.while.body130.i_crit_edge ], [ %dst.addr.4.lcssa.i172, %while.cond127.preheader.i.while.body130.i_crit_edge ]
  %src.addr.543.i = phi ptr [ %incdec.ptr131.i174, %while.body130.i.while.body130.i_crit_edge ], [ %src.addr.4.lcssa.i170, %while.cond127.preheader.i.while.body130.i_crit_edge ]
  %dec128.i = add i32 %n.addr.545.i, -1
  %incdec.ptr131.i174 = getelementptr i32, ptr %src.addr.543.i, i32 1
  %189 = ptrtoint ptr %src.addr.543.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %src.addr.543.i, align 4
  %shr132.i = lshr i32 %d0.246.i, %and53.i
  %shl133.i = shl i32 %190, %and56.i
  %or134.i175 = or i32 %shl133.i, %shr132.i
  %incdec.ptr135.i176 = getelementptr i32, ptr %dst.addr.544.i, i32 1
  %191 = ptrtoint ptr %dst.addr.544.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %or134.i175, ptr %dst.addr.544.i, align 4
  %tobool129.not.i = icmp eq i32 %dec128.i, 0
  br i1 %tobool129.not.i, label %while.body130.i.while.end136.i_crit_edge, label %while.body130.i.while.body130.i_crit_edge

while.body130.i.while.body130.i_crit_edge:        ; preds = %while.body130.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.body130.i

while.body130.i.while.end136.i_crit_edge:         ; preds = %while.body130.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.end136.i

while.end136.i:                                   ; preds = %while.body130.i.while.end136.i_crit_edge, %while.cond127.preheader.i.while.end136.i_crit_edge
  %src.addr.5.lcssa.i177 = phi ptr [ %src.addr.4.lcssa.i170, %while.cond127.preheader.i.while.end136.i_crit_edge ], [ %incdec.ptr131.i174, %while.body130.i.while.end136.i_crit_edge ]
  %dst.addr.5.lcssa.i = phi ptr [ %dst.addr.4.lcssa.i172, %while.cond127.preheader.i.while.end136.i_crit_edge ], [ %incdec.ptr135.i176, %while.body130.i.while.end136.i_crit_edge ]
  %d0.2.lcssa.i178 = phi i32 [ %d0.1.lcssa.i171, %while.cond127.preheader.i.while.end136.i_crit_edge ], [ %190, %while.body130.i.while.end136.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem6.i)
  %tobool137.not.i = icmp eq i32 %rem6.i, 0
  br i1 %tobool137.not.i, label %while.end136.i.bitcpy.exit_crit_edge, label %if.then138.i

while.end136.i.bitcpy.exit_crit_edge:             ; preds = %while.end136.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %bitcpy.exit

if.then138.i:                                     ; preds = %while.end136.i
  %sub139.i = sub nuw nsw i32 32, %and53.i
  call void @__sanitizer_cov_trace_cmp4(i32 %rem6.i, i32 %sub139.i)
  %cmp140.not.i = icmp ugt i32 %rem6.i, %sub139.i
  br i1 %cmp140.not.i, label %if.else143.i, label %if.then141.i

if.then141.i:                                     ; preds = %if.then138.i
  call void @__sanitizer_cov_trace_pc() #3
  %shr142.i = lshr i32 %d0.2.lcssa.i178, %and53.i
  br label %if.end147.i

if.else143.i:                                     ; preds = %if.then138.i
  call void @__sanitizer_cov_trace_pc() #3
  %192 = ptrtoint ptr %src.addr.5.lcssa.i177 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %src.addr.5.lcssa.i177, align 4
  %shr144.i = lshr i32 %d0.2.lcssa.i178, %and53.i
  %shl145.i = shl i32 %193, %and56.i
  %or146.i = or i32 %shl145.i, %shr144.i
  br label %if.end147.i

if.end147.i:                                      ; preds = %if.else143.i, %if.then141.i
  %d0.3.i179 = phi i32 [ %shr142.i, %if.then141.i ], [ %or146.i, %if.else143.i ]
  %194 = ptrtoint ptr %dst.addr.5.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %dst.addr.5.lcssa.i, align 4
  %xor.i29.i = xor i32 %195, %d0.3.i179
  %196 = and i32 %xor.i29.i, %cond9.i
  %xor1.i31.i = xor i32 %196, %d0.3.i179
  store i32 %xor1.i31.i, ptr %dst.addr.5.lcssa.i, align 4
  br label %bitcpy.exit

bitcpy.exit:                                      ; preds = %if.end147.i, %while.end136.i.bitcpy.exit_crit_edge, %if.else74.i, %if.then71.i, %if.then65.i, %if.then47.i, %while.end45.i.bitcpy.exit_crit_edge, %if.then11.i
  %add54 = add i32 %dst_idx.1186, %mul
  %add55 = add i32 %src_idx.1187, %mul
  %tobool43.not = icmp eq i32 %dec42, 0
  br i1 %tobool43.not, label %bitcpy.exit.cleanup_crit_edge, label %bitcpy.exit.while.body44_crit_edge

bitcpy.exit.while.body44_crit_edge:               ; preds = %bitcpy.exit
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.body44

bitcpy.exit.cleanup_crit_edge:                    ; preds = %bitcpy.exit
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

cleanup:                                          ; preds = %bitcpy.exit.cleanup_crit_edge, %bitcpy_rev.exit.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %while.cond41.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

!0 = !{ptr @__ksymtab_sys_copyarea, !1, !"__ksymtab_sys_copyarea", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/core/syscopyarea.c", i32 365, i32 1}
!2 = !{ptr @__UNIQUE_ID_author301, !3, !"__UNIQUE_ID_author301", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/core/syscopyarea.c", i32 367, i32 1}
!4 = !{ptr @__UNIQUE_ID_description302, !5, !"__UNIQUE_ID_description302", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/core/syscopyarea.c", i32 368, i32 1}
!6 = !{ptr @__UNIQUE_ID_file303, !7, !"__UNIQUE_ID_file303", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/core/syscopyarea.c", i32 369, i32 1}
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
