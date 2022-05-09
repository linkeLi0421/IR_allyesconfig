; ModuleID = '/llk/IR_all_yes/lib/mpi/mpih-mul.c_pt.bc'
source_filename = "../lib/mpi/mpih-mul.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.karatsuba_ctx = type { ptr, ptr, i32, ptr, i32 }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpih_sqr_n_basecase(ptr noundef %prodp, ptr noundef %up, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %up to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %up, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ult i32 %1, 2
  br i1 %cmp, label %if.then, label %if.else17

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp1 = icmp eq i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp377 = icmp sgt i32 %size, 0
  br i1 %cmp1, label %for.cond.preheader, label %for.cond8.preheader

for.cond8.preheader:                              ; preds = %if.then
  br i1 %cmp377, label %for.body10.preheader, label %for.cond8.preheader.if.end18.thread_crit_edge

for.cond8.preheader.if.end18.thread_crit_edge:    ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18.thread

for.body10.preheader:                             ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %2 = shl nuw i32 %size, 2
  %3 = call ptr @memset(ptr %prodp, i32 0, i32 %2)
  br label %if.end18

for.cond.preheader:                               ; preds = %if.then
  br i1 %cmp377, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end18.thread_crit_edge

for.cond.preheader.if.end18.thread_crit_edge:     ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18.thread

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %_i.078 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx4 = getelementptr i32, ptr %up, i32 %_i.078
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4, align 4
  %arrayidx5 = getelementptr i32, ptr %prodp, i32 %_i.078
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %arrayidx5, align 4
  %inc = add nuw nsw i32 %_i.078, 1
  %exitcond.not = icmp eq i32 %inc, %size
  br i1 %exitcond.not, label %for.body.if.end18_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.if.end18_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.else17:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @mpihelp_mul_1(ptr noundef %prodp, ptr noundef %up, i32 noundef %size, i32 noundef %1) #5
  br label %if.end18

if.end18.thread:                                  ; preds = %for.cond.preheader.if.end18.thread_crit_edge, %for.cond8.preheader.if.end18.thread_crit_edge
  %arrayidx1986 = getelementptr i32, ptr %prodp, i32 %size
  %7 = ptrtoint ptr %arrayidx1986 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %arrayidx1986, align 4
  br label %for.end37

if.end18:                                         ; preds = %if.else17, %for.body.if.end18_crit_edge, %for.body10.preheader
  %cy_limb.0 = phi i32 [ %call, %if.else17 ], [ 0, %for.body10.preheader ], [ 0, %for.body.if.end18_crit_edge ]
  %arrayidx19 = getelementptr i32, ptr %prodp, i32 %size
  %8 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cy_limb.0, ptr %arrayidx19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %size)
  %cmp2180 = icmp sgt i32 %size, 1
  br i1 %cmp2180, label %if.end18.for.body22_crit_edge, label %if.end18.for.end37_crit_edge

if.end18.for.end37_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end37

if.end18.for.body22_crit_edge:                    ; preds = %if.end18
  br label %for.body22

for.body22:                                       ; preds = %if.end32.for.body22_crit_edge, %if.end18.for.body22_crit_edge
  %prodp.addr.082.pn = phi ptr [ %prodp.addr.082, %if.end32.for.body22_crit_edge ], [ %prodp, %if.end18.for.body22_crit_edge ]
  %i.081 = phi i32 [ %inc36, %if.end32.for.body22_crit_edge ], [ 1, %if.end18.for.body22_crit_edge ]
  %prodp.addr.082 = getelementptr i32, ptr %prodp.addr.082.pn, i32 1
  %arrayidx23 = getelementptr i32, ptr %up, i32 %i.081
  %9 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp24 = icmp ult i32 %10, 2
  br i1 %cmp24, label %if.then25, label %if.else30

if.then25:                                        ; preds = %for.body22
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp26 = icmp eq i32 %10, 1
  br i1 %cmp26, label %if.then27, label %if.then25.if.end32_crit_edge

if.then25.if.end32_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then27:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  %call28 = tail call i32 @mpihelp_add_n(ptr noundef %prodp.addr.082, ptr noundef %prodp.addr.082, ptr noundef %up, i32 noundef %size) #5
  br label %if.end32

if.else30:                                        ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #7
  %call31 = tail call i32 @mpihelp_addmul_1(ptr noundef %prodp.addr.082, ptr noundef %up, i32 noundef %size, i32 noundef %10) #5
  br label %if.end32

if.end32:                                         ; preds = %if.else30, %if.then27, %if.then25.if.end32_crit_edge
  %cy_limb.1 = phi i32 [ %call28, %if.then27 ], [ 0, %if.then25.if.end32_crit_edge ], [ %call31, %if.else30 ]
  %arrayidx33 = getelementptr i32, ptr %prodp.addr.082, i32 %size
  %11 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cy_limb.1, ptr %arrayidx33, align 4
  %inc36 = add nuw nsw i32 %i.081, 1
  %exitcond84.not = icmp eq i32 %inc36, %size
  br i1 %exitcond84.not, label %if.end32.for.end37_crit_edge, label %if.end32.for.body22_crit_edge

if.end32.for.body22_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body22

if.end32.for.end37_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end37

for.end37:                                        ; preds = %if.end32.for.end37_crit_edge, %if.end18.for.end37_crit_edge, %if.end18.thread
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_mul_1(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_add_n(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_addmul_1(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpih_sqr_n(ptr noundef %prodp, ptr noundef %up, i32 noundef %size, ptr noundef %tspace) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %size, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else8, label %if.then

if.then:                                          ; preds = %entry
  %sub = add i32 %size, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub)
  %cmp = icmp slt i32 %sub, 16
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mpih_sqr_n_basecase(ptr noundef %prodp, ptr noundef %up, i32 noundef %sub)
  br label %do.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mpih_sqr_n(ptr noundef %prodp, ptr noundef %up, i32 noundef %sub, ptr noundef %tspace)
  br label %do.end

do.end:                                           ; preds = %if.else, %if.then1
  %add.ptr = getelementptr i32, ptr %prodp, i32 %sub
  %arrayidx = getelementptr i32, ptr %up, i32 %sub
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %call = tail call i32 @mpihelp_addmul_1(ptr noundef %add.ptr, ptr noundef %up, i32 noundef %sub, i32 noundef %1) #5
  %add = shl i32 %sub, 1
  %arrayidx2 = getelementptr i32, ptr %prodp, i32 %add
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %arrayidx2, align 4
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %call5 = tail call i32 @mpihelp_addmul_1(ptr noundef %add.ptr, ptr noundef %up, i32 noundef %size, i32 noundef %4) #5
  %add6 = add i32 %sub, %size
  %arrayidx7 = getelementptr i32, ptr %prodp, i32 %add6
  %5 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call5, ptr %arrayidx7, align 4
  br label %if.end97

if.else8:                                         ; preds = %entry
  %shr = ashr i32 %size, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %size)
  %cmp10 = icmp slt i32 %size, 32
  %add.ptr12 = getelementptr i32, ptr %prodp, i32 %size
  %add.ptr13 = getelementptr i32, ptr %up, i32 %shr
  br i1 %cmp10, label %if.then11, label %if.else14

if.then11:                                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mpih_sqr_n_basecase(ptr noundef %add.ptr12, ptr noundef %add.ptr13, i32 noundef %shr)
  br label %do.end19

if.else14:                                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mpih_sqr_n(ptr noundef %add.ptr12, ptr noundef %add.ptr13, i32 noundef %shr, ptr noundef %tspace)
  br label %do.end19

do.end19:                                         ; preds = %if.else14, %if.then11
  %add.ptr20 = getelementptr i32, ptr %up, i32 %shr
  %call21 = tail call i32 @mpihelp_cmp(ptr noundef %add.ptr20, ptr noundef %up, i32 noundef %shr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call21)
  %cmp22 = icmp sgt i32 %call21, -1
  br i1 %cmp22, label %if.then23, label %if.else26

if.then23:                                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #7
  %call25 = tail call i32 @mpihelp_sub_n(ptr noundef %prodp, ptr noundef %add.ptr20, ptr noundef %up, i32 noundef %shr) #5
  br label %do.body30

if.else26:                                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #7
  %call28 = tail call i32 @mpihelp_sub_n(ptr noundef %prodp, ptr noundef %up, ptr noundef %add.ptr20, i32 noundef %shr) #5
  br label %do.body30

do.body30:                                        ; preds = %if.else26, %if.then23
  br i1 %cmp10, label %do.body38, label %do.body38.thread

do.body38.thread:                                 ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr34 = getelementptr i32, ptr %tspace, i32 %size
  tail call void @mpih_sqr_n(ptr noundef %tspace, ptr noundef %prodp, i32 noundef %shr, ptr noundef %add.ptr34)
  br label %for.body.lr.ph

do.body38:                                        ; preds = %do.body30
  tail call void @mpih_sqr_n_basecase(ptr noundef %tspace, ptr noundef %prodp, i32 noundef %shr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %size)
  %cmp39269 = icmp sgt i32 %size, 1
  br i1 %cmp39269, label %do.body38.for.body.lr.ph_crit_edge, label %do.body38.for.end_crit_edge

do.body38.for.end_crit_edge:                      ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

do.body38.for.body.lr.ph_crit_edge:               ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %do.body38.for.body.lr.ph_crit_edge, %do.body38.thread
  %add.ptr40 = getelementptr i32, ptr %prodp, i32 %size
  %add.ptr42 = getelementptr i32, ptr %prodp, i32 %shr
  %smax = call i32 @llvm.smax.i32(i32 %shr, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %_i.0270 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx41 = getelementptr i32, ptr %add.ptr40, i32 %_i.0270
  %6 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx41, align 4
  %arrayidx43 = getelementptr i32, ptr %add.ptr42, i32 %_i.0270
  %8 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx43, align 4
  %inc = add nuw nsw i32 %_i.0270, 1
  %exitcond.not = icmp eq i32 %inc, %smax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.body38.for.end_crit_edge
  %cmp39269284 = phi i1 [ false, %do.body38.for.end_crit_edge ], [ true, %for.body.for.end_crit_edge ]
  %add.ptr46 = getelementptr i32, ptr %prodp, i32 %size
  %add.ptr49 = getelementptr i32, ptr %add.ptr46, i32 %shr
  %call50 = tail call i32 @mpihelp_add_n(ptr noundef %add.ptr46, ptr noundef %add.ptr46, ptr noundef %add.ptr49, i32 noundef %shr) #5
  %add.ptr51 = getelementptr i32, ptr %prodp, i32 %shr
  %call53 = tail call i32 @mpihelp_sub_n(ptr noundef %add.ptr51, ptr noundef %add.ptr51, ptr noundef %tspace, i32 noundef %size) #5
  %sub54 = sub i32 %call50, %call53
  br i1 %cmp10, label %if.then57, label %if.else58

if.then57:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mpih_sqr_n_basecase(ptr noundef %tspace, ptr noundef %up, i32 noundef %shr)
  br label %do.end62

if.else58:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr59 = getelementptr i32, ptr %tspace, i32 %size
  tail call void @mpih_sqr_n(ptr noundef %tspace, ptr noundef %up, i32 noundef %shr, ptr noundef %add.ptr59)
  br label %do.end62

do.end62:                                         ; preds = %if.else58, %if.then57
  %call65 = tail call i32 @mpihelp_add_n(ptr noundef %add.ptr51, ptr noundef %add.ptr51, ptr noundef %tspace, i32 noundef %size) #5
  %add66 = add i32 %call65, %sub54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add66)
  %tobool67.not = icmp eq i32 %add66, 0
  br i1 %tobool67.not, label %do.end62.do.body75_crit_edge, label %if.then68

do.end62.do.body75_crit_edge:                     ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body75

if.then68:                                        ; preds = %do.end62
  %add.ptr70 = getelementptr i32, ptr %add.ptr51, i32 %size
  %9 = ptrtoint ptr %add.ptr70 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr70, align 4
  %add.i = add i32 %10, %add66
  store i32 %add.i, ptr %add.ptr70, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %10)
  %cmp.i = icmp ult i32 %add.i, %10
  br i1 %cmp.i, label %if.then68.while.cond.i_crit_edge, label %if.then68.do.body75_crit_edge

if.then68.do.body75_crit_edge:                    ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body75

if.then68.while.cond.i_crit_edge:                 ; preds = %if.then68
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.then68.while.cond.i_crit_edge
  %res_ptr.addr.0.i.pn = phi ptr [ %res_ptr.addr.0.i, %while.body.i.while.cond.i_crit_edge ], [ %add.ptr70, %if.then68.while.cond.i_crit_edge ]
  %s1_size.addr.0.i = phi i32 [ %dec.i, %while.body.i.while.cond.i_crit_edge ], [ %shr, %if.then68.while.cond.i_crit_edge ]
  %dec.i = add i32 %s1_size.addr.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.cond.i.do.body75_crit_edge, label %while.body.i

while.cond.i.do.body75_crit_edge:                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body75

while.body.i:                                     ; preds = %while.cond.i
  %res_ptr.addr.0.i = getelementptr i32, ptr %res_ptr.addr.0.i.pn, i32 1
  %11 = ptrtoint ptr %res_ptr.addr.0.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %res_ptr.addr.0.i, align 4
  %add3.i = add i32 %12, 1
  store i32 %add3.i, ptr %res_ptr.addr.0.i, align 4
  %tobool5.not.i = icmp eq i32 %add3.i, 0
  br i1 %tobool5.not.i, label %while.body.i.while.cond.i_crit_edge, label %while.body.i.do.body75_crit_edge

while.body.i.do.body75_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body75

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i

do.body75:                                        ; preds = %while.body.i.do.body75_crit_edge, %while.cond.i.do.body75_crit_edge, %if.then68.do.body75_crit_edge, %do.end62.do.body75_crit_edge
  br i1 %cmp39269284, label %for.body79.preheader, label %do.body75.for.end84_crit_edge

do.body75.for.end84_crit_edge:                    ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end84

for.body79.preheader:                             ; preds = %do.body75
  %smax281 = call i32 @llvm.smax.i32(i32 %shr, i32 1)
  br label %for.body79

for.body79:                                       ; preds = %for.body79.for.body79_crit_edge, %for.body79.preheader
  %_i76.0272 = phi i32 [ %inc83, %for.body79.for.body79_crit_edge ], [ 0, %for.body79.preheader ]
  %arrayidx80 = getelementptr i32, ptr %tspace, i32 %_i76.0272
  %13 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx80, align 4
  %arrayidx81 = getelementptr i32, ptr %prodp, i32 %_i76.0272
  %15 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx81, align 4
  %inc83 = add nuw nsw i32 %_i76.0272, 1
  %exitcond282.not = icmp eq i32 %inc83, %smax281
  br i1 %exitcond282.not, label %for.body79.for.end84_crit_edge, label %for.body79.for.body79_crit_edge

for.body79.for.body79_crit_edge:                  ; preds = %for.body79
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body79

for.body79.for.end84_crit_edge:                   ; preds = %for.body79
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end84

for.end84:                                        ; preds = %for.body79.for.end84_crit_edge, %do.body75.for.end84_crit_edge
  %add.ptr89 = getelementptr i32, ptr %tspace, i32 %shr
  %call90 = tail call i32 @mpihelp_add_n(ptr noundef %add.ptr51, ptr noundef %add.ptr51, ptr noundef %add.ptr89, i32 noundef %shr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %for.end84.if.end97_crit_edge, label %if.then92

for.end84.if.end97_crit_edge:                     ; preds = %for.end84
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end97

if.then92:                                        ; preds = %for.end84
  %16 = ptrtoint ptr %add.ptr46 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr46, align 4
  %add.i224 = add i32 %17, 1
  store i32 %add.i224, ptr %add.ptr46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp.i226 = icmp eq i32 %17, -1
  br i1 %cmp.i226, label %if.then92.while.cond.i232_crit_edge, label %if.then92.if.end97_crit_edge

if.then92.if.end97_crit_edge:                     ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end97

if.then92.while.cond.i232_crit_edge:              ; preds = %if.then92
  br label %while.cond.i232

while.cond.i232:                                  ; preds = %while.body.i237.while.cond.i232_crit_edge, %if.then92.while.cond.i232_crit_edge
  %res_ptr.addr.0.i227.pn = phi ptr [ %res_ptr.addr.0.i227, %while.body.i237.while.cond.i232_crit_edge ], [ %add.ptr46, %if.then92.while.cond.i232_crit_edge ]
  %s1_size.addr.0.i229 = phi i32 [ %dec.i230, %while.body.i237.while.cond.i232_crit_edge ], [ %size, %if.then92.while.cond.i232_crit_edge ]
  %dec.i230 = add i32 %s1_size.addr.0.i229, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i230)
  %tobool.not.i231 = icmp eq i32 %dec.i230, 0
  br i1 %tobool.not.i231, label %while.cond.i232.if.end97_crit_edge, label %while.body.i237

while.cond.i232.if.end97_crit_edge:               ; preds = %while.cond.i232
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end97

while.body.i237:                                  ; preds = %while.cond.i232
  %res_ptr.addr.0.i227 = getelementptr i32, ptr %res_ptr.addr.0.i227.pn, i32 1
  %18 = ptrtoint ptr %res_ptr.addr.0.i227 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %res_ptr.addr.0.i227, align 4
  %add3.i234 = add i32 %19, 1
  store i32 %add3.i234, ptr %res_ptr.addr.0.i227, align 4
  %tobool5.not.i236 = icmp eq i32 %add3.i234, 0
  br i1 %tobool5.not.i236, label %while.body.i237.while.cond.i232_crit_edge, label %while.body.i237.if.end97_crit_edge

while.body.i237.if.end97_crit_edge:               ; preds = %while.body.i237
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end97

while.body.i237.while.cond.i232_crit_edge:        ; preds = %while.body.i237
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i232

if.end97:                                         ; preds = %while.body.i237.if.end97_crit_edge, %while.cond.i232.if.end97_crit_edge, %if.then92.if.end97_crit_edge, %for.end84.if.end97_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_cmp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_sub_n(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpihelp_mul_n(ptr noundef %prodp, ptr noundef %up, ptr noundef %vp, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %up, %vp
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %size)
  %cmp1 = icmp slt i32 %size, 16
  br i1 %cmp, label %if.then, label %if.else3

if.then:                                          ; preds = %entry
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mpih_sqr_n_basecase(ptr noundef %prodp, ptr noundef %up, i32 noundef %size)
  br label %if.end12

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %mul = shl nuw i32 %size, 1
  %call = tail call ptr @mpi_alloc_limb_space(i32 noundef %mul) #5
  tail call void @mpih_sqr_n(ptr noundef %prodp, ptr noundef %up, i32 noundef %size, ptr noundef %call)
  tail call void @mpi_free_limb_space(ptr noundef %call) #5
  br label %if.end12

if.else3:                                         ; preds = %entry
  br i1 %cmp1, label %if.then5, label %if.else7

if.then5:                                         ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @mul_n_basecase(ptr noundef %prodp, ptr noundef %up, ptr noundef %vp, i32 noundef %size)
  br label %if.end12

if.else7:                                         ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #7
  %mul9 = shl nuw i32 %size, 1
  %call10 = tail call ptr @mpi_alloc_limb_space(i32 noundef %mul9) #5
  tail call fastcc void @mul_n(ptr noundef %prodp, ptr noundef %up, ptr noundef %vp, i32 noundef %size, ptr noundef %call10)
  tail call void @mpi_free_limb_space(ptr noundef %call10) #5
  br label %if.end12

if.end12:                                         ; preds = %if.else7, %if.then5, %if.else, %if.then2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_alloc_limb_space(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_free_limb_space(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mul_n_basecase(ptr noundef %prodp, ptr noundef %up, ptr nocapture noundef readonly %vp, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ult i32 %1, 2
  br i1 %cmp, label %if.then, label %if.else17

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp1 = icmp eq i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp34 = icmp sgt i32 %size, 0
  br i1 %cmp1, label %for.cond.preheader, label %for.cond8.preheader

for.cond8.preheader:                              ; preds = %if.then
  br i1 %cmp34, label %for.body10.preheader, label %for.cond8.preheader.if.end18.thread_crit_edge

for.cond8.preheader.if.end18.thread_crit_edge:    ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18.thread

for.body10.preheader:                             ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %2 = shl nuw i32 %size, 2
  %3 = call ptr @memset(ptr %prodp, i32 0, i32 %2)
  br label %if.end18

for.cond.preheader:                               ; preds = %if.then
  br i1 %cmp34, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end18.thread_crit_edge

for.cond.preheader.if.end18.thread_crit_edge:     ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18.thread

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %_i.05 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx4 = getelementptr i32, ptr %up, i32 %_i.05
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4, align 4
  %arrayidx5 = getelementptr i32, ptr %prodp, i32 %_i.05
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %arrayidx5, align 4
  %inc = add nuw nsw i32 %_i.05, 1
  %exitcond.not = icmp eq i32 %inc, %size
  br i1 %exitcond.not, label %for.body.if.end18_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.if.end18_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.else17:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @mpihelp_mul_1(ptr noundef %prodp, ptr noundef %up, i32 noundef %size, i32 noundef %1) #5
  br label %if.end18

if.end18.thread:                                  ; preds = %for.cond.preheader.if.end18.thread_crit_edge, %for.cond8.preheader.if.end18.thread_crit_edge
  %arrayidx1913 = getelementptr i32, ptr %prodp, i32 %size
  %7 = ptrtoint ptr %arrayidx1913 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %arrayidx1913, align 4
  br label %for.end37

if.end18:                                         ; preds = %if.else17, %for.body.if.end18_crit_edge, %for.body10.preheader
  %cy.0 = phi i32 [ %call, %if.else17 ], [ 0, %for.body10.preheader ], [ 0, %for.body.if.end18_crit_edge ]
  %arrayidx19 = getelementptr i32, ptr %prodp, i32 %size
  %8 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cy.0, ptr %arrayidx19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %size)
  %cmp217 = icmp sgt i32 %size, 1
  br i1 %cmp217, label %if.end18.for.body22_crit_edge, label %if.end18.for.end37_crit_edge

if.end18.for.end37_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end37

if.end18.for.body22_crit_edge:                    ; preds = %if.end18
  br label %for.body22

for.body22:                                       ; preds = %if.end32.for.body22_crit_edge, %if.end18.for.body22_crit_edge
  %prodp.addr.09.pn = phi ptr [ %prodp.addr.09, %if.end32.for.body22_crit_edge ], [ %prodp, %if.end18.for.body22_crit_edge ]
  %i.08 = phi i32 [ %inc36, %if.end32.for.body22_crit_edge ], [ 1, %if.end18.for.body22_crit_edge ]
  %prodp.addr.09 = getelementptr i32, ptr %prodp.addr.09.pn, i32 1
  %arrayidx23 = getelementptr i32, ptr %vp, i32 %i.08
  %9 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp24 = icmp ult i32 %10, 2
  br i1 %cmp24, label %if.then25, label %if.else30

if.then25:                                        ; preds = %for.body22
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp26 = icmp eq i32 %10, 1
  br i1 %cmp26, label %if.then27, label %if.then25.if.end32_crit_edge

if.then25.if.end32_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then27:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  %call28 = tail call i32 @mpihelp_add_n(ptr noundef %prodp.addr.09, ptr noundef %prodp.addr.09, ptr noundef %up, i32 noundef %size) #5
  br label %if.end32

if.else30:                                        ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #7
  %call31 = tail call i32 @mpihelp_addmul_1(ptr noundef %prodp.addr.09, ptr noundef %up, i32 noundef %size, i32 noundef %10) #5
  br label %if.end32

if.end32:                                         ; preds = %if.else30, %if.then27, %if.then25.if.end32_crit_edge
  %cy.2 = phi i32 [ %call28, %if.then27 ], [ 0, %if.then25.if.end32_crit_edge ], [ %call31, %if.else30 ]
  %arrayidx33 = getelementptr i32, ptr %prodp.addr.09, i32 %size
  %11 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cy.2, ptr %arrayidx33, align 4
  %inc36 = add nuw nsw i32 %i.08, 1
  %exitcond11.not = icmp eq i32 %inc36, %size
  br i1 %exitcond11.not, label %if.end32.for.end37_crit_edge, label %if.end32.for.body22_crit_edge

if.end32.for.body22_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body22

if.end32.for.end37_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end37

for.end37:                                        ; preds = %if.end32.for.end37_crit_edge, %if.end18.for.end37_crit_edge, %if.end18.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mul_n(ptr noundef %prodp, ptr noundef %up, ptr noundef %vp, i32 noundef %size, ptr noundef %tspace) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %size, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else9, label %if.then

if.then:                                          ; preds = %entry
  %sub = add i32 %size, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub)
  %cmp = icmp slt i32 %sub, 16
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @mul_n_basecase(ptr noundef %prodp, ptr noundef %up, ptr noundef %vp, i32 noundef %sub)
  br label %do.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @mul_n(ptr noundef %prodp, ptr noundef %up, ptr noundef %vp, i32 noundef %sub, ptr noundef %tspace)
  br label %do.end

do.end:                                           ; preds = %if.else, %if.then1
  %add.ptr = getelementptr i32, ptr %prodp, i32 %sub
  %arrayidx = getelementptr i32, ptr %vp, i32 %sub
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %call2 = tail call i32 @mpihelp_addmul_1(ptr noundef %add.ptr, ptr noundef %up, i32 noundef %sub, i32 noundef %1) #5
  %add = shl i32 %sub, 1
  %arrayidx3 = getelementptr i32, ptr %prodp, i32 %add
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call2, ptr %arrayidx3, align 4
  %arrayidx5 = getelementptr i32, ptr %up, i32 %sub
  %3 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx5, align 4
  %call6 = tail call i32 @mpihelp_addmul_1(ptr noundef %add.ptr, ptr noundef %vp, i32 noundef %size, i32 noundef %4) #5
  %add7 = add i32 %sub, %size
  %arrayidx8 = getelementptr i32, ptr %prodp, i32 %add7
  %5 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call6, ptr %arrayidx8, align 4
  br label %if.end125

if.else9:                                         ; preds = %entry
  %shr = ashr i32 %size, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %size)
  %cmp11 = icmp slt i32 %size, 32
  %add.ptr13 = getelementptr i32, ptr %prodp, i32 %size
  %add.ptr14 = getelementptr i32, ptr %up, i32 %shr
  %add.ptr15 = getelementptr i32, ptr %vp, i32 %shr
  br i1 %cmp11, label %if.then12, label %if.else17

if.then12:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @mul_n_basecase(ptr noundef %add.ptr13, ptr noundef %add.ptr14, ptr noundef %add.ptr15, i32 noundef %shr)
  br label %do.end23

if.else17:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @mul_n(ptr noundef %add.ptr13, ptr noundef %add.ptr14, ptr noundef %add.ptr15, i32 noundef %shr, ptr noundef %tspace)
  br label %do.end23

do.end23:                                         ; preds = %if.else17, %if.then12
  %add.ptr24 = getelementptr i32, ptr %up, i32 %shr
  %call25 = tail call i32 @mpihelp_cmp(ptr noundef %add.ptr24, ptr noundef %up, i32 noundef %shr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call25)
  %cmp26 = icmp sgt i32 %call25, -1
  br i1 %cmp26, label %if.then27, label %if.else30

if.then27:                                        ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #7
  %call29 = tail call i32 @mpihelp_sub_n(ptr noundef %prodp, ptr noundef %add.ptr24, ptr noundef %up, i32 noundef %shr) #5
  br label %if.end33

if.else30:                                        ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #7
  %call32 = tail call i32 @mpihelp_sub_n(ptr noundef %prodp, ptr noundef %up, ptr noundef %add.ptr24, i32 noundef %shr) #5
  br label %if.end33

if.end33:                                         ; preds = %if.else30, %if.then27
  %negflg.0 = phi i32 [ 0, %if.then27 ], [ 1, %if.else30 ]
  %add.ptr34 = getelementptr i32, ptr %vp, i32 %shr
  %call35 = tail call i32 @mpihelp_cmp(ptr noundef %add.ptr34, ptr noundef %vp, i32 noundef %shr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call35)
  %cmp36 = icmp sgt i32 %call35, -1
  %add.ptr38 = getelementptr i32, ptr %prodp, i32 %shr
  br i1 %cmp36, label %if.then37, label %if.else41

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %call40 = tail call i32 @mpihelp_sub_n(ptr noundef %add.ptr38, ptr noundef %add.ptr34, ptr noundef %vp, i32 noundef %shr) #5
  %xor = xor i32 %negflg.0, 1
  br label %do.body46

if.else41:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %call44 = tail call i32 @mpihelp_sub_n(ptr noundef %add.ptr38, ptr noundef %vp, ptr noundef %add.ptr34, i32 noundef %shr) #5
  br label %do.body46

do.body46:                                        ; preds = %if.else41, %if.then37
  %negflg.1 = phi i32 [ %xor, %if.then37 ], [ %negflg.0, %if.else41 ]
  %add.ptr49 = getelementptr i32, ptr %prodp, i32 %shr
  br i1 %cmp11, label %do.body57, label %do.body57.thread

do.body57.thread:                                 ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr53 = getelementptr i32, ptr %tspace, i32 %size
  tail call fastcc void @mul_n(ptr noundef %tspace, ptr noundef %prodp, ptr noundef %add.ptr49, i32 noundef %shr, ptr noundef %add.ptr53)
  br label %for.body.lr.ph

do.body57:                                        ; preds = %do.body46
  tail call fastcc void @mul_n_basecase(ptr noundef %tspace, ptr noundef %prodp, ptr noundef %add.ptr49, i32 noundef %shr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %size)
  %cmp58332 = icmp sgt i32 %size, 1
  br i1 %cmp58332, label %do.body57.for.body.lr.ph_crit_edge, label %do.body57.for.end_crit_edge

do.body57.for.end_crit_edge:                      ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

do.body57.for.body.lr.ph_crit_edge:               ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %do.body57.for.body.lr.ph_crit_edge, %do.body57.thread
  %add.ptr59 = getelementptr i32, ptr %prodp, i32 %size
  %add.ptr61 = getelementptr i32, ptr %prodp, i32 %shr
  %smax = call i32 @llvm.smax.i32(i32 %shr, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %_i.0333 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx60 = getelementptr i32, ptr %add.ptr59, i32 %_i.0333
  %6 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx60, align 4
  %arrayidx62 = getelementptr i32, ptr %add.ptr61, i32 %_i.0333
  %8 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx62, align 4
  %inc = add nuw nsw i32 %_i.0333, 1
  %exitcond.not = icmp eq i32 %inc, %smax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.body57.for.end_crit_edge
  %cmp58332347 = phi i1 [ false, %do.body57.for.end_crit_edge ], [ true, %for.body.for.end_crit_edge ]
  %add.ptr65 = getelementptr i32, ptr %prodp, i32 %size
  %add.ptr68 = getelementptr i32, ptr %add.ptr65, i32 %shr
  %call69 = tail call i32 @mpihelp_add_n(ptr noundef %add.ptr65, ptr noundef %add.ptr65, ptr noundef %add.ptr68, i32 noundef %shr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %negflg.1)
  %tobool70.not = icmp eq i32 %negflg.1, 0
  %add.ptr77 = getelementptr i32, ptr %prodp, i32 %shr
  br i1 %tobool70.not, label %if.else76, label %if.then71

if.then71:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %call74 = tail call i32 @mpihelp_sub_n(ptr noundef %add.ptr77, ptr noundef %add.ptr77, ptr noundef %tspace, i32 noundef %size) #5
  %sub75 = sub i32 %call69, %call74
  br label %do.body82

if.else76:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %call79 = tail call i32 @mpihelp_add_n(ptr noundef %add.ptr77, ptr noundef %add.ptr77, ptr noundef %tspace, i32 noundef %size) #5
  %add80 = add i32 %call79, %call69
  br label %do.body82

do.body82:                                        ; preds = %if.else76, %if.then71
  %cy.0 = phi i32 [ %sub75, %if.then71 ], [ %add80, %if.else76 ]
  br i1 %cmp11, label %if.then84, label %if.else86

if.then84:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @mul_n_basecase(ptr noundef %tspace, ptr noundef %up, ptr noundef %vp, i32 noundef %shr)
  br label %do.end90

if.else86:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr87 = getelementptr i32, ptr %tspace, i32 %size
  tail call fastcc void @mul_n(ptr noundef %tspace, ptr noundef %up, ptr noundef %vp, i32 noundef %shr, ptr noundef %add.ptr87)
  br label %do.end90

do.end90:                                         ; preds = %if.else86, %if.then84
  %add.ptr91 = getelementptr i32, ptr %prodp, i32 %shr
  %call93 = tail call i32 @mpihelp_add_n(ptr noundef %add.ptr91, ptr noundef %add.ptr91, ptr noundef %tspace, i32 noundef %size) #5
  %add94 = add i32 %call93, %cy.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add94)
  %tobool95.not = icmp eq i32 %add94, 0
  br i1 %tobool95.not, label %do.end90.do.body103_crit_edge, label %if.then96

do.end90.do.body103_crit_edge:                    ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body103

if.then96:                                        ; preds = %do.end90
  %add.ptr98 = getelementptr i32, ptr %add.ptr91, i32 %size
  %9 = ptrtoint ptr %add.ptr98 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr98, align 4
  %add.i = add i32 %10, %add94
  store i32 %add.i, ptr %add.ptr98, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %10)
  %cmp.i = icmp ult i32 %add.i, %10
  br i1 %cmp.i, label %if.then96.while.cond.i_crit_edge, label %if.then96.do.body103_crit_edge

if.then96.do.body103_crit_edge:                   ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body103

if.then96.while.cond.i_crit_edge:                 ; preds = %if.then96
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.then96.while.cond.i_crit_edge
  %res_ptr.addr.0.i.pn = phi ptr [ %res_ptr.addr.0.i, %while.body.i.while.cond.i_crit_edge ], [ %add.ptr98, %if.then96.while.cond.i_crit_edge ]
  %s1_size.addr.0.i = phi i32 [ %dec.i, %while.body.i.while.cond.i_crit_edge ], [ %shr, %if.then96.while.cond.i_crit_edge ]
  %dec.i = add i32 %s1_size.addr.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.cond.i.do.body103_crit_edge, label %while.body.i

while.cond.i.do.body103_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body103

while.body.i:                                     ; preds = %while.cond.i
  %res_ptr.addr.0.i = getelementptr i32, ptr %res_ptr.addr.0.i.pn, i32 1
  %11 = ptrtoint ptr %res_ptr.addr.0.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %res_ptr.addr.0.i, align 4
  %add3.i = add i32 %12, 1
  store i32 %add3.i, ptr %res_ptr.addr.0.i, align 4
  %tobool5.not.i = icmp eq i32 %add3.i, 0
  br i1 %tobool5.not.i, label %while.body.i.while.cond.i_crit_edge, label %while.body.i.do.body103_crit_edge

while.body.i.do.body103_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body103

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i

do.body103:                                       ; preds = %while.body.i.do.body103_crit_edge, %while.cond.i.do.body103_crit_edge, %if.then96.do.body103_crit_edge, %do.end90.do.body103_crit_edge
  br i1 %cmp58332347, label %for.body107.preheader, label %do.body103.for.end112_crit_edge

do.body103.for.end112_crit_edge:                  ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end112

for.body107.preheader:                            ; preds = %do.body103
  %smax344 = call i32 @llvm.smax.i32(i32 %shr, i32 1)
  br label %for.body107

for.body107:                                      ; preds = %for.body107.for.body107_crit_edge, %for.body107.preheader
  %_i104.0335 = phi i32 [ %inc111, %for.body107.for.body107_crit_edge ], [ 0, %for.body107.preheader ]
  %arrayidx108 = getelementptr i32, ptr %tspace, i32 %_i104.0335
  %13 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx108, align 4
  %arrayidx109 = getelementptr i32, ptr %prodp, i32 %_i104.0335
  %15 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx109, align 4
  %inc111 = add nuw nsw i32 %_i104.0335, 1
  %exitcond345.not = icmp eq i32 %inc111, %smax344
  br i1 %exitcond345.not, label %for.body107.for.end112_crit_edge, label %for.body107.for.body107_crit_edge

for.body107.for.body107_crit_edge:                ; preds = %for.body107
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body107

for.body107.for.end112_crit_edge:                 ; preds = %for.body107
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end112

for.end112:                                       ; preds = %for.body107.for.end112_crit_edge, %do.body103.for.end112_crit_edge
  %add.ptr117 = getelementptr i32, ptr %tspace, i32 %shr
  %call118 = tail call i32 @mpihelp_add_n(ptr noundef %add.ptr91, ptr noundef %add.ptr91, ptr noundef %add.ptr117, i32 noundef %shr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %for.end112.if.end125_crit_edge, label %if.then120

for.end112.if.end125_crit_edge:                   ; preds = %for.end112
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end125

if.then120:                                       ; preds = %for.end112
  %16 = ptrtoint ptr %add.ptr65 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr65, align 4
  %add.i287 = add i32 %17, 1
  store i32 %add.i287, ptr %add.ptr65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp.i289 = icmp eq i32 %17, -1
  br i1 %cmp.i289, label %if.then120.while.cond.i295_crit_edge, label %if.then120.if.end125_crit_edge

if.then120.if.end125_crit_edge:                   ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end125

if.then120.while.cond.i295_crit_edge:             ; preds = %if.then120
  br label %while.cond.i295

while.cond.i295:                                  ; preds = %while.body.i300.while.cond.i295_crit_edge, %if.then120.while.cond.i295_crit_edge
  %res_ptr.addr.0.i290.pn = phi ptr [ %res_ptr.addr.0.i290, %while.body.i300.while.cond.i295_crit_edge ], [ %add.ptr65, %if.then120.while.cond.i295_crit_edge ]
  %s1_size.addr.0.i292 = phi i32 [ %dec.i293, %while.body.i300.while.cond.i295_crit_edge ], [ %size, %if.then120.while.cond.i295_crit_edge ]
  %dec.i293 = add i32 %s1_size.addr.0.i292, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i293)
  %tobool.not.i294 = icmp eq i32 %dec.i293, 0
  br i1 %tobool.not.i294, label %while.cond.i295.if.end125_crit_edge, label %while.body.i300

while.cond.i295.if.end125_crit_edge:              ; preds = %while.cond.i295
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end125

while.body.i300:                                  ; preds = %while.cond.i295
  %res_ptr.addr.0.i290 = getelementptr i32, ptr %res_ptr.addr.0.i290.pn, i32 1
  %18 = ptrtoint ptr %res_ptr.addr.0.i290 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %res_ptr.addr.0.i290, align 4
  %add3.i297 = add i32 %19, 1
  store i32 %add3.i297, ptr %res_ptr.addr.0.i290, align 4
  %tobool5.not.i299 = icmp eq i32 %add3.i297, 0
  br i1 %tobool5.not.i299, label %while.body.i300.while.cond.i295_crit_edge, label %while.body.i300.if.end125_crit_edge

while.body.i300.if.end125_crit_edge:              ; preds = %while.body.i300
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end125

while.body.i300.while.cond.i295_crit_edge:        ; preds = %while.body.i300
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i295

if.end125:                                        ; preds = %while.body.i300.if.end125_crit_edge, %while.cond.i295.if.end125_crit_edge, %if.then120.if.end125_crit_edge, %for.end112.if.end125_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpihelp_mul_karatsuba_case(ptr noundef %prodp, ptr noundef %up, i32 noundef %usize, ptr noundef %vp, i32 noundef %vsize, ptr nocapture noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tspace = getelementptr inbounds %struct.karatsuba_ctx, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %tspace to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tspace, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %lor.lhs.false

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

lor.lhs.false:                                    ; preds = %entry
  %tspace_size = getelementptr inbounds %struct.karatsuba_ctx, ptr %ctx, i32 0, i32 2
  %2 = ptrtoint ptr %tspace_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tspace_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %vsize)
  %cmp = icmp slt i32 %3, %vsize
  br i1 %cmp, label %if.then3, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then3:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mpi_free_limb_space(ptr noundef nonnull %1) #5
  br label %if.end

if.end:                                           ; preds = %if.then3, %entry.if.end_crit_edge
  %mul = shl i32 %vsize, 1
  %call = tail call ptr @mpi_alloc_limb_space(i32 noundef %mul) #5
  %4 = ptrtoint ptr %tspace to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %tspace, align 4
  %tobool7.not = icmp eq ptr %call, null
  br i1 %tobool7.not, label %if.end.cleanup102_crit_edge, label %if.end9

if.end.cleanup102_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup102

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %tspace_size10 = getelementptr inbounds %struct.karatsuba_ctx, ptr %ctx, i32 0, i32 2
  %5 = ptrtoint ptr %tspace_size10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %vsize, ptr %tspace_size10, align 4
  br label %do.body

do.body:                                          ; preds = %if.end9, %lor.lhs.false.do.body_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %vsize)
  %cmp12 = icmp slt i32 %vsize, 16
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @mul_n_basecase(ptr noundef %prodp, ptr noundef %up, ptr noundef %vp, i32 noundef %vsize)
  br label %do.end

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %tspace to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tspace, align 4
  tail call fastcc void @mul_n(ptr noundef %prodp, ptr noundef %up, ptr noundef %vp, i32 noundef %vsize, ptr noundef %7)
  br label %do.end

do.end:                                           ; preds = %if.else, %if.then13
  %add.ptr = getelementptr i32, ptr %prodp, i32 %vsize
  %add.ptr17 = getelementptr i32, ptr %up, i32 %vsize
  %sub = sub i32 %usize, %vsize
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %vsize)
  %cmp18.not = icmp slt i32 %sub, %vsize
  br i1 %cmp18.not, label %do.end.if.end68_crit_edge, label %if.then19

do.end.if.end68_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68

if.then19:                                        ; preds = %do.end
  %tp = getelementptr inbounds %struct.karatsuba_ctx, ptr %ctx, i32 0, i32 3
  %8 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tp, align 4
  %tobool20.not = icmp eq ptr %9, null
  br i1 %tobool20.not, label %if.then19.if.end28_crit_edge, label %lor.lhs.false21

if.then19.if.end28_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

lor.lhs.false21:                                  ; preds = %if.then19
  %tp_size = getelementptr inbounds %struct.karatsuba_ctx, ptr %ctx, i32 0, i32 4
  %10 = ptrtoint ptr %tp_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tp_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %vsize)
  %cmp22 = icmp slt i32 %11, %vsize
  br i1 %cmp22, label %if.then26, label %lor.lhs.false21.do.body44.preheader_crit_edge

lor.lhs.false21.do.body44.preheader_crit_edge:    ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body44.preheader

if.then26:                                        ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mpi_free_limb_space(ptr noundef nonnull %9) #5
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.then19.if.end28_crit_edge
  %mul29 = shl i32 %vsize, 1
  %call30 = tail call ptr @mpi_alloc_limb_space(i32 noundef %mul29) #5
  %12 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call30, ptr %tp, align 4
  %tobool33.not = icmp eq ptr %call30, null
  br i1 %tobool33.not, label %if.then34, label %if.end41

if.then34:                                        ; preds = %if.end28
  %13 = ptrtoint ptr %tspace to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tspace, align 4
  %tobool36.not = icmp eq ptr %14, null
  br i1 %tobool36.not, label %if.then34.if.end39_crit_edge, label %if.then37

if.then34.if.end39_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.then37:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mpi_free_limb_space(ptr noundef nonnull %14) #5
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.then34.if.end39_crit_edge
  %15 = ptrtoint ptr %tspace to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %tspace, align 4
  br label %cleanup102

if.end41:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %tp_size42 = getelementptr inbounds %struct.karatsuba_ctx, ptr %ctx, i32 0, i32 4
  %16 = ptrtoint ptr %tp_size42 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %vsize, ptr %tp_size42, align 4
  br label %do.body44.preheader

do.body44.preheader:                              ; preds = %if.end41, %lor.lhs.false21.do.body44.preheader_crit_edge
  br label %do.body44

do.body44:                                        ; preds = %mpihelp_add_1.exit.do.body44_crit_edge, %do.body44.preheader
  %usize.addr.0 = phi i32 [ %sub64, %mpihelp_add_1.exit.do.body44_crit_edge ], [ %sub, %do.body44.preheader ]
  %up.addr.0 = phi ptr [ %add.ptr63, %mpihelp_add_1.exit.do.body44_crit_edge ], [ %add.ptr17, %do.body44.preheader ]
  %prodp.addr.0 = phi ptr [ %add.ptr58, %mpihelp_add_1.exit.do.body44_crit_edge ], [ %add.ptr, %do.body44.preheader ]
  %17 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tp, align 4
  br i1 %cmp12, label %if.then47, label %if.else50

if.then47:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @mul_n_basecase(ptr noundef %18, ptr noundef %up.addr.0, ptr noundef %vp, i32 noundef %vsize)
  br label %do.end55

if.else50:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %tspace to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tspace, align 4
  tail call fastcc void @mul_n(ptr noundef %18, ptr noundef %up.addr.0, ptr noundef %vp, i32 noundef %vsize, ptr noundef %20)
  br label %do.end55

do.end55:                                         ; preds = %if.else50, %if.then47
  %21 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tp, align 4
  %call57 = tail call i32 @mpihelp_add_n(ptr noundef %prodp.addr.0, ptr noundef %prodp.addr.0, ptr noundef %22, i32 noundef %vsize) #5
  %add.ptr58 = getelementptr i32, ptr %prodp.addr.0, i32 %vsize
  %23 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tp, align 4
  %add.ptr60 = getelementptr i32, ptr %24, i32 %vsize
  %incdec.ptr.i = getelementptr i32, ptr %add.ptr60, i32 1
  %25 = ptrtoint ptr %add.ptr60 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr60, align 4
  %add.i = add i32 %26, %call57
  %incdec.ptr1.i = getelementptr i32, ptr %add.ptr58, i32 1
  %27 = ptrtoint ptr %add.ptr58 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add.i, ptr %add.ptr58, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %26)
  %cmp.i = icmp ult i32 %add.i, %26
  br i1 %cmp.i, label %do.end55.while.cond.i_crit_edge, label %do.end55.leave.i_crit_edge

do.end55.leave.i_crit_edge:                       ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %leave.i

do.end55.while.cond.i_crit_edge:                  ; preds = %do.end55
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %do.end55.while.cond.i_crit_edge
  %res_ptr.addr.0.i = phi ptr [ %incdec.ptr4.i, %while.body.i.while.cond.i_crit_edge ], [ %incdec.ptr1.i, %do.end55.while.cond.i_crit_edge ]
  %s1_ptr.addr.0.i = phi ptr [ %incdec.ptr2.i, %while.body.i.while.cond.i_crit_edge ], [ %incdec.ptr.i, %do.end55.while.cond.i_crit_edge ]
  %s1_size.addr.0.i = phi i32 [ %dec.i, %while.body.i.while.cond.i_crit_edge ], [ %vsize, %do.end55.while.cond.i_crit_edge ]
  %dec.i = add i32 %s1_size.addr.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.cond.i.mpihelp_add_1.exit_crit_edge, label %while.body.i

while.cond.i.mpihelp_add_1.exit_crit_edge:        ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mpihelp_add_1.exit

while.body.i:                                     ; preds = %while.cond.i
  %incdec.ptr2.i = getelementptr i32, ptr %s1_ptr.addr.0.i, i32 1
  %28 = ptrtoint ptr %s1_ptr.addr.0.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %s1_ptr.addr.0.i, align 4
  %add3.i = add i32 %29, 1
  %incdec.ptr4.i = getelementptr i32, ptr %res_ptr.addr.0.i, i32 1
  %30 = ptrtoint ptr %res_ptr.addr.0.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add3.i, ptr %res_ptr.addr.0.i, align 4
  %tobool5.not.i = icmp eq i32 %add3.i, 0
  br i1 %tobool5.not.i, label %while.body.i.while.cond.i_crit_edge, label %while.body.i.leave.i_crit_edge

while.body.i.leave.i_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %leave.i

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i

leave.i:                                          ; preds = %while.body.i.leave.i_crit_edge, %do.end55.leave.i_crit_edge
  %res_ptr.addr.1.i = phi ptr [ %incdec.ptr1.i, %do.end55.leave.i_crit_edge ], [ %incdec.ptr4.i, %while.body.i.leave.i_crit_edge ]
  %s1_ptr.addr.1.i = phi ptr [ %incdec.ptr.i, %do.end55.leave.i_crit_edge ], [ %incdec.ptr2.i, %while.body.i.leave.i_crit_edge ]
  %s1_size.addr.1.i = phi i32 [ %vsize, %do.end55.leave.i_crit_edge ], [ %dec.i, %while.body.i.leave.i_crit_edge ]
  %cmp8.not.i = icmp eq ptr %res_ptr.addr.1.i, %s1_ptr.addr.1.i
  br i1 %cmp8.not.i, label %leave.i.mpihelp_add_1.exit_crit_edge, label %for.cond.preheader.i

leave.i.mpihelp_add_1.exit_crit_edge:             ; preds = %leave.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mpihelp_add_1.exit

for.cond.preheader.i:                             ; preds = %leave.i
  %sub.i = add i32 %s1_size.addr.1.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp103.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp103.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.mpihelp_add_1.exit_crit_edge

for.cond.preheader.i.mpihelp_add_1.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mpihelp_add_1.exit

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.04.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %s1_ptr.addr.1.i, i32 %i.04.i
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i, align 4
  %arrayidx11.i = getelementptr i32, ptr %res_ptr.addr.1.i, i32 %i.04.i
  %33 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx11.i, align 4
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %sub.i
  br i1 %exitcond.not.i, label %for.body.i.mpihelp_add_1.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.mpihelp_add_1.exit_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mpihelp_add_1.exit

mpihelp_add_1.exit:                               ; preds = %for.body.i.mpihelp_add_1.exit_crit_edge, %for.cond.preheader.i.mpihelp_add_1.exit_crit_edge, %leave.i.mpihelp_add_1.exit_crit_edge, %while.cond.i.mpihelp_add_1.exit_crit_edge
  %add.ptr63 = getelementptr i32, ptr %up.addr.0, i32 %vsize
  %sub64 = sub i32 %usize.addr.0, %vsize
  %cmp66.not = icmp slt i32 %sub64, %vsize
  br i1 %cmp66.not, label %mpihelp_add_1.exit.if.end68_crit_edge, label %mpihelp_add_1.exit.do.body44_crit_edge

mpihelp_add_1.exit.do.body44_crit_edge:           ; preds = %mpihelp_add_1.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body44

mpihelp_add_1.exit.if.end68_crit_edge:            ; preds = %mpihelp_add_1.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68

if.end68:                                         ; preds = %mpihelp_add_1.exit.if.end68_crit_edge, %do.end.if.end68_crit_edge
  %usize.addr.1 = phi i32 [ %sub, %do.end.if.end68_crit_edge ], [ %sub64, %mpihelp_add_1.exit.if.end68_crit_edge ]
  %up.addr.1 = phi ptr [ %add.ptr17, %do.end.if.end68_crit_edge ], [ %add.ptr63, %mpihelp_add_1.exit.if.end68_crit_edge ]
  %prodp.addr.1 = phi ptr [ %add.ptr, %do.end.if.end68_crit_edge ], [ %add.ptr58, %mpihelp_add_1.exit.if.end68_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %usize.addr.1)
  %tobool69.not = icmp eq i32 %usize.addr.1, 0
  br i1 %tobool69.not, label %if.end68.cleanup102_crit_edge, label %if.then70

if.end68.cleanup102_crit_edge:                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup102

if.then70:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %usize.addr.1)
  %cmp71 = icmp slt i32 %usize.addr.1, 16
  br i1 %cmp71, label %if.then72, label %if.else78

if.then72:                                        ; preds = %if.then70
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #5
  %34 = ptrtoint ptr %tspace to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tspace, align 4
  %call74 = call i32 @mpihelp_mul(ptr noundef %35, ptr noundef %vp, i32 noundef %vsize, ptr noundef %up.addr.1, i32 noundef %usize.addr.1, ptr noundef nonnull %tmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp slt i32 %call74, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #5
  br i1 %cmp75, label %if.then72.cleanup102_crit_edge, label %if.then72.if.end94_crit_edge

if.then72.if.end94_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end94

if.then72.cleanup102_crit_edge:                   ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup102

if.else78:                                        ; preds = %if.then70
  %36 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ctx, align 4
  %tobool79.not = icmp eq ptr %37, null
  br i1 %tobool79.not, label %if.then80, label %if.else78.if.end87_crit_edge

if.else78.if.end87_crit_edge:                     ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end87

if.then80:                                        ; preds = %if.else78
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %38 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 3520, i32 noundef 20) #8
  %39 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call7.i.i, ptr %ctx, align 4
  %tobool84.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool84.not, label %if.then80.cleanup102_crit_edge, label %if.then80.if.end87_crit_edge

if.then80.if.end87_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end87

if.then80.cleanup102_crit_edge:                   ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup102

if.end87:                                         ; preds = %if.then80.if.end87_crit_edge, %if.else78.if.end87_crit_edge
  %40 = ptrtoint ptr %tspace to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tspace, align 4
  %42 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ctx, align 4
  %call90 = tail call i32 @mpihelp_mul_karatsuba_case(ptr noundef %41, ptr noundef %vp, i32 noundef %vsize, ptr noundef %up.addr.1, i32 noundef %usize.addr.1, ptr noundef %43)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp91 = icmp slt i32 %call90, 0
  br i1 %cmp91, label %if.end87.cleanup102_crit_edge, label %if.end87.if.end94_crit_edge

if.end87.if.end94_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end94

if.end87.cleanup102_crit_edge:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup102

if.end94:                                         ; preds = %if.end87.if.end94_crit_edge, %if.then72.if.end94_crit_edge
  %44 = ptrtoint ptr %tspace to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tspace, align 4
  %call96 = tail call i32 @mpihelp_add_n(ptr noundef %prodp.addr.1, ptr noundef %prodp.addr.1, ptr noundef %45, i32 noundef %vsize) #5
  %add.ptr97 = getelementptr i32, ptr %prodp.addr.1, i32 %vsize
  %46 = ptrtoint ptr %tspace to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tspace, align 4
  %add.ptr99 = getelementptr i32, ptr %47, i32 %vsize
  %incdec.ptr.i193 = getelementptr i32, ptr %add.ptr99, i32 1
  %48 = ptrtoint ptr %add.ptr99 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr99, align 4
  %add.i194 = add i32 %49, %call96
  %incdec.ptr1.i195 = getelementptr i32, ptr %add.ptr97, i32 1
  %50 = ptrtoint ptr %add.ptr97 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %add.i194, ptr %add.ptr97, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i194, i32 %49)
  %cmp.i196 = icmp ult i32 %add.i194, %49
  br i1 %cmp.i196, label %if.end94.while.cond.i202_crit_edge, label %if.end94.leave.i212_crit_edge

if.end94.leave.i212_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  br label %leave.i212

if.end94.while.cond.i202_crit_edge:               ; preds = %if.end94
  br label %while.cond.i202

while.cond.i202:                                  ; preds = %while.body.i207.while.cond.i202_crit_edge, %if.end94.while.cond.i202_crit_edge
  %res_ptr.addr.0.i197 = phi ptr [ %incdec.ptr4.i205, %while.body.i207.while.cond.i202_crit_edge ], [ %incdec.ptr1.i195, %if.end94.while.cond.i202_crit_edge ]
  %s1_ptr.addr.0.i198 = phi ptr [ %incdec.ptr2.i203, %while.body.i207.while.cond.i202_crit_edge ], [ %incdec.ptr.i193, %if.end94.while.cond.i202_crit_edge ]
  %s1_size.addr.0.i199 = phi i32 [ %dec.i200, %while.body.i207.while.cond.i202_crit_edge ], [ %usize.addr.1, %if.end94.while.cond.i202_crit_edge ]
  %dec.i200 = add i32 %s1_size.addr.0.i199, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i200)
  %tobool.not.i201 = icmp eq i32 %dec.i200, 0
  br i1 %tobool.not.i201, label %while.cond.i202.cleanup102_crit_edge, label %while.body.i207

while.cond.i202.cleanup102_crit_edge:             ; preds = %while.cond.i202
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup102

while.body.i207:                                  ; preds = %while.cond.i202
  %incdec.ptr2.i203 = getelementptr i32, ptr %s1_ptr.addr.0.i198, i32 1
  %51 = ptrtoint ptr %s1_ptr.addr.0.i198 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %s1_ptr.addr.0.i198, align 4
  %add3.i204 = add i32 %52, 1
  %incdec.ptr4.i205 = getelementptr i32, ptr %res_ptr.addr.0.i197, i32 1
  %53 = ptrtoint ptr %res_ptr.addr.0.i197 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %add3.i204, ptr %res_ptr.addr.0.i197, align 4
  %tobool5.not.i206 = icmp eq i32 %add3.i204, 0
  br i1 %tobool5.not.i206, label %while.body.i207.while.cond.i202_crit_edge, label %while.body.i207.leave.i212_crit_edge

while.body.i207.leave.i212_crit_edge:             ; preds = %while.body.i207
  call void @__sanitizer_cov_trace_pc() #7
  br label %leave.i212

while.body.i207.while.cond.i202_crit_edge:        ; preds = %while.body.i207
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i202

leave.i212:                                       ; preds = %while.body.i207.leave.i212_crit_edge, %if.end94.leave.i212_crit_edge
  %res_ptr.addr.1.i208 = phi ptr [ %incdec.ptr1.i195, %if.end94.leave.i212_crit_edge ], [ %incdec.ptr4.i205, %while.body.i207.leave.i212_crit_edge ]
  %s1_ptr.addr.1.i209 = phi ptr [ %incdec.ptr.i193, %if.end94.leave.i212_crit_edge ], [ %incdec.ptr2.i203, %while.body.i207.leave.i212_crit_edge ]
  %s1_size.addr.1.i210 = phi i32 [ %usize.addr.1, %if.end94.leave.i212_crit_edge ], [ %dec.i200, %while.body.i207.leave.i212_crit_edge ]
  %cmp8.not.i211 = icmp eq ptr %res_ptr.addr.1.i208, %s1_ptr.addr.1.i209
  br i1 %cmp8.not.i211, label %leave.i212.cleanup102_crit_edge, label %for.cond.preheader.i215

leave.i212.cleanup102_crit_edge:                  ; preds = %leave.i212
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup102

for.cond.preheader.i215:                          ; preds = %leave.i212
  %sub.i213 = add i32 %s1_size.addr.1.i210, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i213)
  %cmp103.i214 = icmp sgt i32 %sub.i213, 0
  br i1 %cmp103.i214, label %for.cond.preheader.i215.for.body.i221_crit_edge, label %for.cond.preheader.i215.cleanup102_crit_edge

for.cond.preheader.i215.cleanup102_crit_edge:     ; preds = %for.cond.preheader.i215
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup102

for.cond.preheader.i215.for.body.i221_crit_edge:  ; preds = %for.cond.preheader.i215
  br label %for.body.i221

for.body.i221:                                    ; preds = %for.body.i221.for.body.i221_crit_edge, %for.cond.preheader.i215.for.body.i221_crit_edge
  %i.04.i216 = phi i32 [ %inc.i219, %for.body.i221.for.body.i221_crit_edge ], [ 0, %for.cond.preheader.i215.for.body.i221_crit_edge ]
  %arrayidx.i217 = getelementptr i32, ptr %s1_ptr.addr.1.i209, i32 %i.04.i216
  %54 = ptrtoint ptr %arrayidx.i217 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i217, align 4
  %arrayidx11.i218 = getelementptr i32, ptr %res_ptr.addr.1.i208, i32 %i.04.i216
  %56 = ptrtoint ptr %arrayidx11.i218 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %arrayidx11.i218, align 4
  %inc.i219 = add nuw nsw i32 %i.04.i216, 1
  %exitcond.not.i220 = icmp eq i32 %inc.i219, %sub.i213
  br i1 %exitcond.not.i220, label %for.body.i221.cleanup102_crit_edge, label %for.body.i221.for.body.i221_crit_edge

for.body.i221.for.body.i221_crit_edge:            ; preds = %for.body.i221
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i221

for.body.i221.cleanup102_crit_edge:               ; preds = %for.body.i221
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup102

cleanup102:                                       ; preds = %for.body.i221.cleanup102_crit_edge, %for.cond.preheader.i215.cleanup102_crit_edge, %leave.i212.cleanup102_crit_edge, %while.cond.i202.cleanup102_crit_edge, %if.end87.cleanup102_crit_edge, %if.then80.cleanup102_crit_edge, %if.then72.cleanup102_crit_edge, %if.end68.cleanup102_crit_edge, %if.end39, %if.end.cleanup102_crit_edge
  %retval.1 = phi i32 [ -12, %if.then72.cleanup102_crit_edge ], [ -12, %if.end39 ], [ -12, %if.end.cleanup102_crit_edge ], [ -12, %if.then80.cleanup102_crit_edge ], [ -12, %if.end87.cleanup102_crit_edge ], [ 0, %if.end68.cleanup102_crit_edge ], [ 0, %leave.i212.cleanup102_crit_edge ], [ 0, %for.cond.preheader.i215.cleanup102_crit_edge ], [ 0, %for.body.i221.cleanup102_crit_edge ], [ 0, %while.cond.i202.cleanup102_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpihelp_mul(ptr noundef %prodp, ptr noundef %up, i32 noundef %usize, ptr noundef %vp, i32 noundef %vsize, ptr nocapture noundef writeonly %_result) local_unnamed_addr #0 align 64 {
entry:
  %ctx = alloca %struct.karatsuba_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i32, ptr %prodp, i32 %usize
  %add.ptr1 = getelementptr i32, ptr %add.ptr, i32 %vsize
  %add.ptr2 = getelementptr i32, ptr %add.ptr1, i32 -1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %ctx) #5
  %0 = getelementptr inbounds %struct.karatsuba_ctx, ptr %ctx, i32 0, i32 1
  %1 = getelementptr inbounds %struct.karatsuba_ctx, ptr %ctx, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %vsize)
  %cmp = icmp slt i32 %vsize, 16
  br i1 %cmp, label %if.then, label %if.end45

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vsize)
  %tobool.not = icmp eq i32 %vsize, 0
  br i1 %tobool.not, label %if.then.cleanup50.sink.split_crit_edge, label %if.end

if.then.cleanup50.sink.split_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup50.sink.split

if.end:                                           ; preds = %if.then
  %2 = ptrtoint ptr %vp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp4 = icmp ult i32 %3, 2
  br i1 %cmp4, label %if.then5, label %if.else23

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp6 = icmp eq i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %usize)
  %cmp8103 = icmp sgt i32 %usize, 0
  br i1 %cmp6, label %for.cond.preheader, label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %if.then5
  br i1 %cmp8103, label %for.body15.preheader, label %for.cond13.preheader.if.end24_crit_edge

for.cond13.preheader.if.end24_crit_edge:          ; preds = %for.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

for.body15.preheader:                             ; preds = %for.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %4 = shl nuw i32 %usize, 2
  %5 = call ptr @memset(ptr %prodp, i32 0, i32 %4)
  br label %if.end24

for.cond.preheader:                               ; preds = %if.then5
  br i1 %cmp8103, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end24_crit_edge

for.cond.preheader.if.end24_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %_i.0104 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx9 = getelementptr i32, ptr %up, i32 %_i.0104
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx9, align 4
  %arrayidx10 = getelementptr i32, ptr %prodp, i32 %_i.0104
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx10, align 4
  %inc = add nuw nsw i32 %_i.0104, 1
  %exitcond.not = icmp eq i32 %inc, %usize
  br i1 %exitcond.not, label %for.body.if.end24_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.if.end24_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.else23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @mpihelp_mul_1(ptr noundef %prodp, ptr noundef %up, i32 noundef %usize, i32 noundef %3) #5
  br label %if.end24

if.end24:                                         ; preds = %if.else23, %for.body.if.end24_crit_edge, %for.cond.preheader.if.end24_crit_edge, %for.body15.preheader, %for.cond13.preheader.if.end24_crit_edge
  %cy.0 = phi i32 [ %call, %if.else23 ], [ 0, %for.cond.preheader.if.end24_crit_edge ], [ 0, %for.cond13.preheader.if.end24_crit_edge ], [ 0, %for.body15.preheader ], [ 0, %for.body.if.end24_crit_edge ]
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cy.0, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %vsize)
  %cmp27106 = icmp sgt i32 %vsize, 1
  br i1 %cmp27106, label %if.end24.for.body28_crit_edge, label %if.end24.cleanup50.sink.split_crit_edge

if.end24.cleanup50.sink.split_crit_edge:          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup50.sink.split

if.end24.for.body28_crit_edge:                    ; preds = %if.end24
  br label %for.body28

for.body28:                                       ; preds = %if.end38.for.body28_crit_edge, %if.end24.for.body28_crit_edge
  %prodp.addr.0108.pn = phi ptr [ %prodp.addr.0108, %if.end38.for.body28_crit_edge ], [ %prodp, %if.end24.for.body28_crit_edge ]
  %i.0107 = phi i32 [ %inc42, %if.end38.for.body28_crit_edge ], [ 1, %if.end24.for.body28_crit_edge ]
  %prodp.addr.0108 = getelementptr i32, ptr %prodp.addr.0108.pn, i32 1
  %arrayidx29 = getelementptr i32, ptr %vp, i32 %i.0107
  %10 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp30 = icmp ult i32 %11, 2
  br i1 %cmp30, label %if.then31, label %if.else36

if.then31:                                        ; preds = %for.body28
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp32 = icmp eq i32 %11, 1
  br i1 %cmp32, label %if.then33, label %if.then31.if.end38_crit_edge

if.then31.if.end38_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then33:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #7
  %call34 = tail call i32 @mpihelp_add_n(ptr noundef %prodp.addr.0108, ptr noundef %prodp.addr.0108, ptr noundef %up, i32 noundef %usize) #5
  br label %if.end38

if.else36:                                        ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #7
  %call37 = tail call i32 @mpihelp_addmul_1(ptr noundef %prodp.addr.0108, ptr noundef %up, i32 noundef %usize, i32 noundef %11) #5
  br label %if.end38

if.end38:                                         ; preds = %if.else36, %if.then33, %if.then31.if.end38_crit_edge
  %cy.2 = phi i32 [ %call34, %if.then33 ], [ 0, %if.then31.if.end38_crit_edge ], [ %call37, %if.else36 ]
  %arrayidx39 = getelementptr i32, ptr %prodp.addr.0108, i32 %usize
  %12 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %cy.2, ptr %arrayidx39, align 4
  %inc42 = add nuw nsw i32 %i.0107, 1
  %exitcond110.not = icmp eq i32 %inc42, %vsize
  br i1 %exitcond110.not, label %if.end38.cleanup50.sink.split_crit_edge, label %if.end38.for.body28_crit_edge

if.end38.for.body28_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body28

if.end38.cleanup50.sink.split_crit_edge:          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup50.sink.split

if.end45:                                         ; preds = %entry
  %13 = call ptr @memset(ptr %ctx, i32 0, i32 20)
  %call46 = call i32 @mpihelp_mul_karatsuba_case(ptr noundef %prodp, ptr noundef %up, i32 noundef %usize, ptr noundef %vp, i32 noundef %vsize, ptr noundef nonnull %ctx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.end45.cleanup50_crit_edge, label %if.end49

if.end45.cleanup50_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup50

if.end49:                                         ; preds = %if.end45
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end49.if.end.i_crit_edge, label %if.then.i

if.end49.if.end.i_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mpi_free_limb_space(ptr noundef nonnull %15) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end49.if.end.i_crit_edge
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %0, align 4
  %tobool2.not.i = icmp eq ptr %17, null
  br i1 %tobool2.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then3.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mpi_free_limb_space(ptr noundef nonnull %17) #5
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i.if.end5.i_crit_edge
  %18 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx, align 4
  %tobool6.not32.i = icmp eq ptr %19, null
  br i1 %tobool6.not32.i, label %if.end5.i.mpihelp_release_karatsuba_ctx.exit_crit_edge, label %if.end5.i.for.body.i_crit_edge

if.end5.i.for.body.i_crit_edge:                   ; preds = %if.end5.i
  br label %for.body.i

if.end5.i.mpihelp_release_karatsuba_ctx.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mpihelp_release_karatsuba_ctx.exit

for.body.i:                                       ; preds = %if.end17.i.for.body.i_crit_edge, %if.end5.i.for.body.i_crit_edge
  %ctx.addr.033.i = phi ptr [ %21, %if.end17.i.for.body.i_crit_edge ], [ %19, %if.end5.i.for.body.i_crit_edge ]
  %20 = ptrtoint ptr %ctx.addr.033.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctx.addr.033.i, align 4
  %tp8.i = getelementptr inbounds %struct.karatsuba_ctx, ptr %ctx.addr.033.i, i32 0, i32 3
  %22 = ptrtoint ptr %tp8.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tp8.i, align 4
  %tobool9.not.i = icmp eq ptr %23, null
  br i1 %tobool9.not.i, label %for.body.i.if.end12.i_crit_edge, label %if.then10.i

for.body.i.if.end12.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i

if.then10.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mpi_free_limb_space(ptr noundef nonnull %23) #5
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %for.body.i.if.end12.i_crit_edge
  %tspace13.i = getelementptr inbounds %struct.karatsuba_ctx, ptr %ctx.addr.033.i, i32 0, i32 1
  %24 = ptrtoint ptr %tspace13.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tspace13.i, align 4
  %tobool14.not.i = icmp eq ptr %25, null
  br i1 %tobool14.not.i, label %if.end12.i.if.end17.i_crit_edge, label %if.then15.i

if.end12.i.if.end17.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i

if.then15.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mpi_free_limb_space(ptr noundef nonnull %25) #5
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then15.i, %if.end12.i.if.end17.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %ctx.addr.033.i) #5
  %tobool6.not.i = icmp eq ptr %21, null
  br i1 %tobool6.not.i, label %if.end17.i.mpihelp_release_karatsuba_ctx.exit_crit_edge, label %if.end17.i.for.body.i_crit_edge

if.end17.i.for.body.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.end17.i.mpihelp_release_karatsuba_ctx.exit_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mpihelp_release_karatsuba_ctx.exit

mpihelp_release_karatsuba_ctx.exit:               ; preds = %if.end17.i.mpihelp_release_karatsuba_ctx.exit_crit_edge, %if.end5.i.mpihelp_release_karatsuba_ctx.exit_crit_edge
  %26 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr2, align 4
  br label %cleanup50.sink.split

cleanup50.sink.split:                             ; preds = %mpihelp_release_karatsuba_ctx.exit, %if.end38.cleanup50.sink.split_crit_edge, %if.end24.cleanup50.sink.split_crit_edge, %if.then.cleanup50.sink.split_crit_edge
  %.sink = phi i32 [ %27, %mpihelp_release_karatsuba_ctx.exit ], [ 0, %if.then.cleanup50.sink.split_crit_edge ], [ %cy.0, %if.end24.cleanup50.sink.split_crit_edge ], [ %cy.2, %if.end38.cleanup50.sink.split_crit_edge ]
  %28 = ptrtoint ptr %_result to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %.sink, ptr %_result, align 4
  br label %cleanup50

cleanup50:                                        ; preds = %cleanup50.sink.split, %if.end45.cleanup50_crit_edge
  %retval.1 = phi i32 [ -12, %if.end45.cleanup50_crit_edge ], [ 0, %cleanup50.sink.split ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %ctx) #5
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpihelp_release_karatsuba_ctx(ptr nocapture noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tp = getelementptr inbounds %struct.karatsuba_ctx, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mpi_free_limb_space(ptr noundef nonnull %1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tspace = getelementptr inbounds %struct.karatsuba_ctx, ptr %ctx, i32 0, i32 1
  %2 = ptrtoint ptr %tspace to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tspace, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mpi_free_limb_space(ptr noundef nonnull %3) #5
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %tobool6.not32 = icmp eq ptr %5, null
  br i1 %tobool6.not32, label %if.end5.for.end_crit_edge, label %if.end5.for.body_crit_edge

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  br label %for.body

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %if.end17.for.body_crit_edge, %if.end5.for.body_crit_edge
  %ctx.addr.033 = phi ptr [ %7, %if.end17.for.body_crit_edge ], [ %5, %if.end5.for.body_crit_edge ]
  %6 = ptrtoint ptr %ctx.addr.033 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx.addr.033, align 4
  %tp8 = getelementptr inbounds %struct.karatsuba_ctx, ptr %ctx.addr.033, i32 0, i32 3
  %8 = ptrtoint ptr %tp8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tp8, align 4
  %tobool9.not = icmp eq ptr %9, null
  br i1 %tobool9.not, label %for.body.if.end12_crit_edge, label %if.then10

for.body.if.end12_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then10:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mpi_free_limb_space(ptr noundef nonnull %9) #5
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %for.body.if.end12_crit_edge
  %tspace13 = getelementptr inbounds %struct.karatsuba_ctx, ptr %ctx.addr.033, i32 0, i32 1
  %10 = ptrtoint ptr %tspace13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tspace13, align 4
  %tobool14.not = icmp eq ptr %11, null
  br i1 %tobool14.not, label %if.end12.if.end17_crit_edge, label %if.then15

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mpi_free_limb_space(ptr noundef nonnull %11) #5
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end12.if.end17_crit_edge
  tail call void @kfree(ptr noundef nonnull %ctx.addr.033) #5
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.end17.for.end_crit_edge, label %if.end17.for.body_crit_edge

if.end17.for.body_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end17.for.end_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %if.end17.for.end_crit_edge, %if.end5.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
