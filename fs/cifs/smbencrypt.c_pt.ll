; ModuleID = '/llk/IR_all_yes/fs/cifs/smbencrypt.c_pt.bc'
source_filename = "../fs/cifs/smbencrypt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.md4_ctx = type { [4 x i32], [16 x i32], i64 }

@mdfour._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.mdfour = private unnamed_addr constant [7 x i8] c"mdfour\00", align 1
@mdfour._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.mdfour, ptr @.str.2, i32 50, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013CIFS: VFS: %s: Could not init MD4\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/cifs/smbencrypt.c\00", [43 x i8] zeroinitializer }, align 32
@mdfour._entry_ptr = internal global ptr @mdfour._entry, section ".printk_index", align 4
@mdfour._rs.3 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@mdfour._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.mdfour, ptr @.str.2, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013CIFS: VFS: %s: Could not update MD4\0A\00", [57 x i8] zeroinitializer }, align 32
@mdfour._entry_ptr.6 = internal global ptr @mdfour._entry.4, section ".printk_index", align 4
@mdfour._rs.7 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@mdfour._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @__func__.mdfour, ptr @.str.2, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013CIFS: VFS: %s: Could not finalize MD4\0A\00", [55 x i8] zeroinitializer }, align 32
@mdfour._entry_ptr.10 = internal global ptr @mdfour._entry.8, section ".printk_index", align 4
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 50, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 55, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private constant [24 x i8] c"../fs/cifs/smbencrypt.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 60, i32 3 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @mdfour._entry, ptr @mdfour._entry.4, ptr @mdfour._entry.8, ptr @mdfour._entry_ptr, ptr @mdfour._entry_ptr.10, ptr @mdfour._entry_ptr.6, ptr @mdfour._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @mdfour._rs.3, ptr @.str.5, ptr @mdfour._rs.7, ptr @.str.9], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdfour._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdfour._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdfour._rs.3 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdfour._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdfour._rs.7 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdfour._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @E_md4hash(ptr noundef %passwd, ptr noundef %p16, ptr noundef %codepage) local_unnamed_addr #0 align 64 {
entry:
  %mctx.i = alloca %struct.md4_ctx, align 8
  %wpwd = alloca [129 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 258, ptr nonnull %wpwd) #4
  %0 = call ptr @memset(ptr %wpwd, i32 255, i32 258)
  %tobool.not = icmp eq ptr %passwd, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = call i32 @cifs_strtoUTF16(ptr noundef nonnull %wpwd, ptr noundef nonnull %passwd, i32 noundef 128, ptr noundef %codepage) #4
  %phi.bo = shl i32 %call, 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %wpwd to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %wpwd, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %len.0 = phi i32 [ %phi.bo, %if.then ], [ 0, %if.else ]
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %mctx.i) #4
  %2 = call ptr @memset(ptr %mctx.i, i32 255, i32 88)
  %call.i = call i32 @cifs_md4_init(ptr noundef nonnull %mctx.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end11.i, label %do.body1.i

do.body1.i:                                       ; preds = %if.end
  %call2.i = call i32 @___ratelimit(ptr noundef nonnull @mdfour._rs, ptr noundef nonnull @__func__.mdfour) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.body1.i.mdfour.exit_crit_edge, label %do.body1.i.mdfour_err.sink.split.i_crit_edge

do.body1.i.mdfour_err.sink.split.i_crit_edge:     ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mdfour_err.sink.split.i

do.body1.i.mdfour.exit_crit_edge:                 ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mdfour.exit

if.end11.i:                                       ; preds = %if.end
  %call12.i = call i32 @cifs_md4_update(ptr noundef nonnull %mctx.i, ptr noundef nonnull %wpwd, i32 noundef %len.0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end30.i, label %do.body16.i

do.body16.i:                                      ; preds = %if.end11.i
  %call17.i = call i32 @___ratelimit(ptr noundef nonnull @mdfour._rs.3, ptr noundef nonnull @__func__.mdfour) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %do.body16.i.mdfour.exit_crit_edge, label %do.body16.i.mdfour_err.sink.split.i_crit_edge

do.body16.i.mdfour_err.sink.split.i_crit_edge:    ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mdfour_err.sink.split.i

do.body16.i.mdfour.exit_crit_edge:                ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mdfour.exit

if.end30.i:                                       ; preds = %if.end11.i
  %call31.i = call i32 @cifs_md4_final(ptr noundef nonnull %mctx.i, ptr noundef %p16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.end30.i.mdfour.exit_crit_edge, label %do.body35.i

if.end30.i.mdfour.exit_crit_edge:                 ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mdfour.exit

do.body35.i:                                      ; preds = %if.end30.i
  %call36.i = call i32 @___ratelimit(ptr noundef nonnull @mdfour._rs.7, ptr noundef nonnull @__func__.mdfour) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %do.body35.i.mdfour.exit_crit_edge, label %do.body35.i.mdfour_err.sink.split.i_crit_edge

do.body35.i.mdfour_err.sink.split.i_crit_edge:    ; preds = %do.body35.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mdfour_err.sink.split.i

do.body35.i.mdfour.exit_crit_edge:                ; preds = %do.body35.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mdfour.exit

mdfour_err.sink.split.i:                          ; preds = %do.body35.i.mdfour_err.sink.split.i_crit_edge, %do.body16.i.mdfour_err.sink.split.i_crit_edge, %do.body1.i.mdfour_err.sink.split.i_crit_edge
  %.str.9.sink.i = phi ptr [ @.str.1, %do.body1.i.mdfour_err.sink.split.i_crit_edge ], [ @.str.5, %do.body16.i.mdfour_err.sink.split.i_crit_edge ], [ @.str.9, %do.body35.i.mdfour_err.sink.split.i_crit_edge ]
  %rc.0.ph.i = phi i32 [ %call.i, %do.body1.i.mdfour_err.sink.split.i_crit_edge ], [ %call12.i, %do.body16.i.mdfour_err.sink.split.i_crit_edge ], [ %call31.i, %do.body35.i.mdfour_err.sink.split.i_crit_edge ]
  %call43.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.9.sink.i, ptr noundef nonnull @__func__.mdfour) #7
  br label %mdfour.exit

mdfour.exit:                                      ; preds = %mdfour_err.sink.split.i, %do.body35.i.mdfour.exit_crit_edge, %if.end30.i.mdfour.exit_crit_edge, %do.body16.i.mdfour.exit_crit_edge, %do.body1.i.mdfour.exit_crit_edge
  %rc.0.i = phi i32 [ %call.i, %do.body1.i.mdfour.exit_crit_edge ], [ %call12.i, %do.body16.i.mdfour.exit_crit_edge ], [ %call31.i, %do.body35.i.mdfour.exit_crit_edge ], [ 0, %if.end30.i.mdfour.exit_crit_edge ], [ %rc.0.ph.i, %mdfour_err.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %mctx.i) #4
  %3 = call ptr @memset(ptr %wpwd, i32 0, i32 258)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %wpwd) #4, !srcloc !27
  call void @llvm.lifetime.end.p0(i64 258, ptr nonnull %wpwd) #4
  ret i32 %rc.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_strtoUTF16(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_md4_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_md4_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_md4_final(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_store2_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/cifs/smbencrypt.c", i32 50, i32 3}
!2 = !{ptr @mdfour._rs, !1, !"_rs", i1 false, i1 false}
!3 = !{ptr @__func__.mdfour, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mdfour._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mdfour._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @mdfour._rs.3, !9, !"_rs", i1 false, i1 false}
!9 = !{!"../fs/cifs/smbencrypt.c", i32 55, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @mdfour._entry.4, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @mdfour._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @mdfour._rs.7, !14, !"_rs", i1 false, i1 false}
!14 = !{!"../fs/cifs/smbencrypt.c", i32 60, i32 3}
!15 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @mdfour._entry.8, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @mdfour._entry_ptr.10, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{i64 2149010806}
