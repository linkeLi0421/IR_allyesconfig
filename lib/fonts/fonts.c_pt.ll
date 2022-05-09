; ModuleID = '/llk/IR_all_yes/lib/fonts/fonts.c_pt.bc'
source_filename = "../lib/fonts/fonts.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+find_font\22, \22a\22\09"
module asm "\09.weak\09__crc_find_font\09\09\09\09"
module asm "\09.long\09__crc_find_font\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_find_font:\09\09\09\09\09"
module asm "\09.asciz \09\22find_font\22\09\09\09\09\09"
module asm "__kstrtabns_find_font:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+get_default_font\22, \22a\22\09"
module asm "\09.weak\09__crc_get_default_font\09\09\09\09"
module asm "\09.long\09__crc_get_default_font\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_default_font:\09\09\09\09\09"
module asm "\09.asciz \09\22get_default_font\22\09\09\09\09\09"
module asm "__kstrtabns_get_default_font:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.font_desc = type { i32, ptr, i32, i32, i32, ptr, i32 }

@fonts = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @font_vga_8x8, ptr @font_vga_8x16, ptr @font_vga_6x11, ptr @font_7x14, ptr @font_sun_8x16, ptr @font_sun_12x22, ptr @font_10x18, ptr @font_acorn_8x8, ptr @font_pearl_8x8, ptr @font_mini_4x6, ptr @font_6x10, ptr @font_ter_16x32, ptr @font_6x8], [44 x i8] zeroinitializer }, align 32
@__kstrtab_find_font = external dso_local constant [0 x i8], align 1
@__kstrtabns_find_font = external dso_local constant [0 x i8], align 1
@__ksymtab_find_font = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @find_font to i32), ptr @__kstrtab_find_font, ptr @__kstrtabns_find_font }, section "___ksymtab+find_font", align 4
@__kstrtab_get_default_font = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_default_font = external dso_local constant [0 x i8], align 1
@__ksymtab_get_default_font = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_default_font to i32), ptr @__kstrtab_get_default_font, ptr @__kstrtabns_get_default_font }, section "___ksymtab+get_default_font", align 4
@__UNIQUE_ID_author107 = internal constant [50 x i8] c"font.author=James Simmons <jsimmons@users.sf.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description108 = internal constant [31 x i8] c"font.description=Console Fonts\00", section ".modinfo", align 1
@__UNIQUE_ID_file109 = internal constant [25 x i8] c"font.file=lib/fonts/font\00", section ".modinfo", align 1
@__UNIQUE_ID_license110 = internal constant [17 x i8] c"font.license=GPL\00", section ".modinfo", align 1
@font_vga_8x8 = external dso_local constant %struct.font_desc, align 4
@font_vga_8x16 = external dso_local constant %struct.font_desc, align 4
@font_vga_6x11 = external dso_local constant %struct.font_desc, align 4
@font_7x14 = external dso_local constant %struct.font_desc, align 4
@font_sun_8x16 = external dso_local constant %struct.font_desc, align 4
@font_sun_12x22 = external dso_local constant %struct.font_desc, align 4
@font_10x18 = external dso_local constant %struct.font_desc, align 4
@font_acorn_8x8 = external dso_local constant %struct.font_desc, align 4
@font_pearl_8x8 = external dso_local constant %struct.font_desc, align 4
@font_mini_4x6 = external dso_local constant %struct.font_desc, align 4
@font_6x10 = external dso_local constant %struct.font_desc, align 4
@font_ter_16x32 = external dso_local constant %struct.font_desc, align 4
@font_6x8 = external dso_local constant %struct.font_desc, align 4
@___asan_gen_.1 = private unnamed_addr constant [6 x i8] c"fonts\00", align 1
@___asan_gen_.2 = private constant [21 x i8] c"../lib/fonts/fonts.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 23, i32 32 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author107, ptr @__UNIQUE_ID_description108, ptr @__UNIQUE_ID_file109, ptr @__UNIQUE_ID_license110, ptr @__ksymtab_find_font, ptr @__ksymtab_get_default_font, ptr @fonts], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fonts to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @find_font(ptr nocapture noundef readonly %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.font_desc, ptr @font_vga_8x8, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.font_desc, ptr @font_vga_8x8, i32 0, i32 1), align 4
  %call = tail call i32 @strcmp(ptr noundef %0, ptr noundef %name) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.font_desc, ptr @font_vga_8x16, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.font_desc, ptr @font_vga_8x16, i32 0, i32 1), align 4
  %call.1 = tail call i32 @strcmp(ptr noundef %1, ptr noundef %name) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.cond.cleanup_crit_edge, label %for.cond.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.font_desc, ptr @font_vga_6x11, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.font_desc, ptr @font_vga_6x11, i32 0, i32 1), align 4
  %call.2 = tail call i32 @strcmp(ptr noundef %2, ptr noundef %name) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %for.cond.1.cleanup_crit_edge, label %for.cond.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.font_desc, ptr @font_7x14, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.font_desc, ptr @font_7x14, i32 0, i32 1), align 4
  %call.3 = tail call i32 @strcmp(ptr noundef %3, ptr noundef %name) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool.not.3, label %for.cond.2.cleanup_crit_edge, label %for.cond.3

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.font_desc, ptr @font_sun_8x16, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.font_desc, ptr @font_sun_8x16, i32 0, i32 1), align 4
  %call.4 = tail call i32 @strcmp(ptr noundef %4, ptr noundef %name) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %tobool.not.4 = icmp eq i32 %call.4, 0
  br i1 %tobool.not.4, label %for.cond.3.cleanup_crit_edge, label %for.cond.4

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.font_desc, ptr @font_sun_12x22, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.font_desc, ptr @font_sun_12x22, i32 0, i32 1), align 4
  %call.5 = tail call i32 @strcmp(ptr noundef %5, ptr noundef %name) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %tobool.not.5 = icmp eq i32 %call.5, 0
  br i1 %tobool.not.5, label %for.cond.4.cleanup_crit_edge, label %for.cond.5

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.5:                                       ; preds = %for.cond.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.font_desc, ptr @font_10x18, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.font_desc, ptr @font_10x18, i32 0, i32 1), align 4
  %call.6 = tail call i32 @strcmp(ptr noundef %6, ptr noundef %name) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6)
  %tobool.not.6 = icmp eq i32 %call.6, 0
  br i1 %tobool.not.6, label %for.cond.5.cleanup_crit_edge, label %for.cond.6

for.cond.5.cleanup_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.6:                                       ; preds = %for.cond.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.font_desc, ptr @font_acorn_8x8, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.font_desc, ptr @font_acorn_8x8, i32 0, i32 1), align 4
  %call.7 = tail call i32 @strcmp(ptr noundef %7, ptr noundef %name) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7)
  %tobool.not.7 = icmp eq i32 %call.7, 0
  br i1 %tobool.not.7, label %for.cond.6.cleanup_crit_edge, label %for.cond.7

for.cond.6.cleanup_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.7:                                       ; preds = %for.cond.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.font_desc, ptr @font_pearl_8x8, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.font_desc, ptr @font_pearl_8x8, i32 0, i32 1), align 4
  %call.8 = tail call i32 @strcmp(ptr noundef %8, ptr noundef %name) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.8)
  %tobool.not.8 = icmp eq i32 %call.8, 0
  br i1 %tobool.not.8, label %for.cond.7.cleanup_crit_edge, label %for.cond.8

for.cond.7.cleanup_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.8:                                       ; preds = %for.cond.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.font_desc, ptr @font_mini_4x6, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.font_desc, ptr @font_mini_4x6, i32 0, i32 1), align 4
  %call.9 = tail call i32 @strcmp(ptr noundef %9, ptr noundef %name) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.9)
  %tobool.not.9 = icmp eq i32 %call.9, 0
  br i1 %tobool.not.9, label %for.cond.8.cleanup_crit_edge, label %for.cond.9

for.cond.8.cleanup_crit_edge:                     ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.9:                                       ; preds = %for.cond.8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.font_desc, ptr @font_6x10, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.font_desc, ptr @font_6x10, i32 0, i32 1), align 4
  %call.10 = tail call i32 @strcmp(ptr noundef %10, ptr noundef %name) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.10)
  %tobool.not.10 = icmp eq i32 %call.10, 0
  br i1 %tobool.not.10, label %for.cond.9.cleanup_crit_edge, label %for.cond.10

for.cond.9.cleanup_crit_edge:                     ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.10:                                      ; preds = %for.cond.9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.font_desc, ptr @font_ter_16x32, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.font_desc, ptr @font_ter_16x32, i32 0, i32 1), align 4
  %call.11 = tail call i32 @strcmp(ptr noundef %11, ptr noundef %name) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.11)
  %tobool.not.11 = icmp eq i32 %call.11, 0
  br i1 %tobool.not.11, label %for.cond.10.cleanup_crit_edge, label %for.cond.11

for.cond.10.cleanup_crit_edge:                    ; preds = %for.cond.10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.11:                                      ; preds = %for.cond.10
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.font_desc, ptr @font_6x8, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.font_desc, ptr @font_6x8, i32 0, i32 1), align 4
  %call.12 = tail call i32 @strcmp(ptr noundef %12, ptr noundef %name) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.12)
  %tobool.not.12 = icmp eq i32 %call.12, 0
  %spec.select = select i1 %tobool.not.12, ptr @font_6x8, ptr null
  br label %cleanup

cleanup:                                          ; preds = %for.cond.11, %for.cond.10.cleanup_crit_edge, %for.cond.9.cleanup_crit_edge, %for.cond.8.cleanup_crit_edge, %for.cond.7.cleanup_crit_edge, %for.cond.6.cleanup_crit_edge, %for.cond.5.cleanup_crit_edge, %for.cond.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ @font_vga_8x8, %entry.cleanup_crit_edge ], [ @font_vga_8x16, %for.cond.cleanup_crit_edge ], [ @font_vga_6x11, %for.cond.1.cleanup_crit_edge ], [ @font_7x14, %for.cond.2.cleanup_crit_edge ], [ @font_sun_8x16, %for.cond.3.cleanup_crit_edge ], [ @font_sun_12x22, %for.cond.4.cleanup_crit_edge ], [ @font_10x18, %for.cond.5.cleanup_crit_edge ], [ @font_acorn_8x8, %for.cond.6.cleanup_crit_edge ], [ @font_pearl_8x8, %for.cond.7.cleanup_crit_edge ], [ @font_mini_4x6, %for.cond.8.cleanup_crit_edge ], [ @font_6x10, %for.cond.9.cleanup_crit_edge ], [ @font_ter_16x32, %for.cond.10.cleanup_crit_edge ], [ %spec.select, %for.cond.11 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @get_default_font(i32 noundef %xres, i32 noundef %yres, i32 noundef %font_w, i32 noundef %font_h) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 399, i32 %yres)
  %cmp1 = icmp sgt i32 %yres, 399
  br label %for.body

for.body:                                         ; preds = %if.end23.for.body_crit_edge, %entry
  %g.047 = phi ptr [ null, %entry ], [ %spec.select44, %if.end23.for.body_crit_edge ]
  %cc.046 = phi i32 [ -10000, %entry ], [ %8, %if.end23.for.body_crit_edge ]
  %i.045 = phi i32 [ 0, %entry ], [ %inc, %if.end23.for.body_crit_edge ]
  %arrayidx = getelementptr [13 x ptr], ptr @fonts, i32 0, i32 %i.045
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %pref = getelementptr inbounds %struct.font_desc, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %pref to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pref, align 4
  %height = getelementptr inbounds %struct.font_desc, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %5)
  %cmp2 = icmp ult i32 %5, 9
  %cmp4 = xor i1 %cmp1, %cmp2
  %add = add i32 %3, 1000
  %spec.select = select i1 %cmp4, i32 %add, i32 %3
  %width = getelementptr inbounds %struct.font_desc, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %width, align 4
  %div = udiv i32 %xres, %7
  %div7 = udiv i32 %yres, %5
  %mul = mul i32 %div7, %div
  call void @__sanitizer_cov_trace_const_cmp4(i32 20999, i32 %mul)
  %cmp9 = icmp ugt i32 %mul, 20999
  %div8 = udiv i32 %mul, 1000
  %sub = sub nsw i32 20, %div8
  %add12 = select i1 %cmp9, i32 %sub, i32 0
  %c.1 = add i32 %add12, %spec.select
  %sub15 = add i32 %7, -1
  %shl = shl nuw i32 1, %sub15
  %and = and i32 %shl, %font_w
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.if.end23_crit_edge, label %land.lhs.true

for.body.if.end23_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

land.lhs.true:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %sub17 = add i32 %5, -1
  %shl18 = shl nuw i32 1, %sub17
  %and19 = and i32 %shl18, %font_h
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %add22 = add i32 %c.1, 1000
  %spec.select42 = select i1 %tobool20.not, i32 %c.1, i32 %add22
  br label %if.end23

if.end23:                                         ; preds = %land.lhs.true, %for.body.if.end23_crit_edge
  %c.2 = phi i32 [ %c.1, %for.body.if.end23_crit_edge ], [ %spec.select42, %land.lhs.true ]
  call void @__sanitizer_cov_trace_cmp4(i32 %c.2, i32 %cc.046)
  %cmp24 = icmp sgt i32 %c.2, %cc.046
  %8 = tail call i32 @llvm.smax.i32(i32 %c.2, i32 %cc.046)
  %spec.select44 = select i1 %cmp24, ptr %1, ptr %g.047
  %inc = add nuw nsw i32 %i.045, 1
  %exitcond.not = icmp eq i32 %inc, 13
  br i1 %exitcond.not, label %for.end, label %if.end23.for.body_crit_edge

if.end23.for.body_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  ret ptr %spec.select44
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @__ksymtab_find_font, !1, !"__ksymtab_find_font", i1 false, i1 false}
!1 = !{!"../lib/fonts/fonts.c", i32 92, i32 1}
!2 = !{ptr @__ksymtab_get_default_font, !3, !"__ksymtab_get_default_font", i1 false, i1 false}
!3 = !{!"../lib/fonts/fonts.c", i32 149, i32 1}
!4 = !{ptr @__UNIQUE_ID_author107, !5, !"__UNIQUE_ID_author107", i1 false, i1 false}
!5 = !{!"../lib/fonts/fonts.c", i32 151, i32 1}
!6 = !{ptr @__UNIQUE_ID_description108, !7, !"__UNIQUE_ID_description108", i1 false, i1 false}
!7 = !{!"../lib/fonts/fonts.c", i32 152, i32 1}
!8 = !{ptr @__UNIQUE_ID_file109, !9, !"__UNIQUE_ID_file109", i1 false, i1 false}
!9 = !{!"../lib/fonts/fonts.c", i32 153, i32 1}
!10 = !{ptr @__UNIQUE_ID_license110, !9, !"__UNIQUE_ID_license110", i1 false, i1 false}
!11 = !{ptr @fonts, !12, !"fonts", i1 false, i1 false}
!12 = !{!"../lib/fonts/fonts.c", i32 23, i32 32}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
