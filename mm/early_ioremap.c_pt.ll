; ModuleID = '/llk/IR_all_yes/mm/early_ioremap.c_pt.bc'
source_filename = "../mm/early_ioremap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.obs_kernel_param = type { ptr, ptr, i32 }

@__setup_str_early_ioremap_debug_setup = internal constant [20 x i8] c"early_ioremap_debug\00", section ".init.rodata", align 1
@__setup_early_ioremap_debug_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_early_ioremap_debug_setup, ptr @early_ioremap_debug_setup, i32 1 }, section ".init.setup", align 4
@after_paging_init = internal unnamed_addr global i1 false, section ".init.data", align 4
@prev_map = internal unnamed_addr global [7 x ptr] zeroinitializer, section ".init.data", align 4
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mm/early_ioremap.c\00", [45 x i8] zeroinitializer }, align 32
@slot_virt = internal unnamed_addr global [7 x i32] zeroinitializer, section ".init.data", align 4
@__initcall__kmod_early_ioremap__227_98_check_early_ioremap_leak7 = internal global ptr @check_early_ioremap_leak, section ".initcall7.init", align 4
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s(%p, %08lx) not found slot\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.early_iounmap = private unnamed_addr constant [14 x i8] c"early_iounmap\00", align 1
@prev_size = internal unnamed_addr global [7 x i32] zeroinitializer, section ".init.data", align 4
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s(%p, %08lx) [%d] size not consistent %08lx\0A\00", [50 x i8] zeroinitializer }, align 32
@early_ioremap_debug = internal unnamed_addr global i1 false, section ".init.data", align 4
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s(%p, %08lx) [%d]\0A\00", [44 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.4 = internal constant { [118 x i8], [42 x i8] } { [118 x i8] c"\014Debug warning: early ioremap leak of %d areas detected.\0Aplease boot with early_ioremap_debug and report the dmesg.\0A\00", [42 x i8] zeroinitializer }, align 32
@system_state = external dso_local local_unnamed_addr global i32, align 4
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s(%pa, %08lx) not found slot\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.__early_ioremap = private unnamed_addr constant [16 x i8] c"__early_ioremap\00", align 1
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s(%pa, %08lx) [%d] => %08lx + %08lx\0A\00", [58 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 75, i32 7 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 179, i32 6 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 183, i32 6 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 188, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 91, i32 6 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 119, i32 6 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private constant [22 x i8] c"../mm/early_ioremap.c\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 156, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__initcall__kmod_early_ioremap__227_98_check_early_ioremap_leak7, ptr @__setup_early_ioremap_debug_setup, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 118, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @early_ioremap_debug_setup(ptr nocapture noundef readnone %str) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @early_ioremap_debug, align 4
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @early_memremap_pgprot_adjust(i32 noundef %phys_addr, i32 noundef %size, i32 noundef %prot) local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 %prot
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @early_ioremap_reset() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @after_paging_init, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @early_ioremap_setup() local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.038, 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %for.cond.for.body25.preheader_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.cond.for.body25.preheader_crit_edge:          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body25.preheader

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.038 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr [7 x ptr], ptr @prev_map, i32 0, i32 %i.038
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.cond, label %do.end, !prof !40

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 75, i32 noundef 9, ptr noundef null) #4
  br label %for.body25.preheader

for.body25.preheader:                             ; preds = %do.end, %for.cond.for.body25.preheader_crit_edge
  br label %for.body25

for.body25:                                       ; preds = %for.body25.for.body25_crit_edge, %for.body25.preheader
  %i.139 = phi i32 [ %inc29, %for.body25.for.body25_crit_edge ], [ 0, %for.body25.preheader ]
  %sub.neg = shl i32 %i.139, 17
  %sub26 = add nuw nsw i32 %sub.neg, -1970176
  %arrayidx27 = getelementptr [7 x i32], ptr @slot_virt, i32 0, i32 %i.139
  %2 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %sub26, ptr %arrayidx27, align 4
  %inc29 = add nuw nsw i32 %i.139, 1
  %exitcond40.not = icmp eq i32 %inc29, 7
  br i1 %exitcond40.not, label %for.end30, label %for.body25.for.body25_crit_edge

for.body25.for.body25_crit_edge:                  ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body25

for.end30:                                        ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @check_early_ioremap_leak() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.034 = phi i32 [ 0, %entry ], [ %inc1, %for.body.for.body_crit_edge ]
  %count.033 = phi i32 [ 0, %entry ], [ %spec.select, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [7 x ptr], ptr @prev_map, i32 0, i32 %i.034
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp ne ptr %1, null
  %inc = zext i1 %tobool.not to i32
  %spec.select = add i32 %count.033, %inc
  %inc1 = add nuw nsw i32 %i.034, 1
  %exitcond.not = icmp eq i32 %inc1, 7
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool2.not = icmp eq i32 %spec.select, 0
  br i1 %tobool2.not, label %for.end.if.end17_crit_edge, label %do.end, !prof !40

for.end.if.end17_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 94, i32 noundef 9, ptr noundef nonnull @.str.4, i32 noundef %spec.select) #4
  br label %if.end17

if.end17:                                         ; preds = %do.end, %for.end.if.end17_crit_edge
  %not.tobool2.not = xor i1 %tobool2.not, true
  %. = zext i1 %not.tobool2.not to i32
  ret i32 %.
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @early_iounmap(ptr noundef %addr, i32 noundef %size) local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.0172 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [7 x ptr], ptr @prev_map, i32 0, i32 %i.0172
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp1 = icmp eq ptr %1, %addr
  br i1 %cmp1, label %if.end25, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0172, 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %do.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

do.end:                                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 180, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.early_iounmap, ptr noundef %addr, i32 noundef %size) #4
  br label %cleanup

if.end25:                                         ; preds = %for.body
  %arrayidx27 = getelementptr [7 x i32], ptr @prev_size, i32 0, i32 %i.0172
  %2 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx27, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %size)
  %cmp28.not = icmp eq i32 %3, %size
  br i1 %cmp28.not, label %if.end61, label %do.end44, !prof !40

do.end44:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 185, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.early_iounmap, ptr noundef %addr, i32 noundef %size, i32 noundef %i.0172, i32 noundef %3) #4
  br label %cleanup

if.end61:                                         ; preds = %if.end25
  %.b166 = load i1, ptr @early_ioremap_debug, align 4
  br i1 %.b166, label %do.end79, label %if.end61.if.end85_crit_edge, !prof !41

if.end61.if.end85_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end85

do.end79:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 189, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.early_iounmap, ptr noundef %addr, i32 noundef %size, i32 noundef %i.0172) #4
  br label %if.end85

if.end85:                                         ; preds = %do.end79, %if.end61.if.end85_crit_edge
  %cmp94 = icmp ult ptr %addr, inttoptr (i32 -1970176 to ptr)
  br i1 %cmp94, label %do.end110, label %if.end126, !prof !41

do.end110:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 192, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end126:                                        ; preds = %if.end85
  %4 = ptrtoint ptr %addr to i32
  %and = and i32 %4, 4095
  %add = add i32 %size, 4095
  %add127 = add i32 %add, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add127)
  %cmp129.not173 = icmp ult i32 %add127, 4096
  br i1 %cmp129.not173, label %if.end126.while.end_crit_edge, label %while.body.preheader

if.end126.while.end_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.preheader:                             ; preds = %if.end126
  %mul.neg = mul nsw i32 %i.0172, -32
  %sub = add nsw i32 %mul.neg, 224
  %shr = lshr i32 %add127, 12
  br label %while.body

while.body:                                       ; preds = %if.else.while.body_crit_edge, %while.body.preheader
  %nrpages.0175 = phi i32 [ %dec133, %if.else.while.body_crit_edge ], [ %shr, %while.body.preheader ]
  %idx.0174 = phi i32 [ %dec, %if.else.while.body_crit_edge ], [ %sub, %while.body.preheader ]
  %.b = load i1, ptr @after_paging_init, align 4
  br i1 %.b, label %if.then131, label %if.else

if.then131:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/early_ioremap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 62, 0\0A.popsection", ""() #4, !srcloc !42
  unreachable

if.else:                                          ; preds = %while.body
  tail call void @__set_fixmap(i32 noundef %idx.0174, i32 noundef 0, i32 noundef 0) #4
  %dec = add i32 %idx.0174, -1
  %dec133 = add i32 %nrpages.0175, -1
  %cmp129.not = icmp eq i32 %dec133, 0
  br i1 %cmp129.not, label %if.else.while.end_crit_edge, label %if.else.while.body_crit_edge

if.else.while.body_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

if.else.while.end_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %if.else.while.end_crit_edge, %if.end126.while.end_crit_edge
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end110, %do.end44, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__set_fixmap(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @early_ioremap(i32 noundef %phys_addr, i32 noundef %size) local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @__early_ioremap(i32 noundef %phys_addr, i32 noundef %size, i32 noundef 1619) #7
  ret ptr %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__early_ioremap(i32 noundef %phys_addr, i32 noundef %size, i32 noundef %prot) unnamed_addr #1 section ".init.text" align 64 {
entry:
  %phys_addr.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %phys_addr.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %phys_addr, ptr %phys_addr.addr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_state to i32))
  %1 = load i32, ptr @system_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ugt i32 %1, 2
  br i1 %cmp, label %do.end, label %entry.for.body.preheader_crit_edge, !prof !41

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.preheader

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 109, i32 noundef 9, ptr noundef null) #4
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.end, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0213 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [7 x ptr], ptr @prev_map, i32 0, i32 %i.0213
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool20.not = icmp eq ptr %3, null
  br i1 %tobool20.not, label %if.end56, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0213, 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %do.end40, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

do.end40:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 120, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.__early_ioremap, ptr noundef nonnull %phys_addr.addr, i32 noundef %size) #4
  br label %cleanup

if.end56:                                         ; preds = %for.body
  %4 = ptrtoint ptr %phys_addr.addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phys_addr.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool58.not = icmp eq i32 %size, 0
  %6 = sub i32 0, %size
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %6)
  %cmp59 = icmp ugt i32 %5, %6
  %7 = select i1 %tobool58.not, i1 true, i1 %cmp59
  br i1 %7, label %do.end75, label %if.end91, !prof !41

do.end75:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 125, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end91:                                         ; preds = %if.end56
  %arrayidx92 = getelementptr [7 x i32], ptr @prev_size, i32 0, i32 %i.0213
  %8 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %size, ptr %arrayidx92, align 4
  %and = and i32 %5, 4095
  %and93 = and i32 %5, -4096
  %9 = ptrtoint ptr %phys_addr.addr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and93, ptr %phys_addr.addr, align 4
  %add = add i32 %size, 4095
  %add95 = add i32 %add, %5
  %and96 = and i32 %add95, -4096
  %sub97 = sub i32 %and96, %and93
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %sub97)
  %cmp99 = icmp ugt i32 %sub97, 131072
  br i1 %cmp99, label %do.end115, label %if.end131, !prof !41

do.end115:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 140, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end131:                                        ; preds = %if.end91
  %10 = ptrtoint ptr %phys_addr.addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %phys_addr.addr.promoted = load i32, ptr %phys_addr.addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and96, i32 %and93)
  %cmp133.not216 = icmp eq i32 %and96, %and93
  br i1 %cmp133.not216, label %if.end131.while.end_crit_edge, label %while.body.preheader

if.end131.while.end_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.preheader:                             ; preds = %if.end131
  %mul.neg = mul nsw i32 %i.0213, -32
  %sub132 = add nsw i32 %mul.neg, 224
  %shr = lshr exact i32 %sub97, 12
  br label %while.body

while.body:                                       ; preds = %if.else.while.body_crit_edge, %while.body.preheader
  %nrpages.0219 = phi i32 [ %dec138, %if.else.while.body_crit_edge ], [ %shr, %while.body.preheader ]
  %idx.0218 = phi i32 [ %dec, %if.else.while.body_crit_edge ], [ %sub132, %while.body.preheader ]
  %add137214217 = phi i32 [ %add137, %if.else.while.body_crit_edge ], [ %phys_addr.addr.promoted, %while.body.preheader ]
  %.b = load i1, ptr @after_paging_init, align 4
  br i1 %.b, label %if.then135, label %if.else

if.then135:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/early_ioremap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 55, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

if.else:                                          ; preds = %while.body
  tail call void @__set_fixmap(i32 noundef %idx.0218, i32 noundef %add137214217, i32 noundef %prot) #4
  %add137 = add i32 %add137214217, 4096
  %dec = add i32 %idx.0218, -1
  %dec138 = add i32 %nrpages.0219, -1
  %cmp133.not = icmp eq i32 %dec138, 0
  br i1 %cmp133.not, label %if.else.while.end_crit_edge, label %if.else.while.body_crit_edge

if.else.while.body_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

if.else.while.end_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %if.else.while.end_crit_edge, %if.end131.while.end_crit_edge
  %add137214.lcssa = phi i32 [ %phys_addr.addr.promoted, %if.end131.while.end_crit_edge ], [ %add137, %if.else.while.end_crit_edge ]
  %11 = ptrtoint ptr %phys_addr.addr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add137214.lcssa, ptr %phys_addr.addr, align 4
  %.b207 = load i1, ptr @early_ioremap_debug, align 4
  br i1 %.b207, label %do.end156, label %while.end.if.end163_crit_edge, !prof !41

while.end.if.end163_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end163

do.end156:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx157 = getelementptr [7 x i32], ptr @slot_virt, i32 0, i32 %i.0213
  %12 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx157, align 4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 157, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.__early_ioremap, ptr noundef nonnull %phys_addr.addr, i32 noundef %sub97, i32 noundef %i.0213, i32 noundef %and, i32 noundef %13) #4
  br label %if.end163

if.end163:                                        ; preds = %do.end156, %while.end.if.end163_crit_edge
  %arrayidx171 = getelementptr [7 x i32], ptr @slot_virt, i32 0, i32 %i.0213
  %14 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx171, align 4
  %add172 = add i32 %15, %and
  %16 = inttoptr i32 %add172 to ptr
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end163, %do.end115, %do.end75, %do.end40
  %retval.0 = phi ptr [ null, %do.end40 ], [ null, %do.end75 ], [ null, %do.end115 ], [ %16, %if.end163 ]
  ret ptr %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @early_memremap(i32 noundef %phys_addr, i32 noundef %size) local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %0 = load i32, ptr @pgprot_kernel, align 4
  %or = or i32 %0, 512
  %call = tail call i32 @early_memremap_pgprot_adjust(i32 noundef %phys_addr, i32 noundef %size, i32 noundef %or) #7
  %call1 = tail call fastcc ptr @__early_ioremap(i32 noundef %phys_addr, i32 noundef %size, i32 noundef %call) #7
  ret ptr %call1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @early_memremap_ro(i32 noundef %phys_addr, i32 noundef %size) local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %0 = load i32, ptr @pgprot_kernel, align 4
  %or1 = or i32 %0, 640
  %call = tail call i32 @early_memremap_pgprot_adjust(i32 noundef %phys_addr, i32 noundef %size, i32 noundef %or1) #7
  %call2 = tail call fastcc ptr @__early_ioremap(i32 noundef %phys_addr, i32 noundef %size, i32 noundef %call) #7
  ret ptr %call2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @copy_from_early_mem(ptr nocapture noundef writeonly %dest, i32 noundef %src, i32 noundef %size) local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not23 = icmp eq i32 %size, 0
  br i1 %tobool.not23, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %size.addr.026 = phi i32 [ %sub6, %while.body.while.body_crit_edge ], [ %size, %entry.while.body_crit_edge ]
  %src.addr.025 = phi i32 [ %add5, %while.body.while.body_crit_edge ], [ %src, %entry.while.body_crit_edge ]
  %dest.addr.024 = phi ptr [ %add.ptr4, %while.body.while.body_crit_edge ], [ %dest, %entry.while.body_crit_edge ]
  %and = and i32 %src.addr.025, 4095
  %sub = sub nuw nsw i32 131072, %and
  %0 = tail call i32 @llvm.umin.i32(i32 %size.addr.026, i32 %sub)
  %and2 = and i32 %src.addr.025, -4096
  %add = add nuw nsw i32 %0, %and
  %call = tail call ptr @early_memremap(i32 noundef %and2, i32 noundef %add) #7
  %add.ptr = getelementptr i8, ptr %call, i32 %and
  %1 = call ptr @memcpy(ptr %dest.addr.024, ptr %add.ptr, i32 %0)
  tail call void @early_iounmap(ptr noundef %call, i32 noundef %add) #8
  %add.ptr4 = getelementptr i8, ptr %dest.addr.024, i32 %0
  %add5 = add i32 %0, %src.addr.025
  %sub6 = sub i32 %size.addr.026, %0
  %tobool.not = icmp eq i32 %sub6, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @early_memunmap(ptr noundef %addr, i32 noundef %size) local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @early_iounmap(ptr noundef %addr, i32 noundef %size) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !23, !24, !26, !28, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @__setup_early_ioremap_debug_setup, !1, !"__setup_early_ioremap_debug_setup", i1 false, i1 false}
!1 = !{!"../mm/early_ioremap.c", i32 30, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../mm/early_ioremap.c", i32 75, i32 7}
!4 = !{ptr @__initcall__kmod_early_ioremap__227_98_check_early_ioremap_leak7, !5, !"__initcall__kmod_early_ioremap__227_98_check_early_ioremap_leak7", i1 false, i1 false}
!5 = !{!"../mm/early_ioremap.c", i32 98, i32 1}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../mm/early_ioremap.c", i32 179, i32 6}
!8 = !{ptr @__func__.early_iounmap, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../mm/early_ioremap.c", i32 183, i32 6}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../mm/early_ioremap.c", i32 188, i32 2}
!13 = distinct !{null, !14, !"early_ioremap_debug", i1 false, i1 false}
!14 = !{!"../mm/early_ioremap.c", i32 22, i32 12}
!15 = distinct !{null, !16, !"after_paging_init", i1 false, i1 false}
!16 = !{!"../mm/early_ioremap.c", i32 32, i32 12}
!17 = !{ptr @prev_map, !18, !"prev_map", i1 false, i1 false}
!18 = !{!"../mm/early_ioremap.c", i32 66, i32 22}
!19 = !{ptr @prev_size, !20, !"prev_size", i1 false, i1 false}
!20 = !{!"../mm/early_ioremap.c", i32 67, i32 22}
!21 = !{ptr @slot_virt, !22, !"slot_virt", i1 false, i1 false}
!22 = !{!"../mm/early_ioremap.c", i32 68, i32 22}
!23 = !{ptr @__setup_str_early_ioremap_debug_setup, !1, !"__setup_str_early_ioremap_debug_setup", i1 false, i1 false}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../mm/early_ioremap.c", i32 91, i32 6}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../mm/early_ioremap.c", i32 119, i32 6}
!28 = !{ptr @__func__.__early_ioremap, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../mm/early_ioremap.c", i32 156, i32 2}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{!"branch_weights", i32 2000, i32 1}
!41 = !{!"branch_weights", i32 1, i32 2000}
!42 = !{i64 2153595903, i64 2153596385, i64 2153595940, i64 2153595996, i64 2153596030, i64 2153596054, i64 2153596095, i64 2153596116, i64 2153596144, i64 2153596178}
!43 = !{i64 2153594070, i64 2153594552, i64 2153594107, i64 2153594163, i64 2153594197, i64 2153594221, i64 2153594262, i64 2153594283, i64 2153594311, i64 2153594345}
