; ModuleID = '/llk/IR_all_yes/drivers/video/vgastate.c_pt.bc'
source_filename = "../drivers/video/vgastate.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+save_vga\22, \22a\22\09"
module asm "\09.weak\09__crc_save_vga\09\09\09\09"
module asm "\09.long\09__crc_save_vga\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_save_vga:\09\09\09\09\09"
module asm "\09.asciz \09\22save_vga\22\09\09\09\09\09"
module asm "__kstrtabns_save_vga:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+restore_vga\22, \22a\22\09"
module asm "\09.weak\09__crc_restore_vga\09\09\09\09"
module asm "\09.long\09__crc_restore_vga\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_restore_vga:\09\09\09\09\09"
module asm "\09.asciz \09\22restore_vga\22\09\09\09\09\09"
module asm "__kstrtabns_restore_vga:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.vgastate = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.regstate = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }

@__kstrtab_save_vga = external dso_local constant [0 x i8], align 1
@__kstrtabns_save_vga = external dso_local constant [0 x i8], align 1
@__ksymtab_save_vga = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @save_vga to i32), ptr @__kstrtab_save_vga, ptr @__kstrtabns_save_vga }, section "___ksymtab+save_vga", align 4
@__kstrtab_restore_vga = external dso_local constant [0 x i8], align 1
@__kstrtabns_restore_vga = external dso_local constant [0 x i8], align 1
@__ksymtab_restore_vga = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @restore_vga to i32), ptr @__kstrtab_restore_vga, ptr @__kstrtabns_restore_vga }, section "___ksymtab+restore_vga", align 4
@__UNIQUE_ID_author301 = internal constant [54 x i8] c"vgastate.author=James Simmons <jsimmons@users.sf.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description302 = internal constant [44 x i8] c"vgastate.description=VGA State Save/Restore\00", section ".modinfo", align 1
@__UNIQUE_ID_file303 = internal constant [37 x i8] c"vgastate.file=drivers/video/vgastate\00", section ".modinfo", align 1
@__UNIQUE_ID_license304 = internal constant [21 x i8] c"vgastate.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file303, ptr @__UNIQUE_ID_license304, ptr @__ksymtab_restore_vga, ptr @__ksymtab_save_vga], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @save_vga(ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 36) #7
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup107_crit_edge, label %if.end

entry.cleanup107_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup107

if.end:                                           ; preds = %entry
  %vidstate = getelementptr inbounds %struct.vgastate, ptr %state, i32 0, i32 9
  %1 = ptrtoint ptr %vidstate to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %vidstate, align 4
  %flags = getelementptr inbounds %struct.vgastate, ptr %state, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then1

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then1:                                         ; preds = %if.end
  %call2 = tail call noalias ptr @vmalloc(i32 noundef 768) #8
  %vga_cmap = getelementptr inbounds %struct.regstate, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %vga_cmap to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %vga_cmap, align 4
  %tobool4.not = icmp eq ptr %call2, null
  %5 = ptrtoint ptr %vidstate to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vidstate, align 4
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.then1
  %cmp.not.i = icmp eq ptr %6, null
  br i1 %cmp.not.i, label %if.then5.cleanup107_crit_edge, label %if.then.i

if.then5.cleanup107_crit_edge:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup107

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  tail call void @vfree(ptr noundef %8) #4
  %vga_font1.i = getelementptr inbounds %struct.regstate, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %vga_font1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vga_font1.i, align 4
  tail call void @vfree(ptr noundef %10) #4
  %vga_text.i = getelementptr inbounds %struct.regstate, ptr %6, i32 0, i32 2
  %11 = ptrtoint ptr %vga_text.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vga_text.i, align 4
  tail call void @vfree(ptr noundef %12) #4
  %vga_cmap.i = getelementptr inbounds %struct.regstate, ptr %6, i32 0, i32 3
  %13 = ptrtoint ptr %vga_cmap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vga_cmap.i, align 4
  tail call void @vfree(ptr noundef %14) #4
  %attr.i = getelementptr inbounds %struct.regstate, ptr %6, i32 0, i32 4
  %15 = ptrtoint ptr %attr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %attr.i, align 4
  tail call void @vfree(ptr noundef %16) #4
  tail call void @kfree(ptr noundef nonnull %6) #4
  %17 = ptrtoint ptr %vidstate to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %vidstate, align 4
  br label %cleanup107

if.end6:                                          ; preds = %if.then1
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %state, align 4
  %tobool.not.i.i = icmp eq ptr %19, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 966
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 -1) #4, !srcloc !20
  br label %vga_w.exit.i

if.else.i.i:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873402 to ptr), i8 -1) #4, !srcloc !20
  br label %vga_w.exit.i

vga_w.exit.i:                                     ; preds = %if.else.i.i, %if.then.i.i
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %state, align 4
  %tobool.not.i8.i = icmp eq ptr %21, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i8.i, label %if.else.i11.i, label %if.then.i10.i

if.then.i10.i:                                    ; preds = %vga_w.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i9.i = getelementptr i8, ptr %21, i32 967
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i9.i, i8 0) #4, !srcloc !20
  br label %vga_w.exit12.i

if.else.i11.i:                                    ; preds = %vga_w.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873401 to ptr), i8 0) #4, !srcloc !20
  br label %vga_w.exit12.i

vga_w.exit12.i:                                   ; preds = %if.else.i11.i, %if.then.i10.i
  %vga_cmap.i173 = getelementptr inbounds %struct.regstate, ptr %6, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %vga_r.exit.i.for.body.i_crit_edge, %vga_w.exit12.i
  %i.017.i = phi i32 [ 0, %vga_w.exit12.i ], [ %inc.i, %vga_r.exit.i.for.body.i_crit_edge ]
  %22 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %state, align 4
  %tobool.not.i13.i = icmp eq ptr %23, null
  br i1 %tobool.not.i13.i, label %if.else.i16.i, label %if.then.i15.i

if.then.i15.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i14.i = getelementptr i8, ptr %23, i32 969
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i14.i) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  br label %vga_r.exit.i

if.else.i16.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr)) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  br label %vga_r.exit.i

vga_r.exit.i:                                     ; preds = %if.else.i16.i, %if.then.i15.i
  %retval.0.i.i = phi i8 [ %24, %if.then.i15.i ], [ %25, %if.else.i16.i ]
  %26 = ptrtoint ptr %vga_cmap.i173 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vga_cmap.i173, align 4
  %arrayidx.i = getelementptr i8, ptr %27, i32 %i.017.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %retval.0.i.i, ptr %arrayidx.i, align 1
  %inc.i = add nuw nsw i32 %i.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 768
  br i1 %exitcond.not.i, label %vga_r.exit.i.if.end7_crit_edge, label %vga_r.exit.i.for.body.i_crit_edge

vga_r.exit.i.for.body.i_crit_edge:                ; preds = %vga_r.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

vga_r.exit.i.if.end7_crit_edge:                   ; preds = %vga_r.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.end7:                                          ; preds = %vga_r.exit.i.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 4
  %and9 = and i32 %30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end7.if.end47_crit_edge, label %if.then11

if.end7.if.end47_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end47

if.then11:                                        ; preds = %if.end7
  %num_attr = getelementptr inbounds %struct.vgastate, ptr %state, i32 0, i32 5
  %31 = ptrtoint ptr %num_attr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_attr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %32)
  %cmp12 = icmp ult i32 %32, 21
  br i1 %cmp12, label %if.then13, label %if.then11.if.end15_crit_edge

if.then11.if.end15_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.then13:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  %33 = ptrtoint ptr %num_attr to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 21, ptr %num_attr, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.then11.if.end15_crit_edge
  %num_crtc = getelementptr inbounds %struct.vgastate, ptr %state, i32 0, i32 6
  %34 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_crtc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %35)
  %cmp16 = icmp ult i32 %35, 25
  br i1 %cmp16, label %if.then17, label %if.end15.if.end19_crit_edge

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  %36 = ptrtoint ptr %num_crtc to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 25, ptr %num_crtc, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end15.if.end19_crit_edge
  %num_gfx = getelementptr inbounds %struct.vgastate, ptr %state, i32 0, i32 7
  %37 = ptrtoint ptr %num_gfx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_gfx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %38)
  %cmp20 = icmp ult i32 %38, 9
  br i1 %cmp20, label %if.then21, label %if.end19.if.end23_crit_edge

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %39 = ptrtoint ptr %num_gfx to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 9, ptr %num_gfx, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end19.if.end23_crit_edge
  %num_seq = getelementptr inbounds %struct.vgastate, ptr %state, i32 0, i32 8
  %40 = ptrtoint ptr %num_seq to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_seq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %41)
  %cmp24 = icmp ult i32 %41, 5
  br i1 %cmp24, label %if.then25, label %if.end23.if.end27_crit_edge

if.end23.if.end27_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  %42 = ptrtoint ptr %num_seq to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 5, ptr %num_seq, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end23.if.end27_crit_edge
  %43 = ptrtoint ptr %num_attr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_attr, align 4
  %45 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_crtc, align 4
  %add = add i32 %46, %44
  %47 = ptrtoint ptr %num_gfx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_gfx, align 4
  %add31 = add i32 %add, %48
  %49 = ptrtoint ptr %num_seq to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_seq, align 4
  %add33 = add i32 %add31, %50
  %call34 = tail call noalias ptr @vmalloc(i32 noundef %add33) #8
  %attr = getelementptr inbounds %struct.regstate, ptr %call7.i.i, i32 0, i32 4
  %51 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call34, ptr %attr, align 8
  %tobool36.not = icmp eq ptr %call34, null
  br i1 %tobool36.not, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end27
  %52 = ptrtoint ptr %vidstate to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %vidstate, align 4
  %cmp.not.i175 = icmp eq ptr %53, null
  br i1 %cmp.not.i175, label %if.then37.cleanup107_crit_edge, label %if.then.i180

if.then37.cleanup107_crit_edge:                   ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup107

if.then.i180:                                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #6
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  tail call void @vfree(ptr noundef %55) #4
  %vga_font1.i176 = getelementptr inbounds %struct.regstate, ptr %53, i32 0, i32 1
  %56 = ptrtoint ptr %vga_font1.i176 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %vga_font1.i176, align 4
  tail call void @vfree(ptr noundef %57) #4
  %vga_text.i177 = getelementptr inbounds %struct.regstate, ptr %53, i32 0, i32 2
  %58 = ptrtoint ptr %vga_text.i177 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %vga_text.i177, align 4
  tail call void @vfree(ptr noundef %59) #4
  %vga_cmap.i178 = getelementptr inbounds %struct.regstate, ptr %53, i32 0, i32 3
  %60 = ptrtoint ptr %vga_cmap.i178 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %vga_cmap.i178, align 4
  tail call void @vfree(ptr noundef %61) #4
  %attr.i179 = getelementptr inbounds %struct.regstate, ptr %53, i32 0, i32 4
  %62 = ptrtoint ptr %attr.i179 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %attr.i179, align 4
  tail call void @vfree(ptr noundef %63) #4
  tail call void @kfree(ptr noundef nonnull %53) #4
  %64 = ptrtoint ptr %vidstate to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %vidstate, align 4
  br label %cleanup107

if.end38:                                         ; preds = %if.end27
  %65 = ptrtoint ptr %num_attr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %num_attr, align 4
  %add.ptr = getelementptr i8, ptr %call34, i32 %66
  %crtc = getelementptr inbounds %struct.regstate, ptr %call7.i.i, i32 0, i32 5
  %67 = ptrtoint ptr %crtc to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %add.ptr, ptr %crtc, align 4
  %68 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %num_crtc, align 4
  %add.ptr43 = getelementptr i8, ptr %add.ptr, i32 %69
  %gfx = getelementptr inbounds %struct.regstate, ptr %call7.i.i, i32 0, i32 6
  %70 = ptrtoint ptr %gfx to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %add.ptr43, ptr %gfx, align 8
  %71 = ptrtoint ptr %num_gfx to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %num_gfx, align 4
  %add.ptr46 = getelementptr i8, ptr %add.ptr43, i32 %72
  %seq = getelementptr inbounds %struct.regstate, ptr %call7.i.i, i32 0, i32 7
  %73 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %add.ptr46, ptr %seq, align 4
  %74 = ptrtoint ptr %vidstate to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %vidstate, align 4
  %76 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %state, align 4
  %tobool.not.i.i183 = icmp eq ptr %77, null
  br i1 %tobool.not.i.i183, label %if.else.i.i186, label %if.then.i.i185

if.then.i.i185:                                   ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i184 = getelementptr i8, ptr %77, i32 972
  %78 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i184) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  br label %vga_r.exit.i188

if.else.i.i186:                                   ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  %79 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873396 to ptr)) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  br label %vga_r.exit.i188

vga_r.exit.i188:                                  ; preds = %if.else.i.i186, %if.then.i.i185
  %retval.0.i.i187 = phi i8 [ %78, %if.then.i.i185 ], [ %79, %if.else.i.i186 ]
  %misc.i = getelementptr inbounds %struct.regstate, ptr %75, i32 0, i32 8
  %80 = ptrtoint ptr %misc.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %retval.0.i.i187, ptr %misc.i, align 4
  %81 = and i8 %retval.0.i.i187, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool.not.i = icmp eq i8 %81, 0
  %..i = select i1 %tobool.not.i, i16 944, i16 976
  %82 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %num_crtc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp138.not.i = icmp eq i32 %83, 0
  br i1 %cmp138.not.i, label %vga_r.exit.i188.for.end.i_crit_edge, label %for.body.lr.ph.i

vga_r.exit.i188.for.end.i_crit_edge:              ; preds = %vga_r.exit.i188
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %vga_r.exit.i188
  %add.i.i = or i16 %..i, 4
  %conv.i.i.i.i = zext i16 %add.i.i to i32
  %add3.i.i = or i16 %..i, 5
  %conv.i4.i8.i.i = zext i16 %add3.i.i to i32
  %add.i.i.i.i.i = or i32 %conv.i.i.i.i, -18874368
  %84 = inttoptr i32 %add.i.i.i.i.i to ptr
  %conv.i4.i814.i.i = zext i16 %..i to i32
  %add.i.i.i11.i.i = or i32 %conv.i4.i814.i.i, -18874363
  %85 = inttoptr i32 %add.i.i.i11.i.i to ptr
  %crtc.i = getelementptr inbounds %struct.regstate, ptr %75, i32 0, i32 5
  br label %for.body.i189

for.body.i189:                                    ; preds = %vga_rcrtcs.exit.i.for.body.i189_crit_edge, %for.body.lr.ph.i
  %i.0139.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i191, %vga_rcrtcs.exit.i.for.body.i189_crit_edge ]
  %86 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %state, align 4
  %conv4.i = trunc i32 %i.0139.i to i8
  %tobool.not.i.i.i = icmp eq ptr %87, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i.i, label %if.else.i12.i.i, label %if.then.i10.i.i

if.then.i10.i.i:                                  ; preds = %for.body.i189
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i.i = getelementptr i8, ptr %87, i32 %conv.i.i.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i, i8 %conv4.i) #4, !srcloc !20
  %add.ptr.i.i9.i.i = getelementptr i8, ptr %87, i32 %conv.i4.i8.i.i
  %88 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i9.i.i) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  br label %vga_rcrtcs.exit.i

if.else.i12.i.i:                                  ; preds = %for.body.i189
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %84, i8 %conv4.i) #4, !srcloc !20
  %89 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %85) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  br label %vga_rcrtcs.exit.i

vga_rcrtcs.exit.i:                                ; preds = %if.else.i12.i.i, %if.then.i10.i.i
  %retval.0.i.i.i = phi i8 [ %88, %if.then.i10.i.i ], [ %89, %if.else.i12.i.i ]
  %90 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %crtc.i, align 4
  %arrayidx.i190 = getelementptr i8, ptr %91, i32 %i.0139.i
  %92 = ptrtoint ptr %arrayidx.i190 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %retval.0.i.i.i, ptr %arrayidx.i190, align 1
  %inc.i191 = add nuw i32 %i.0139.i, 1
  %93 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %num_crtc, align 4
  %cmp.i = icmp ult i32 %inc.i191, %94
  br i1 %cmp.i, label %vga_rcrtcs.exit.i.for.body.i189_crit_edge, label %vga_rcrtcs.exit.i.for.end.i_crit_edge

vga_rcrtcs.exit.i.for.end.i_crit_edge:            ; preds = %vga_rcrtcs.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

vga_rcrtcs.exit.i.for.body.i189_crit_edge:        ; preds = %vga_rcrtcs.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i189

for.end.i:                                        ; preds = %vga_rcrtcs.exit.i.for.end.i_crit_edge, %vga_r.exit.i188.for.end.i_crit_edge
  %95 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %state, align 4
  %97 = or i16 %..i, 10
  %tobool.not.i92.i = icmp eq ptr %96, null
  %conv.i4.i.i = zext i16 %97 to i32
  br i1 %tobool.not.i92.i, label %if.else.i95.i, label %if.then.i94.i

if.then.i94.i:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i93.i = getelementptr i8, ptr %96, i32 %conv.i4.i.i
  %98 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i93.i) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  br label %vga_r.exit97.i

if.else.i95.i:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.i.i.i.i = or i32 %conv.i4.i.i, -18874368
  %99 = inttoptr i32 %add.i.i.i.i to ptr
  %100 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %99) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  br label %vga_r.exit97.i

vga_r.exit97.i:                                   ; preds = %if.else.i95.i, %if.then.i94.i
  %101 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %state, align 4
  %tobool.not.i98.i = icmp eq ptr %102, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i98.i, label %if.else.i101.i, label %if.then.i100.i

if.then.i100.i:                                   ; preds = %vga_r.exit97.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i99.i = getelementptr i8, ptr %102, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i99.i, i8 0) #4, !srcloc !20
  br label %vga_w.exit.i192

if.else.i101.i:                                   ; preds = %vga_r.exit97.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 0) #4, !srcloc !20
  br label %vga_w.exit.i192

vga_w.exit.i192:                                  ; preds = %if.else.i101.i, %if.then.i100.i
  %103 = ptrtoint ptr %num_attr to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %num_attr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp12140.not.i = icmp eq i32 %104, 0
  br i1 %cmp12140.not.i, label %vga_w.exit.i192.for.end26.i_crit_edge, label %for.body14.lr.ph.i

vga_w.exit.i192.for.end26.i_crit_edge:            ; preds = %vga_w.exit.i192
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end26.i

for.body14.lr.ph.i:                               ; preds = %vga_w.exit.i192
  %add.i.i.i106.i = or i32 %conv.i4.i.i, -18874368
  %105 = inttoptr i32 %add.i.i.i106.i to ptr
  %attr.i193 = getelementptr inbounds %struct.regstate, ptr %75, i32 0, i32 4
  br label %for.body14.i

for.body14.i:                                     ; preds = %vga_rattr.exit.i.for.body14.i_crit_edge, %for.body14.lr.ph.i
  %i.1141.i = phi i32 [ 0, %for.body14.lr.ph.i ], [ %inc25.i, %vga_rattr.exit.i.for.body14.i_crit_edge ]
  %106 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %state, align 4
  %tobool.not.i102.i = icmp eq ptr %107, null
  br i1 %tobool.not.i102.i, label %if.else.i107.i, label %if.then.i105.i

if.then.i105.i:                                   ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i104.i = getelementptr i8, ptr %107, i32 %conv.i4.i.i
  %108 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i104.i) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  br label %vga_r.exit109.i

if.else.i107.i:                                   ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #6
  %109 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %105) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  br label %vga_r.exit109.i

vga_r.exit109.i:                                  ; preds = %if.else.i107.i, %if.then.i105.i
  %110 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %state, align 4
  %conv21.i = trunc i32 %i.1141.i to i8
  %tobool.not.i.i110.i = icmp eq ptr %111, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i110.i, label %if.else.i5.i.i, label %if.then.i4.i.i

if.then.i4.i.i:                                   ; preds = %vga_r.exit109.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i111.i = getelementptr i8, ptr %111, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i111.i, i8 %conv21.i) #4, !srcloc !20
  %add.ptr.i.i3.i.i = getelementptr i8, ptr %111, i32 961
  %112 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  br label %vga_rattr.exit.i

if.else.i5.i.i:                                   ; preds = %vga_r.exit109.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 %conv21.i) #4, !srcloc !20
  %113 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873407 to ptr)) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  br label %vga_rattr.exit.i

vga_rattr.exit.i:                                 ; preds = %if.else.i5.i.i, %if.then.i4.i.i
  %retval.0.i.i112.i = phi i8 [ %112, %if.then.i4.i.i ], [ %113, %if.else.i5.i.i ]
  %114 = ptrtoint ptr %attr.i193 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %attr.i193, align 4
  %arrayidx23.i = getelementptr i8, ptr %115, i32 %i.1141.i
  %116 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %retval.0.i.i112.i, ptr %arrayidx23.i, align 1
  %inc25.i = add nuw i32 %i.1141.i, 1
  %117 = ptrtoint ptr %num_attr to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %num_attr, align 4
  %cmp12.i = icmp ult i32 %inc25.i, %118
  br i1 %cmp12.i, label %vga_rattr.exit.i.for.body14.i_crit_edge, label %vga_rattr.exit.i.for.end26.i_crit_edge

vga_rattr.exit.i.for.end26.i_crit_edge:           ; preds = %vga_rattr.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end26.i

vga_rattr.exit.i.for.body14.i_crit_edge:          ; preds = %vga_rattr.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body14.i

for.end26.i:                                      ; preds = %vga_rattr.exit.i.for.end26.i_crit_edge, %vga_w.exit.i192.for.end26.i_crit_edge
  %119 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %state, align 4
  %tobool.not.i113.i = icmp eq ptr %120, null
  br i1 %tobool.not.i113.i, label %if.else.i118.i, label %if.then.i116.i

if.then.i116.i:                                   ; preds = %for.end26.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i115.i = getelementptr i8, ptr %120, i32 %conv.i4.i.i
  %121 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i115.i) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  br label %vga_r.exit120.i

if.else.i118.i:                                   ; preds = %for.end26.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.i.i.i117.i = or i32 %conv.i4.i.i, -18874368
  %122 = inttoptr i32 %add.i.i.i117.i to ptr
  %123 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %122) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  br label %vga_r.exit120.i

vga_r.exit120.i:                                  ; preds = %if.else.i118.i, %if.then.i116.i
  %124 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %state, align 4
  %tobool.not.i121.i = icmp eq ptr %125, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i121.i, label %if.else.i124.i, label %if.then.i123.i

if.then.i123.i:                                   ; preds = %vga_r.exit120.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i122.i = getelementptr i8, ptr %125, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i122.i, i8 32) #4, !srcloc !20
  br label %vga_w.exit125.i

if.else.i124.i:                                   ; preds = %vga_r.exit120.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 32) #4, !srcloc !20
  br label %vga_w.exit125.i

vga_w.exit125.i:                                  ; preds = %if.else.i124.i, %if.then.i123.i
  %126 = ptrtoint ptr %num_gfx to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %num_gfx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %cmp34142.not.i = icmp eq i32 %127, 0
  br i1 %cmp34142.not.i, label %vga_w.exit125.i.for.cond44.preheader.i_crit_edge, label %for.body36.lr.ph.i

vga_w.exit125.i.for.cond44.preheader.i_crit_edge: ; preds = %vga_w.exit125.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond44.preheader.i

for.body36.lr.ph.i:                               ; preds = %vga_w.exit125.i
  %gfx.i = getelementptr inbounds %struct.regstate, ptr %75, i32 0, i32 6
  br label %for.body36.i

for.cond44.preheader.i:                           ; preds = %vga_rgfx.exit.i.for.cond44.preheader.i_crit_edge, %vga_w.exit125.i.for.cond44.preheader.i_crit_edge
  %128 = ptrtoint ptr %num_seq to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %num_seq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp45144.not.i = icmp eq i32 %129, 0
  br i1 %cmp45144.not.i, label %for.cond44.preheader.i.if.end47_crit_edge, label %for.body47.lr.ph.i

for.cond44.preheader.i.if.end47_crit_edge:        ; preds = %for.cond44.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end47

for.body47.lr.ph.i:                               ; preds = %for.cond44.preheader.i
  %seq.i = getelementptr inbounds %struct.regstate, ptr %75, i32 0, i32 7
  br label %for.body47.i

for.body36.i:                                     ; preds = %vga_rgfx.exit.i.for.body36.i_crit_edge, %for.body36.lr.ph.i
  %i.2143.i = phi i32 [ 0, %for.body36.lr.ph.i ], [ %inc42.i, %vga_rgfx.exit.i.for.body36.i_crit_edge ]
  %130 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %state, align 4
  %conv38.i = trunc i32 %i.2143.i to i8
  %tobool.not.i.i126.i = icmp eq ptr %131, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i126.i, label %if.else.i5.i130.i, label %if.then.i4.i129.i

if.then.i4.i129.i:                                ; preds = %for.body36.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i127.i = getelementptr i8, ptr %131, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i127.i, i8 %conv38.i) #4, !srcloc !20
  %add.ptr.i.i3.i128.i = getelementptr i8, ptr %131, i32 975
  %132 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i128.i) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  br label %vga_rgfx.exit.i

if.else.i5.i130.i:                                ; preds = %for.body36.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 %conv38.i) #4, !srcloc !20
  %133 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr)) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  br label %vga_rgfx.exit.i

vga_rgfx.exit.i:                                  ; preds = %if.else.i5.i130.i, %if.then.i4.i129.i
  %retval.0.i.i131.i = phi i8 [ %132, %if.then.i4.i129.i ], [ %133, %if.else.i5.i130.i ]
  %134 = ptrtoint ptr %gfx.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %gfx.i, align 4
  %arrayidx40.i = getelementptr i8, ptr %135, i32 %i.2143.i
  %136 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %retval.0.i.i131.i, ptr %arrayidx40.i, align 1
  %inc42.i = add nuw i32 %i.2143.i, 1
  %137 = ptrtoint ptr %num_gfx to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %num_gfx, align 4
  %cmp34.i = icmp ult i32 %inc42.i, %138
  br i1 %cmp34.i, label %vga_rgfx.exit.i.for.body36.i_crit_edge, label %vga_rgfx.exit.i.for.cond44.preheader.i_crit_edge

vga_rgfx.exit.i.for.cond44.preheader.i_crit_edge: ; preds = %vga_rgfx.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond44.preheader.i

vga_rgfx.exit.i.for.body36.i_crit_edge:           ; preds = %vga_rgfx.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body36.i

for.body47.i:                                     ; preds = %vga_rseq.exit.i.for.body47.i_crit_edge, %for.body47.lr.ph.i
  %i.3145.i = phi i32 [ 0, %for.body47.lr.ph.i ], [ %inc53.i, %vga_rseq.exit.i.for.body47.i_crit_edge ]
  %139 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %state, align 4
  %conv49.i = trunc i32 %i.3145.i to i8
  %tobool.not.i.i132.i = icmp eq ptr %140, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i132.i, label %if.else.i5.i136.i, label %if.then.i4.i135.i

if.then.i4.i135.i:                                ; preds = %for.body47.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i133.i = getelementptr i8, ptr %140, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i133.i, i8 %conv49.i) #4, !srcloc !20
  %add.ptr.i.i3.i134.i = getelementptr i8, ptr %140, i32 965
  %141 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i134.i) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  br label %vga_rseq.exit.i

if.else.i5.i136.i:                                ; preds = %for.body47.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 %conv49.i) #4, !srcloc !20
  %142 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  br label %vga_rseq.exit.i

vga_rseq.exit.i:                                  ; preds = %if.else.i5.i136.i, %if.then.i4.i135.i
  %retval.0.i.i137.i = phi i8 [ %141, %if.then.i4.i135.i ], [ %142, %if.else.i5.i136.i ]
  %143 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %seq.i, align 4
  %arrayidx51.i = getelementptr i8, ptr %144, i32 %i.3145.i
  %145 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %retval.0.i.i137.i, ptr %arrayidx51.i, align 1
  %inc53.i = add nuw i32 %i.3145.i, 1
  %146 = ptrtoint ptr %num_seq to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %num_seq, align 4
  %cmp45.i = icmp ult i32 %inc53.i, %147
  br i1 %cmp45.i, label %vga_rseq.exit.i.for.body47.i_crit_edge, label %vga_rseq.exit.i.if.end47_crit_edge

vga_rseq.exit.i.if.end47_crit_edge:               ; preds = %vga_rseq.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end47

vga_rseq.exit.i.for.body47.i_crit_edge:           ; preds = %vga_rseq.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body47.i

if.end47:                                         ; preds = %vga_rseq.exit.i.if.end47_crit_edge, %for.cond44.preheader.i.if.end47_crit_edge, %if.end7.if.end47_crit_edge
  %148 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %flags, align 4
  %and49 = and i32 %149, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end47.cleanup107_crit_edge, label %if.then51

if.end47.cleanup107_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup107

if.then51:                                        ; preds = %if.end47
  %memsize = getelementptr inbounds %struct.vgastate, ptr %state, i32 0, i32 2
  %150 = ptrtoint ptr %memsize to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %memsize, align 4
  %152 = add i32 %151, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %152)
  %153 = icmp ult i32 %152, 32767
  br i1 %153, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.then51
  %154 = ptrtoint ptr %vidstate to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %vidstate, align 4
  %cmp.not.i195 = icmp eq ptr %155, null
  br i1 %cmp.not.i195, label %if.then55.cleanup107_crit_edge, label %if.then.i200

if.then55.cleanup107_crit_edge:                   ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup107

if.then.i200:                                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #6
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %155, align 4
  tail call void @vfree(ptr noundef %157) #4
  %vga_font1.i196 = getelementptr inbounds %struct.regstate, ptr %155, i32 0, i32 1
  %158 = ptrtoint ptr %vga_font1.i196 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %vga_font1.i196, align 4
  tail call void @vfree(ptr noundef %159) #4
  %vga_text.i197 = getelementptr inbounds %struct.regstate, ptr %155, i32 0, i32 2
  %160 = ptrtoint ptr %vga_text.i197 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %vga_text.i197, align 4
  tail call void @vfree(ptr noundef %161) #4
  %vga_cmap.i198 = getelementptr inbounds %struct.regstate, ptr %155, i32 0, i32 3
  %162 = ptrtoint ptr %vga_cmap.i198 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %vga_cmap.i198, align 4
  tail call void @vfree(ptr noundef %163) #4
  %attr.i199 = getelementptr inbounds %struct.regstate, ptr %155, i32 0, i32 4
  %164 = ptrtoint ptr %attr.i199 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %attr.i199, align 4
  tail call void @vfree(ptr noundef %165) #4
  tail call void @kfree(ptr noundef nonnull %155) #4
  %166 = ptrtoint ptr %vidstate to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr null, ptr %vidstate, align 4
  br label %cleanup107

if.end56:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool58.not = icmp eq i32 %151, 0
  br i1 %tobool58.not, label %if.then59, label %if.end56.if.end61_crit_edge

if.end56.if.end61_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end61

if.then59:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #6
  %167 = ptrtoint ptr %memsize to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 65536, ptr %memsize, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.end56.if.end61_crit_edge
  %membase = getelementptr inbounds %struct.vgastate, ptr %state, i32 0, i32 1
  %168 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %membase, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %tobool62.not = icmp eq i32 %169, 0
  br i1 %tobool62.not, label %if.then63, label %if.end61.if.end65_crit_edge

if.end61.if.end65_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end65

if.then63:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #6
  %170 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 655360, ptr %membase, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %if.end61.if.end65_crit_edge
  %171 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %membase, align 4
  %173 = ptrtoint ptr %memsize to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %memsize, align 4
  %call68 = tail call ptr @ioremap(i32 noundef %172, i32 noundef %174) #4
  %tobool69.not = icmp eq ptr %call68, null
  br i1 %tobool69.not, label %if.then70, label %if.end71

if.then70:                                        ; preds = %if.end65
  %175 = ptrtoint ptr %vidstate to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %vidstate, align 4
  %cmp.not.i203 = icmp eq ptr %176, null
  br i1 %cmp.not.i203, label %if.then70.cleanup107_crit_edge, label %if.then.i208

if.then70.cleanup107_crit_edge:                   ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup107

if.then.i208:                                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #6
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %176, align 4
  tail call void @vfree(ptr noundef %178) #4
  %vga_font1.i204 = getelementptr inbounds %struct.regstate, ptr %176, i32 0, i32 1
  %179 = ptrtoint ptr %vga_font1.i204 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %vga_font1.i204, align 4
  tail call void @vfree(ptr noundef %180) #4
  %vga_text.i205 = getelementptr inbounds %struct.regstate, ptr %176, i32 0, i32 2
  %181 = ptrtoint ptr %vga_text.i205 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %vga_text.i205, align 4
  tail call void @vfree(ptr noundef %182) #4
  %vga_cmap.i206 = getelementptr inbounds %struct.regstate, ptr %176, i32 0, i32 3
  %183 = ptrtoint ptr %vga_cmap.i206 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %vga_cmap.i206, align 4
  tail call void @vfree(ptr noundef %184) #4
  %attr.i207 = getelementptr inbounds %struct.regstate, ptr %176, i32 0, i32 4
  %185 = ptrtoint ptr %attr.i207 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %attr.i207, align 4
  tail call void @vfree(ptr noundef %186) #4
  tail call void @kfree(ptr noundef nonnull %176) #4
  %187 = ptrtoint ptr %vidstate to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr null, ptr %vidstate, align 4
  br label %cleanup107

if.end71:                                         ; preds = %if.end65
  %188 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %flags, align 4
  %and73 = and i32 %189, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %if.end71.if.end81_crit_edge, label %if.then75

if.end71.if.end81_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end81

if.then75:                                        ; preds = %if.end71
  %call76 = tail call noalias ptr @vmalloc(i32 noundef 32768) #8
  %190 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %call76, ptr %call7.i.i, align 8
  %tobool78.not = icmp eq ptr %call76, null
  br i1 %tobool78.not, label %if.then79, label %if.then75.if.end81_crit_edge

if.then75.if.end81_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end81

if.then79:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @iounmap(ptr noundef nonnull %call68) #4
  tail call fastcc void @vga_cleanup(ptr noundef %state)
  br label %cleanup107

if.end81:                                         ; preds = %if.then75.if.end81_crit_edge, %if.end71.if.end81_crit_edge
  %191 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %flags, align 4
  %and83 = and i32 %192, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.end81.if.end92_crit_edge, label %if.then85

if.end81.if.end92_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end92

if.then85:                                        ; preds = %if.end81
  %193 = ptrtoint ptr %memsize to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %memsize, align 4
  %call87 = tail call noalias ptr @vmalloc(i32 noundef %194) #8
  %vga_font1 = getelementptr inbounds %struct.regstate, ptr %call7.i.i, i32 0, i32 1
  %195 = ptrtoint ptr %vga_font1 to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %call87, ptr %vga_font1, align 4
  %tobool89.not = icmp eq ptr %call87, null
  br i1 %tobool89.not, label %if.then90, label %if.then85.if.end92_crit_edge

if.then85.if.end92_crit_edge:                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end92

if.then90:                                        ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @iounmap(ptr noundef nonnull %call68) #4
  tail call fastcc void @vga_cleanup(ptr noundef %state)
  br label %cleanup107

if.end92:                                         ; preds = %if.then85.if.end92_crit_edge, %if.end81.if.end92_crit_edge
  %196 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %flags, align 4
  %and94 = and i32 %197, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.end92.if.end102_crit_edge, label %if.then96

if.end92.if.end102_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end102

if.then96:                                        ; preds = %if.end92
  %call97 = tail call noalias ptr @vmalloc(i32 noundef 16384) #8
  %vga_text = getelementptr inbounds %struct.regstate, ptr %call7.i.i, i32 0, i32 2
  %198 = ptrtoint ptr %vga_text to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %call97, ptr %vga_text, align 8
  %tobool99.not = icmp eq ptr %call97, null
  br i1 %tobool99.not, label %if.then100, label %if.then96.if.end102_crit_edge

if.then96.if.end102_crit_edge:                    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end102

if.then100:                                       ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @iounmap(ptr noundef nonnull %call68) #4
  tail call fastcc void @vga_cleanup(ptr noundef %state)
  br label %cleanup107

if.end102:                                        ; preds = %if.then96.if.end102_crit_edge, %if.end92.if.end102_crit_edge
  %199 = ptrtoint ptr %vidstate to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %vidstate, align 4
  %201 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %state, align 4
  %tobool.not.i.i211 = icmp eq ptr %202, null
  br i1 %tobool.not.i.i211, label %if.else.i.i214, label %if.then.i.i213

if.then.i.i213:                                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i212 = getelementptr i8, ptr %202, i32 972
  %203 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i212) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  br label %vga_r.exit.i218

if.else.i.i214:                                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #6
  %204 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873396 to ptr)) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  br label %vga_r.exit.i218

vga_r.exit.i218:                                  ; preds = %if.else.i.i214, %if.then.i.i213
  %retval.0.i.i215 = phi i8 [ %203, %if.then.i.i213 ], [ %204, %if.else.i.i214 ]
  %205 = and i8 %retval.0.i.i215, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %205)
  %tobool.not.i216 = icmp eq i8 %205, 0
  %206 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %state, align 4
  %tobool.not.i198.i = icmp eq ptr %207, null
  %conv.i4.i.i217 = select i1 %tobool.not.i216, i32 954, i32 986
  br i1 %tobool.not.i198.i, label %if.else.i201.i, label %if.then.i200.i

if.then.i200.i:                                   ; preds = %vga_r.exit.i218
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i199.i = getelementptr i8, ptr %207, i32 %conv.i4.i.i217
  %208 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i199.i) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  br label %vga_r.exit203.i

if.else.i201.i:                                   ; preds = %vga_r.exit.i218
  call void @__sanitizer_cov_trace_pc() #6
  %add.i.i.i.i219 = or i32 %conv.i4.i.i217, -18874368
  %209 = inttoptr i32 %add.i.i.i.i219 to ptr
  %210 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %209) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  br label %vga_r.exit203.i

vga_r.exit203.i:                                  ; preds = %if.else.i201.i, %if.then.i200.i
  %211 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %state, align 4
  %tobool.not.i204.i = icmp eq ptr %212, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i204.i, label %if.else.i207.i, label %if.then.i206.i

if.then.i206.i:                                   ; preds = %vga_r.exit203.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i205.i = getelementptr i8, ptr %212, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i205.i, i8 0) #4, !srcloc !20
  br label %vga_w.exit.i221

if.else.i207.i:                                   ; preds = %vga_r.exit203.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 0) #4, !srcloc !20
  br label %vga_w.exit.i221

vga_w.exit.i221:                                  ; preds = %if.else.i207.i, %if.then.i206.i
  %213 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %state, align 4
  %tobool.not.i.i.i220 = icmp eq ptr %214, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i.i220, label %if.else.i5.i.i225, label %if.then.i4.i.i224

if.then.i4.i.i224:                                ; preds = %vga_w.exit.i221
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i.i222 = getelementptr i8, ptr %214, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i222, i8 16) #4, !srcloc !20
  %add.ptr.i.i3.i.i223 = getelementptr i8, ptr %214, i32 961
  %215 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i223) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  br label %vga_rattr.exit.i227

if.else.i5.i.i225:                                ; preds = %vga_w.exit.i221
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 16) #4, !srcloc !20
  %216 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873407 to ptr)) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  br label %vga_rattr.exit.i227

vga_rattr.exit.i227:                              ; preds = %if.else.i5.i.i225, %if.then.i4.i.i224
  %retval.0.i.i.i226 = phi i8 [ %215, %if.then.i4.i.i224 ], [ %216, %if.else.i5.i.i225 ]
  %217 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %state, align 4
  %tobool.not.i208.i = icmp eq ptr %218, null
  br i1 %tobool.not.i208.i, label %if.else.i213.i, label %if.then.i211.i

if.then.i211.i:                                   ; preds = %vga_rattr.exit.i227
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i210.i = getelementptr i8, ptr %218, i32 %conv.i4.i.i217
  %219 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i210.i) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  br label %vga_r.exit215.i

if.else.i213.i:                                   ; preds = %vga_rattr.exit.i227
  call void @__sanitizer_cov_trace_pc() #6
  %add.i.i.i212.i = or i32 %conv.i4.i.i217, -18874368
  %220 = inttoptr i32 %add.i.i.i212.i to ptr
  %221 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %220) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  br label %vga_r.exit215.i

vga_r.exit215.i:                                  ; preds = %if.else.i213.i, %if.then.i211.i
  %222 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %state, align 4
  %tobool.not.i216.i = icmp eq ptr %223, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i216.i, label %if.else.i219.i, label %if.then.i218.i

if.then.i218.i:                                   ; preds = %vga_r.exit215.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i217.i = getelementptr i8, ptr %223, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i217.i, i8 32) #4, !srcloc !20
  br label %vga_w.exit220.i

if.else.i219.i:                                   ; preds = %vga_r.exit215.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 32) #4, !srcloc !20
  br label %vga_w.exit220.i

vga_w.exit220.i:                                  ; preds = %if.else.i219.i, %if.then.i218.i
  %224 = and i8 %retval.0.i.i.i226, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %224)
  %tobool17.not.i = icmp eq i8 %224, 0
  br i1 %tobool17.not.i, label %if.end.i, label %vga_w.exit220.i.save_vga_text.exit_crit_edge

vga_w.exit220.i.save_vga_text.exit_crit_edge:     ; preds = %vga_w.exit220.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %save_vga_text.exit

if.end.i:                                         ; preds = %vga_w.exit220.i
  %225 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %state, align 4
  %tobool.not.i.i221.i = icmp eq ptr %226, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i221.i, label %if.else.i5.i225.i, label %if.then.i4.i224.i

if.then.i4.i224.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i222.i = getelementptr i8, ptr %226, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i222.i, i8 4) #4, !srcloc !20
  %add.ptr.i.i3.i223.i = getelementptr i8, ptr %226, i32 975
  %227 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i223.i) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  br label %vga_rgfx.exit.i228

if.else.i5.i225.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 4) #4, !srcloc !20
  %228 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr)) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  br label %vga_rgfx.exit.i228

vga_rgfx.exit.i228:                               ; preds = %if.else.i5.i225.i, %if.then.i4.i224.i
  %retval.0.i.i226.i = phi i8 [ %227, %if.then.i4.i224.i ], [ %228, %if.else.i5.i225.i ]
  %229 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %state, align 4
  %tobool.not.i.i227.i = icmp eq ptr %230, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i227.i, label %if.else.i5.i231.i, label %if.then.i4.i230.i

if.then.i4.i230.i:                                ; preds = %vga_rgfx.exit.i228
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i228.i = getelementptr i8, ptr %230, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i228.i, i8 5) #4, !srcloc !20
  %add.ptr.i.i3.i229.i = getelementptr i8, ptr %230, i32 975
  %231 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i229.i) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  br label %vga_rgfx.exit233.i

if.else.i5.i231.i:                                ; preds = %vga_rgfx.exit.i228
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 5) #4, !srcloc !20
  %232 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr)) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  br label %vga_rgfx.exit233.i

vga_rgfx.exit233.i:                               ; preds = %if.else.i5.i231.i, %if.then.i4.i230.i
  %retval.0.i.i232.i = phi i8 [ %231, %if.then.i4.i230.i ], [ %232, %if.else.i5.i231.i ]
  %233 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %state, align 4
  %tobool.not.i.i234.i = icmp eq ptr %234, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i234.i, label %if.else.i5.i238.i, label %if.then.i4.i237.i

if.then.i4.i237.i:                                ; preds = %vga_rgfx.exit233.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i235.i = getelementptr i8, ptr %234, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i235.i, i8 6) #4, !srcloc !20
  %add.ptr.i.i3.i236.i = getelementptr i8, ptr %234, i32 975
  %235 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i236.i) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  br label %vga_rgfx.exit240.i

if.else.i5.i238.i:                                ; preds = %vga_rgfx.exit233.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 6) #4, !srcloc !20
  %236 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr)) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  br label %vga_rgfx.exit240.i

vga_rgfx.exit240.i:                               ; preds = %if.else.i5.i238.i, %if.then.i4.i237.i
  %retval.0.i.i239.i = phi i8 [ %235, %if.then.i4.i237.i ], [ %236, %if.else.i5.i238.i ]
  %237 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %state, align 4
  %tobool.not.i.i241.i = icmp eq ptr %238, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i241.i, label %if.else.i5.i245.i, label %if.then.i4.i244.i

if.then.i4.i244.i:                                ; preds = %vga_rgfx.exit240.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i242.i = getelementptr i8, ptr %238, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i242.i, i8 2) #4, !srcloc !20
  %add.ptr.i.i3.i243.i = getelementptr i8, ptr %238, i32 965
  %239 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i243.i) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  br label %vga_rseq.exit.i229

if.else.i5.i245.i:                                ; preds = %vga_rgfx.exit240.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 2) #4, !srcloc !20
  %240 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  br label %vga_rseq.exit.i229

vga_rseq.exit.i229:                               ; preds = %if.else.i5.i245.i, %if.then.i4.i244.i
  %retval.0.i.i246.i = phi i8 [ %239, %if.then.i4.i244.i ], [ %240, %if.else.i5.i245.i ]
  %241 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %state, align 4
  %tobool.not.i.i247.i = icmp eq ptr %242, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i247.i, label %if.else.i5.i251.i, label %if.then.i4.i250.i

if.then.i4.i250.i:                                ; preds = %vga_rseq.exit.i229
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i248.i = getelementptr i8, ptr %242, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i248.i, i8 4) #4, !srcloc !20
  %add.ptr.i.i3.i249.i = getelementptr i8, ptr %242, i32 965
  %243 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i249.i) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  br label %vga_rseq.exit253.i

if.else.i5.i251.i:                                ; preds = %vga_rseq.exit.i229
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 4) #4, !srcloc !20
  %244 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  br label %vga_rseq.exit253.i

vga_rseq.exit253.i:                               ; preds = %if.else.i5.i251.i, %if.then.i4.i250.i
  %retval.0.i.i252.i = phi i8 [ %243, %if.then.i4.i250.i ], [ %244, %if.else.i5.i251.i ]
  %245 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %state, align 4
  %tobool.not.i.i254.i = icmp eq ptr %246, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i254.i, label %if.else.i5.i258.i, label %if.then.i4.i257.i

if.then.i4.i257.i:                                ; preds = %vga_rseq.exit253.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i255.i = getelementptr i8, ptr %246, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i255.i, i8 1) #4, !srcloc !20
  %add.ptr.i.i3.i256.i = getelementptr i8, ptr %246, i32 965
  %247 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i256.i) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  br label %vga_rseq.exit260.i

if.else.i5.i258.i:                                ; preds = %vga_rseq.exit253.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #4, !srcloc !20
  %248 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  br label %vga_rseq.exit260.i

vga_rseq.exit260.i:                               ; preds = %if.else.i5.i258.i, %if.then.i4.i257.i
  %retval.0.i.i259.i = phi i8 [ %247, %if.then.i4.i257.i ], [ %248, %if.else.i5.i258.i ]
  %249 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %state, align 4
  %tobool.not.i.i261.i = icmp eq ptr %250, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i261.i, label %if.else.i5.i265.i, label %if.then.i4.i264.i

if.then.i4.i264.i:                                ; preds = %vga_rseq.exit260.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i262.i = getelementptr i8, ptr %250, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i262.i, i8 0) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i263.i = getelementptr i8, ptr %250, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i263.i, i8 1) #4, !srcloc !20
  br label %vga_wseq.exit.i

if.else.i5.i265.i:                                ; preds = %vga_rseq.exit260.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 0) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 1) #4, !srcloc !20
  br label %vga_wseq.exit.i

vga_wseq.exit.i:                                  ; preds = %if.else.i5.i265.i, %if.then.i4.i264.i
  %251 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %state, align 4
  %or.i = or i8 %retval.0.i.i259.i, 32
  %tobool.not.i.i266.i = icmp eq ptr %252, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i266.i, label %if.else.i5.i270.i, label %if.then.i4.i269.i

if.then.i4.i269.i:                                ; preds = %vga_wseq.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i267.i = getelementptr i8, ptr %252, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i267.i, i8 1) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i268.i = getelementptr i8, ptr %252, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i268.i, i8 %or.i) #4, !srcloc !20
  br label %vga_wseq.exit271.i

if.else.i5.i270.i:                                ; preds = %vga_wseq.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i) #4, !srcloc !20
  br label %vga_wseq.exit271.i

vga_wseq.exit271.i:                               ; preds = %if.else.i5.i270.i, %if.then.i4.i269.i
  %253 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %state, align 4
  %tobool.not.i.i272.i = icmp eq ptr %254, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i272.i, label %if.else.i5.i276.i, label %if.then.i4.i275.i

if.then.i4.i275.i:                                ; preds = %vga_wseq.exit271.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i273.i = getelementptr i8, ptr %254, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i273.i, i8 0) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i274.i = getelementptr i8, ptr %254, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i274.i, i8 3) #4, !srcloc !20
  br label %vga_wseq.exit277.i

if.else.i5.i276.i:                                ; preds = %vga_wseq.exit271.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 0) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 3) #4, !srcloc !20
  br label %vga_wseq.exit277.i

vga_wseq.exit277.i:                               ; preds = %if.else.i5.i276.i, %if.then.i4.i275.i
  %255 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %flags, align 4
  %and35.i = and i32 %256, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %vga_wseq.exit277.i.if.end46.i_crit_edge, label %if.then37.i

vga_wseq.exit277.i.if.end46.i_crit_edge:          ; preds = %vga_wseq.exit277.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end46.i

if.then37.i:                                      ; preds = %vga_wseq.exit277.i
  %257 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %state, align 4
  %tobool.not.i.i278.i = icmp eq ptr %258, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i278.i, label %if.else.i5.i282.i, label %if.then.i4.i281.i

if.then.i4.i281.i:                                ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i279.i = getelementptr i8, ptr %258, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i279.i, i8 2) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i280.i = getelementptr i8, ptr %258, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i280.i, i8 4) #4, !srcloc !20
  br label %vga_wseq.exit283.i

if.else.i5.i282.i:                                ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 2) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 4) #4, !srcloc !20
  br label %vga_wseq.exit283.i

vga_wseq.exit283.i:                               ; preds = %if.else.i5.i282.i, %if.then.i4.i281.i
  %259 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %state, align 4
  %tobool.not.i.i284.i = icmp eq ptr %260, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i284.i, label %if.else.i5.i288.i, label %if.then.i4.i287.i

if.then.i4.i287.i:                                ; preds = %vga_wseq.exit283.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i285.i = getelementptr i8, ptr %260, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i285.i, i8 4) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i286.i = getelementptr i8, ptr %260, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i286.i, i8 6) #4, !srcloc !20
  br label %vga_wseq.exit289.i

if.else.i5.i288.i:                                ; preds = %vga_wseq.exit283.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 4) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 6) #4, !srcloc !20
  br label %vga_wseq.exit289.i

vga_wseq.exit289.i:                               ; preds = %if.else.i5.i288.i, %if.then.i4.i287.i
  %261 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %state, align 4
  %tobool.not.i.i290.i = icmp eq ptr %262, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i290.i, label %if.else.i5.i294.i, label %if.then.i4.i293.i

if.then.i4.i293.i:                                ; preds = %vga_wseq.exit289.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i291.i = getelementptr i8, ptr %262, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i291.i, i8 4) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i292.i = getelementptr i8, ptr %262, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i292.i, i8 2) #4, !srcloc !20
  br label %vga_wgfx.exit.i

if.else.i5.i294.i:                                ; preds = %vga_wseq.exit289.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 4) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 2) #4, !srcloc !20
  br label %vga_wgfx.exit.i

vga_wgfx.exit.i:                                  ; preds = %if.else.i5.i294.i, %if.then.i4.i293.i
  %263 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %state, align 4
  %tobool.not.i.i295.i = icmp eq ptr %264, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i295.i, label %if.else.i5.i299.i, label %if.then.i4.i298.i

if.then.i4.i298.i:                                ; preds = %vga_wgfx.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i296.i = getelementptr i8, ptr %264, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i296.i, i8 5) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i297.i = getelementptr i8, ptr %264, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i297.i, i8 0) #4, !srcloc !20
  br label %vga_wgfx.exit300.i

if.else.i5.i299.i:                                ; preds = %vga_wgfx.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 5) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 0) #4, !srcloc !20
  br label %vga_wgfx.exit300.i

vga_wgfx.exit300.i:                               ; preds = %if.else.i5.i299.i, %if.then.i4.i298.i
  %265 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %state, align 4
  %tobool.not.i.i301.i = icmp eq ptr %266, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i301.i, label %if.else.i5.i305.i, label %if.then.i4.i304.i

if.then.i4.i304.i:                                ; preds = %vga_wgfx.exit300.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i302.i = getelementptr i8, ptr %266, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i302.i, i8 6) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i303.i = getelementptr i8, ptr %266, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i303.i, i8 5) #4, !srcloc !20
  br label %vga_r.exit314.i.preheader

if.else.i5.i305.i:                                ; preds = %vga_wgfx.exit300.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 6) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 5) #4, !srcloc !20
  br label %vga_r.exit314.i.preheader

vga_r.exit314.i.preheader:                        ; preds = %if.else.i5.i305.i, %if.then.i4.i304.i
  br label %vga_r.exit314.i

vga_r.exit314.i:                                  ; preds = %vga_r.exit314.i.vga_r.exit314.i_crit_edge, %vga_r.exit314.i.preheader
  %i.0483.i = phi i32 [ %inc.i232, %vga_r.exit314.i.vga_r.exit314.i_crit_edge ], [ 0, %vga_r.exit314.i.preheader ]
  %add.ptr.i.i309.i = getelementptr i8, ptr %call68, i32 %i.0483.i
  %267 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i309.i) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  %268 = ptrtoint ptr %200 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %200, align 4
  %arrayidx.i231 = getelementptr i8, ptr %269, i32 %i.0483.i
  %270 = ptrtoint ptr %arrayidx.i231 to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 %267, ptr %arrayidx.i231, align 1
  %inc.i232 = add nuw nsw i32 %i.0483.i, 1
  %exitcond.not.i233 = icmp eq i32 %inc.i232, 32768
  br i1 %exitcond.not.i233, label %vga_r.exit314.i.if.end46.i_crit_edge, label %vga_r.exit314.i.vga_r.exit314.i_crit_edge

vga_r.exit314.i.vga_r.exit314.i_crit_edge:        ; preds = %vga_r.exit314.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vga_r.exit314.i

vga_r.exit314.i.if.end46.i_crit_edge:             ; preds = %vga_r.exit314.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end46.i

if.end46.i:                                       ; preds = %vga_r.exit314.i.if.end46.i_crit_edge, %vga_wseq.exit277.i.if.end46.i_crit_edge
  %271 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %flags, align 4
  %and48.i = and i32 %272, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i)
  %tobool49.not.i = icmp eq i32 %and48.i, 0
  br i1 %tobool49.not.i, label %if.end46.i.if.end66.i_crit_edge, label %if.then50.i

if.end46.i.if.end66.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end66.i

if.then50.i:                                      ; preds = %if.end46.i
  %273 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %state, align 4
  %tobool.not.i.i315.i = icmp eq ptr %274, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i315.i, label %if.else.i5.i319.i, label %if.then.i4.i318.i

if.then.i4.i318.i:                                ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i316.i = getelementptr i8, ptr %274, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i316.i, i8 2) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i317.i = getelementptr i8, ptr %274, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i317.i, i8 8) #4, !srcloc !20
  br label %vga_wseq.exit320.i

if.else.i5.i319.i:                                ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 2) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 8) #4, !srcloc !20
  br label %vga_wseq.exit320.i

vga_wseq.exit320.i:                               ; preds = %if.else.i5.i319.i, %if.then.i4.i318.i
  %275 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %state, align 4
  %tobool.not.i.i321.i = icmp eq ptr %276, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i321.i, label %if.else.i5.i325.i, label %if.then.i4.i324.i

if.then.i4.i324.i:                                ; preds = %vga_wseq.exit320.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i322.i = getelementptr i8, ptr %276, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i322.i, i8 4) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i323.i = getelementptr i8, ptr %276, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i323.i, i8 6) #4, !srcloc !20
  br label %vga_wseq.exit326.i

if.else.i5.i325.i:                                ; preds = %vga_wseq.exit320.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 4) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 6) #4, !srcloc !20
  br label %vga_wseq.exit326.i

vga_wseq.exit326.i:                               ; preds = %if.else.i5.i325.i, %if.then.i4.i324.i
  %277 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %state, align 4
  %tobool.not.i.i327.i = icmp eq ptr %278, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i327.i, label %if.else.i5.i331.i, label %if.then.i4.i330.i

if.then.i4.i330.i:                                ; preds = %vga_wseq.exit326.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i328.i = getelementptr i8, ptr %278, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i328.i, i8 4) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i329.i = getelementptr i8, ptr %278, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i329.i, i8 3) #4, !srcloc !20
  br label %vga_wgfx.exit332.i

if.else.i5.i331.i:                                ; preds = %vga_wseq.exit326.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 4) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 3) #4, !srcloc !20
  br label %vga_wgfx.exit332.i

vga_wgfx.exit332.i:                               ; preds = %if.else.i5.i331.i, %if.then.i4.i330.i
  %279 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %state, align 4
  %tobool.not.i.i333.i = icmp eq ptr %280, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i333.i, label %if.else.i5.i337.i, label %if.then.i4.i336.i

if.then.i4.i336.i:                                ; preds = %vga_wgfx.exit332.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i334.i = getelementptr i8, ptr %280, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i334.i, i8 5) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i335.i = getelementptr i8, ptr %280, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i335.i, i8 0) #4, !srcloc !20
  br label %vga_wgfx.exit338.i

if.else.i5.i337.i:                                ; preds = %vga_wgfx.exit332.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 5) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 0) #4, !srcloc !20
  br label %vga_wgfx.exit338.i

vga_wgfx.exit338.i:                               ; preds = %if.else.i5.i337.i, %if.then.i4.i336.i
  %281 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %state, align 4
  %tobool.not.i.i339.i = icmp eq ptr %282, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i339.i, label %if.else.i5.i343.i, label %if.then.i4.i342.i

if.then.i4.i342.i:                                ; preds = %vga_wgfx.exit338.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i340.i = getelementptr i8, ptr %282, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i340.i, i8 6) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i341.i = getelementptr i8, ptr %282, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i341.i, i8 5) #4, !srcloc !20
  br label %vga_wgfx.exit344.i

if.else.i5.i343.i:                                ; preds = %vga_wgfx.exit338.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 6) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 5) #4, !srcloc !20
  br label %vga_wgfx.exit344.i

vga_wgfx.exit344.i:                               ; preds = %if.else.i5.i343.i, %if.then.i4.i342.i
  %283 = ptrtoint ptr %memsize to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %memsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %284)
  %cmp57484.not.i = icmp eq i32 %284, 0
  br i1 %cmp57484.not.i, label %vga_wgfx.exit344.i.if.end66.i_crit_edge, label %for.body59.lr.ph.i

vga_wgfx.exit344.i.if.end66.i_crit_edge:          ; preds = %vga_wgfx.exit344.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end66.i

for.body59.lr.ph.i:                               ; preds = %vga_wgfx.exit344.i
  %vga_font1.i234 = getelementptr inbounds %struct.regstate, ptr %200, i32 0, i32 1
  br label %vga_r.exit352.i

vga_r.exit352.i:                                  ; preds = %vga_r.exit352.i.vga_r.exit352.i_crit_edge, %for.body59.lr.ph.i
  %i.1485.i = phi i32 [ 0, %for.body59.lr.ph.i ], [ %inc64.i, %vga_r.exit352.i.vga_r.exit352.i_crit_edge ]
  %conv.i4.i346.i = and i32 %i.1485.i, 65535
  %add.ptr.i.i347.i = getelementptr i8, ptr %call68, i32 %conv.i4.i346.i
  %285 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i347.i) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  %286 = ptrtoint ptr %vga_font1.i234 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %vga_font1.i234, align 4
  %arrayidx62.i = getelementptr i8, ptr %287, i32 %i.1485.i
  %288 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 %285, ptr %arrayidx62.i, align 1
  %inc64.i = add nuw i32 %i.1485.i, 1
  %289 = ptrtoint ptr %memsize to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %memsize, align 4
  %cmp57.i = icmp ult i32 %inc64.i, %290
  br i1 %cmp57.i, label %vga_r.exit352.i.vga_r.exit352.i_crit_edge, label %vga_r.exit352.i.if.end66.i_crit_edge

vga_r.exit352.i.if.end66.i_crit_edge:             ; preds = %vga_r.exit352.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end66.i

vga_r.exit352.i.vga_r.exit352.i_crit_edge:        ; preds = %vga_r.exit352.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vga_r.exit352.i

if.end66.i:                                       ; preds = %vga_r.exit352.i.if.end66.i_crit_edge, %vga_wgfx.exit344.i.if.end66.i_crit_edge, %if.end46.i.if.end66.i_crit_edge
  %291 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %flags, align 4
  %and68.i = and i32 %292, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68.i)
  %tobool69.not.i = icmp eq i32 %and68.i, 0
  br i1 %tobool69.not.i, label %if.end66.i.if.end103.i_crit_edge, label %if.then70.i

if.end66.i.if.end103.i_crit_edge:                 ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end103.i

if.then70.i:                                      ; preds = %if.end66.i
  %293 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %state, align 4
  %tobool.not.i.i353.i = icmp eq ptr %294, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i353.i, label %if.else.i5.i357.i, label %if.then.i4.i356.i

if.then.i4.i356.i:                                ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i354.i = getelementptr i8, ptr %294, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i354.i, i8 2) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i355.i = getelementptr i8, ptr %294, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i355.i, i8 1) #4, !srcloc !20
  br label %vga_wseq.exit358.i

if.else.i5.i357.i:                                ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 2) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 1) #4, !srcloc !20
  br label %vga_wseq.exit358.i

vga_wseq.exit358.i:                               ; preds = %if.else.i5.i357.i, %if.then.i4.i356.i
  %295 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %state, align 4
  %tobool.not.i.i359.i = icmp eq ptr %296, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i359.i, label %if.else.i5.i363.i, label %if.then.i4.i362.i

if.then.i4.i362.i:                                ; preds = %vga_wseq.exit358.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i360.i = getelementptr i8, ptr %296, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i360.i, i8 4) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i361.i = getelementptr i8, ptr %296, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i361.i, i8 6) #4, !srcloc !20
  br label %vga_wseq.exit364.i

if.else.i5.i363.i:                                ; preds = %vga_wseq.exit358.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 4) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 6) #4, !srcloc !20
  br label %vga_wseq.exit364.i

vga_wseq.exit364.i:                               ; preds = %if.else.i5.i363.i, %if.then.i4.i362.i
  %297 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %state, align 4
  %tobool.not.i.i365.i = icmp eq ptr %298, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i365.i, label %if.else.i5.i369.i, label %if.then.i4.i368.i

if.then.i4.i368.i:                                ; preds = %vga_wseq.exit364.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i366.i = getelementptr i8, ptr %298, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i366.i, i8 4) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i367.i = getelementptr i8, ptr %298, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i367.i, i8 0) #4, !srcloc !20
  br label %vga_wgfx.exit370.i

if.else.i5.i369.i:                                ; preds = %vga_wseq.exit364.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 4) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 0) #4, !srcloc !20
  br label %vga_wgfx.exit370.i

vga_wgfx.exit370.i:                               ; preds = %if.else.i5.i369.i, %if.then.i4.i368.i
  %299 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %state, align 4
  %tobool.not.i.i371.i = icmp eq ptr %300, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i371.i, label %if.else.i5.i375.i, label %if.then.i4.i374.i

if.then.i4.i374.i:                                ; preds = %vga_wgfx.exit370.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i372.i = getelementptr i8, ptr %300, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i372.i, i8 5) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i373.i = getelementptr i8, ptr %300, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i373.i, i8 0) #4, !srcloc !20
  br label %vga_wgfx.exit376.i

if.else.i5.i375.i:                                ; preds = %vga_wgfx.exit370.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 5) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 0) #4, !srcloc !20
  br label %vga_wgfx.exit376.i

vga_wgfx.exit376.i:                               ; preds = %if.else.i5.i375.i, %if.then.i4.i374.i
  %301 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %state, align 4
  %tobool.not.i.i377.i = icmp eq ptr %302, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i377.i, label %if.else.i5.i381.i, label %if.then.i4.i380.i

if.then.i4.i380.i:                                ; preds = %vga_wgfx.exit376.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i378.i = getelementptr i8, ptr %302, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i378.i, i8 6) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i379.i = getelementptr i8, ptr %302, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i379.i, i8 5) #4, !srcloc !20
  br label %vga_wgfx.exit382.i

if.else.i5.i381.i:                                ; preds = %vga_wgfx.exit376.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 6) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 5) #4, !srcloc !20
  br label %vga_wgfx.exit382.i

vga_wgfx.exit382.i:                               ; preds = %if.else.i5.i381.i, %if.then.i4.i380.i
  %vga_text.i235 = getelementptr inbounds %struct.regstate, ptr %200, i32 0, i32 2
  br label %vga_r.exit390.i

vga_r.exit390.i:                                  ; preds = %vga_r.exit390.i.vga_r.exit390.i_crit_edge, %vga_wgfx.exit382.i
  %i.2486.i = phi i32 [ 0, %vga_wgfx.exit382.i ], [ %inc84.i, %vga_r.exit390.i.vga_r.exit390.i_crit_edge ]
  %add.ptr.i.i385.i = getelementptr i8, ptr %call68, i32 %i.2486.i
  %303 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i385.i) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  %304 = ptrtoint ptr %vga_text.i235 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %vga_text.i235, align 4
  %arrayidx82.i = getelementptr i8, ptr %305, i32 %i.2486.i
  %306 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_store1_noabort(i32 %306)
  store i8 %303, ptr %arrayidx82.i, align 1
  %inc84.i = add nuw nsw i32 %i.2486.i, 1
  %exitcond488.not.i = icmp eq i32 %inc84.i, 8192
  br i1 %exitcond488.not.i, label %for.end85.i, label %vga_r.exit390.i.vga_r.exit390.i_crit_edge

vga_r.exit390.i.vga_r.exit390.i_crit_edge:        ; preds = %vga_r.exit390.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vga_r.exit390.i

for.end85.i:                                      ; preds = %vga_r.exit390.i
  %307 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %state, align 4
  %tobool.not.i.i391.i = icmp eq ptr %308, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i391.i, label %if.else.i5.i395.i, label %if.then.i4.i394.i

if.then.i4.i394.i:                                ; preds = %for.end85.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i392.i = getelementptr i8, ptr %308, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i392.i, i8 2) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i393.i = getelementptr i8, ptr %308, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i393.i, i8 2) #4, !srcloc !20
  br label %vga_wseq.exit396.i

if.else.i5.i395.i:                                ; preds = %for.end85.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 2) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 2) #4, !srcloc !20
  br label %vga_wseq.exit396.i

vga_wseq.exit396.i:                               ; preds = %if.else.i5.i395.i, %if.then.i4.i394.i
  %309 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %state, align 4
  %tobool.not.i.i397.i = icmp eq ptr %310, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i397.i, label %if.else.i5.i401.i, label %if.then.i4.i400.i

if.then.i4.i400.i:                                ; preds = %vga_wseq.exit396.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i398.i = getelementptr i8, ptr %310, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i398.i, i8 4) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i399.i = getelementptr i8, ptr %310, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i399.i, i8 6) #4, !srcloc !20
  br label %vga_wseq.exit402.i

if.else.i5.i401.i:                                ; preds = %vga_wseq.exit396.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 4) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 6) #4, !srcloc !20
  br label %vga_wseq.exit402.i

vga_wseq.exit402.i:                               ; preds = %if.else.i5.i401.i, %if.then.i4.i400.i
  %311 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %state, align 4
  %tobool.not.i.i403.i = icmp eq ptr %312, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i403.i, label %if.else.i5.i407.i, label %if.then.i4.i406.i

if.then.i4.i406.i:                                ; preds = %vga_wseq.exit402.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i404.i = getelementptr i8, ptr %312, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i404.i, i8 4) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i405.i = getelementptr i8, ptr %312, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i405.i, i8 1) #4, !srcloc !20
  br label %vga_wgfx.exit408.i

if.else.i5.i407.i:                                ; preds = %vga_wseq.exit402.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 4) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 1) #4, !srcloc !20
  br label %vga_wgfx.exit408.i

vga_wgfx.exit408.i:                               ; preds = %if.else.i5.i407.i, %if.then.i4.i406.i
  %313 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %state, align 4
  %tobool.not.i.i409.i = icmp eq ptr %314, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i409.i, label %if.else.i5.i413.i, label %if.then.i4.i412.i

if.then.i4.i412.i:                                ; preds = %vga_wgfx.exit408.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i410.i = getelementptr i8, ptr %314, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i410.i, i8 5) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i411.i = getelementptr i8, ptr %314, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i411.i, i8 0) #4, !srcloc !20
  br label %vga_wgfx.exit414.i

if.else.i5.i413.i:                                ; preds = %vga_wgfx.exit408.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 5) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 0) #4, !srcloc !20
  br label %vga_wgfx.exit414.i

vga_wgfx.exit414.i:                               ; preds = %if.else.i5.i413.i, %if.then.i4.i412.i
  %315 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %state, align 4
  %tobool.not.i.i415.i = icmp eq ptr %316, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i415.i, label %if.else.i5.i419.i, label %if.then.i4.i418.i

if.then.i4.i418.i:                                ; preds = %vga_wgfx.exit414.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i416.i = getelementptr i8, ptr %316, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i416.i, i8 6) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i417.i = getelementptr i8, ptr %316, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i417.i, i8 5) #4, !srcloc !20
  br label %vga_wgfx.exit420.i

if.else.i5.i419.i:                                ; preds = %vga_wgfx.exit414.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 6) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 5) #4, !srcloc !20
  br label %vga_wgfx.exit420.i

vga_wgfx.exit420.i:                               ; preds = %if.else.i5.i419.i, %if.then.i4.i418.i
  %add.ptr.i = getelementptr i8, ptr %call68, i32 16384
  %tobool.not.i421.i = icmp eq ptr %add.ptr.i, null
  br label %for.body94.i

for.body94.i:                                     ; preds = %vga_r.exit428.i.for.body94.i_crit_edge, %vga_wgfx.exit420.i
  %i.3487.i = phi i32 [ 0, %vga_wgfx.exit420.i ], [ %inc101.i, %vga_r.exit428.i.for.body94.i_crit_edge ]
  br i1 %tobool.not.i421.i, label %if.else.i426.i, label %if.then.i424.i

if.then.i424.i:                                   ; preds = %for.body94.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i423.i = getelementptr i8, ptr %add.ptr.i, i32 %i.3487.i
  %317 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i423.i) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  br label %vga_r.exit428.i

if.else.i426.i:                                   ; preds = %for.body94.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.i.i.i425.i = or i32 %i.3487.i, -18874368
  %318 = inttoptr i32 %add.i.i.i425.i to ptr
  %319 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %318) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  br label %vga_r.exit428.i

vga_r.exit428.i:                                  ; preds = %if.else.i426.i, %if.then.i424.i
  %retval.0.i427.i = phi i8 [ %317, %if.then.i424.i ], [ %319, %if.else.i426.i ]
  %320 = ptrtoint ptr %vga_text.i235 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %vga_text.i235, align 4
  %add98.i = add nuw nsw i32 %i.3487.i, 8192
  %arrayidx99.i = getelementptr i8, ptr %321, i32 %add98.i
  %322 = ptrtoint ptr %arrayidx99.i to i32
  call void @__asan_store1_noabort(i32 %322)
  store i8 %retval.0.i427.i, ptr %arrayidx99.i, align 1
  %inc101.i = add nuw nsw i32 %i.3487.i, 1
  %exitcond489.not.i = icmp eq i32 %inc101.i, 8192
  br i1 %exitcond489.not.i, label %vga_r.exit428.i.if.end103.i_crit_edge, label %vga_r.exit428.i.for.body94.i_crit_edge

vga_r.exit428.i.for.body94.i_crit_edge:           ; preds = %vga_r.exit428.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body94.i

vga_r.exit428.i.if.end103.i_crit_edge:            ; preds = %vga_r.exit428.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end103.i

if.end103.i:                                      ; preds = %vga_r.exit428.i.if.end103.i_crit_edge, %if.end66.i.if.end103.i_crit_edge
  %323 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %state, align 4
  %tobool.not.i.i429.i = icmp eq ptr %324, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i429.i, label %if.else.i5.i433.i, label %if.then.i4.i432.i

if.then.i4.i432.i:                                ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i430.i = getelementptr i8, ptr %324, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i430.i, i8 2) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i431.i = getelementptr i8, ptr %324, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i431.i, i8 %retval.0.i.i246.i) #4, !srcloc !20
  br label %vga_wseq.exit434.i

if.else.i5.i433.i:                                ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 2) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %retval.0.i.i246.i) #4, !srcloc !20
  br label %vga_wseq.exit434.i

vga_wseq.exit434.i:                               ; preds = %if.else.i5.i433.i, %if.then.i4.i432.i
  %325 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %state, align 4
  %tobool.not.i.i435.i = icmp eq ptr %326, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i435.i, label %if.else.i5.i439.i, label %if.then.i4.i438.i

if.then.i4.i438.i:                                ; preds = %vga_wseq.exit434.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i436.i = getelementptr i8, ptr %326, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i436.i, i8 4) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i437.i = getelementptr i8, ptr %326, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i437.i, i8 %retval.0.i.i252.i) #4, !srcloc !20
  br label %vga_wseq.exit440.i

if.else.i5.i439.i:                                ; preds = %vga_wseq.exit434.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 4) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %retval.0.i.i252.i) #4, !srcloc !20
  br label %vga_wseq.exit440.i

vga_wseq.exit440.i:                               ; preds = %if.else.i5.i439.i, %if.then.i4.i438.i
  %327 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %state, align 4
  %tobool.not.i.i441.i = icmp eq ptr %328, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i441.i, label %if.else.i5.i445.i, label %if.then.i4.i444.i

if.then.i4.i444.i:                                ; preds = %vga_wseq.exit440.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i442.i = getelementptr i8, ptr %328, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i442.i, i8 4) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i443.i = getelementptr i8, ptr %328, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i443.i, i8 %retval.0.i.i226.i) #4, !srcloc !20
  br label %vga_wgfx.exit446.i

if.else.i5.i445.i:                                ; preds = %vga_wseq.exit440.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 4) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %retval.0.i.i226.i) #4, !srcloc !20
  br label %vga_wgfx.exit446.i

vga_wgfx.exit446.i:                               ; preds = %if.else.i5.i445.i, %if.then.i4.i444.i
  %329 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %state, align 4
  %tobool.not.i.i447.i = icmp eq ptr %330, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i447.i, label %if.else.i5.i451.i, label %if.then.i4.i450.i

if.then.i4.i450.i:                                ; preds = %vga_wgfx.exit446.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i448.i = getelementptr i8, ptr %330, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i448.i, i8 5) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i449.i = getelementptr i8, ptr %330, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i449.i, i8 %retval.0.i.i232.i) #4, !srcloc !20
  br label %vga_wgfx.exit452.i

if.else.i5.i451.i:                                ; preds = %vga_wgfx.exit446.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 5) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %retval.0.i.i232.i) #4, !srcloc !20
  br label %vga_wgfx.exit452.i

vga_wgfx.exit452.i:                               ; preds = %if.else.i5.i451.i, %if.then.i4.i450.i
  %331 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %state, align 4
  %tobool.not.i.i453.i = icmp eq ptr %332, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i453.i, label %if.else.i5.i457.i, label %if.then.i4.i456.i

if.then.i4.i456.i:                                ; preds = %vga_wgfx.exit452.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i454.i = getelementptr i8, ptr %332, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i454.i, i8 6) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i455.i = getelementptr i8, ptr %332, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i455.i, i8 %retval.0.i.i239.i) #4, !srcloc !20
  br label %vga_wgfx.exit458.i

if.else.i5.i457.i:                                ; preds = %vga_wgfx.exit452.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 6) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %retval.0.i.i239.i) #4, !srcloc !20
  br label %vga_wgfx.exit458.i

vga_wgfx.exit458.i:                               ; preds = %if.else.i5.i457.i, %if.then.i4.i456.i
  %333 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %state, align 4
  %tobool.not.i.i459.i = icmp eq ptr %334, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i459.i, label %if.else.i5.i463.i, label %if.then.i4.i462.i

if.then.i4.i462.i:                                ; preds = %vga_wgfx.exit458.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i460.i = getelementptr i8, ptr %334, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i460.i, i8 0) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i461.i = getelementptr i8, ptr %334, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i461.i, i8 1) #4, !srcloc !20
  br label %vga_wseq.exit464.i

if.else.i5.i463.i:                                ; preds = %vga_wgfx.exit458.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 0) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 1) #4, !srcloc !20
  br label %vga_wseq.exit464.i

vga_wseq.exit464.i:                               ; preds = %if.else.i5.i463.i, %if.then.i4.i462.i
  %335 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %state, align 4
  %337 = and i8 %retval.0.i.i259.i, -33
  %tobool.not.i.i465.i = icmp eq ptr %336, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i465.i, label %if.else.i5.i469.i, label %if.then.i4.i468.i

if.then.i4.i468.i:                                ; preds = %vga_wseq.exit464.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i466.i = getelementptr i8, ptr %336, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i466.i, i8 1) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i467.i = getelementptr i8, ptr %336, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i467.i, i8 %337) #4, !srcloc !20
  br label %vga_wseq.exit470.i

if.else.i5.i469.i:                                ; preds = %vga_wseq.exit464.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %337) #4, !srcloc !20
  br label %vga_wseq.exit470.i

vga_wseq.exit470.i:                               ; preds = %if.else.i5.i469.i, %if.then.i4.i468.i
  %338 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %state, align 4
  %tobool.not.i.i471.i = icmp eq ptr %339, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i471.i, label %if.else.i5.i475.i, label %if.then.i4.i474.i

if.then.i4.i474.i:                                ; preds = %vga_wseq.exit470.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i472.i = getelementptr i8, ptr %339, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i472.i, i8 0) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i473.i = getelementptr i8, ptr %339, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i473.i, i8 3) #4, !srcloc !20
  br label %vga_wseq.exit476.i

if.else.i5.i475.i:                                ; preds = %vga_wseq.exit470.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 0) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 3) #4, !srcloc !20
  br label %vga_wseq.exit476.i

vga_wseq.exit476.i:                               ; preds = %if.else.i5.i475.i, %if.then.i4.i474.i
  %340 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %state, align 4
  %tobool.not.i.i477.i = icmp eq ptr %341, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i477.i, label %if.else.i5.i481.i, label %if.then.i4.i480.i

if.then.i4.i480.i:                                ; preds = %vga_wseq.exit476.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i478.i = getelementptr i8, ptr %341, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i478.i, i8 1) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i479.i = getelementptr i8, ptr %341, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i479.i, i8 %retval.0.i.i259.i) #4, !srcloc !20
  br label %save_vga_text.exit

if.else.i5.i481.i:                                ; preds = %vga_wseq.exit476.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %retval.0.i.i259.i) #4, !srcloc !20
  br label %save_vga_text.exit

save_vga_text.exit:                               ; preds = %if.else.i5.i481.i, %if.then.i4.i480.i, %vga_w.exit220.i.save_vga_text.exit_crit_edge
  tail call void @iounmap(ptr noundef nonnull %call68) #4
  br label %cleanup107

cleanup107:                                       ; preds = %save_vga_text.exit, %if.then100, %if.then90, %if.then79, %if.then.i208, %if.then70.cleanup107_crit_edge, %if.then.i200, %if.then55.cleanup107_crit_edge, %if.end47.cleanup107_crit_edge, %if.then.i180, %if.then37.cleanup107_crit_edge, %if.then.i, %if.then5.cleanup107_crit_edge, %entry.cleanup107_crit_edge
  %retval.3 = phi i32 [ 1, %entry.cleanup107_crit_edge ], [ 1, %if.then100 ], [ 1, %if.then90 ], [ 1, %if.then79 ], [ 0, %save_vga_text.exit ], [ 0, %if.end47.cleanup107_crit_edge ], [ 1, %if.then5.cleanup107_crit_edge ], [ 1, %if.then.i ], [ 1, %if.then37.cleanup107_crit_edge ], [ 1, %if.then.i180 ], [ 1, %if.then55.cleanup107_crit_edge ], [ 1, %if.then.i200 ], [ 1, %if.then70.cleanup107_crit_edge ], [ 1, %if.then.i208 ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vga_cleanup(ptr nocapture noundef %state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %vidstate = getelementptr inbounds %struct.vgastate, ptr %state, i32 0, i32 9
  %0 = ptrtoint ptr %vidstate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vidstate, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @vfree(ptr noundef %3) #4
  %vga_font1 = getelementptr inbounds %struct.regstate, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %vga_font1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vga_font1, align 4
  tail call void @vfree(ptr noundef %5) #4
  %vga_text = getelementptr inbounds %struct.regstate, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %vga_text to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vga_text, align 4
  tail call void @vfree(ptr noundef %7) #4
  %vga_cmap = getelementptr inbounds %struct.regstate, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %vga_cmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vga_cmap, align 4
  tail call void @vfree(ptr noundef %9) #4
  %attr = getelementptr inbounds %struct.regstate, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %attr, align 4
  tail call void @vfree(ptr noundef %11) #4
  tail call void @kfree(ptr noundef nonnull %1) #4
  %12 = ptrtoint ptr %vidstate to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %vidstate, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @restore_vga(ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %vidstate = getelementptr inbounds %struct.vgastate, ptr %state, i32 0, i32 9
  %0 = ptrtoint ptr %vidstate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vidstate, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.vgastate, ptr %state, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end2_crit_edge, label %if.then1

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end2

if.then1:                                         ; preds = %if.end
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state, align 4
  %misc.i = getelementptr inbounds %struct.regstate, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %misc.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %misc.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 962
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 %7) #4, !srcloc !20
  br label %vga_w.exit.i

if.else.i.i:                                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873406 to ptr), i8 %7) #4, !srcloc !20
  br label %vga_w.exit.i

vga_w.exit.i:                                     ; preds = %if.else.i.i, %if.then.i.i
  %8 = ptrtoint ptr %misc.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %misc.i, align 4
  %10 = and i8 %9, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  %..i = select i1 %tobool.not.i, i16 944, i16 976
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %state, align 4
  %seq.i = getelementptr inbounds %struct.regstate, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %seq.i, align 4
  %arrayidx.i = getelementptr i8, ptr %14, i32 1
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i, align 1
  %17 = or i8 %16, 32
  %tobool.not.i.i.i = icmp eq ptr %12, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i.i, label %if.else.i5.i.i, label %if.then.i4.i.i

if.then.i4.i.i:                                   ; preds = %vga_w.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i.i = getelementptr i8, ptr %12, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i, i8 1) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i.i = getelementptr i8, ptr %12, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i.i, i8 %17) #4, !srcloc !20
  br label %vga_wseq.exit.i

if.else.i5.i.i:                                   ; preds = %vga_w.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %17) #4, !srcloc !20
  br label %vga_wseq.exit.i

vga_wseq.exit.i:                                  ; preds = %if.else.i5.i.i, %if.then.i4.i.i
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %state, align 4
  %tobool.not.i.i115.i = icmp eq ptr %19, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i115.i, label %if.else.i5.i119.i, label %if.then.i4.i118.i

if.then.i4.i118.i:                                ; preds = %vga_wseq.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i116.i = getelementptr i8, ptr %19, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i116.i, i8 0) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i117.i = getelementptr i8, ptr %19, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i117.i, i8 1) #4, !srcloc !20
  br label %vga_wseq.exit120.i

if.else.i5.i119.i:                                ; preds = %vga_wseq.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 0) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 1) #4, !srcloc !20
  br label %vga_wseq.exit120.i

vga_wseq.exit120.i:                               ; preds = %if.else.i5.i119.i, %if.then.i4.i118.i
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %state, align 4
  %22 = or i16 %..i, 10
  %tobool.not.i121.i = icmp eq ptr %21, null
  %conv.i4.i.i = zext i16 %22 to i32
  br i1 %tobool.not.i121.i, label %if.else.i124.i, label %if.then.i123.i

if.then.i123.i:                                   ; preds = %vga_wseq.exit120.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i122.i = getelementptr i8, ptr %21, i32 %conv.i4.i.i
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i122.i) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  br label %vga_r.exit.i

if.else.i124.i:                                   ; preds = %vga_wseq.exit120.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.i.i.i.i = or i32 %conv.i4.i.i, -18874368
  %24 = inttoptr i32 %add.i.i.i.i to ptr
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %24) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  br label %vga_r.exit.i

vga_r.exit.i:                                     ; preds = %if.else.i124.i, %if.then.i123.i
  %26 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %state, align 4
  %tobool.not.i125.i = icmp eq ptr %27, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i125.i, label %if.else.i128.i, label %if.then.i127.i

if.then.i127.i:                                   ; preds = %vga_r.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i126.i = getelementptr i8, ptr %27, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i126.i, i8 0) #4, !srcloc !20
  br label %vga_w.exit129.i

if.else.i128.i:                                   ; preds = %vga_r.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 0) #4, !srcloc !20
  br label %vga_w.exit129.i

vga_w.exit129.i:                                  ; preds = %if.else.i128.i, %if.then.i127.i
  %num_seq.i = getelementptr inbounds %struct.vgastate, ptr %state, i32 0, i32 8
  %28 = ptrtoint ptr %num_seq.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_seq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp195.i = icmp ugt i32 %29, 2
  br i1 %cmp195.i, label %vga_w.exit129.i.for.body.i_crit_edge, label %vga_w.exit129.i.for.end.i_crit_edge

vga_w.exit129.i.for.end.i_crit_edge:              ; preds = %vga_w.exit129.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

vga_w.exit129.i.for.body.i_crit_edge:             ; preds = %vga_w.exit129.i
  br label %for.body.i

for.body.i:                                       ; preds = %vga_wseq.exit135.i.for.body.i_crit_edge, %vga_w.exit129.i.for.body.i_crit_edge
  %i.0196.i = phi i32 [ %inc.i, %vga_wseq.exit135.i.for.body.i_crit_edge ], [ 2, %vga_w.exit129.i.for.body.i_crit_edge ]
  %30 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %state, align 4
  %conv12.i = trunc i32 %i.0196.i to i8
  %32 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %seq.i, align 4
  %arrayidx14.i = getelementptr i8, ptr %33, i32 %i.0196.i
  %34 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx14.i, align 1
  %tobool.not.i.i130.i = icmp eq ptr %31, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i130.i, label %if.else.i5.i134.i, label %if.then.i4.i133.i

if.then.i4.i133.i:                                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i131.i = getelementptr i8, ptr %31, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i131.i, i8 %conv12.i) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i132.i = getelementptr i8, ptr %31, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i132.i, i8 %35) #4, !srcloc !20
  br label %vga_wseq.exit135.i

if.else.i5.i134.i:                                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 %conv12.i) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %35) #4, !srcloc !20
  br label %vga_wseq.exit135.i

vga_wseq.exit135.i:                               ; preds = %if.else.i5.i134.i, %if.then.i4.i133.i
  %inc.i = add nuw i32 %i.0196.i, 1
  %36 = ptrtoint ptr %num_seq.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_seq.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %37
  br i1 %cmp.i, label %vga_wseq.exit135.i.for.body.i_crit_edge, label %vga_wseq.exit135.i.for.end.i_crit_edge

vga_wseq.exit135.i.for.end.i_crit_edge:           ; preds = %vga_wseq.exit135.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

vga_wseq.exit135.i.for.body.i_crit_edge:          ; preds = %vga_wseq.exit135.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.end.i:                                        ; preds = %vga_wseq.exit135.i.for.end.i_crit_edge, %vga_w.exit129.i.for.end.i_crit_edge
  %38 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %state, align 4
  %crtc.i = getelementptr inbounds %struct.regstate, ptr %1, i32 0, i32 5
  %40 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %crtc.i, align 4
  %arrayidx16.i = getelementptr i8, ptr %41, i32 17
  %42 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx16.i, align 1
  %44 = and i8 %43, 127
  %add.i.i = or i16 %..i, 4
  %tobool.not.i.i136.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.i136.i, label %if.else.i13.i.i, label %if.then.i10.i.i

if.then.i10.i.i:                                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %conv.i.i.i.i = zext i16 %add.i.i to i32
  %add.ptr.i.i.i137.i = getelementptr i8, ptr %39, i32 %conv.i.i.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i137.i, i8 17) #4, !srcloc !20
  %add3.i.i = or i16 %..i, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %conv.i.i8.i.i = zext i16 %add3.i.i to i32
  %add.ptr.i.i9.i.i = getelementptr i8, ptr %39, i32 %conv.i.i8.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i9.i.i, i8 %44) #4, !srcloc !20
  br label %vga_wcrtcs.exit.i

if.else.i13.i.i:                                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i4.i.i.i = zext i16 %add.i.i to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  %add.i.i.i.i.i = or i32 %conv.i4.i.i.i, -18874368
  %45 = inttoptr i32 %add.i.i.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %45, i8 17) #4, !srcloc !20
  %conv.i4.i11.i.i = zext i16 %..i to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  %add.i.i.i12.i.i = or i32 %conv.i4.i11.i.i, -18874363
  %46 = inttoptr i32 %add.i.i.i12.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %46, i8 %44) #4, !srcloc !20
  br label %vga_wcrtcs.exit.i

vga_wcrtcs.exit.i:                                ; preds = %if.else.i13.i.i, %if.then.i10.i.i
  %num_crtc.i = getelementptr inbounds %struct.vgastate, ptr %state, i32 0, i32 6
  %47 = ptrtoint ptr %num_crtc.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_crtc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp21197.not.i = icmp eq i32 %48, 0
  br i1 %cmp21197.not.i, label %vga_wcrtcs.exit.i.for.cond31.preheader.i_crit_edge, label %for.body23.lr.ph.i

vga_wcrtcs.exit.i.for.cond31.preheader.i_crit_edge: ; preds = %vga_wcrtcs.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond31.preheader.i

for.body23.lr.ph.i:                               ; preds = %vga_wcrtcs.exit.i
  %conv.i.i.i140.i = zext i16 %add.i.i to i32
  %add3.i142.i = or i16 %..i, 5
  %conv.i.i8.i143.i = zext i16 %add3.i142.i to i32
  %add.i.i.i.i147.i = or i32 %conv.i.i.i140.i, -18874368
  %49 = inttoptr i32 %add.i.i.i.i147.i to ptr
  %conv.i4.i11.i149.i = zext i16 %..i to i32
  %add.i.i.i12.i150.i = or i32 %conv.i4.i11.i149.i, -18874363
  %50 = inttoptr i32 %add.i.i.i12.i150.i to ptr
  br label %for.body23.i

for.cond31.preheader.i:                           ; preds = %vga_wcrtcs.exit152.i.for.cond31.preheader.i_crit_edge, %vga_wcrtcs.exit.i.for.cond31.preheader.i_crit_edge
  %num_gfx.i = getelementptr inbounds %struct.vgastate, ptr %state, i32 0, i32 7
  %51 = ptrtoint ptr %num_gfx.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_gfx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp32199.not.i = icmp eq i32 %52, 0
  br i1 %cmp32199.not.i, label %for.cond31.preheader.i.for.cond41.preheader.i_crit_edge, label %for.body34.lr.ph.i

for.cond31.preheader.i.for.cond41.preheader.i_crit_edge: ; preds = %for.cond31.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond41.preheader.i

for.body34.lr.ph.i:                               ; preds = %for.cond31.preheader.i
  %gfx.i = getelementptr inbounds %struct.regstate, ptr %1, i32 0, i32 6
  br label %for.body34.i

for.body23.i:                                     ; preds = %vga_wcrtcs.exit152.i.for.body23.i_crit_edge, %for.body23.lr.ph.i
  %i.1198.i = phi i32 [ 0, %for.body23.lr.ph.i ], [ %inc29.i, %vga_wcrtcs.exit152.i.for.body23.i_crit_edge ]
  %53 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %state, align 4
  %conv25.i = trunc i32 %i.1198.i to i8
  %55 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %crtc.i, align 4
  %arrayidx27.i = getelementptr i8, ptr %56, i32 %i.1198.i
  %57 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx27.i, align 1
  %tobool.not.i.i139.i = icmp eq ptr %54, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i139.i, label %if.else.i13.i151.i, label %if.then.i10.i145.i

if.then.i10.i145.i:                               ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i141.i = getelementptr i8, ptr %54, i32 %conv.i.i.i140.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i141.i, i8 %conv25.i) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i9.i144.i = getelementptr i8, ptr %54, i32 %conv.i.i8.i143.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i9.i144.i, i8 %58) #4, !srcloc !20
  br label %vga_wcrtcs.exit152.i

if.else.i13.i151.i:                               ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %49, i8 %conv25.i) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %50, i8 %58) #4, !srcloc !20
  br label %vga_wcrtcs.exit152.i

vga_wcrtcs.exit152.i:                             ; preds = %if.else.i13.i151.i, %if.then.i10.i145.i
  %inc29.i = add nuw i32 %i.1198.i, 1
  %59 = ptrtoint ptr %num_crtc.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_crtc.i, align 4
  %cmp21.i = icmp ult i32 %inc29.i, %60
  br i1 %cmp21.i, label %vga_wcrtcs.exit152.i.for.body23.i_crit_edge, label %vga_wcrtcs.exit152.i.for.cond31.preheader.i_crit_edge

vga_wcrtcs.exit152.i.for.cond31.preheader.i_crit_edge: ; preds = %vga_wcrtcs.exit152.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond31.preheader.i

vga_wcrtcs.exit152.i.for.body23.i_crit_edge:      ; preds = %vga_wcrtcs.exit152.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body23.i

for.cond41.preheader.i:                           ; preds = %vga_wgfx.exit.i.for.cond41.preheader.i_crit_edge, %for.cond31.preheader.i.for.cond41.preheader.i_crit_edge
  %num_attr.i = getelementptr inbounds %struct.vgastate, ptr %state, i32 0, i32 5
  %61 = ptrtoint ptr %num_attr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num_attr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp42201.not.i = icmp eq i32 %62, 0
  br i1 %cmp42201.not.i, label %for.cond41.preheader.i.for.end55.i_crit_edge, label %for.body44.lr.ph.i

for.cond41.preheader.i.for.end55.i_crit_edge:     ; preds = %for.cond41.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end55.i

for.body44.lr.ph.i:                               ; preds = %for.cond41.preheader.i
  %add.i.i.i162.i = or i32 %conv.i4.i.i, -18874368
  %63 = inttoptr i32 %add.i.i.i162.i to ptr
  %attr.i = getelementptr inbounds %struct.regstate, ptr %1, i32 0, i32 4
  br label %for.body44.i

for.body34.i:                                     ; preds = %vga_wgfx.exit.i.for.body34.i_crit_edge, %for.body34.lr.ph.i
  %i.2200.i = phi i32 [ 0, %for.body34.lr.ph.i ], [ %inc39.i, %vga_wgfx.exit.i.for.body34.i_crit_edge ]
  %64 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %state, align 4
  %conv36.i = trunc i32 %i.2200.i to i8
  %66 = ptrtoint ptr %gfx.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %gfx.i, align 4
  %arrayidx37.i = getelementptr i8, ptr %67, i32 %i.2200.i
  %68 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx37.i, align 1
  %tobool.not.i.i153.i = icmp eq ptr %65, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i153.i, label %if.else.i5.i157.i, label %if.then.i4.i156.i

if.then.i4.i156.i:                                ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i154.i = getelementptr i8, ptr %65, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i154.i, i8 %conv36.i) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i155.i = getelementptr i8, ptr %65, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i155.i, i8 %69) #4, !srcloc !20
  br label %vga_wgfx.exit.i

if.else.i5.i157.i:                                ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 %conv36.i) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %69) #4, !srcloc !20
  br label %vga_wgfx.exit.i

vga_wgfx.exit.i:                                  ; preds = %if.else.i5.i157.i, %if.then.i4.i156.i
  %inc39.i = add nuw i32 %i.2200.i, 1
  %70 = ptrtoint ptr %num_gfx.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %num_gfx.i, align 4
  %cmp32.i = icmp ult i32 %inc39.i, %71
  br i1 %cmp32.i, label %vga_wgfx.exit.i.for.body34.i_crit_edge, label %vga_wgfx.exit.i.for.cond41.preheader.i_crit_edge

vga_wgfx.exit.i.for.cond41.preheader.i_crit_edge: ; preds = %vga_wgfx.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond41.preheader.i

vga_wgfx.exit.i.for.body34.i_crit_edge:           ; preds = %vga_wgfx.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body34.i

for.body44.i:                                     ; preds = %vga_wattr.exit.i.for.body44.i_crit_edge, %for.body44.lr.ph.i
  %i.3202.i = phi i32 [ 0, %for.body44.lr.ph.i ], [ %inc54.i, %vga_wattr.exit.i.for.body44.i_crit_edge ]
  %72 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %state, align 4
  %tobool.not.i158.i = icmp eq ptr %73, null
  br i1 %tobool.not.i158.i, label %if.else.i163.i, label %if.then.i161.i

if.then.i161.i:                                   ; preds = %for.body44.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i160.i = getelementptr i8, ptr %73, i32 %conv.i4.i.i
  %74 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i160.i) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  br label %vga_r.exit165.i

if.else.i163.i:                                   ; preds = %for.body44.i
  call void @__sanitizer_cov_trace_pc() #6
  %75 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %63) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  br label %vga_r.exit165.i

vga_r.exit165.i:                                  ; preds = %if.else.i163.i, %if.then.i161.i
  %76 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %state, align 4
  %conv51.i = trunc i32 %i.3202.i to i8
  %78 = ptrtoint ptr %attr.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %attr.i, align 4
  %arrayidx52.i = getelementptr i8, ptr %79, i32 %i.3202.i
  %80 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx52.i, align 1
  %tobool.not.i.i166.i = icmp eq ptr %77, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i166.i, label %if.else.i5.i169.i, label %if.then.i4.i168.i

if.then.i4.i168.i:                                ; preds = %vga_r.exit165.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i167.i = getelementptr i8, ptr %77, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i167.i, i8 %conv51.i) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i167.i, i8 %81) #4, !srcloc !20
  br label %vga_wattr.exit.i

if.else.i5.i169.i:                                ; preds = %vga_r.exit165.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 %conv51.i) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 %81) #4, !srcloc !20
  br label %vga_wattr.exit.i

vga_wattr.exit.i:                                 ; preds = %if.else.i5.i169.i, %if.then.i4.i168.i
  %inc54.i = add nuw i32 %i.3202.i, 1
  %82 = ptrtoint ptr %num_attr.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %num_attr.i, align 4
  %cmp42.i = icmp ult i32 %inc54.i, %83
  br i1 %cmp42.i, label %vga_wattr.exit.i.for.body44.i_crit_edge, label %vga_wattr.exit.i.for.end55.i_crit_edge

vga_wattr.exit.i.for.end55.i_crit_edge:           ; preds = %vga_wattr.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end55.i

vga_wattr.exit.i.for.body44.i_crit_edge:          ; preds = %vga_wattr.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body44.i

for.end55.i:                                      ; preds = %vga_wattr.exit.i.for.end55.i_crit_edge, %for.cond41.preheader.i.for.end55.i_crit_edge
  %84 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %state, align 4
  %tobool.not.i.i170.i = icmp eq ptr %85, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i170.i, label %if.else.i5.i174.i, label %if.then.i4.i173.i

if.then.i4.i173.i:                                ; preds = %for.end55.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i171.i = getelementptr i8, ptr %85, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i171.i, i8 0) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i172.i = getelementptr i8, ptr %85, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i172.i, i8 3) #4, !srcloc !20
  br label %vga_wseq.exit175.i

if.else.i5.i174.i:                                ; preds = %for.end55.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 0) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 3) #4, !srcloc !20
  br label %vga_wseq.exit175.i

vga_wseq.exit175.i:                               ; preds = %if.else.i5.i174.i, %if.then.i4.i173.i
  %86 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %state, align 4
  %88 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %seq.i, align 4
  %arrayidx59.i = getelementptr i8, ptr %89, i32 1
  %90 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx59.i, align 1
  %92 = and i8 %91, -33
  %tobool.not.i.i176.i = icmp eq ptr %87, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i176.i, label %if.else.i5.i180.i, label %if.then.i4.i179.i

if.then.i4.i179.i:                                ; preds = %vga_wseq.exit175.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i177.i = getelementptr i8, ptr %87, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i177.i, i8 1) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i178.i = getelementptr i8, ptr %87, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i178.i, i8 %92) #4, !srcloc !20
  br label %vga_wseq.exit181.i

if.else.i5.i180.i:                                ; preds = %vga_wseq.exit175.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %92) #4, !srcloc !20
  br label %vga_wseq.exit181.i

vga_wseq.exit181.i:                               ; preds = %if.else.i5.i180.i, %if.then.i4.i179.i
  %93 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %state, align 4
  %tobool.not.i182.i = icmp eq ptr %94, null
  br i1 %tobool.not.i182.i, label %if.else.i187.i, label %if.then.i185.i

if.then.i185.i:                                   ; preds = %vga_wseq.exit181.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i184.i = getelementptr i8, ptr %94, i32 %conv.i4.i.i
  %95 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i184.i) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  br label %vga_r.exit189.i

if.else.i187.i:                                   ; preds = %vga_wseq.exit181.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.i.i.i186.i = or i32 %conv.i4.i.i, -18874368
  %96 = inttoptr i32 %add.i.i.i186.i to ptr
  %97 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %96) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  br label %vga_r.exit189.i

vga_r.exit189.i:                                  ; preds = %if.else.i187.i, %if.then.i185.i
  %98 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %state, align 4
  %tobool.not.i190.i = icmp eq ptr %99, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i190.i, label %if.else.i193.i, label %if.then.i192.i

if.then.i192.i:                                   ; preds = %vga_r.exit189.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i191.i = getelementptr i8, ptr %99, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i191.i, i8 32) #4, !srcloc !20
  br label %if.end2

if.else.i193.i:                                   ; preds = %vga_r.exit189.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 32) #4, !srcloc !20
  br label %if.end2

if.end2:                                          ; preds = %if.else.i193.i, %if.then.i192.i, %if.end.if.end2_crit_edge
  %100 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %flags, align 4
  %and4 = and i32 %101, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end2.if.end10_crit_edge, label %if.then6

if.end2.if.end10_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then6:                                         ; preds = %if.end2
  %membase = getelementptr inbounds %struct.vgastate, ptr %state, i32 0, i32 1
  %102 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %membase, align 4
  %memsize = getelementptr inbounds %struct.vgastate, ptr %state, i32 0, i32 2
  %104 = ptrtoint ptr %memsize to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %memsize, align 4
  %call = tail call ptr @ioremap(i32 noundef %103, i32 noundef %105) #4
  %tobool7.not = icmp eq ptr %call, null
  %106 = ptrtoint ptr %vidstate to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %vidstate, align 4
  br i1 %tobool7.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.then6
  %cmp.not.i = icmp eq ptr %107, null
  br i1 %cmp.not.i, label %if.then8.return_crit_edge, label %if.then8.return.sink.split_crit_edge

if.then8.return.sink.split_crit_edge:             ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %return.sink.split

if.then8.return_crit_edge:                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end9:                                          ; preds = %if.then6
  %108 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %state, align 4
  %tobool.not.i.i.i31 = icmp eq ptr %109, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i.i31, label %if.else.i5.i.i35, label %if.then.i4.i.i34

if.then.i4.i.i34:                                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i.i32 = getelementptr i8, ptr %109, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i32, i8 1) #4, !srcloc !20
  %add.ptr.i.i3.i.i33 = getelementptr i8, ptr %109, i32 975
  %110 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i33) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  br label %vga_rgfx.exit.i

if.else.i5.i.i35:                                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 1) #4, !srcloc !20
  %111 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr)) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  br label %vga_rgfx.exit.i

vga_rgfx.exit.i:                                  ; preds = %if.else.i5.i.i35, %if.then.i4.i.i34
  %retval.0.i.i.i = phi i8 [ %110, %if.then.i4.i.i34 ], [ %111, %if.else.i5.i.i35 ]
  %112 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %state, align 4
  %tobool.not.i.i178.i = icmp eq ptr %113, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i178.i, label %if.else.i5.i182.i, label %if.then.i4.i181.i

if.then.i4.i181.i:                                ; preds = %vga_rgfx.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i179.i = getelementptr i8, ptr %113, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i179.i, i8 3) #4, !srcloc !20
  %add.ptr.i.i3.i180.i = getelementptr i8, ptr %113, i32 975
  %114 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i180.i) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  br label %vga_rgfx.exit184.i

if.else.i5.i182.i:                                ; preds = %vga_rgfx.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 3) #4, !srcloc !20
  %115 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr)) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  br label %vga_rgfx.exit184.i

vga_rgfx.exit184.i:                               ; preds = %if.else.i5.i182.i, %if.then.i4.i181.i
  %retval.0.i.i183.i = phi i8 [ %114, %if.then.i4.i181.i ], [ %115, %if.else.i5.i182.i ]
  %116 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %state, align 4
  %tobool.not.i.i185.i = icmp eq ptr %117, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i185.i, label %if.else.i5.i189.i, label %if.then.i4.i188.i

if.then.i4.i188.i:                                ; preds = %vga_rgfx.exit184.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i186.i = getelementptr i8, ptr %117, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i186.i, i8 4) #4, !srcloc !20
  %add.ptr.i.i3.i187.i = getelementptr i8, ptr %117, i32 975
  %118 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i187.i) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  br label %vga_rgfx.exit191.i

if.else.i5.i189.i:                                ; preds = %vga_rgfx.exit184.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 4) #4, !srcloc !20
  %119 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr)) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  br label %vga_rgfx.exit191.i

vga_rgfx.exit191.i:                               ; preds = %if.else.i5.i189.i, %if.then.i4.i188.i
  %retval.0.i.i190.i = phi i8 [ %118, %if.then.i4.i188.i ], [ %119, %if.else.i5.i189.i ]
  %120 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %state, align 4
  %tobool.not.i.i192.i = icmp eq ptr %121, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i192.i, label %if.else.i5.i196.i, label %if.then.i4.i195.i

if.then.i4.i195.i:                                ; preds = %vga_rgfx.exit191.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i193.i = getelementptr i8, ptr %121, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i193.i, i8 5) #4, !srcloc !20
  %add.ptr.i.i3.i194.i = getelementptr i8, ptr %121, i32 975
  %122 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i194.i) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  br label %vga_rgfx.exit198.i

if.else.i5.i196.i:                                ; preds = %vga_rgfx.exit191.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 5) #4, !srcloc !20
  %123 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr)) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  br label %vga_rgfx.exit198.i

vga_rgfx.exit198.i:                               ; preds = %if.else.i5.i196.i, %if.then.i4.i195.i
  %retval.0.i.i197.i = phi i8 [ %122, %if.then.i4.i195.i ], [ %123, %if.else.i5.i196.i ]
  %124 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %state, align 4
  %tobool.not.i.i199.i = icmp eq ptr %125, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i199.i, label %if.else.i5.i203.i, label %if.then.i4.i202.i

if.then.i4.i202.i:                                ; preds = %vga_rgfx.exit198.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i200.i = getelementptr i8, ptr %125, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i200.i, i8 6) #4, !srcloc !20
  %add.ptr.i.i3.i201.i = getelementptr i8, ptr %125, i32 975
  %126 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i201.i) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  br label %vga_rgfx.exit205.i

if.else.i5.i203.i:                                ; preds = %vga_rgfx.exit198.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 6) #4, !srcloc !20
  %127 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr)) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  br label %vga_rgfx.exit205.i

vga_rgfx.exit205.i:                               ; preds = %if.else.i5.i203.i, %if.then.i4.i202.i
  %retval.0.i.i204.i = phi i8 [ %126, %if.then.i4.i202.i ], [ %127, %if.else.i5.i203.i ]
  %128 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %state, align 4
  %tobool.not.i.i206.i = icmp eq ptr %129, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i206.i, label %if.else.i5.i210.i, label %if.then.i4.i209.i

if.then.i4.i209.i:                                ; preds = %vga_rgfx.exit205.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i207.i = getelementptr i8, ptr %129, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i207.i, i8 8) #4, !srcloc !20
  %add.ptr.i.i3.i208.i = getelementptr i8, ptr %129, i32 975
  %130 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i208.i) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  br label %vga_rgfx.exit212.i

if.else.i5.i210.i:                                ; preds = %vga_rgfx.exit205.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 8) #4, !srcloc !20
  %131 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr)) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  br label %vga_rgfx.exit212.i

vga_rgfx.exit212.i:                               ; preds = %if.else.i5.i210.i, %if.then.i4.i209.i
  %retval.0.i.i211.i = phi i8 [ %130, %if.then.i4.i209.i ], [ %131, %if.else.i5.i210.i ]
  %132 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %state, align 4
  %tobool.not.i.i213.i = icmp eq ptr %133, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i213.i, label %if.else.i5.i217.i, label %if.then.i4.i216.i

if.then.i4.i216.i:                                ; preds = %vga_rgfx.exit212.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i214.i = getelementptr i8, ptr %133, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i214.i, i8 2) #4, !srcloc !20
  %add.ptr.i.i3.i215.i = getelementptr i8, ptr %133, i32 965
  %134 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i215.i) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  br label %vga_rseq.exit.i

if.else.i5.i217.i:                                ; preds = %vga_rgfx.exit212.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 2) #4, !srcloc !20
  %135 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  br label %vga_rseq.exit.i

vga_rseq.exit.i:                                  ; preds = %if.else.i5.i217.i, %if.then.i4.i216.i
  %retval.0.i.i218.i = phi i8 [ %134, %if.then.i4.i216.i ], [ %135, %if.else.i5.i217.i ]
  %136 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %state, align 4
  %tobool.not.i.i219.i = icmp eq ptr %137, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i219.i, label %if.else.i5.i223.i, label %if.then.i4.i222.i

if.then.i4.i222.i:                                ; preds = %vga_rseq.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i220.i = getelementptr i8, ptr %137, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i220.i, i8 4) #4, !srcloc !20
  %add.ptr.i.i3.i221.i = getelementptr i8, ptr %137, i32 965
  %138 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i221.i) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  br label %vga_rseq.exit225.i

if.else.i5.i223.i:                                ; preds = %vga_rseq.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 4) #4, !srcloc !20
  %139 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  br label %vga_rseq.exit225.i

vga_rseq.exit225.i:                               ; preds = %if.else.i5.i223.i, %if.then.i4.i222.i
  %retval.0.i.i224.i = phi i8 [ %138, %if.then.i4.i222.i ], [ %139, %if.else.i5.i223.i ]
  %140 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %state, align 4
  %tobool.not.i.i226.i = icmp eq ptr %141, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i226.i, label %if.else.i5.i230.i, label %if.then.i4.i229.i

if.then.i4.i229.i:                                ; preds = %vga_rseq.exit225.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i227.i = getelementptr i8, ptr %141, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i227.i, i8 1) #4, !srcloc !20
  %add.ptr.i.i3.i228.i = getelementptr i8, ptr %141, i32 965
  %142 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i228.i) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  br label %vga_rseq.exit232.i

if.else.i5.i230.i:                                ; preds = %vga_rseq.exit225.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #4, !srcloc !20
  %143 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  br label %vga_rseq.exit232.i

vga_rseq.exit232.i:                               ; preds = %if.else.i5.i230.i, %if.then.i4.i229.i
  %retval.0.i.i231.i = phi i8 [ %142, %if.then.i4.i229.i ], [ %143, %if.else.i5.i230.i ]
  %144 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %state, align 4
  %tobool.not.i.i233.i = icmp eq ptr %145, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i233.i, label %if.else.i5.i237.i, label %if.then.i4.i236.i

if.then.i4.i236.i:                                ; preds = %vga_rseq.exit232.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i234.i = getelementptr i8, ptr %145, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i234.i, i8 0) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i235.i = getelementptr i8, ptr %145, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i235.i, i8 1) #4, !srcloc !20
  br label %vga_wseq.exit.i36

if.else.i5.i237.i:                                ; preds = %vga_rseq.exit232.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 0) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 1) #4, !srcloc !20
  br label %vga_wseq.exit.i36

vga_wseq.exit.i36:                                ; preds = %if.else.i5.i237.i, %if.then.i4.i236.i
  %146 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %state, align 4
  %or.i = or i8 %retval.0.i.i231.i, 32
  %tobool.not.i.i238.i = icmp eq ptr %147, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i238.i, label %if.else.i5.i242.i, label %if.then.i4.i241.i

if.then.i4.i241.i:                                ; preds = %vga_wseq.exit.i36
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i239.i = getelementptr i8, ptr %147, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i239.i, i8 1) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i240.i = getelementptr i8, ptr %147, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i240.i, i8 %or.i) #4, !srcloc !20
  br label %vga_wseq.exit243.i

if.else.i5.i242.i:                                ; preds = %vga_wseq.exit.i36
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i) #4, !srcloc !20
  br label %vga_wseq.exit243.i

vga_wseq.exit243.i:                               ; preds = %if.else.i5.i242.i, %if.then.i4.i241.i
  %148 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %state, align 4
  %tobool.not.i.i244.i = icmp eq ptr %149, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i244.i, label %if.else.i5.i248.i, label %if.then.i4.i247.i

if.then.i4.i247.i:                                ; preds = %vga_wseq.exit243.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i245.i = getelementptr i8, ptr %149, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i245.i, i8 0) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i246.i = getelementptr i8, ptr %149, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i246.i, i8 3) #4, !srcloc !20
  br label %vga_wseq.exit249.i

if.else.i5.i248.i:                                ; preds = %vga_wseq.exit243.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 0) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 3) #4, !srcloc !20
  br label %vga_wseq.exit249.i

vga_wseq.exit249.i:                               ; preds = %if.else.i5.i248.i, %if.then.i4.i247.i
  %depth.i = getelementptr inbounds %struct.vgastate, ptr %state, i32 0, i32 4
  %150 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %151)
  %cmp.i37 = icmp eq i32 %151, 4
  br i1 %cmp.i37, label %if.then.i38, label %vga_wseq.exit249.i.if.end.i_crit_edge

vga_wseq.exit249.i.if.end.i_crit_edge:            ; preds = %vga_wseq.exit249.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i38:                                      ; preds = %vga_wseq.exit249.i
  %152 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %state, align 4
  %tobool.not.i.i250.i = icmp eq ptr %153, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i250.i, label %if.else.i5.i254.i, label %if.then.i4.i253.i

if.then.i4.i253.i:                                ; preds = %if.then.i38
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i251.i = getelementptr i8, ptr %153, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i251.i, i8 3) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i252.i = getelementptr i8, ptr %153, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i252.i, i8 0) #4, !srcloc !20
  br label %vga_wgfx.exit.i39

if.else.i5.i254.i:                                ; preds = %if.then.i38
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 3) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 0) #4, !srcloc !20
  br label %vga_wgfx.exit.i39

vga_wgfx.exit.i39:                                ; preds = %if.else.i5.i254.i, %if.then.i4.i253.i
  %154 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %state, align 4
  %tobool.not.i.i255.i = icmp eq ptr %155, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i255.i, label %if.else.i5.i259.i, label %if.then.i4.i258.i

if.then.i4.i258.i:                                ; preds = %vga_wgfx.exit.i39
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i256.i = getelementptr i8, ptr %155, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i256.i, i8 8) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i257.i = getelementptr i8, ptr %155, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i257.i, i8 -1) #4, !srcloc !20
  br label %vga_wgfx.exit260.i

if.else.i5.i259.i:                                ; preds = %vga_wgfx.exit.i39
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 8) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 -1) #4, !srcloc !20
  br label %vga_wgfx.exit260.i

vga_wgfx.exit260.i:                               ; preds = %if.else.i5.i259.i, %if.then.i4.i258.i
  %156 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %state, align 4
  %tobool.not.i.i261.i = icmp eq ptr %157, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i261.i, label %if.else.i5.i265.i, label %if.then.i4.i264.i

if.then.i4.i264.i:                                ; preds = %vga_wgfx.exit260.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i262.i = getelementptr i8, ptr %157, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i262.i, i8 1) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i263.i = getelementptr i8, ptr %157, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i263.i, i8 0) #4, !srcloc !20
  br label %if.end.i

if.else.i5.i265.i:                                ; preds = %vga_wgfx.exit260.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 1) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 0) #4, !srcloc !20
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i5.i265.i, %if.then.i4.i264.i, %vga_wseq.exit249.i.if.end.i_crit_edge
  %158 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %flags, align 4
  %and.i = and i32 %159, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i40 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i40, label %if.end.i.if.end34.i_crit_edge, label %if.then25.i

if.end.i.if.end34.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34.i

if.then25.i:                                      ; preds = %if.end.i
  %160 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %state, align 4
  %tobool.not.i.i267.i = icmp eq ptr %161, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i267.i, label %if.else.i5.i271.i, label %if.then.i4.i270.i

if.then.i4.i270.i:                                ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i268.i = getelementptr i8, ptr %161, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i268.i, i8 2) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i269.i = getelementptr i8, ptr %161, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i269.i, i8 4) #4, !srcloc !20
  br label %vga_wseq.exit272.i

if.else.i5.i271.i:                                ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 2) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 4) #4, !srcloc !20
  br label %vga_wseq.exit272.i

vga_wseq.exit272.i:                               ; preds = %if.else.i5.i271.i, %if.then.i4.i270.i
  %162 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %state, align 4
  %tobool.not.i.i273.i = icmp eq ptr %163, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i273.i, label %if.else.i5.i277.i, label %if.then.i4.i276.i

if.then.i4.i276.i:                                ; preds = %vga_wseq.exit272.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i274.i = getelementptr i8, ptr %163, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i274.i, i8 4) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i275.i = getelementptr i8, ptr %163, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i275.i, i8 6) #4, !srcloc !20
  br label %vga_wseq.exit278.i

if.else.i5.i277.i:                                ; preds = %vga_wseq.exit272.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 4) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 6) #4, !srcloc !20
  br label %vga_wseq.exit278.i

vga_wseq.exit278.i:                               ; preds = %if.else.i5.i277.i, %if.then.i4.i276.i
  %164 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %state, align 4
  %tobool.not.i.i279.i = icmp eq ptr %165, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i279.i, label %if.else.i5.i283.i, label %if.then.i4.i282.i

if.then.i4.i282.i:                                ; preds = %vga_wseq.exit278.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i280.i = getelementptr i8, ptr %165, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i280.i, i8 4) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i281.i = getelementptr i8, ptr %165, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i281.i, i8 2) #4, !srcloc !20
  br label %vga_wgfx.exit284.i

if.else.i5.i283.i:                                ; preds = %vga_wseq.exit278.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 4) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 2) #4, !srcloc !20
  br label %vga_wgfx.exit284.i

vga_wgfx.exit284.i:                               ; preds = %if.else.i5.i283.i, %if.then.i4.i282.i
  %166 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %state, align 4
  %tobool.not.i.i285.i = icmp eq ptr %167, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i285.i, label %if.else.i5.i289.i, label %if.then.i4.i288.i

if.then.i4.i288.i:                                ; preds = %vga_wgfx.exit284.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i286.i = getelementptr i8, ptr %167, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i286.i, i8 5) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i287.i = getelementptr i8, ptr %167, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i287.i, i8 0) #4, !srcloc !20
  br label %vga_wgfx.exit290.i

if.else.i5.i289.i:                                ; preds = %vga_wgfx.exit284.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 5) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 0) #4, !srcloc !20
  br label %vga_wgfx.exit290.i

vga_wgfx.exit290.i:                               ; preds = %if.else.i5.i289.i, %if.then.i4.i288.i
  %168 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %state, align 4
  %tobool.not.i.i291.i = icmp eq ptr %169, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i291.i, label %if.else.i5.i295.i, label %if.then.i4.i294.i

if.then.i4.i294.i:                                ; preds = %vga_wgfx.exit290.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i292.i = getelementptr i8, ptr %169, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i292.i, i8 6) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i293.i = getelementptr i8, ptr %169, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i293.i, i8 5) #4, !srcloc !20
  br label %vga_w.exit.i49.preheader

if.else.i5.i295.i:                                ; preds = %vga_wgfx.exit290.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 6) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 5) #4, !srcloc !20
  br label %vga_w.exit.i49.preheader

vga_w.exit.i49.preheader:                         ; preds = %if.else.i5.i295.i, %if.then.i4.i294.i
  br label %vga_w.exit.i49

vga_w.exit.i49:                                   ; preds = %vga_w.exit.i49.vga_w.exit.i49_crit_edge, %vga_w.exit.i49.preheader
  %i.0483.i = phi i32 [ %inc.i48, %vga_w.exit.i49.vga_w.exit.i49_crit_edge ], [ 0, %vga_w.exit.i49.preheader ]
  %170 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %107, align 4
  %arrayidx.i42 = getelementptr i8, ptr %171, i32 %i.0483.i
  %172 = ptrtoint ptr %arrayidx.i42 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %arrayidx.i42, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i.i44 = getelementptr i8, ptr %call, i32 %i.0483.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i44, i8 %173) #4, !srcloc !20
  %inc.i48 = add nuw nsw i32 %i.0483.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i48, 32768
  br i1 %exitcond.not.i, label %vga_w.exit.i49.if.end34.i_crit_edge, label %vga_w.exit.i49.vga_w.exit.i49_crit_edge

vga_w.exit.i49.vga_w.exit.i49_crit_edge:          ; preds = %vga_w.exit.i49
  call void @__sanitizer_cov_trace_pc() #6
  br label %vga_w.exit.i49

vga_w.exit.i49.if.end34.i_crit_edge:              ; preds = %vga_w.exit.i49
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34.i

if.end34.i:                                       ; preds = %vga_w.exit.i49.if.end34.i_crit_edge, %if.end.i.if.end34.i_crit_edge
  %174 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %flags, align 4
  %and36.i = and i32 %175, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %if.end34.i.if.end53.i_crit_edge, label %if.then38.i

if.end34.i.if.end53.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end53.i

if.then38.i:                                      ; preds = %if.end34.i
  %176 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %state, align 4
  %tobool.not.i.i297.i = icmp eq ptr %177, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i297.i, label %if.else.i5.i301.i, label %if.then.i4.i300.i

if.then.i4.i300.i:                                ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i298.i = getelementptr i8, ptr %177, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i298.i, i8 2) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i299.i = getelementptr i8, ptr %177, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i299.i, i8 8) #4, !srcloc !20
  br label %vga_wseq.exit302.i

if.else.i5.i301.i:                                ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 2) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 8) #4, !srcloc !20
  br label %vga_wseq.exit302.i

vga_wseq.exit302.i:                               ; preds = %if.else.i5.i301.i, %if.then.i4.i300.i
  %178 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %state, align 4
  %tobool.not.i.i303.i = icmp eq ptr %179, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i303.i, label %if.else.i5.i307.i, label %if.then.i4.i306.i

if.then.i4.i306.i:                                ; preds = %vga_wseq.exit302.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i304.i = getelementptr i8, ptr %179, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i304.i, i8 4) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i305.i = getelementptr i8, ptr %179, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i305.i, i8 6) #4, !srcloc !20
  br label %vga_wseq.exit308.i

if.else.i5.i307.i:                                ; preds = %vga_wseq.exit302.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 4) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 6) #4, !srcloc !20
  br label %vga_wseq.exit308.i

vga_wseq.exit308.i:                               ; preds = %if.else.i5.i307.i, %if.then.i4.i306.i
  %180 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %state, align 4
  %tobool.not.i.i309.i = icmp eq ptr %181, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i309.i, label %if.else.i5.i313.i, label %if.then.i4.i312.i

if.then.i4.i312.i:                                ; preds = %vga_wseq.exit308.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i310.i = getelementptr i8, ptr %181, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i310.i, i8 4) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i311.i = getelementptr i8, ptr %181, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i311.i, i8 3) #4, !srcloc !20
  br label %vga_wgfx.exit314.i

if.else.i5.i313.i:                                ; preds = %vga_wseq.exit308.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 4) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 3) #4, !srcloc !20
  br label %vga_wgfx.exit314.i

vga_wgfx.exit314.i:                               ; preds = %if.else.i5.i313.i, %if.then.i4.i312.i
  %182 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %state, align 4
  %tobool.not.i.i315.i = icmp eq ptr %183, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i315.i, label %if.else.i5.i319.i, label %if.then.i4.i318.i

if.then.i4.i318.i:                                ; preds = %vga_wgfx.exit314.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i316.i = getelementptr i8, ptr %183, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i316.i, i8 5) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i317.i = getelementptr i8, ptr %183, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i317.i, i8 0) #4, !srcloc !20
  br label %vga_wgfx.exit320.i

if.else.i5.i319.i:                                ; preds = %vga_wgfx.exit314.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 5) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 0) #4, !srcloc !20
  br label %vga_wgfx.exit320.i

vga_wgfx.exit320.i:                               ; preds = %if.else.i5.i319.i, %if.then.i4.i318.i
  %184 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %state, align 4
  %tobool.not.i.i321.i = icmp eq ptr %185, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i321.i, label %if.else.i5.i325.i, label %if.then.i4.i324.i

if.then.i4.i324.i:                                ; preds = %vga_wgfx.exit320.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i322.i = getelementptr i8, ptr %185, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i322.i, i8 6) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i323.i = getelementptr i8, ptr %185, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i323.i, i8 5) #4, !srcloc !20
  br label %vga_wgfx.exit326.i

if.else.i5.i325.i:                                ; preds = %vga_wgfx.exit320.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 6) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 5) #4, !srcloc !20
  br label %vga_wgfx.exit326.i

vga_wgfx.exit326.i:                               ; preds = %if.else.i5.i325.i, %if.then.i4.i324.i
  %186 = ptrtoint ptr %memsize to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %memsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %cmp45485.not.i = icmp eq i32 %187, 0
  br i1 %cmp45485.not.i, label %vga_wgfx.exit326.i.if.end53.i_crit_edge, label %for.body47.lr.ph.i

vga_wgfx.exit326.i.if.end53.i_crit_edge:          ; preds = %vga_wgfx.exit326.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end53.i

for.body47.lr.ph.i:                               ; preds = %vga_wgfx.exit326.i
  %vga_font1.i50 = getelementptr inbounds %struct.regstate, ptr %107, i32 0, i32 1
  br label %vga_w.exit334.i

vga_w.exit334.i:                                  ; preds = %vga_w.exit334.i.vga_w.exit334.i_crit_edge, %for.body47.lr.ph.i
  %i.1486.i = phi i32 [ 0, %for.body47.lr.ph.i ], [ %inc51.i, %vga_w.exit334.i.vga_w.exit334.i_crit_edge ]
  %188 = ptrtoint ptr %vga_font1.i50 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %vga_font1.i50, align 4
  %arrayidx49.i = getelementptr i8, ptr %189, i32 %i.1486.i
  %190 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %arrayidx49.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %conv.i.i328.i = and i32 %i.1486.i, 65535
  %add.ptr.i.i329.i = getelementptr i8, ptr %call, i32 %conv.i.i328.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i329.i, i8 %191) #4, !srcloc !20
  %inc51.i = add nuw i32 %i.1486.i, 1
  %192 = ptrtoint ptr %memsize to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %memsize, align 4
  %cmp45.i = icmp ult i32 %inc51.i, %193
  br i1 %cmp45.i, label %vga_w.exit334.i.vga_w.exit334.i_crit_edge, label %vga_w.exit334.i.if.end53.i_crit_edge

vga_w.exit334.i.if.end53.i_crit_edge:             ; preds = %vga_w.exit334.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end53.i

vga_w.exit334.i.vga_w.exit334.i_crit_edge:        ; preds = %vga_w.exit334.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vga_w.exit334.i

if.end53.i:                                       ; preds = %vga_w.exit334.i.if.end53.i_crit_edge, %vga_wgfx.exit326.i.if.end53.i_crit_edge, %if.end34.i.if.end53.i_crit_edge
  %194 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %flags, align 4
  %and55.i = and i32 %195, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i)
  %tobool56.not.i = icmp eq i32 %and55.i, 0
  br i1 %tobool56.not.i, label %if.end53.i.if.end87.i_crit_edge, label %if.then57.i

if.end53.i.if.end87.i_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end87.i

if.then57.i:                                      ; preds = %if.end53.i
  %196 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %state, align 4
  %tobool.not.i.i335.i = icmp eq ptr %197, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i335.i, label %if.else.i5.i339.i, label %if.then.i4.i338.i

if.then.i4.i338.i:                                ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i336.i = getelementptr i8, ptr %197, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i336.i, i8 2) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i337.i = getelementptr i8, ptr %197, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i337.i, i8 1) #4, !srcloc !20
  br label %vga_wseq.exit340.i

if.else.i5.i339.i:                                ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 2) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 1) #4, !srcloc !20
  br label %vga_wseq.exit340.i

vga_wseq.exit340.i:                               ; preds = %if.else.i5.i339.i, %if.then.i4.i338.i
  %198 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %state, align 4
  %tobool.not.i.i341.i = icmp eq ptr %199, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i341.i, label %if.else.i5.i345.i, label %if.then.i4.i344.i

if.then.i4.i344.i:                                ; preds = %vga_wseq.exit340.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i342.i = getelementptr i8, ptr %199, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i342.i, i8 4) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i343.i = getelementptr i8, ptr %199, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i343.i, i8 6) #4, !srcloc !20
  br label %vga_wseq.exit346.i

if.else.i5.i345.i:                                ; preds = %vga_wseq.exit340.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 4) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 6) #4, !srcloc !20
  br label %vga_wseq.exit346.i

vga_wseq.exit346.i:                               ; preds = %if.else.i5.i345.i, %if.then.i4.i344.i
  %200 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %state, align 4
  %tobool.not.i.i347.i = icmp eq ptr %201, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i347.i, label %if.else.i5.i351.i, label %if.then.i4.i350.i

if.then.i4.i350.i:                                ; preds = %vga_wseq.exit346.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i348.i = getelementptr i8, ptr %201, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i348.i, i8 4) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i349.i = getelementptr i8, ptr %201, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i349.i, i8 0) #4, !srcloc !20
  br label %vga_wgfx.exit352.i

if.else.i5.i351.i:                                ; preds = %vga_wseq.exit346.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 4) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 0) #4, !srcloc !20
  br label %vga_wgfx.exit352.i

vga_wgfx.exit352.i:                               ; preds = %if.else.i5.i351.i, %if.then.i4.i350.i
  %202 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %state, align 4
  %tobool.not.i.i353.i = icmp eq ptr %203, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i353.i, label %if.else.i5.i357.i, label %if.then.i4.i356.i

if.then.i4.i356.i:                                ; preds = %vga_wgfx.exit352.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i354.i = getelementptr i8, ptr %203, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i354.i, i8 5) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i355.i = getelementptr i8, ptr %203, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i355.i, i8 0) #4, !srcloc !20
  br label %vga_wgfx.exit358.i

if.else.i5.i357.i:                                ; preds = %vga_wgfx.exit352.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 5) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 0) #4, !srcloc !20
  br label %vga_wgfx.exit358.i

vga_wgfx.exit358.i:                               ; preds = %if.else.i5.i357.i, %if.then.i4.i356.i
  %204 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %state, align 4
  %tobool.not.i.i359.i = icmp eq ptr %205, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i359.i, label %if.else.i5.i363.i, label %if.then.i4.i362.i

if.then.i4.i362.i:                                ; preds = %vga_wgfx.exit358.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i360.i = getelementptr i8, ptr %205, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i360.i, i8 6) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i361.i = getelementptr i8, ptr %205, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i361.i, i8 5) #4, !srcloc !20
  br label %vga_wgfx.exit364.i

if.else.i5.i363.i:                                ; preds = %vga_wgfx.exit358.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 6) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 5) #4, !srcloc !20
  br label %vga_wgfx.exit364.i

vga_wgfx.exit364.i:                               ; preds = %if.else.i5.i363.i, %if.then.i4.i362.i
  %vga_text.i51 = getelementptr inbounds %struct.regstate, ptr %107, i32 0, i32 2
  br label %vga_w.exit372.i

vga_w.exit372.i:                                  ; preds = %vga_w.exit372.i.vga_w.exit372.i_crit_edge, %vga_wgfx.exit364.i
  %i.2488.i = phi i32 [ 0, %vga_wgfx.exit364.i ], [ %inc70.i, %vga_w.exit372.i.vga_w.exit372.i_crit_edge ]
  %206 = ptrtoint ptr %vga_text.i51 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %vga_text.i51, align 4
  %arrayidx68.i = getelementptr i8, ptr %207, i32 %i.2488.i
  %208 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %arrayidx68.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i367.i = getelementptr i8, ptr %call, i32 %i.2488.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i367.i, i8 %209) #4, !srcloc !20
  %inc70.i = add nuw nsw i32 %i.2488.i, 1
  %exitcond492.not.i = icmp eq i32 %inc70.i, 8192
  br i1 %exitcond492.not.i, label %for.end71.i, label %vga_w.exit372.i.vga_w.exit372.i_crit_edge

vga_w.exit372.i.vga_w.exit372.i_crit_edge:        ; preds = %vga_w.exit372.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vga_w.exit372.i

for.end71.i:                                      ; preds = %vga_w.exit372.i
  %210 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %state, align 4
  %tobool.not.i.i373.i = icmp eq ptr %211, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i373.i, label %if.else.i5.i377.i, label %if.then.i4.i376.i

if.then.i4.i376.i:                                ; preds = %for.end71.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i374.i = getelementptr i8, ptr %211, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i374.i, i8 2) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i375.i = getelementptr i8, ptr %211, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i375.i, i8 2) #4, !srcloc !20
  br label %vga_wseq.exit378.i

if.else.i5.i377.i:                                ; preds = %for.end71.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 2) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 2) #4, !srcloc !20
  br label %vga_wseq.exit378.i

vga_wseq.exit378.i:                               ; preds = %if.else.i5.i377.i, %if.then.i4.i376.i
  %212 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %state, align 4
  %tobool.not.i.i379.i = icmp eq ptr %213, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i379.i, label %if.else.i5.i383.i, label %if.then.i4.i382.i

if.then.i4.i382.i:                                ; preds = %vga_wseq.exit378.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i380.i = getelementptr i8, ptr %213, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i380.i, i8 4) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i381.i = getelementptr i8, ptr %213, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i381.i, i8 6) #4, !srcloc !20
  br label %vga_wseq.exit384.i

if.else.i5.i383.i:                                ; preds = %vga_wseq.exit378.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 4) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 6) #4, !srcloc !20
  br label %vga_wseq.exit384.i

vga_wseq.exit384.i:                               ; preds = %if.else.i5.i383.i, %if.then.i4.i382.i
  %214 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %state, align 4
  %tobool.not.i.i385.i = icmp eq ptr %215, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i385.i, label %if.else.i5.i389.i, label %if.then.i4.i388.i

if.then.i4.i388.i:                                ; preds = %vga_wseq.exit384.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i386.i = getelementptr i8, ptr %215, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i386.i, i8 4) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i387.i = getelementptr i8, ptr %215, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i387.i, i8 1) #4, !srcloc !20
  br label %vga_wgfx.exit390.i

if.else.i5.i389.i:                                ; preds = %vga_wseq.exit384.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 4) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 1) #4, !srcloc !20
  br label %vga_wgfx.exit390.i

vga_wgfx.exit390.i:                               ; preds = %if.else.i5.i389.i, %if.then.i4.i388.i
  %216 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %state, align 4
  %tobool.not.i.i391.i = icmp eq ptr %217, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i391.i, label %if.else.i5.i395.i, label %if.then.i4.i394.i

if.then.i4.i394.i:                                ; preds = %vga_wgfx.exit390.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i392.i = getelementptr i8, ptr %217, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i392.i, i8 5) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i393.i = getelementptr i8, ptr %217, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i393.i, i8 0) #4, !srcloc !20
  br label %vga_wgfx.exit396.i

if.else.i5.i395.i:                                ; preds = %vga_wgfx.exit390.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 5) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 0) #4, !srcloc !20
  br label %vga_wgfx.exit396.i

vga_wgfx.exit396.i:                               ; preds = %if.else.i5.i395.i, %if.then.i4.i394.i
  %218 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %state, align 4
  %tobool.not.i.i397.i = icmp eq ptr %219, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i397.i, label %if.else.i5.i401.i, label %if.then.i4.i400.i

if.then.i4.i400.i:                                ; preds = %vga_wgfx.exit396.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i398.i = getelementptr i8, ptr %219, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i398.i, i8 6) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i399.i = getelementptr i8, ptr %219, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i399.i, i8 5) #4, !srcloc !20
  br label %vga_w.exit410.i.preheader

if.else.i5.i401.i:                                ; preds = %vga_wgfx.exit396.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 6) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 5) #4, !srcloc !20
  br label %vga_w.exit410.i.preheader

vga_w.exit410.i.preheader:                        ; preds = %if.else.i5.i401.i, %if.then.i4.i400.i
  br label %vga_w.exit410.i

vga_w.exit410.i:                                  ; preds = %vga_w.exit410.i.vga_w.exit410.i_crit_edge, %vga_w.exit410.i.preheader
  %i.3490.i = phi i32 [ %inc85.i, %vga_w.exit410.i.vga_w.exit410.i_crit_edge ], [ 0, %vga_w.exit410.i.preheader ]
  %220 = ptrtoint ptr %vga_text.i51 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %vga_text.i51, align 4
  %add.i = add nuw nsw i32 %i.3490.i, 8192
  %arrayidx83.i = getelementptr i8, ptr %221, i32 %add.i
  %222 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %arrayidx83.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i405.i = getelementptr i8, ptr %call, i32 %i.3490.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i405.i, i8 %223) #4, !srcloc !20
  %inc85.i = add nuw nsw i32 %i.3490.i, 1
  %exitcond493.not.i = icmp eq i32 %inc85.i, 8192
  br i1 %exitcond493.not.i, label %vga_w.exit410.i.if.end87.i_crit_edge, label %vga_w.exit410.i.vga_w.exit410.i_crit_edge

vga_w.exit410.i.vga_w.exit410.i_crit_edge:        ; preds = %vga_w.exit410.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vga_w.exit410.i

vga_w.exit410.i.if.end87.i_crit_edge:             ; preds = %vga_w.exit410.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end87.i

if.end87.i:                                       ; preds = %vga_w.exit410.i.if.end87.i_crit_edge, %if.end53.i.if.end87.i_crit_edge
  %224 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %state, align 4
  %tobool.not.i.i411.i = icmp eq ptr %225, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i411.i, label %if.else.i5.i415.i, label %if.then.i4.i414.i

if.then.i4.i414.i:                                ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i412.i = getelementptr i8, ptr %225, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i412.i, i8 0) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i413.i = getelementptr i8, ptr %225, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i413.i, i8 1) #4, !srcloc !20
  br label %vga_wseq.exit416.i

if.else.i5.i415.i:                                ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 0) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 1) #4, !srcloc !20
  br label %vga_wseq.exit416.i

vga_wseq.exit416.i:                               ; preds = %if.else.i5.i415.i, %if.then.i4.i414.i
  %226 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %state, align 4
  %228 = and i8 %retval.0.i.i231.i, -33
  %tobool.not.i.i417.i = icmp eq ptr %227, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i417.i, label %if.else.i5.i421.i, label %if.then.i4.i420.i

if.then.i4.i420.i:                                ; preds = %vga_wseq.exit416.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i418.i = getelementptr i8, ptr %227, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i418.i, i8 1) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i419.i = getelementptr i8, ptr %227, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i419.i, i8 %228) #4, !srcloc !20
  br label %vga_wseq.exit422.i

if.else.i5.i421.i:                                ; preds = %vga_wseq.exit416.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %228) #4, !srcloc !20
  br label %vga_wseq.exit422.i

vga_wseq.exit422.i:                               ; preds = %if.else.i5.i421.i, %if.then.i4.i420.i
  %229 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %state, align 4
  %tobool.not.i.i423.i = icmp eq ptr %230, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i423.i, label %if.else.i5.i427.i, label %if.then.i4.i426.i

if.then.i4.i426.i:                                ; preds = %vga_wseq.exit422.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i424.i = getelementptr i8, ptr %230, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i424.i, i8 0) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i425.i = getelementptr i8, ptr %230, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i425.i, i8 3) #4, !srcloc !20
  br label %vga_wseq.exit428.i

if.else.i5.i427.i:                                ; preds = %vga_wseq.exit422.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 0) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 3) #4, !srcloc !20
  br label %vga_wseq.exit428.i

vga_wseq.exit428.i:                               ; preds = %if.else.i5.i427.i, %if.then.i4.i426.i
  %231 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %state, align 4
  %tobool.not.i.i429.i = icmp eq ptr %232, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i429.i, label %if.else.i5.i433.i, label %if.then.i4.i432.i

if.then.i4.i432.i:                                ; preds = %vga_wseq.exit428.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i430.i = getelementptr i8, ptr %232, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i430.i, i8 1) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i431.i = getelementptr i8, ptr %232, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i431.i, i8 %retval.0.i.i.i) #4, !srcloc !20
  br label %vga_wgfx.exit434.i

if.else.i5.i433.i:                                ; preds = %vga_wseq.exit428.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 1) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %retval.0.i.i.i) #4, !srcloc !20
  br label %vga_wgfx.exit434.i

vga_wgfx.exit434.i:                               ; preds = %if.else.i5.i433.i, %if.then.i4.i432.i
  %233 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %state, align 4
  %tobool.not.i.i435.i = icmp eq ptr %234, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i435.i, label %if.else.i5.i439.i, label %if.then.i4.i438.i

if.then.i4.i438.i:                                ; preds = %vga_wgfx.exit434.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i436.i = getelementptr i8, ptr %234, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i436.i, i8 3) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i437.i = getelementptr i8, ptr %234, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i437.i, i8 %retval.0.i.i183.i) #4, !srcloc !20
  br label %vga_wgfx.exit440.i

if.else.i5.i439.i:                                ; preds = %vga_wgfx.exit434.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 3) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %retval.0.i.i183.i) #4, !srcloc !20
  br label %vga_wgfx.exit440.i

vga_wgfx.exit440.i:                               ; preds = %if.else.i5.i439.i, %if.then.i4.i438.i
  %235 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %state, align 4
  %tobool.not.i.i441.i = icmp eq ptr %236, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i441.i, label %if.else.i5.i445.i, label %if.then.i4.i444.i

if.then.i4.i444.i:                                ; preds = %vga_wgfx.exit440.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i442.i = getelementptr i8, ptr %236, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i442.i, i8 4) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i443.i = getelementptr i8, ptr %236, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i443.i, i8 %retval.0.i.i190.i) #4, !srcloc !20
  br label %vga_wgfx.exit446.i

if.else.i5.i445.i:                                ; preds = %vga_wgfx.exit440.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 4) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %retval.0.i.i190.i) #4, !srcloc !20
  br label %vga_wgfx.exit446.i

vga_wgfx.exit446.i:                               ; preds = %if.else.i5.i445.i, %if.then.i4.i444.i
  %237 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %state, align 4
  %tobool.not.i.i447.i = icmp eq ptr %238, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i447.i, label %if.else.i5.i451.i, label %if.then.i4.i450.i

if.then.i4.i450.i:                                ; preds = %vga_wgfx.exit446.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i448.i = getelementptr i8, ptr %238, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i448.i, i8 5) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i449.i = getelementptr i8, ptr %238, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i449.i, i8 %retval.0.i.i197.i) #4, !srcloc !20
  br label %vga_wgfx.exit452.i

if.else.i5.i451.i:                                ; preds = %vga_wgfx.exit446.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 5) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %retval.0.i.i197.i) #4, !srcloc !20
  br label %vga_wgfx.exit452.i

vga_wgfx.exit452.i:                               ; preds = %if.else.i5.i451.i, %if.then.i4.i450.i
  %239 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %state, align 4
  %tobool.not.i.i453.i = icmp eq ptr %240, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i453.i, label %if.else.i5.i457.i, label %if.then.i4.i456.i

if.then.i4.i456.i:                                ; preds = %vga_wgfx.exit452.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i454.i = getelementptr i8, ptr %240, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i454.i, i8 6) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i455.i = getelementptr i8, ptr %240, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i455.i, i8 %retval.0.i.i204.i) #4, !srcloc !20
  br label %vga_wgfx.exit458.i

if.else.i5.i457.i:                                ; preds = %vga_wgfx.exit452.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 6) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %retval.0.i.i204.i) #4, !srcloc !20
  br label %vga_wgfx.exit458.i

vga_wgfx.exit458.i:                               ; preds = %if.else.i5.i457.i, %if.then.i4.i456.i
  %241 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %state, align 4
  %tobool.not.i.i459.i = icmp eq ptr %242, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i459.i, label %if.else.i5.i463.i, label %if.then.i4.i462.i

if.then.i4.i462.i:                                ; preds = %vga_wgfx.exit458.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i460.i = getelementptr i8, ptr %242, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i460.i, i8 8) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i461.i = getelementptr i8, ptr %242, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i461.i, i8 %retval.0.i.i211.i) #4, !srcloc !20
  br label %vga_wgfx.exit464.i

if.else.i5.i463.i:                                ; preds = %vga_wgfx.exit458.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 8) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %retval.0.i.i211.i) #4, !srcloc !20
  br label %vga_wgfx.exit464.i

vga_wgfx.exit464.i:                               ; preds = %if.else.i5.i463.i, %if.then.i4.i462.i
  %243 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %state, align 4
  %tobool.not.i.i465.i = icmp eq ptr %244, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i465.i, label %if.else.i5.i469.i, label %if.then.i4.i468.i

if.then.i4.i468.i:                                ; preds = %vga_wgfx.exit464.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i466.i = getelementptr i8, ptr %244, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i466.i, i8 1) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i467.i = getelementptr i8, ptr %244, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i467.i, i8 %retval.0.i.i231.i) #4, !srcloc !20
  br label %vga_wseq.exit470.i

if.else.i5.i469.i:                                ; preds = %vga_wgfx.exit464.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %retval.0.i.i231.i) #4, !srcloc !20
  br label %vga_wseq.exit470.i

vga_wseq.exit470.i:                               ; preds = %if.else.i5.i469.i, %if.then.i4.i468.i
  %245 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %state, align 4
  %tobool.not.i.i471.i = icmp eq ptr %246, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i471.i, label %if.else.i5.i475.i, label %if.then.i4.i474.i

if.then.i4.i474.i:                                ; preds = %vga_wseq.exit470.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i472.i = getelementptr i8, ptr %246, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i472.i, i8 2) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i473.i = getelementptr i8, ptr %246, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i473.i, i8 %retval.0.i.i218.i) #4, !srcloc !20
  br label %vga_wseq.exit476.i

if.else.i5.i475.i:                                ; preds = %vga_wseq.exit470.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 2) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %retval.0.i.i218.i) #4, !srcloc !20
  br label %vga_wseq.exit476.i

vga_wseq.exit476.i:                               ; preds = %if.else.i5.i475.i, %if.then.i4.i474.i
  %247 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %state, align 4
  %tobool.not.i.i477.i = icmp eq ptr %248, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i477.i, label %if.else.i5.i481.i, label %if.then.i4.i480.i

if.then.i4.i480.i:                                ; preds = %vga_wseq.exit476.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i478.i = getelementptr i8, ptr %248, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i478.i, i8 4) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.i3.i479.i = getelementptr i8, ptr %248, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i479.i, i8 %retval.0.i.i224.i) #4, !srcloc !20
  br label %cleanup

if.else.i5.i481.i:                                ; preds = %vga_wseq.exit476.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 4) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %retval.0.i.i224.i) #4, !srcloc !20
  br label %cleanup

cleanup:                                          ; preds = %if.else.i5.i481.i, %if.then.i4.i480.i
  tail call void @iounmap(ptr noundef nonnull %call) #4
  br label %if.end10

if.end10:                                         ; preds = %cleanup, %if.end2.if.end10_crit_edge
  %249 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %flags, align 4
  %and12 = and i32 %250, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end10.if.end15_crit_edge, label %if.then14

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.then14:                                        ; preds = %if.end10
  %251 = ptrtoint ptr %vidstate to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %vidstate, align 4
  %253 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %state, align 4
  %tobool.not.i.i53 = icmp eq ptr %254, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i.i53, label %if.else.i.i56, label %if.then.i.i55

if.then.i.i55:                                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i54 = getelementptr i8, ptr %254, i32 966
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i54, i8 -1) #4, !srcloc !20
  br label %vga_w.exit.i57

if.else.i.i56:                                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873402 to ptr), i8 -1) #4, !srcloc !20
  br label %vga_w.exit.i57

vga_w.exit.i57:                                   ; preds = %if.else.i.i56, %if.then.i.i55
  %255 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %state, align 4
  %tobool.not.i8.i = icmp eq ptr %256, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i8.i, label %if.else.i11.i, label %if.then.i10.i

if.then.i10.i:                                    ; preds = %vga_w.exit.i57
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i9.i = getelementptr i8, ptr %256, i32 968
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i9.i, i8 0) #4, !srcloc !20
  br label %vga_w.exit12.i

if.else.i11.i:                                    ; preds = %vga_w.exit.i57
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873400 to ptr), i8 0) #4, !srcloc !20
  br label %vga_w.exit12.i

vga_w.exit12.i:                                   ; preds = %if.else.i11.i, %if.then.i10.i
  %vga_cmap.i58 = getelementptr inbounds %struct.regstate, ptr %252, i32 0, i32 3
  br label %for.body.i60

for.body.i60:                                     ; preds = %vga_w.exit17.i.for.body.i60_crit_edge, %vga_w.exit12.i
  %i.018.i = phi i32 [ 0, %vga_w.exit12.i ], [ %inc.i61, %vga_w.exit17.i.for.body.i60_crit_edge ]
  %257 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %state, align 4
  %259 = ptrtoint ptr %vga_cmap.i58 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %vga_cmap.i58, align 4
  %arrayidx.i59 = getelementptr i8, ptr %260, i32 %i.018.i
  %261 = ptrtoint ptr %arrayidx.i59 to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %arrayidx.i59, align 1
  %tobool.not.i13.i = icmp eq ptr %258, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not.i13.i, label %if.else.i16.i, label %if.then.i15.i

if.then.i15.i:                                    ; preds = %for.body.i60
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i14.i = getelementptr i8, ptr %258, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i14.i, i8 %262) #4, !srcloc !20
  br label %vga_w.exit17.i

if.else.i16.i:                                    ; preds = %for.body.i60
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %262) #4, !srcloc !20
  br label %vga_w.exit17.i

vga_w.exit17.i:                                   ; preds = %if.else.i16.i, %if.then.i15.i
  %inc.i61 = add nuw nsw i32 %i.018.i, 1
  %exitcond.not.i62 = icmp eq i32 %inc.i61, 768
  br i1 %exitcond.not.i62, label %vga_w.exit17.i.if.end15_crit_edge, label %vga_w.exit17.i.for.body.i60_crit_edge

vga_w.exit17.i.for.body.i60_crit_edge:            ; preds = %vga_w.exit17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i60

vga_w.exit17.i.if.end15_crit_edge:                ; preds = %vga_w.exit17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.end15:                                         ; preds = %vga_w.exit17.i.if.end15_crit_edge, %if.end10.if.end15_crit_edge
  %263 = ptrtoint ptr %vidstate to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %vidstate, align 4
  %cmp.not.i65 = icmp eq ptr %264, null
  br i1 %cmp.not.i65, label %if.end15.return_crit_edge, label %if.end15.return.sink.split_crit_edge

if.end15.return.sink.split_crit_edge:             ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %return.sink.split

if.end15.return_crit_edge:                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

return.sink.split:                                ; preds = %if.end15.return.sink.split_crit_edge, %if.then8.return.sink.split_crit_edge
  %.sink83 = phi ptr [ %107, %if.then8.return.sink.split_crit_edge ], [ %264, %if.end15.return.sink.split_crit_edge ]
  %retval.1.ph = phi i32 [ 1, %if.then8.return.sink.split_crit_edge ], [ 0, %if.end15.return.sink.split_crit_edge ]
  %265 = ptrtoint ptr %.sink83 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %.sink83, align 4
  tail call void @vfree(ptr noundef %266) #4
  %vga_font1.i = getelementptr inbounds %struct.regstate, ptr %.sink83, i32 0, i32 1
  %267 = ptrtoint ptr %vga_font1.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %vga_font1.i, align 4
  tail call void @vfree(ptr noundef %268) #4
  %vga_text.i = getelementptr inbounds %struct.regstate, ptr %.sink83, i32 0, i32 2
  %269 = ptrtoint ptr %vga_text.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %vga_text.i, align 4
  tail call void @vfree(ptr noundef %270) #4
  %vga_cmap.i = getelementptr inbounds %struct.regstate, ptr %.sink83, i32 0, i32 3
  %271 = ptrtoint ptr %vga_cmap.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %vga_cmap.i, align 4
  tail call void @vfree(ptr noundef %272) #4
  %attr.i29 = getelementptr inbounds %struct.regstate, ptr %.sink83, i32 0, i32 4
  %273 = ptrtoint ptr %attr.i29 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %attr.i29, align 4
  tail call void @vfree(ptr noundef %274) #4
  tail call void @kfree(ptr noundef nonnull %.sink83) #4
  %275 = ptrtoint ptr %vidstate to i32
  call void @__asan_store4_noabort(i32 %275)
  store ptr null, ptr %vidstate, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %if.end15.return_crit_edge, %if.then8.return_crit_edge, %entry.return_crit_edge
  %retval.1 = phi i32 [ 1, %entry.return_crit_edge ], [ 0, %if.end15.return_crit_edge ], [ 1, %if.then8.return_crit_edge ], [ %retval.1.ph, %return.sink.split ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @__ksymtab_save_vga, !1, !"__ksymtab_save_vga", i1 false, i1 false}
!1 = !{!"../drivers/video/vgastate.c", i32 484, i32 1}
!2 = !{ptr @__ksymtab_restore_vga, !3, !"__ksymtab_restore_vga", i1 false, i1 false}
!3 = !{!"../drivers/video/vgastate.c", i32 485, i32 1}
!4 = !{ptr @__UNIQUE_ID_author301, !5, !"__UNIQUE_ID_author301", i1 false, i1 false}
!5 = !{!"../drivers/video/vgastate.c", i32 487, i32 1}
!6 = !{ptr @__UNIQUE_ID_description302, !7, !"__UNIQUE_ID_description302", i1 false, i1 false}
!7 = !{!"../drivers/video/vgastate.c", i32 488, i32 1}
!8 = !{ptr @__UNIQUE_ID_file303, !9, !"__UNIQUE_ID_file303", i1 false, i1 false}
!9 = !{!"../drivers/video/vgastate.c", i32 489, i32 1}
!10 = !{ptr @__UNIQUE_ID_license304, !9, !"__UNIQUE_ID_license304", i1 false, i1 false}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{i64 5131062}
!21 = !{i64 5131457}
!22 = !{i64 2155846981}
!23 = !{i64 2152665133}
!24 = !{i64 2155847361}
!25 = !{i64 2152667118}
