; ModuleID = '/llk/IR_all_yes/lib/atomic64_test.c_pt.bc'
source_filename = "../lib/atomic64_test.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.atomic64_t = type { i64 }

@__initcall__kmod_atomic64_test__106_273_test_atomics_init6 = internal global ptr @test_atomics_init, section ".initcall6.init", align 4
@__exitcall_test_atomics_exit = internal global ptr @test_atomics_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file107 = internal constant [37 x i8] c"atomic64_test.file=lib/atomic64_test\00", section ".modinfo", align 1
@__UNIQUE_ID_license108 = internal constant [26 x i8] c"atomic64_test.license=GPL\00", section ".modinfo", align 1
@test_atomics_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016atomic64_test: passed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"test_atomics_init\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lib/atomic64_test.c\00", [44 x i8] zeroinitializer }, align 32
@test_atomics_init._entry_ptr = internal global ptr @test_atomics_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%Lx != %Lx\0A\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 265, i32 2 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private constant [23 x i8] c"../lib/atomic64_test.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 114, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_file107, ptr @__UNIQUE_ID_license108, ptr @__exitcall_test_atomics_exit, ptr @__initcall__kmod_atomic64_test__106_273_test_atomics_init6, ptr @test_atomics_exit, ptr @test_atomics_init._entry, ptr @test_atomics_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_atomics_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @test_atomics_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @test_atomics_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @test_atomic() #8
  tail call fastcc void @test_atomic64() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_atomic() unnamed_addr #1 section ".init.text" align 64 {
entry:
  %v = alloca %struct.atomic_t, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #10
  %0 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %v, align 4, !annotation !23
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %1 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i3918 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %2 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 286335522, ptr nonnull elementtype(i32) %v) #10, !srcloc !24
  %call.i.i3919 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %3 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1145817767, i32 %4)
  %cmp.not = icmp eq i32 %4, -1145817767
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !25

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i3920 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %5 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %v, align 4
  %conv = sext i32 %6 to i64
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 114, i32 noundef 9, ptr noundef nonnull @.str.3, i64 noundef %conv, i64 noundef -1145817767) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call.i.i3921 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %7 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i3922 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %8 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 -1, ptr nonnull elementtype(i32) %v) #10, !srcloc !24
  %call.i.i3923 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %9 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153290, i32 %10)
  %cmp29.not = icmp eq i32 %10, -1432153290
  br i1 %cmp29.not, label %if.end.if.end55_crit_edge, label %do.end46, !prof !25

if.end.if.end55_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

do.end46:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i3924 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %11 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %v, align 4
  %conv48 = sext i32 %12 to i64
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 115, i32 noundef 9, ptr noundef nonnull @.str.3, i64 noundef %conv48, i64 noundef -1432153290) #10
  br label %if.end55

if.end55:                                         ; preds = %do.end46, %if.end.if.end55_crit_edge
  %call.i.i3925 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %13 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i3926 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %14 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 286335522, ptr nonnull elementtype(i32) %v) #10, !srcloc !26
  %call.i.i3927 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %15 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1718488811, i32 %16)
  %cmp69.not = icmp eq i32 %16, -1718488811
  br i1 %cmp69.not, label %if.end55.if.end95_crit_edge, label %do.end86, !prof !25

if.end55.if.end95_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95

do.end86:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i3928 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %17 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %v, align 4
  %conv88 = sext i32 %18 to i64
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 116, i32 noundef 9, ptr noundef nonnull @.str.3, i64 noundef %conv88, i64 noundef -1718488811) #10
  br label %if.end95

if.end95:                                         ; preds = %do.end86, %if.end55.if.end95_crit_edge
  %call.i.i3929 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %19 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i3930 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %20 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 -1, ptr nonnull elementtype(i32) %v) #10, !srcloc !26
  %call.i.i3931 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %21 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153288, i32 %22)
  %cmp111.not = icmp eq i32 %22, -1432153288
  br i1 %cmp111.not, label %if.end95.if.end137_crit_edge, label %do.end128, !prof !25

if.end95.if.end137_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end137

do.end128:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i3932 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %23 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %v, align 4
  %conv130 = sext i32 %24 to i64
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 117, i32 noundef 9, ptr noundef nonnull @.str.3, i64 noundef %conv130, i64 noundef -1432153288) #10
  br label %if.end137

if.end137:                                        ; preds = %do.end128, %if.end95.if.end137_crit_edge
  %call.i.i3933 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %25 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i3934 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %26 = call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 -559038737, ptr nonnull elementtype(i32) %v) #10, !srcloc !27
  %call.i.i3935 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %27 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22036481, i32 %28)
  %cmp150.not = icmp eq i32 %28, -22036481
  br i1 %cmp150.not, label %if.end137.if.end176_crit_edge, label %do.end167, !prof !25

if.end137.if.end176_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end176

do.end167:                                        ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i3936 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %29 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %v, align 4
  %conv169 = sext i32 %30 to i64
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 118, i32 noundef 9, ptr noundef nonnull @.str.3, i64 noundef %conv169, i64 noundef -22036481) #10
  br label %if.end176

if.end176:                                        ; preds = %do.end167, %if.end137.if.end176_crit_edge
  %call.i.i3937 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %31 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i3938 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %32 = call { i32, i32 } asm sideeffect "@ atomic_and\0A1:\09ldrex\09$0, [$3]\0A\09and\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 -559038737, ptr nonnull elementtype(i32) %v) #10, !srcloc !28
  %call.i.i3939 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %33 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1969155545, i32 %34)
  %cmp189.not = icmp eq i32 %34, -1969155545
  br i1 %cmp189.not, label %if.end176.if.end215_crit_edge, label %do.end206, !prof !25

if.end176.if.end215_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end215

do.end206:                                        ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i3940 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %35 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %v, align 4
  %conv208 = sext i32 %36 to i64
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 119, i32 noundef 9, ptr noundef nonnull @.str.3, i64 noundef %conv208, i64 noundef -1969155545) #10
  br label %if.end215

if.end215:                                        ; preds = %do.end206, %if.end176.if.end215_crit_edge
  %call.i.i3941 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %37 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i3942 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %38 = call { i32, i32 } asm sideeffect "@ atomic_xor\0A1:\09ldrex\09$0, [$3]\0A\09eor\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 -559038737, ptr nonnull elementtype(i32) %v) #10, !srcloc !29
  %call.i.i3943 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %39 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1947119064, i32 %40)
  %cmp228.not = icmp eq i32 %40, 1947119064
  br i1 %cmp228.not, label %if.end215.if.end254_crit_edge, label %do.end245, !prof !25

if.end215.if.end254_crit_edge:                    ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end254

do.end245:                                        ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i3944 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %41 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %v, align 4
  %conv247 = sext i32 %42 to i64
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 120, i32 noundef 9, ptr noundef nonnull @.str.3, i64 noundef %conv247, i64 noundef 1947119064) #10
  br label %if.end254

if.end254:                                        ; preds = %do.end245, %if.end215.if.end254_crit_edge
  %call.i.i3945 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %43 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i3946 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %44 = call { i32, i32 } asm sideeffect "@ atomic_andnot\0A1:\09ldrex\09$0, [$3]\0A\09bic\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 -559038737, ptr nonnull elementtype(i32) %v) #10, !srcloc !30
  %call.i.i3947 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %45 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 537002256, i32 %46)
  %cmp268.not = icmp eq i32 %46, 537002256
  br i1 %cmp268.not, label %if.end254.if.end294_crit_edge, label %do.end285, !prof !25

if.end254.if.end294_crit_edge:                    ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end294

do.end285:                                        ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i3948 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %47 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %v, align 4
  %conv287 = sext i32 %48 to i64
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 121, i32 noundef 9, ptr noundef nonnull @.str.3, i64 noundef %conv287, i64 noundef 537002256) #10
  br label %if.end294

if.end294:                                        ; preds = %do.end285, %if.end254.if.end294_crit_edge
  %call.i.i3949 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %49 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i3950 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !31
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %50 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 286335522, ptr nonnull elementtype(i32) %v) #10, !srcloc !32
  %asmresult.i.i.i = extractvalue { i32, i32 } %50, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1145817767, i32 %asmresult.i.i.i)
  %cmp310.not = icmp eq i32 %asmresult.i.i.i, -1145817767
  br i1 %cmp310.not, label %do.body328, label %do.body319, !prof !25

do.body319:                                       ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 123, 0\0A.popsection", ""() #10, !srcloc !34
  unreachable

do.body328:                                       ; preds = %if.end294
  %call.i.i3951 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %51 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1145817767, i32 %52)
  %cmp330.not = icmp eq i32 %52, -1145817767
  br i1 %cmp330.not, label %do.body350, label %do.body339, !prof !25

do.body339:                                       ; preds = %do.body328
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 123, 0\0A.popsection", ""() #10, !srcloc !35
  unreachable

do.body350:                                       ; preds = %do.body328
  %call.i.i3952 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %53 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i3953 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %54 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 286335522, ptr nonnull elementtype(i32) %v) #10, !srcloc !32
  %asmresult.i.i.i3954 = extractvalue { i32, i32 } %54, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !36
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1145817767, i32 %asmresult.i.i.i3954)
  %cmp354.not = icmp eq i32 %asmresult.i.i.i3954, -1145817767
  br i1 %cmp354.not, label %do.body372, label %do.body363, !prof !25

do.body363:                                       ; preds = %do.body350
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 123, 0\0A.popsection", ""() #10, !srcloc !37
  unreachable

do.body372:                                       ; preds = %do.body350
  %call.i.i3955 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %55 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1145817767, i32 %56)
  %cmp374.not = icmp eq i32 %56, -1145817767
  br i1 %cmp374.not, label %do.body394, label %do.body383, !prof !25

do.body383:                                       ; preds = %do.body372
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 123, 0\0A.popsection", ""() #10, !srcloc !38
  unreachable

do.body394:                                       ; preds = %do.body372
  %call.i.i3956 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %57 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i3957 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !39
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %58 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 286335522, ptr nonnull elementtype(i32) %v) #10, !srcloc !32
  %asmresult.i.i.i3958 = extractvalue { i32, i32 } %58, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1145817767, i32 %asmresult.i.i.i3958)
  %cmp398.not = icmp eq i32 %asmresult.i.i.i3958, -1145817767
  br i1 %cmp398.not, label %do.body416, label %do.body407, !prof !25

do.body407:                                       ; preds = %do.body394
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 123, 0\0A.popsection", ""() #10, !srcloc !40
  unreachable

do.body416:                                       ; preds = %do.body394
  %call.i.i3959 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %59 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1145817767, i32 %60)
  %cmp418.not = icmp eq i32 %60, -1145817767
  br i1 %cmp418.not, label %do.body438, label %do.body427, !prof !25

do.body427:                                       ; preds = %do.body416
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 123, 0\0A.popsection", ""() #10, !srcloc !41
  unreachable

do.body438:                                       ; preds = %do.body416
  %call.i.i3960 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %61 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i3961 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %62 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 286335522, ptr nonnull elementtype(i32) %v) #10, !srcloc !32
  %asmresult.i.i = extractvalue { i32, i32 } %62, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1145817767, i32 %asmresult.i.i)
  %cmp442.not = icmp eq i32 %asmresult.i.i, -1145817767
  br i1 %cmp442.not, label %do.body460, label %do.body451, !prof !25

do.body451:                                       ; preds = %do.body438
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 123, 0\0A.popsection", ""() #10, !srcloc !42
  unreachable

do.body460:                                       ; preds = %do.body438
  %call.i.i3962 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %63 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1145817767, i32 %64)
  %cmp462.not = icmp eq i32 %64, -1145817767
  br i1 %cmp462.not, label %do.body488, label %do.body471, !prof !25

do.body471:                                       ; preds = %do.body460
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 123, 0\0A.popsection", ""() #10, !srcloc !43
  unreachable

do.body488:                                       ; preds = %do.body460
  %call.i.i3963 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %65 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i3964 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !31
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %66 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 -1, ptr nonnull elementtype(i32) %v) #10, !srcloc !32
  %asmresult.i.i.i3965 = extractvalue { i32, i32 } %66, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153290, i32 %asmresult.i.i.i3965)
  %cmp494.not = icmp eq i32 %asmresult.i.i.i3965, -1432153290
  br i1 %cmp494.not, label %do.body512, label %do.body503, !prof !25

do.body503:                                       ; preds = %do.body488
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 124, 0\0A.popsection", ""() #10, !srcloc !44
  unreachable

do.body512:                                       ; preds = %do.body488
  %call.i.i3966 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %67 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153290, i32 %68)
  %cmp514.not = icmp eq i32 %68, -1432153290
  br i1 %cmp514.not, label %do.body534, label %do.body523, !prof !25

do.body523:                                       ; preds = %do.body512
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 124, 0\0A.popsection", ""() #10, !srcloc !45
  unreachable

do.body534:                                       ; preds = %do.body512
  %call.i.i3967 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %69 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i3968 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %70 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 -1, ptr nonnull elementtype(i32) %v) #10, !srcloc !32
  %asmresult.i.i.i3969 = extractvalue { i32, i32 } %70, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !36
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153290, i32 %asmresult.i.i.i3969)
  %cmp540.not = icmp eq i32 %asmresult.i.i.i3969, -1432153290
  br i1 %cmp540.not, label %do.body558, label %do.body549, !prof !25

do.body549:                                       ; preds = %do.body534
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 124, 0\0A.popsection", ""() #10, !srcloc !46
  unreachable

do.body558:                                       ; preds = %do.body534
  %call.i.i3970 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %71 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153290, i32 %72)
  %cmp560.not = icmp eq i32 %72, -1432153290
  br i1 %cmp560.not, label %do.body580, label %do.body569, !prof !25

do.body569:                                       ; preds = %do.body558
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 124, 0\0A.popsection", ""() #10, !srcloc !47
  unreachable

do.body580:                                       ; preds = %do.body558
  %call.i.i3971 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %73 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i3972 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !39
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %74 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 -1, ptr nonnull elementtype(i32) %v) #10, !srcloc !32
  %asmresult.i.i.i3973 = extractvalue { i32, i32 } %74, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153290, i32 %asmresult.i.i.i3973)
  %cmp586.not = icmp eq i32 %asmresult.i.i.i3973, -1432153290
  br i1 %cmp586.not, label %do.body604, label %do.body595, !prof !25

do.body595:                                       ; preds = %do.body580
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 124, 0\0A.popsection", ""() #10, !srcloc !48
  unreachable

do.body604:                                       ; preds = %do.body580
  %call.i.i3974 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %75 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153290, i32 %76)
  %cmp606.not = icmp eq i32 %76, -1432153290
  br i1 %cmp606.not, label %do.body626, label %do.body615, !prof !25

do.body615:                                       ; preds = %do.body604
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 124, 0\0A.popsection", ""() #10, !srcloc !49
  unreachable

do.body626:                                       ; preds = %do.body604
  %call.i.i3975 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %77 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i3976 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %78 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 -1, ptr nonnull elementtype(i32) %v) #10, !srcloc !32
  %asmresult.i.i3977 = extractvalue { i32, i32 } %78, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153290, i32 %asmresult.i.i3977)
  %cmp632.not = icmp eq i32 %asmresult.i.i3977, -1432153290
  br i1 %cmp632.not, label %do.body650, label %do.body641, !prof !25

do.body641:                                       ; preds = %do.body626
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 124, 0\0A.popsection", ""() #10, !srcloc !50
  unreachable

do.body650:                                       ; preds = %do.body626
  %call.i.i3978 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %79 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153290, i32 %80)
  %cmp652.not = icmp eq i32 %80, -1432153290
  br i1 %cmp652.not, label %do.body678, label %do.body661, !prof !25

do.body661:                                       ; preds = %do.body650
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 124, 0\0A.popsection", ""() #10, !srcloc !51
  unreachable

do.body678:                                       ; preds = %do.body650
  %call.i.i3979 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %81 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i3980 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !52
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %82 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 286335522, ptr nonnull elementtype(i32) %v) #10, !srcloc !53
  %asmresult.i.i.i3981 = extractvalue { i32, i32 } %82, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !54
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1718488811, i32 %asmresult.i.i.i3981)
  %cmp682.not = icmp eq i32 %asmresult.i.i.i3981, -1718488811
  br i1 %cmp682.not, label %do.body700, label %do.body691, !prof !25

do.body691:                                       ; preds = %do.body678
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 125, 0\0A.popsection", ""() #10, !srcloc !55
  unreachable

do.body700:                                       ; preds = %do.body678
  %call.i.i3982 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %83 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1718488811, i32 %84)
  %cmp702.not = icmp eq i32 %84, -1718488811
  br i1 %cmp702.not, label %do.body722, label %do.body711, !prof !25

do.body711:                                       ; preds = %do.body700
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 125, 0\0A.popsection", ""() #10, !srcloc !56
  unreachable

do.body722:                                       ; preds = %do.body700
  %call.i.i3983 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %85 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i3984 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %86 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 286335522, ptr nonnull elementtype(i32) %v) #10, !srcloc !53
  %asmresult.i.i.i3985 = extractvalue { i32, i32 } %86, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1718488811, i32 %asmresult.i.i.i3985)
  %cmp726.not = icmp eq i32 %asmresult.i.i.i3985, -1718488811
  br i1 %cmp726.not, label %do.body744, label %do.body735, !prof !25

do.body735:                                       ; preds = %do.body722
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 125, 0\0A.popsection", ""() #10, !srcloc !58
  unreachable

do.body744:                                       ; preds = %do.body722
  %call.i.i3986 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %87 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1718488811, i32 %88)
  %cmp746.not = icmp eq i32 %88, -1718488811
  br i1 %cmp746.not, label %do.body766, label %do.body755, !prof !25

do.body755:                                       ; preds = %do.body744
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 125, 0\0A.popsection", ""() #10, !srcloc !59
  unreachable

do.body766:                                       ; preds = %do.body744
  %call.i.i3987 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %89 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i3988 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !60
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %90 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 286335522, ptr nonnull elementtype(i32) %v) #10, !srcloc !53
  %asmresult.i.i.i3989 = extractvalue { i32, i32 } %90, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1718488811, i32 %asmresult.i.i.i3989)
  %cmp770.not = icmp eq i32 %asmresult.i.i.i3989, -1718488811
  br i1 %cmp770.not, label %do.body788, label %do.body779, !prof !25

do.body779:                                       ; preds = %do.body766
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 125, 0\0A.popsection", ""() #10, !srcloc !61
  unreachable

do.body788:                                       ; preds = %do.body766
  %call.i.i3990 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %91 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1718488811, i32 %92)
  %cmp790.not = icmp eq i32 %92, -1718488811
  br i1 %cmp790.not, label %do.body810, label %do.body799, !prof !25

do.body799:                                       ; preds = %do.body788
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 125, 0\0A.popsection", ""() #10, !srcloc !62
  unreachable

do.body810:                                       ; preds = %do.body788
  %call.i.i3991 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %93 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i3992 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %94 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 286335522, ptr nonnull elementtype(i32) %v) #10, !srcloc !53
  %asmresult.i.i3993 = extractvalue { i32, i32 } %94, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1718488811, i32 %asmresult.i.i3993)
  %cmp814.not = icmp eq i32 %asmresult.i.i3993, -1718488811
  br i1 %cmp814.not, label %do.body832, label %do.body823, !prof !25

do.body823:                                       ; preds = %do.body810
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 125, 0\0A.popsection", ""() #10, !srcloc !63
  unreachable

do.body832:                                       ; preds = %do.body810
  %call.i.i3994 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %95 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1718488811, i32 %96)
  %cmp834.not = icmp eq i32 %96, -1718488811
  br i1 %cmp834.not, label %do.body860, label %do.body843, !prof !25

do.body843:                                       ; preds = %do.body832
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 125, 0\0A.popsection", ""() #10, !srcloc !64
  unreachable

do.body860:                                       ; preds = %do.body832
  %call.i.i3995 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %97 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i3996 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !52
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %98 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 -1, ptr nonnull elementtype(i32) %v) #10, !srcloc !53
  %asmresult.i.i.i3997 = extractvalue { i32, i32 } %98, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !54
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153288, i32 %asmresult.i.i.i3997)
  %cmp866.not = icmp eq i32 %asmresult.i.i.i3997, -1432153288
  br i1 %cmp866.not, label %do.body884, label %do.body875, !prof !25

do.body875:                                       ; preds = %do.body860
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #10, !srcloc !65
  unreachable

do.body884:                                       ; preds = %do.body860
  %call.i.i3998 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %99 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153288, i32 %100)
  %cmp886.not = icmp eq i32 %100, -1432153288
  br i1 %cmp886.not, label %do.body906, label %do.body895, !prof !25

do.body895:                                       ; preds = %do.body884
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #10, !srcloc !66
  unreachable

do.body906:                                       ; preds = %do.body884
  %call.i.i3999 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %101 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4000 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %102 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 -1, ptr nonnull elementtype(i32) %v) #10, !srcloc !53
  %asmresult.i.i.i4001 = extractvalue { i32, i32 } %102, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153288, i32 %asmresult.i.i.i4001)
  %cmp912.not = icmp eq i32 %asmresult.i.i.i4001, -1432153288
  br i1 %cmp912.not, label %do.body930, label %do.body921, !prof !25

do.body921:                                       ; preds = %do.body906
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #10, !srcloc !67
  unreachable

do.body930:                                       ; preds = %do.body906
  %call.i.i4002 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %103 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153288, i32 %104)
  %cmp932.not = icmp eq i32 %104, -1432153288
  br i1 %cmp932.not, label %do.body952, label %do.body941, !prof !25

do.body941:                                       ; preds = %do.body930
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

do.body952:                                       ; preds = %do.body930
  %call.i.i4003 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %105 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4004 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !60
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %106 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 -1, ptr nonnull elementtype(i32) %v) #10, !srcloc !53
  %asmresult.i.i.i4005 = extractvalue { i32, i32 } %106, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153288, i32 %asmresult.i.i.i4005)
  %cmp958.not = icmp eq i32 %asmresult.i.i.i4005, -1432153288
  br i1 %cmp958.not, label %do.body976, label %do.body967, !prof !25

do.body967:                                       ; preds = %do.body952
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #10, !srcloc !69
  unreachable

do.body976:                                       ; preds = %do.body952
  %call.i.i4006 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %107 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153288, i32 %108)
  %cmp978.not = icmp eq i32 %108, -1432153288
  br i1 %cmp978.not, label %do.body998, label %do.body987, !prof !25

do.body987:                                       ; preds = %do.body976
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #10, !srcloc !70
  unreachable

do.body998:                                       ; preds = %do.body976
  %call.i.i4007 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %109 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %109)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4008 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %110 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 -1, ptr nonnull elementtype(i32) %v) #10, !srcloc !53
  %asmresult.i.i4009 = extractvalue { i32, i32 } %110, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153288, i32 %asmresult.i.i4009)
  %cmp1004.not = icmp eq i32 %asmresult.i.i4009, -1432153288
  br i1 %cmp1004.not, label %do.body1022, label %do.body1013, !prof !25

do.body1013:                                      ; preds = %do.body998
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #10, !srcloc !71
  unreachable

do.body1022:                                      ; preds = %do.body998
  %call.i.i4010 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %111 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153288, i32 %112)
  %cmp1024.not = icmp eq i32 %112, -1432153288
  br i1 %cmp1024.not, label %do.body1050, label %do.body1033, !prof !25

do.body1033:                                      ; preds = %do.body1022
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #10, !srcloc !72
  unreachable

do.body1050:                                      ; preds = %do.body1022
  %call.i.i4011 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %113 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4012 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !73
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %114 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 286335522, ptr nonnull elementtype(i32) %v) #10, !srcloc !74
  %asmresult.i.i.i4013 = extractvalue { i32, i32, i32 } %114, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153289, i32 %asmresult.i.i.i4013)
  %cmp1054.not = icmp eq i32 %asmresult.i.i.i4013, -1432153289
  br i1 %cmp1054.not, label %do.body1072, label %do.body1063, !prof !25

do.body1063:                                      ; preds = %do.body1050
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 128, 0\0A.popsection", ""() #10, !srcloc !76
  unreachable

do.body1072:                                      ; preds = %do.body1050
  %call.i.i4014 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %115 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1145817767, i32 %116)
  %cmp1074.not = icmp eq i32 %116, -1145817767
  br i1 %cmp1074.not, label %do.body1094, label %do.body1083, !prof !25

do.body1083:                                      ; preds = %do.body1072
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 128, 0\0A.popsection", ""() #10, !srcloc !77
  unreachable

do.body1094:                                      ; preds = %do.body1072
  %call.i.i4015 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %117 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4016 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %118 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 286335522, ptr nonnull elementtype(i32) %v) #10, !srcloc !74
  %asmresult.i.i.i4017 = extractvalue { i32, i32, i32 } %118, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153289, i32 %asmresult.i.i.i4017)
  %cmp1098.not = icmp eq i32 %asmresult.i.i.i4017, -1432153289
  br i1 %cmp1098.not, label %do.body1116, label %do.body1107, !prof !25

do.body1107:                                      ; preds = %do.body1094
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 128, 0\0A.popsection", ""() #10, !srcloc !79
  unreachable

do.body1116:                                      ; preds = %do.body1094
  %call.i.i4018 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %119 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1145817767, i32 %120)
  %cmp1118.not = icmp eq i32 %120, -1145817767
  br i1 %cmp1118.not, label %do.body1138, label %do.body1127, !prof !25

do.body1127:                                      ; preds = %do.body1116
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 128, 0\0A.popsection", ""() #10, !srcloc !80
  unreachable

do.body1138:                                      ; preds = %do.body1116
  %call.i.i4019 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %121 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4020 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !81
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %122 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 286335522, ptr nonnull elementtype(i32) %v) #10, !srcloc !74
  %asmresult.i.i.i4021 = extractvalue { i32, i32, i32 } %122, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153289, i32 %asmresult.i.i.i4021)
  %cmp1142.not = icmp eq i32 %asmresult.i.i.i4021, -1432153289
  br i1 %cmp1142.not, label %do.body1160, label %do.body1151, !prof !25

do.body1151:                                      ; preds = %do.body1138
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 128, 0\0A.popsection", ""() #10, !srcloc !82
  unreachable

do.body1160:                                      ; preds = %do.body1138
  %call.i.i4022 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %123 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1145817767, i32 %124)
  %cmp1162.not = icmp eq i32 %124, -1145817767
  br i1 %cmp1162.not, label %do.body1182, label %do.body1171, !prof !25

do.body1171:                                      ; preds = %do.body1160
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 128, 0\0A.popsection", ""() #10, !srcloc !83
  unreachable

do.body1182:                                      ; preds = %do.body1160
  %call.i.i4023 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %125 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %125)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4024 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %126 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 286335522, ptr nonnull elementtype(i32) %v) #10, !srcloc !74
  %asmresult.i.i4025 = extractvalue { i32, i32, i32 } %126, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153289, i32 %asmresult.i.i4025)
  %cmp1186.not = icmp eq i32 %asmresult.i.i4025, -1432153289
  br i1 %cmp1186.not, label %do.body1204, label %do.body1195, !prof !25

do.body1195:                                      ; preds = %do.body1182
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 128, 0\0A.popsection", ""() #10, !srcloc !84
  unreachable

do.body1204:                                      ; preds = %do.body1182
  %call.i.i4026 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %127 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1145817767, i32 %128)
  %cmp1206.not = icmp eq i32 %128, -1145817767
  br i1 %cmp1206.not, label %do.body1232, label %do.body1215, !prof !25

do.body1215:                                      ; preds = %do.body1204
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 128, 0\0A.popsection", ""() #10, !srcloc !85
  unreachable

do.body1232:                                      ; preds = %do.body1204
  %call.i.i4027 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %129 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %129)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4028 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !73
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %130 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 -1, ptr nonnull elementtype(i32) %v) #10, !srcloc !74
  %asmresult.i.i.i4029 = extractvalue { i32, i32, i32 } %130, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153289, i32 %asmresult.i.i.i4029)
  %cmp1238.not = icmp eq i32 %asmresult.i.i.i4029, -1432153289
  br i1 %cmp1238.not, label %do.body1256, label %do.body1247, !prof !25

do.body1247:                                      ; preds = %do.body1232
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 129, 0\0A.popsection", ""() #10, !srcloc !86
  unreachable

do.body1256:                                      ; preds = %do.body1232
  %call.i.i4030 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %131 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153290, i32 %132)
  %cmp1258.not = icmp eq i32 %132, -1432153290
  br i1 %cmp1258.not, label %do.body1278, label %do.body1267, !prof !25

do.body1267:                                      ; preds = %do.body1256
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 129, 0\0A.popsection", ""() #10, !srcloc !87
  unreachable

do.body1278:                                      ; preds = %do.body1256
  %call.i.i4031 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %133 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %133)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4032 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %134 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 -1, ptr nonnull elementtype(i32) %v) #10, !srcloc !74
  %asmresult.i.i.i4033 = extractvalue { i32, i32, i32 } %134, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153289, i32 %asmresult.i.i.i4033)
  %cmp1284.not = icmp eq i32 %asmresult.i.i.i4033, -1432153289
  br i1 %cmp1284.not, label %do.body1302, label %do.body1293, !prof !25

do.body1293:                                      ; preds = %do.body1278
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 129, 0\0A.popsection", ""() #10, !srcloc !88
  unreachable

do.body1302:                                      ; preds = %do.body1278
  %call.i.i4034 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %135 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153290, i32 %136)
  %cmp1304.not = icmp eq i32 %136, -1432153290
  br i1 %cmp1304.not, label %do.body1324, label %do.body1313, !prof !25

do.body1313:                                      ; preds = %do.body1302
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 129, 0\0A.popsection", ""() #10, !srcloc !89
  unreachable

do.body1324:                                      ; preds = %do.body1302
  %call.i.i4035 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %137 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %137)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4036 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !81
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %138 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 -1, ptr nonnull elementtype(i32) %v) #10, !srcloc !74
  %asmresult.i.i.i4037 = extractvalue { i32, i32, i32 } %138, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153289, i32 %asmresult.i.i.i4037)
  %cmp1330.not = icmp eq i32 %asmresult.i.i.i4037, -1432153289
  br i1 %cmp1330.not, label %do.body1348, label %do.body1339, !prof !25

do.body1339:                                      ; preds = %do.body1324
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 129, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

do.body1348:                                      ; preds = %do.body1324
  %call.i.i4038 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %139 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153290, i32 %140)
  %cmp1350.not = icmp eq i32 %140, -1432153290
  br i1 %cmp1350.not, label %do.body1370, label %do.body1359, !prof !25

do.body1359:                                      ; preds = %do.body1348
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 129, 0\0A.popsection", ""() #10, !srcloc !91
  unreachable

do.body1370:                                      ; preds = %do.body1348
  %call.i.i4039 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %141 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %141)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4040 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %142 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 -1, ptr nonnull elementtype(i32) %v) #10, !srcloc !74
  %asmresult.i.i4041 = extractvalue { i32, i32, i32 } %142, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153289, i32 %asmresult.i.i4041)
  %cmp1376.not = icmp eq i32 %asmresult.i.i4041, -1432153289
  br i1 %cmp1376.not, label %do.body1394, label %do.body1385, !prof !25

do.body1385:                                      ; preds = %do.body1370
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 129, 0\0A.popsection", ""() #10, !srcloc !92
  unreachable

do.body1394:                                      ; preds = %do.body1370
  %call.i.i4042 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %143 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153290, i32 %144)
  %cmp1396.not = icmp eq i32 %144, -1432153290
  br i1 %cmp1396.not, label %do.body1422, label %do.body1405, !prof !25

do.body1405:                                      ; preds = %do.body1394
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 129, 0\0A.popsection", ""() #10, !srcloc !93
  unreachable

do.body1422:                                      ; preds = %do.body1394
  %call.i.i4043 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %145 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %145)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4044 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !94
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %146 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 286335522, ptr nonnull elementtype(i32) %v) #10, !srcloc !95
  %asmresult.i.i.i4045 = extractvalue { i32, i32, i32 } %146, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !96
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153289, i32 %asmresult.i.i.i4045)
  %cmp1426.not = icmp eq i32 %asmresult.i.i.i4045, -1432153289
  br i1 %cmp1426.not, label %do.body1444, label %do.body1435, !prof !25

do.body1435:                                      ; preds = %do.body1422
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 130, 0\0A.popsection", ""() #10, !srcloc !97
  unreachable

do.body1444:                                      ; preds = %do.body1422
  %call.i.i4046 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %147 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1718488811, i32 %148)
  %cmp1446.not = icmp eq i32 %148, -1718488811
  br i1 %cmp1446.not, label %do.body1466, label %do.body1455, !prof !25

do.body1455:                                      ; preds = %do.body1444
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 130, 0\0A.popsection", ""() #10, !srcloc !98
  unreachable

do.body1466:                                      ; preds = %do.body1444
  %call.i.i4047 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %149 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %149)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4048 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %150 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 286335522, ptr nonnull elementtype(i32) %v) #10, !srcloc !95
  %asmresult.i.i.i4049 = extractvalue { i32, i32, i32 } %150, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !99
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153289, i32 %asmresult.i.i.i4049)
  %cmp1470.not = icmp eq i32 %asmresult.i.i.i4049, -1432153289
  br i1 %cmp1470.not, label %do.body1488, label %do.body1479, !prof !25

do.body1479:                                      ; preds = %do.body1466
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 130, 0\0A.popsection", ""() #10, !srcloc !100
  unreachable

do.body1488:                                      ; preds = %do.body1466
  %call.i.i4050 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %151 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1718488811, i32 %152)
  %cmp1490.not = icmp eq i32 %152, -1718488811
  br i1 %cmp1490.not, label %do.body1510, label %do.body1499, !prof !25

do.body1499:                                      ; preds = %do.body1488
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 130, 0\0A.popsection", ""() #10, !srcloc !101
  unreachable

do.body1510:                                      ; preds = %do.body1488
  %call.i.i4051 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %153 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %153)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4052 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !102
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %154 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 286335522, ptr nonnull elementtype(i32) %v) #10, !srcloc !95
  %asmresult.i.i.i4053 = extractvalue { i32, i32, i32 } %154, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153289, i32 %asmresult.i.i.i4053)
  %cmp1514.not = icmp eq i32 %asmresult.i.i.i4053, -1432153289
  br i1 %cmp1514.not, label %do.body1532, label %do.body1523, !prof !25

do.body1523:                                      ; preds = %do.body1510
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 130, 0\0A.popsection", ""() #10, !srcloc !103
  unreachable

do.body1532:                                      ; preds = %do.body1510
  %call.i.i4054 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %155 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1718488811, i32 %156)
  %cmp1534.not = icmp eq i32 %156, -1718488811
  br i1 %cmp1534.not, label %do.body1554, label %do.body1543, !prof !25

do.body1543:                                      ; preds = %do.body1532
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 130, 0\0A.popsection", ""() #10, !srcloc !104
  unreachable

do.body1554:                                      ; preds = %do.body1532
  %call.i.i4055 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %157 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %157)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4056 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %158 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 286335522, ptr nonnull elementtype(i32) %v) #10, !srcloc !95
  %asmresult.i.i4057 = extractvalue { i32, i32, i32 } %158, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153289, i32 %asmresult.i.i4057)
  %cmp1558.not = icmp eq i32 %asmresult.i.i4057, -1432153289
  br i1 %cmp1558.not, label %do.body1576, label %do.body1567, !prof !25

do.body1567:                                      ; preds = %do.body1554
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 130, 0\0A.popsection", ""() #10, !srcloc !105
  unreachable

do.body1576:                                      ; preds = %do.body1554
  %call.i.i4058 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %159 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1718488811, i32 %160)
  %cmp1578.not = icmp eq i32 %160, -1718488811
  br i1 %cmp1578.not, label %do.body1604, label %do.body1587, !prof !25

do.body1587:                                      ; preds = %do.body1576
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 130, 0\0A.popsection", ""() #10, !srcloc !106
  unreachable

do.body1604:                                      ; preds = %do.body1576
  %call.i.i4059 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %161 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %161)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4060 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !94
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %162 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 -1, ptr nonnull elementtype(i32) %v) #10, !srcloc !95
  %asmresult.i.i.i4061 = extractvalue { i32, i32, i32 } %162, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !96
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153289, i32 %asmresult.i.i.i4061)
  %cmp1610.not = icmp eq i32 %asmresult.i.i.i4061, -1432153289
  br i1 %cmp1610.not, label %do.body1628, label %do.body1619, !prof !25

do.body1619:                                      ; preds = %do.body1604
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 131, 0\0A.popsection", ""() #10, !srcloc !107
  unreachable

do.body1628:                                      ; preds = %do.body1604
  %call.i.i4062 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %163 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153288, i32 %164)
  %cmp1630.not = icmp eq i32 %164, -1432153288
  br i1 %cmp1630.not, label %do.body1650, label %do.body1639, !prof !25

do.body1639:                                      ; preds = %do.body1628
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 131, 0\0A.popsection", ""() #10, !srcloc !108
  unreachable

do.body1650:                                      ; preds = %do.body1628
  %call.i.i4063 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %165 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %165)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4064 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %166 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 -1, ptr nonnull elementtype(i32) %v) #10, !srcloc !95
  %asmresult.i.i.i4065 = extractvalue { i32, i32, i32 } %166, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !99
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153289, i32 %asmresult.i.i.i4065)
  %cmp1656.not = icmp eq i32 %asmresult.i.i.i4065, -1432153289
  br i1 %cmp1656.not, label %do.body1674, label %do.body1665, !prof !25

do.body1665:                                      ; preds = %do.body1650
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 131, 0\0A.popsection", ""() #10, !srcloc !109
  unreachable

do.body1674:                                      ; preds = %do.body1650
  %call.i.i4066 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %167 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153288, i32 %168)
  %cmp1676.not = icmp eq i32 %168, -1432153288
  br i1 %cmp1676.not, label %do.body1696, label %do.body1685, !prof !25

do.body1685:                                      ; preds = %do.body1674
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 131, 0\0A.popsection", ""() #10, !srcloc !110
  unreachable

do.body1696:                                      ; preds = %do.body1674
  %call.i.i4067 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %169 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %169)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4068 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !102
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %170 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 -1, ptr nonnull elementtype(i32) %v) #10, !srcloc !95
  %asmresult.i.i.i4069 = extractvalue { i32, i32, i32 } %170, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153289, i32 %asmresult.i.i.i4069)
  %cmp1702.not = icmp eq i32 %asmresult.i.i.i4069, -1432153289
  br i1 %cmp1702.not, label %do.body1720, label %do.body1711, !prof !25

do.body1711:                                      ; preds = %do.body1696
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 131, 0\0A.popsection", ""() #10, !srcloc !111
  unreachable

do.body1720:                                      ; preds = %do.body1696
  %call.i.i4070 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %171 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153288, i32 %172)
  %cmp1722.not = icmp eq i32 %172, -1432153288
  br i1 %cmp1722.not, label %do.body1742, label %do.body1731, !prof !25

do.body1731:                                      ; preds = %do.body1720
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 131, 0\0A.popsection", ""() #10, !srcloc !112
  unreachable

do.body1742:                                      ; preds = %do.body1720
  %call.i.i4071 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %173 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %173)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4072 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %174 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 -1, ptr nonnull elementtype(i32) %v) #10, !srcloc !95
  %asmresult.i.i4073 = extractvalue { i32, i32, i32 } %174, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153289, i32 %asmresult.i.i4073)
  %cmp1748.not = icmp eq i32 %asmresult.i.i4073, -1432153289
  br i1 %cmp1748.not, label %do.body1766, label %do.body1757, !prof !25

do.body1757:                                      ; preds = %do.body1742
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 131, 0\0A.popsection", ""() #10, !srcloc !113
  unreachable

do.body1766:                                      ; preds = %do.body1742
  %call.i.i4074 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %175 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153288, i32 %176)
  %cmp1768.not = icmp eq i32 %176, -1432153288
  br i1 %cmp1768.not, label %do.body1794, label %do.body1777, !prof !25

do.body1777:                                      ; preds = %do.body1766
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 131, 0\0A.popsection", ""() #10, !srcloc !114
  unreachable

do.body1794:                                      ; preds = %do.body1766
  %call.i.i4075 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %177 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %177)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4076 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !115
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %178 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 -559038737, ptr nonnull elementtype(i32) %v) #10, !srcloc !116
  %asmresult.i.i.i4077 = extractvalue { i32, i32, i32 } %178, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !117
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153289, i32 %asmresult.i.i.i4077)
  %cmp1798.not = icmp eq i32 %asmresult.i.i.i4077, -1432153289
  br i1 %cmp1798.not, label %do.body1816, label %do.body1807, !prof !25

do.body1807:                                      ; preds = %do.body1794
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 133, 0\0A.popsection", ""() #10, !srcloc !118
  unreachable

do.body1816:                                      ; preds = %do.body1794
  %call.i.i4078 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %179 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22036481, i32 %180)
  %cmp1818.not = icmp eq i32 %180, -22036481
  br i1 %cmp1818.not, label %do.body1838, label %do.body1827, !prof !25

do.body1827:                                      ; preds = %do.body1816
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 133, 0\0A.popsection", ""() #10, !srcloc !119
  unreachable

do.body1838:                                      ; preds = %do.body1816
  %call.i.i4079 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %181 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %181)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4080 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %182 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 -559038737, ptr nonnull elementtype(i32) %v) #10, !srcloc !116
  %asmresult.i.i.i4081 = extractvalue { i32, i32, i32 } %182, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !120
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153289, i32 %asmresult.i.i.i4081)
  %cmp1842.not = icmp eq i32 %asmresult.i.i.i4081, -1432153289
  br i1 %cmp1842.not, label %do.body1860, label %do.body1851, !prof !25

do.body1851:                                      ; preds = %do.body1838
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 133, 0\0A.popsection", ""() #10, !srcloc !121
  unreachable

do.body1860:                                      ; preds = %do.body1838
  %call.i.i4082 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %183 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22036481, i32 %184)
  %cmp1862.not = icmp eq i32 %184, -22036481
  br i1 %cmp1862.not, label %do.body1882, label %do.body1871, !prof !25

do.body1871:                                      ; preds = %do.body1860
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 133, 0\0A.popsection", ""() #10, !srcloc !122
  unreachable

do.body1882:                                      ; preds = %do.body1860
  %call.i.i4083 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %185 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %185)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4084 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !123
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %186 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 -559038737, ptr nonnull elementtype(i32) %v) #10, !srcloc !116
  %asmresult.i.i.i4085 = extractvalue { i32, i32, i32 } %186, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153289, i32 %asmresult.i.i.i4085)
  %cmp1886.not = icmp eq i32 %asmresult.i.i.i4085, -1432153289
  br i1 %cmp1886.not, label %do.body1904, label %do.body1895, !prof !25

do.body1895:                                      ; preds = %do.body1882
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 133, 0\0A.popsection", ""() #10, !srcloc !124
  unreachable

do.body1904:                                      ; preds = %do.body1882
  %call.i.i4086 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %187 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22036481, i32 %188)
  %cmp1906.not = icmp eq i32 %188, -22036481
  br i1 %cmp1906.not, label %do.body1926, label %do.body1915, !prof !25

do.body1915:                                      ; preds = %do.body1904
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 133, 0\0A.popsection", ""() #10, !srcloc !125
  unreachable

do.body1926:                                      ; preds = %do.body1904
  %call.i.i4087 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %189 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %189)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4088 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %190 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 -559038737, ptr nonnull elementtype(i32) %v) #10, !srcloc !116
  %asmresult.i.i4089 = extractvalue { i32, i32, i32 } %190, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153289, i32 %asmresult.i.i4089)
  %cmp1930.not = icmp eq i32 %asmresult.i.i4089, -1432153289
  br i1 %cmp1930.not, label %do.body1948, label %do.body1939, !prof !25

do.body1939:                                      ; preds = %do.body1926
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 133, 0\0A.popsection", ""() #10, !srcloc !126
  unreachable

do.body1948:                                      ; preds = %do.body1926
  %call.i.i4090 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %191 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22036481, i32 %192)
  %cmp1950.not = icmp eq i32 %192, -22036481
  br i1 %cmp1950.not, label %do.body1976, label %do.body1959, !prof !25

do.body1959:                                      ; preds = %do.body1948
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 133, 0\0A.popsection", ""() #10, !srcloc !127
  unreachable

do.body1976:                                      ; preds = %do.body1948
  %call.i.i4091 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %193 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %193)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4092 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !128
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %194 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_and\0A1:\09ldrex\09$0, [$4]\0A\09and\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 -559038737, ptr nonnull elementtype(i32) %v) #10, !srcloc !129
  %asmresult.i.i.i4093 = extractvalue { i32, i32, i32 } %194, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !130
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153289, i32 %asmresult.i.i.i4093)
  %cmp1980.not = icmp eq i32 %asmresult.i.i.i4093, -1432153289
  br i1 %cmp1980.not, label %do.body1998, label %do.body1989, !prof !25

do.body1989:                                      ; preds = %do.body1976
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 134, 0\0A.popsection", ""() #10, !srcloc !131
  unreachable

do.body1998:                                      ; preds = %do.body1976
  %call.i.i4094 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %195 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1969155545, i32 %196)
  %cmp2000.not = icmp eq i32 %196, -1969155545
  br i1 %cmp2000.not, label %do.body2020, label %do.body2009, !prof !25

do.body2009:                                      ; preds = %do.body1998
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 134, 0\0A.popsection", ""() #10, !srcloc !132
  unreachable

do.body2020:                                      ; preds = %do.body1998
  %call.i.i4095 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %197 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %197)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4096 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %198 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_and\0A1:\09ldrex\09$0, [$4]\0A\09and\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 -559038737, ptr nonnull elementtype(i32) %v) #10, !srcloc !129
  %asmresult.i.i.i4097 = extractvalue { i32, i32, i32 } %198, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !133
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153289, i32 %asmresult.i.i.i4097)
  %cmp2024.not = icmp eq i32 %asmresult.i.i.i4097, -1432153289
  br i1 %cmp2024.not, label %do.body2042, label %do.body2033, !prof !25

do.body2033:                                      ; preds = %do.body2020
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 134, 0\0A.popsection", ""() #10, !srcloc !134
  unreachable

do.body2042:                                      ; preds = %do.body2020
  %call.i.i4098 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %199 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1969155545, i32 %200)
  %cmp2044.not = icmp eq i32 %200, -1969155545
  br i1 %cmp2044.not, label %do.body2064, label %do.body2053, !prof !25

do.body2053:                                      ; preds = %do.body2042
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 134, 0\0A.popsection", ""() #10, !srcloc !135
  unreachable

do.body2064:                                      ; preds = %do.body2042
  %call.i.i4099 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %201 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %201)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4100 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !136
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %202 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_and\0A1:\09ldrex\09$0, [$4]\0A\09and\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 -559038737, ptr nonnull elementtype(i32) %v) #10, !srcloc !129
  %asmresult.i.i.i4101 = extractvalue { i32, i32, i32 } %202, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153289, i32 %asmresult.i.i.i4101)
  %cmp2068.not = icmp eq i32 %asmresult.i.i.i4101, -1432153289
  br i1 %cmp2068.not, label %do.body2086, label %do.body2077, !prof !25

do.body2077:                                      ; preds = %do.body2064
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 134, 0\0A.popsection", ""() #10, !srcloc !137
  unreachable

do.body2086:                                      ; preds = %do.body2064
  %call.i.i4102 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %203 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1969155545, i32 %204)
  %cmp2088.not = icmp eq i32 %204, -1969155545
  br i1 %cmp2088.not, label %do.body2108, label %do.body2097, !prof !25

do.body2097:                                      ; preds = %do.body2086
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 134, 0\0A.popsection", ""() #10, !srcloc !138
  unreachable

do.body2108:                                      ; preds = %do.body2086
  %call.i.i4103 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %205 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %205)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4104 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %206 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_and\0A1:\09ldrex\09$0, [$4]\0A\09and\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 -559038737, ptr nonnull elementtype(i32) %v) #10, !srcloc !129
  %asmresult.i.i4105 = extractvalue { i32, i32, i32 } %206, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153289, i32 %asmresult.i.i4105)
  %cmp2112.not = icmp eq i32 %asmresult.i.i4105, -1432153289
  br i1 %cmp2112.not, label %do.body2130, label %do.body2121, !prof !25

do.body2121:                                      ; preds = %do.body2108
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 134, 0\0A.popsection", ""() #10, !srcloc !139
  unreachable

do.body2130:                                      ; preds = %do.body2108
  %call.i.i4106 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %207 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1969155545, i32 %208)
  %cmp2132.not = icmp eq i32 %208, -1969155545
  br i1 %cmp2132.not, label %do.body2158, label %do.body2141, !prof !25

do.body2141:                                      ; preds = %do.body2130
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 134, 0\0A.popsection", ""() #10, !srcloc !140
  unreachable

do.body2158:                                      ; preds = %do.body2130
  %call.i.i4107 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %209 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %209)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4108 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !141
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %210 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 -559038737, ptr nonnull elementtype(i32) %v) #10, !srcloc !142
  %asmresult.i.i.i4109 = extractvalue { i32, i32, i32 } %210, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !143
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153289, i32 %asmresult.i.i.i4109)
  %cmp2163.not = icmp eq i32 %asmresult.i.i.i4109, -1432153289
  br i1 %cmp2163.not, label %do.body2181, label %do.body2172, !prof !25

do.body2172:                                      ; preds = %do.body2158
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 135, 0\0A.popsection", ""() #10, !srcloc !144
  unreachable

do.body2181:                                      ; preds = %do.body2158
  %call.i.i4110 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %211 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 537002256, i32 %212)
  %cmp2183.not = icmp eq i32 %212, 537002256
  br i1 %cmp2183.not, label %do.body2203, label %do.body2192, !prof !25

do.body2192:                                      ; preds = %do.body2181
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 135, 0\0A.popsection", ""() #10, !srcloc !145
  unreachable

do.body2203:                                      ; preds = %do.body2181
  %call.i.i4111 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %213 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %213)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4112 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %214 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 -559038737, ptr nonnull elementtype(i32) %v) #10, !srcloc !142
  %asmresult.i.i.i4113 = extractvalue { i32, i32, i32 } %214, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !146
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153289, i32 %asmresult.i.i.i4113)
  %cmp2208.not = icmp eq i32 %asmresult.i.i.i4113, -1432153289
  br i1 %cmp2208.not, label %do.body2226, label %do.body2217, !prof !25

do.body2217:                                      ; preds = %do.body2203
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 135, 0\0A.popsection", ""() #10, !srcloc !147
  unreachable

do.body2226:                                      ; preds = %do.body2203
  %call.i.i4114 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %215 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 537002256, i32 %216)
  %cmp2228.not = icmp eq i32 %216, 537002256
  br i1 %cmp2228.not, label %do.body2248, label %do.body2237, !prof !25

do.body2237:                                      ; preds = %do.body2226
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 135, 0\0A.popsection", ""() #10, !srcloc !148
  unreachable

do.body2248:                                      ; preds = %do.body2226
  %call.i.i4115 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %217 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %217)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4116 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !149
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %218 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 -559038737, ptr nonnull elementtype(i32) %v) #10, !srcloc !142
  %asmresult.i.i.i4117 = extractvalue { i32, i32, i32 } %218, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153289, i32 %asmresult.i.i.i4117)
  %cmp2253.not = icmp eq i32 %asmresult.i.i.i4117, -1432153289
  br i1 %cmp2253.not, label %do.body2271, label %do.body2262, !prof !25

do.body2262:                                      ; preds = %do.body2248
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 135, 0\0A.popsection", ""() #10, !srcloc !150
  unreachable

do.body2271:                                      ; preds = %do.body2248
  %call.i.i4118 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %219 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 537002256, i32 %220)
  %cmp2273.not = icmp eq i32 %220, 537002256
  br i1 %cmp2273.not, label %do.body2293, label %do.body2282, !prof !25

do.body2282:                                      ; preds = %do.body2271
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 135, 0\0A.popsection", ""() #10, !srcloc !151
  unreachable

do.body2293:                                      ; preds = %do.body2271
  %call.i.i4119 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %221 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %221)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4120 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %222 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 -559038737, ptr nonnull elementtype(i32) %v) #10, !srcloc !142
  %asmresult.i.i4121 = extractvalue { i32, i32, i32 } %222, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153289, i32 %asmresult.i.i4121)
  %cmp2298.not = icmp eq i32 %asmresult.i.i4121, -1432153289
  br i1 %cmp2298.not, label %do.body2316, label %do.body2307, !prof !25

do.body2307:                                      ; preds = %do.body2293
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 135, 0\0A.popsection", ""() #10, !srcloc !152
  unreachable

do.body2316:                                      ; preds = %do.body2293
  %call.i.i4122 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %223 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 537002256, i32 %224)
  %cmp2318.not = icmp eq i32 %224, 537002256
  br i1 %cmp2318.not, label %do.body2344, label %do.body2327, !prof !25

do.body2327:                                      ; preds = %do.body2316
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 135, 0\0A.popsection", ""() #10, !srcloc !153
  unreachable

do.body2344:                                      ; preds = %do.body2316
  %call.i.i4123 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %225 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %225)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4124 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !154
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %226 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_xor\0A1:\09ldrex\09$0, [$4]\0A\09eor\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 -559038737, ptr nonnull elementtype(i32) %v) #10, !srcloc !155
  %asmresult.i.i.i4125 = extractvalue { i32, i32, i32 } %226, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !156
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153289, i32 %asmresult.i.i.i4125)
  %cmp2348.not = icmp eq i32 %asmresult.i.i.i4125, -1432153289
  br i1 %cmp2348.not, label %do.body2366, label %do.body2357, !prof !25

do.body2357:                                      ; preds = %do.body2344
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 136, 0\0A.popsection", ""() #10, !srcloc !157
  unreachable

do.body2366:                                      ; preds = %do.body2344
  %call.i.i4126 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %227 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1947119064, i32 %228)
  %cmp2368.not = icmp eq i32 %228, 1947119064
  br i1 %cmp2368.not, label %do.body2388, label %do.body2377, !prof !25

do.body2377:                                      ; preds = %do.body2366
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 136, 0\0A.popsection", ""() #10, !srcloc !158
  unreachable

do.body2388:                                      ; preds = %do.body2366
  %call.i.i4127 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %229 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %229)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4128 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %230 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_xor\0A1:\09ldrex\09$0, [$4]\0A\09eor\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 -559038737, ptr nonnull elementtype(i32) %v) #10, !srcloc !155
  %asmresult.i.i.i4129 = extractvalue { i32, i32, i32 } %230, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !159
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153289, i32 %asmresult.i.i.i4129)
  %cmp2392.not = icmp eq i32 %asmresult.i.i.i4129, -1432153289
  br i1 %cmp2392.not, label %do.body2410, label %do.body2401, !prof !25

do.body2401:                                      ; preds = %do.body2388
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 136, 0\0A.popsection", ""() #10, !srcloc !160
  unreachable

do.body2410:                                      ; preds = %do.body2388
  %call.i.i4130 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %231 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1947119064, i32 %232)
  %cmp2412.not = icmp eq i32 %232, 1947119064
  br i1 %cmp2412.not, label %do.body2432, label %do.body2421, !prof !25

do.body2421:                                      ; preds = %do.body2410
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 136, 0\0A.popsection", ""() #10, !srcloc !161
  unreachable

do.body2432:                                      ; preds = %do.body2410
  %call.i.i4131 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %233 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %233)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4132 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !162
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %234 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_xor\0A1:\09ldrex\09$0, [$4]\0A\09eor\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 -559038737, ptr nonnull elementtype(i32) %v) #10, !srcloc !155
  %asmresult.i.i.i4133 = extractvalue { i32, i32, i32 } %234, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153289, i32 %asmresult.i.i.i4133)
  %cmp2436.not = icmp eq i32 %asmresult.i.i.i4133, -1432153289
  br i1 %cmp2436.not, label %do.body2454, label %do.body2445, !prof !25

do.body2445:                                      ; preds = %do.body2432
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 136, 0\0A.popsection", ""() #10, !srcloc !163
  unreachable

do.body2454:                                      ; preds = %do.body2432
  %call.i.i4134 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %235 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1947119064, i32 %236)
  %cmp2456.not = icmp eq i32 %236, 1947119064
  br i1 %cmp2456.not, label %do.body2476, label %do.body2465, !prof !25

do.body2465:                                      ; preds = %do.body2454
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 136, 0\0A.popsection", ""() #10, !srcloc !164
  unreachable

do.body2476:                                      ; preds = %do.body2454
  %call.i.i4135 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %237 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %237)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4136 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %238 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_xor\0A1:\09ldrex\09$0, [$4]\0A\09eor\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 -559038737, ptr nonnull elementtype(i32) %v) #10, !srcloc !155
  %asmresult.i.i4137 = extractvalue { i32, i32, i32 } %238, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153289, i32 %asmresult.i.i4137)
  %cmp2480.not = icmp eq i32 %asmresult.i.i4137, -1432153289
  br i1 %cmp2480.not, label %do.body2498, label %do.body2489, !prof !25

do.body2489:                                      ; preds = %do.body2476
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 136, 0\0A.popsection", ""() #10, !srcloc !165
  unreachable

do.body2498:                                      ; preds = %do.body2476
  %call.i.i4138 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %239 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1947119064, i32 %240)
  %cmp2500.not = icmp eq i32 %240, 1947119064
  br i1 %cmp2500.not, label %do.body2526, label %do.body2509, !prof !25

do.body2509:                                      ; preds = %do.body2498
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 136, 0\0A.popsection", ""() #10, !srcloc !166
  unreachable

do.body2526:                                      ; preds = %do.body2498
  %call.i.i4139 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %241 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %241)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4140 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !31
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %242 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 1, ptr nonnull elementtype(i32) %v) #10, !srcloc !32
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %242, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153288, i32 %asmresult.i.i.i.i)
  %cmp2530.not = icmp eq i32 %asmresult.i.i.i.i, -1432153288
  br i1 %cmp2530.not, label %do.body2548, label %do.body2539, !prof !25

do.body2539:                                      ; preds = %do.body2526
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 138, 0\0A.popsection", ""() #10, !srcloc !167
  unreachable

do.body2548:                                      ; preds = %do.body2526
  %call.i.i4141 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %243 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153288, i32 %244)
  %cmp2551.not = icmp eq i32 %244, -1432153288
  br i1 %cmp2551.not, label %do.body2571, label %do.body2560, !prof !25

do.body2560:                                      ; preds = %do.body2548
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 138, 0\0A.popsection", ""() #10, !srcloc !168
  unreachable

do.body2571:                                      ; preds = %do.body2548
  %call.i.i4142 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %245 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %245)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4143 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %246 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 1, ptr nonnull elementtype(i32) %v) #10, !srcloc !32
  %asmresult.i.i.i.i4144 = extractvalue { i32, i32 } %246, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !36
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153288, i32 %asmresult.i.i.i.i4144)
  %cmp2575.not = icmp eq i32 %asmresult.i.i.i.i4144, -1432153288
  br i1 %cmp2575.not, label %do.body2593, label %do.body2584, !prof !25

do.body2584:                                      ; preds = %do.body2571
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 138, 0\0A.popsection", ""() #10, !srcloc !169
  unreachable

do.body2593:                                      ; preds = %do.body2571
  %call.i.i4145 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %247 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153288, i32 %248)
  %cmp2596.not = icmp eq i32 %248, -1432153288
  br i1 %cmp2596.not, label %do.body2616, label %do.body2605, !prof !25

do.body2605:                                      ; preds = %do.body2593
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 138, 0\0A.popsection", ""() #10, !srcloc !170
  unreachable

do.body2616:                                      ; preds = %do.body2593
  %call.i.i4146 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %249 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %249)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4147 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !39
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %250 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 1, ptr nonnull elementtype(i32) %v) #10, !srcloc !32
  %asmresult.i.i.i.i4148 = extractvalue { i32, i32 } %250, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153288, i32 %asmresult.i.i.i.i4148)
  %cmp2620.not = icmp eq i32 %asmresult.i.i.i.i4148, -1432153288
  br i1 %cmp2620.not, label %do.body2638, label %do.body2629, !prof !25

do.body2629:                                      ; preds = %do.body2616
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 138, 0\0A.popsection", ""() #10, !srcloc !171
  unreachable

do.body2638:                                      ; preds = %do.body2616
  %call.i.i4149 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %251 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153288, i32 %252)
  %cmp2641.not = icmp eq i32 %252, -1432153288
  br i1 %cmp2641.not, label %do.body2661, label %do.body2650, !prof !25

do.body2650:                                      ; preds = %do.body2638
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 138, 0\0A.popsection", ""() #10, !srcloc !172
  unreachable

do.body2661:                                      ; preds = %do.body2638
  %call.i.i4150 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %253 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %253)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4151 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %254 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 1, ptr nonnull elementtype(i32) %v) #10, !srcloc !32
  %asmresult.i.i.i4152 = extractvalue { i32, i32 } %254, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153288, i32 %asmresult.i.i.i4152)
  %cmp2665.not = icmp eq i32 %asmresult.i.i.i4152, -1432153288
  br i1 %cmp2665.not, label %do.body2683, label %do.body2674, !prof !25

do.body2674:                                      ; preds = %do.body2661
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 138, 0\0A.popsection", ""() #10, !srcloc !173
  unreachable

do.body2683:                                      ; preds = %do.body2661
  %call.i.i4153 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %255 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153288, i32 %256)
  %cmp2686.not = icmp eq i32 %256, -1432153288
  br i1 %cmp2686.not, label %do.body2712, label %do.body2695, !prof !25

do.body2695:                                      ; preds = %do.body2683
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 138, 0\0A.popsection", ""() #10, !srcloc !174
  unreachable

do.body2712:                                      ; preds = %do.body2683
  %call.i.i4154 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %257 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %257)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4155 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !52
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %258 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 1, ptr nonnull elementtype(i32) %v) #10, !srcloc !53
  %asmresult.i.i.i.i4156 = extractvalue { i32, i32 } %258, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !54
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153290, i32 %asmresult.i.i.i.i4156)
  %cmp2716.not = icmp eq i32 %asmresult.i.i.i.i4156, -1432153290
  br i1 %cmp2716.not, label %do.body2734, label %do.body2725, !prof !25

do.body2725:                                      ; preds = %do.body2712
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 139, 0\0A.popsection", ""() #10, !srcloc !175
  unreachable

do.body2734:                                      ; preds = %do.body2712
  %call.i.i4157 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %259 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153290, i32 %260)
  %cmp2737.not = icmp eq i32 %260, -1432153290
  br i1 %cmp2737.not, label %do.body2757, label %do.body2746, !prof !25

do.body2746:                                      ; preds = %do.body2734
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 139, 0\0A.popsection", ""() #10, !srcloc !176
  unreachable

do.body2757:                                      ; preds = %do.body2734
  %call.i.i4158 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %261 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %261)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4159 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %262 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 1, ptr nonnull elementtype(i32) %v) #10, !srcloc !53
  %asmresult.i.i.i.i4160 = extractvalue { i32, i32 } %262, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153290, i32 %asmresult.i.i.i.i4160)
  %cmp2761.not = icmp eq i32 %asmresult.i.i.i.i4160, -1432153290
  br i1 %cmp2761.not, label %do.body2779, label %do.body2770, !prof !25

do.body2770:                                      ; preds = %do.body2757
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 139, 0\0A.popsection", ""() #10, !srcloc !177
  unreachable

do.body2779:                                      ; preds = %do.body2757
  %call.i.i4161 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %263 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153290, i32 %264)
  %cmp2782.not = icmp eq i32 %264, -1432153290
  br i1 %cmp2782.not, label %do.body2802, label %do.body2791, !prof !25

do.body2791:                                      ; preds = %do.body2779
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 139, 0\0A.popsection", ""() #10, !srcloc !178
  unreachable

do.body2802:                                      ; preds = %do.body2779
  %call.i.i4162 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %265 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %265)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4163 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !60
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %266 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 1, ptr nonnull elementtype(i32) %v) #10, !srcloc !53
  %asmresult.i.i.i.i4164 = extractvalue { i32, i32 } %266, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153290, i32 %asmresult.i.i.i.i4164)
  %cmp2806.not = icmp eq i32 %asmresult.i.i.i.i4164, -1432153290
  br i1 %cmp2806.not, label %do.body2824, label %do.body2815, !prof !25

do.body2815:                                      ; preds = %do.body2802
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 139, 0\0A.popsection", ""() #10, !srcloc !179
  unreachable

do.body2824:                                      ; preds = %do.body2802
  %call.i.i4165 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %267 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153290, i32 %268)
  %cmp2827.not = icmp eq i32 %268, -1432153290
  br i1 %cmp2827.not, label %do.body2847, label %do.body2836, !prof !25

do.body2836:                                      ; preds = %do.body2824
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 139, 0\0A.popsection", ""() #10, !srcloc !180
  unreachable

do.body2847:                                      ; preds = %do.body2824
  %call.i.i4166 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %269 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %269)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4167 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %270 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 1, ptr nonnull elementtype(i32) %v) #10, !srcloc !53
  %asmresult.i.i.i4168 = extractvalue { i32, i32 } %270, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153290, i32 %asmresult.i.i.i4168)
  %cmp2851.not = icmp eq i32 %asmresult.i.i.i4168, -1432153290
  br i1 %cmp2851.not, label %do.body2869, label %do.body2860, !prof !25

do.body2860:                                      ; preds = %do.body2847
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 139, 0\0A.popsection", ""() #10, !srcloc !181
  unreachable

do.body2869:                                      ; preds = %do.body2847
  %call.i.i4169 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %271 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153290, i32 %272)
  %cmp2872.not = icmp eq i32 %272, -1432153290
  br i1 %cmp2872.not, label %do.body2898, label %do.body2881, !prof !25

do.body2881:                                      ; preds = %do.body2869
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 139, 0\0A.popsection", ""() #10, !srcloc !182
  unreachable

do.body2898:                                      ; preds = %do.body2869
  %call.i.i4170 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %273 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %273)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4171 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !183
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %274 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 -559038737, ptr nonnull %v) #10, !srcloc !184
  %asmresult.i.i4172 = extractvalue { i32, i32 } %274, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !185
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153289, i32 %asmresult.i.i4172)
  %cmp2901.not = icmp eq i32 %asmresult.i.i4172, -1432153289
  br i1 %cmp2901.not, label %do.body2919, label %do.body2910, !prof !25

do.body2910:                                      ; preds = %do.body2898
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 141, 0\0A.popsection", ""() #10, !srcloc !186
  unreachable

do.body2919:                                      ; preds = %do.body2898
  %call.i.i4173 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %275 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -559038737, i32 %276)
  %cmp2921.not = icmp eq i32 %276, -559038737
  br i1 %cmp2921.not, label %do.body2941, label %do.body2930, !prof !25

do.body2930:                                      ; preds = %do.body2919
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 141, 0\0A.popsection", ""() #10, !srcloc !187
  unreachable

do.body2941:                                      ; preds = %do.body2919
  %call.i.i4174 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %277 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %277)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4175 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !188
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %278 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 -559038737, ptr nonnull %v) #10, !srcloc !184
  %asmresult.i.i4176 = extractvalue { i32, i32 } %278, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !189
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153289, i32 %asmresult.i.i4176)
  %cmp2944.not = icmp eq i32 %asmresult.i.i4176, -1432153289
  br i1 %cmp2944.not, label %do.body2962, label %do.body2953, !prof !25

do.body2953:                                      ; preds = %do.body2941
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 141, 0\0A.popsection", ""() #10, !srcloc !190
  unreachable

do.body2962:                                      ; preds = %do.body2941
  %call.i.i4177 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %279 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -559038737, i32 %280)
  %cmp2964.not = icmp eq i32 %280, -559038737
  br i1 %cmp2964.not, label %do.body2984, label %do.body2973, !prof !25

do.body2973:                                      ; preds = %do.body2962
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 141, 0\0A.popsection", ""() #10, !srcloc !191
  unreachable

do.body2984:                                      ; preds = %do.body2962
  %call.i.i4178 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %281 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %281)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4179 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !192
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %282 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 -559038737, ptr nonnull %v) #10, !srcloc !184
  %asmresult.i.i4180 = extractvalue { i32, i32 } %282, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !193
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153289, i32 %asmresult.i.i4180)
  %cmp2987.not = icmp eq i32 %asmresult.i.i4180, -1432153289
  br i1 %cmp2987.not, label %do.body3005, label %do.body2996, !prof !25

do.body2996:                                      ; preds = %do.body2984
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 141, 0\0A.popsection", ""() #10, !srcloc !194
  unreachable

do.body3005:                                      ; preds = %do.body2984
  %call.i.i4181 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %283 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -559038737, i32 %284)
  %cmp3007.not = icmp eq i32 %284, -559038737
  br i1 %cmp3007.not, label %do.body3027, label %do.body3016, !prof !25

do.body3016:                                      ; preds = %do.body3005
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 141, 0\0A.popsection", ""() #10, !srcloc !195
  unreachable

do.body3027:                                      ; preds = %do.body3005
  %call.i.i4182 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %285 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %285)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4183 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !196
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  %286 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 -559038737, ptr nonnull %v) #10, !srcloc !184
  %asmresult.i.i4184 = extractvalue { i32, i32 } %286, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !197
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153289, i32 %asmresult.i.i4184)
  %cmp3030.not = icmp eq i32 %asmresult.i.i4184, -1432153289
  br i1 %cmp3030.not, label %do.body3048, label %do.body3039, !prof !25

do.body3039:                                      ; preds = %do.body3027
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 141, 0\0A.popsection", ""() #10, !srcloc !198
  unreachable

do.body3048:                                      ; preds = %do.body3027
  %call.i.i4185 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %287 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -559038737, i32 %288)
  %cmp3050.not = icmp eq i32 %288, -559038737
  br i1 %cmp3050.not, label %do.body3076, label %do.body3059, !prof !25

do.body3059:                                      ; preds = %do.body3048
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 141, 0\0A.popsection", ""() #10, !srcloc !199
  unreachable

do.body3076:                                      ; preds = %do.body3048
  %call.i.i4186 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %289 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %289)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4187 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !200
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %do.body3076
  %290 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 -1432153289, i32 -559038737, ptr nonnull elementtype(i32) %v) #10, !srcloc !201
  %asmresult.i.i.i4188 = extractvalue { i32, i32 } %290, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i4188, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %290, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !202
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153289, i32 %asmresult3.i.i.i)
  %cmp3079.not = icmp eq i32 %asmresult3.i.i.i, -1432153289
  br i1 %cmp3079.not, label %do.body3097, label %do.body3088, !prof !25

do.body3088:                                      ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 142, 0\0A.popsection", ""() #10, !srcloc !203
  unreachable

do.body3097:                                      ; preds = %atomic_cmpxchg.exit
  %call.i.i4189 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %291 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -559038737, i32 %292)
  %cmp3099.not = icmp eq i32 %292, -559038737
  br i1 %cmp3099.not, label %do.body3119, label %do.body3108, !prof !25

do.body3108:                                      ; preds = %do.body3097
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 142, 0\0A.popsection", ""() #10, !srcloc !204
  unreachable

do.body3119:                                      ; preds = %do.body3097
  %call.i.i4190 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %293 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %293)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4191 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i4194

do.body.i.i.i4194:                                ; preds = %do.body.i.i.i4194.do.body.i.i.i4194_crit_edge, %do.body3119
  %294 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 -1432153289, i32 -559038737, ptr nonnull elementtype(i32) %v) #10, !srcloc !201
  %asmresult.i.i.i4192 = extractvalue { i32, i32 } %294, 0
  %tobool.not.i.i.i4193 = icmp eq i32 %asmresult.i.i.i4192, 0
  br i1 %tobool.not.i.i.i4193, label %atomic_cmpxchg_acquire.exit, label %do.body.i.i.i4194.do.body.i.i.i4194_crit_edge

do.body.i.i.i4194.do.body.i.i.i4194_crit_edge:    ; preds = %do.body.i.i.i4194
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i.i4194

atomic_cmpxchg_acquire.exit:                      ; preds = %do.body.i.i.i4194
  %asmresult3.i.i.i4195 = extractvalue { i32, i32 } %294, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !205
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153289, i32 %asmresult3.i.i.i4195)
  %cmp3122.not = icmp eq i32 %asmresult3.i.i.i4195, -1432153289
  br i1 %cmp3122.not, label %do.body3140, label %do.body3131, !prof !25

do.body3131:                                      ; preds = %atomic_cmpxchg_acquire.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 142, 0\0A.popsection", ""() #10, !srcloc !206
  unreachable

do.body3140:                                      ; preds = %atomic_cmpxchg_acquire.exit
  %call.i.i4196 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %295 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -559038737, i32 %296)
  %cmp3142.not = icmp eq i32 %296, -559038737
  br i1 %cmp3142.not, label %do.body3162, label %do.body3151, !prof !25

do.body3151:                                      ; preds = %do.body3140
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 142, 0\0A.popsection", ""() #10, !srcloc !207
  unreachable

do.body3162:                                      ; preds = %do.body3140
  %call.i.i4197 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %297 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %297)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4198 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !208
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i4201

do.body.i.i.i4201:                                ; preds = %do.body.i.i.i4201.do.body.i.i.i4201_crit_edge, %do.body3162
  %298 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 -1432153289, i32 -559038737, ptr nonnull elementtype(i32) %v) #10, !srcloc !201
  %asmresult.i.i.i4199 = extractvalue { i32, i32 } %298, 0
  %tobool.not.i.i.i4200 = icmp eq i32 %asmresult.i.i.i4199, 0
  br i1 %tobool.not.i.i.i4200, label %atomic_cmpxchg_release.exit, label %do.body.i.i.i4201.do.body.i.i.i4201_crit_edge

do.body.i.i.i4201.do.body.i.i.i4201_crit_edge:    ; preds = %do.body.i.i.i4201
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i.i4201

atomic_cmpxchg_release.exit:                      ; preds = %do.body.i.i.i4201
  %asmresult3.i.i.i4202 = extractvalue { i32, i32 } %298, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153289, i32 %asmresult3.i.i.i4202)
  %cmp3165.not = icmp eq i32 %asmresult3.i.i.i4202, -1432153289
  br i1 %cmp3165.not, label %do.body3183, label %do.body3174, !prof !25

do.body3174:                                      ; preds = %atomic_cmpxchg_release.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 142, 0\0A.popsection", ""() #10, !srcloc !209
  unreachable

do.body3183:                                      ; preds = %atomic_cmpxchg_release.exit
  %call.i.i4203 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %299 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -559038737, i32 %300)
  %cmp3185.not = icmp eq i32 %300, -559038737
  br i1 %cmp3185.not, label %do.body3205, label %do.body3194, !prof !25

do.body3194:                                      ; preds = %do.body3183
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 142, 0\0A.popsection", ""() #10, !srcloc !210
  unreachable

do.body3205:                                      ; preds = %do.body3183
  %call.i.i4204 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %301 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %301)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4205 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %do.body3205
  %302 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 -1432153289, i32 -559038737, ptr nonnull elementtype(i32) %v) #10, !srcloc !201
  %asmresult.i.i4206 = extractvalue { i32, i32 } %302, 0
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i4206, 0
  br i1 %tobool.not.i.i, label %atomic_cmpxchg_relaxed.exit, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

atomic_cmpxchg_relaxed.exit:                      ; preds = %do.body.i.i
  %asmresult3.i.i = extractvalue { i32, i32 } %302, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153289, i32 %asmresult3.i.i)
  %cmp3208.not = icmp eq i32 %asmresult3.i.i, -1432153289
  br i1 %cmp3208.not, label %do.body3226, label %do.body3217, !prof !25

do.body3217:                                      ; preds = %atomic_cmpxchg_relaxed.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 142, 0\0A.popsection", ""() #10, !srcloc !211
  unreachable

do.body3226:                                      ; preds = %atomic_cmpxchg_relaxed.exit
  %call.i.i4207 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %303 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -559038737, i32 %304)
  %cmp3228.not = icmp eq i32 %304, -559038737
  br i1 %cmp3228.not, label %do.body3251, label %do.body3237, !prof !25

do.body3237:                                      ; preds = %do.body3226
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 142, 0\0A.popsection", ""() #10, !srcloc !212
  unreachable

do.body3251:                                      ; preds = %do.body3226
  %call.i.i4208 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %305 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %305)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4209 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !200
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i4212

do.body.i.i.i4212:                                ; preds = %do.body.i.i.i4212.do.body.i.i.i4212_crit_edge, %do.body3251
  %306 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 286335522, i32 -559038737, ptr nonnull elementtype(i32) %v) #10, !srcloc !201
  %asmresult.i.i.i4210 = extractvalue { i32, i32 } %306, 0
  %tobool.not.i.i.i4211 = icmp eq i32 %asmresult.i.i.i4210, 0
  br i1 %tobool.not.i.i.i4211, label %atomic_cmpxchg.exit4214, label %do.body.i.i.i4212.do.body.i.i.i4212_crit_edge

do.body.i.i.i4212.do.body.i.i.i4212_crit_edge:    ; preds = %do.body.i.i.i4212
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i.i4212

atomic_cmpxchg.exit4214:                          ; preds = %do.body.i.i.i4212
  %asmresult3.i.i.i4213 = extractvalue { i32, i32 } %306, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !202
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153289, i32 %asmresult3.i.i.i4213)
  %cmp3254.not = icmp eq i32 %asmresult3.i.i.i4213, -1432153289
  br i1 %cmp3254.not, label %do.body3272, label %do.body3263, !prof !25

do.body3263:                                      ; preds = %atomic_cmpxchg.exit4214
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 142, 0\0A.popsection", ""() #10, !srcloc !213
  unreachable

do.body3272:                                      ; preds = %atomic_cmpxchg.exit4214
  %call.i.i4215 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %307 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153289, i32 %308)
  %cmp3274.not = icmp eq i32 %308, -1432153289
  br i1 %cmp3274.not, label %do.body3294, label %do.body3283, !prof !25

do.body3283:                                      ; preds = %do.body3272
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 142, 0\0A.popsection", ""() #10, !srcloc !214
  unreachable

do.body3294:                                      ; preds = %do.body3272
  %call.i.i4216 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %309 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %309)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4217 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i4220

do.body.i.i.i4220:                                ; preds = %do.body.i.i.i4220.do.body.i.i.i4220_crit_edge, %do.body3294
  %310 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 286335522, i32 -559038737, ptr nonnull elementtype(i32) %v) #10, !srcloc !201
  %asmresult.i.i.i4218 = extractvalue { i32, i32 } %310, 0
  %tobool.not.i.i.i4219 = icmp eq i32 %asmresult.i.i.i4218, 0
  br i1 %tobool.not.i.i.i4219, label %atomic_cmpxchg_acquire.exit4222, label %do.body.i.i.i4220.do.body.i.i.i4220_crit_edge

do.body.i.i.i4220.do.body.i.i.i4220_crit_edge:    ; preds = %do.body.i.i.i4220
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i.i4220

atomic_cmpxchg_acquire.exit4222:                  ; preds = %do.body.i.i.i4220
  %asmresult3.i.i.i4221 = extractvalue { i32, i32 } %310, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !205
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153289, i32 %asmresult3.i.i.i4221)
  %cmp3297.not = icmp eq i32 %asmresult3.i.i.i4221, -1432153289
  br i1 %cmp3297.not, label %do.body3315, label %do.body3306, !prof !25

do.body3306:                                      ; preds = %atomic_cmpxchg_acquire.exit4222
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 142, 0\0A.popsection", ""() #10, !srcloc !215
  unreachable

do.body3315:                                      ; preds = %atomic_cmpxchg_acquire.exit4222
  %call.i.i4223 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %311 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153289, i32 %312)
  %cmp3317.not = icmp eq i32 %312, -1432153289
  br i1 %cmp3317.not, label %do.body3337, label %do.body3326, !prof !25

do.body3326:                                      ; preds = %do.body3315
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 142, 0\0A.popsection", ""() #10, !srcloc !216
  unreachable

do.body3337:                                      ; preds = %do.body3315
  %call.i.i4224 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %313 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %313)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4225 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !208
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i4228

do.body.i.i.i4228:                                ; preds = %do.body.i.i.i4228.do.body.i.i.i4228_crit_edge, %do.body3337
  %314 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 286335522, i32 -559038737, ptr nonnull elementtype(i32) %v) #10, !srcloc !201
  %asmresult.i.i.i4226 = extractvalue { i32, i32 } %314, 0
  %tobool.not.i.i.i4227 = icmp eq i32 %asmresult.i.i.i4226, 0
  br i1 %tobool.not.i.i.i4227, label %atomic_cmpxchg_release.exit4230, label %do.body.i.i.i4228.do.body.i.i.i4228_crit_edge

do.body.i.i.i4228.do.body.i.i.i4228_crit_edge:    ; preds = %do.body.i.i.i4228
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i.i4228

atomic_cmpxchg_release.exit4230:                  ; preds = %do.body.i.i.i4228
  %asmresult3.i.i.i4229 = extractvalue { i32, i32 } %314, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153289, i32 %asmresult3.i.i.i4229)
  %cmp3340.not = icmp eq i32 %asmresult3.i.i.i4229, -1432153289
  br i1 %cmp3340.not, label %do.body3358, label %do.body3349, !prof !25

do.body3349:                                      ; preds = %atomic_cmpxchg_release.exit4230
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 142, 0\0A.popsection", ""() #10, !srcloc !217
  unreachable

do.body3358:                                      ; preds = %atomic_cmpxchg_release.exit4230
  %call.i.i4231 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %315 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153289, i32 %316)
  %cmp3360.not = icmp eq i32 %316, -1432153289
  br i1 %cmp3360.not, label %do.body3380, label %do.body3369, !prof !25

do.body3369:                                      ; preds = %do.body3358
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 142, 0\0A.popsection", ""() #10, !srcloc !218
  unreachable

do.body3380:                                      ; preds = %do.body3358
  %call.i.i4232 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  %317 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %317)
  store volatile i32 -1432153289, ptr %v, align 4
  %call.i.i4233 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr nonnull %v, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i4236

do.body.i.i4236:                                  ; preds = %do.body.i.i4236.do.body.i.i4236_crit_edge, %do.body3380
  %318 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %v, ptr nonnull %v, i32 286335522, i32 -559038737, ptr nonnull elementtype(i32) %v) #10, !srcloc !201
  %asmresult.i.i4234 = extractvalue { i32, i32 } %318, 0
  %tobool.not.i.i4235 = icmp eq i32 %asmresult.i.i4234, 0
  br i1 %tobool.not.i.i4235, label %atomic_cmpxchg_relaxed.exit4238, label %do.body.i.i4236.do.body.i.i4236_crit_edge

do.body.i.i4236.do.body.i.i4236_crit_edge:        ; preds = %do.body.i.i4236
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i4236

atomic_cmpxchg_relaxed.exit4238:                  ; preds = %do.body.i.i4236
  %asmresult3.i.i4237 = extractvalue { i32, i32 } %318, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153289, i32 %asmresult3.i.i4237)
  %cmp3383.not = icmp eq i32 %asmresult3.i.i4237, -1432153289
  br i1 %cmp3383.not, label %do.body3401, label %do.body3392, !prof !25

do.body3392:                                      ; preds = %atomic_cmpxchg_relaxed.exit4238
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 142, 0\0A.popsection", ""() #10, !srcloc !219
  unreachable

do.body3401:                                      ; preds = %atomic_cmpxchg_relaxed.exit4238
  %call.i.i4239 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 4) #10
  %319 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load volatile i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1432153289, i32 %320)
  %cmp3403.not = icmp eq i32 %320, -1432153289
  br i1 %cmp3403.not, label %do.end3426, label %do.body3412, !prof !25

do.body3412:                                      ; preds = %do.body3401
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 142, 0\0A.popsection", ""() #10, !srcloc !220
  unreachable

do.end3426:                                       ; preds = %do.body3401
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_atomic64() unnamed_addr #1 section ".init.text" align 64 {
entry:
  %v = alloca %struct.atomic64_t, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v) #10
  %0 = ptrtoint ptr %v to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -6151051535892492275, ptr %v, align 8
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -2401053088876082434) #10
  %1 = ptrtoint ptr %v to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %v, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2401053088876082434, i64 %2)
  %cmp11.not = icmp eq i64 %2, -2401053088876082434
  br i1 %cmp11.not, label %do.body28, label %do.body19, !prof !25

do.body19:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 163, 0\0A.popsection", ""() #10, !srcloc !221
  unreachable

do.body28:                                        ; preds = %entry
  %call.i.i4281 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2401053088876082434, i64 %call.i)
  %cmp29.not = icmp eq i64 %call.i, -2401053088876082434
  br i1 %cmp29.not, label %do.body46, label %do.body37, !prof !25

do.body37:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 164, 0\0A.popsection", ""() #10, !srcloc !222
  unreachable

do.body46:                                        ; preds = %do.body28
  %call.i.i4282 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4283 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_add(i64 noundef 1229782938533634594, ptr noundef nonnull %v) #10
  %call.i.i4284 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4285 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -4921268597358857681, i64 %call.i4285)
  %cmp48.not = icmp eq i64 %call.i4285, -4921268597358857681
  br i1 %cmp48.not, label %do.body46.if.end71_crit_edge, label %do.end64, !prof !25

do.body46.if.end71_crit_edge:                     ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end71

do.end64:                                         ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i4286 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4287 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 166, i32 noundef 9, ptr noundef nonnull @.str.3, i64 noundef %call.i4287, i64 noundef -4921268597358857681) #10
  br label %if.end71

if.end71:                                         ; preds = %do.end64, %do.body46.if.end71_crit_edge
  %call.i.i4288 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4289 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_add(i64 noundef -1, ptr noundef nonnull %v) #10
  %call.i.i4290 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4291 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492276, i64 %call.i4291)
  %cmp85.not = icmp eq i64 %call.i4291, -6151051535892492276
  br i1 %cmp85.not, label %if.end71.if.end108_crit_edge, label %do.end101, !prof !25

if.end71.if.end108_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end108

do.end101:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i4292 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4293 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 167, i32 noundef 9, ptr noundef nonnull @.str.3, i64 noundef %call.i4293, i64 noundef -6151051535892492276) #10
  br label %if.end108

if.end108:                                        ; preds = %do.end101, %if.end71.if.end108_crit_edge
  %call.i.i4294 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4295 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_sub(i64 noundef 1229782938533634594, ptr noundef nonnull %v) #10
  %call.i.i4296 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4297 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -7380834474426126869, i64 %call.i4297)
  %cmp122.not = icmp eq i64 %call.i4297, -7380834474426126869
  br i1 %cmp122.not, label %if.end108.if.end145_crit_edge, label %do.end138, !prof !25

if.end108.if.end145_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end145

do.end138:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i4298 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4299 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 168, i32 noundef 9, ptr noundef nonnull @.str.3, i64 noundef %call.i4299, i64 noundef -7380834474426126869) #10
  br label %if.end145

if.end145:                                        ; preds = %do.end138, %if.end108.if.end145_crit_edge
  %call.i.i4300 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4301 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_sub(i64 noundef -1, ptr noundef nonnull %v) #10
  %call.i.i4302 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4303 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492274, i64 %call.i4303)
  %cmp161.not = icmp eq i64 %call.i4303, -6151051535892492274
  br i1 %cmp161.not, label %if.end145.if.end184_crit_edge, label %do.end177, !prof !25

if.end145.if.end184_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end184

do.end177:                                        ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i4304 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4305 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 169, i32 noundef 9, ptr noundef nonnull @.str.3, i64 noundef %call.i4305, i64 noundef -6151051535892492274) #10
  br label %if.end184

if.end184:                                        ; preds = %do.end177, %if.end145.if.end184_crit_edge
  %call.i.i4306 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4307 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_or(i64 noundef -2401053088876082434, ptr noundef nonnull %v) #10
  %call.i.i4308 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4309 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -94645961477858561, i64 %call.i4309)
  %cmp197.not = icmp eq i64 %call.i4309, -94645961477858561
  br i1 %cmp197.not, label %if.end184.if.end220_crit_edge, label %do.end213, !prof !25

if.end184.if.end220_crit_edge:                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end220

do.end213:                                        ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i4310 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4311 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 170, i32 noundef 9, ptr noundef nonnull @.str.3, i64 noundef %call.i4311, i64 noundef -94645961477858561) #10
  br label %if.end220

if.end220:                                        ; preds = %do.end213, %if.end184.if.end220_crit_edge
  %call.i.i4312 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4313 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_and(i64 noundef -2401053088876082434, ptr noundef nonnull %v) #10
  %call.i.i4314 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4315 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -8457458663290716148, i64 %call.i4315)
  %cmp233.not = icmp eq i64 %call.i4315, -8457458663290716148
  br i1 %cmp233.not, label %if.end220.if.end256_crit_edge, label %do.end249, !prof !25

if.end220.if.end256_crit_edge:                    ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end256

do.end249:                                        ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i4316 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4317 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 171, i32 noundef 9, ptr noundef nonnull @.str.3, i64 noundef %call.i4317, i64 noundef -8457458663290716148) #10
  br label %if.end256

if.end256:                                        ; preds = %do.end249, %if.end220.if.end256_crit_edge
  %call.i.i4318 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4319 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_xor(i64 noundef -2401053088876082434, ptr noundef nonnull %v) #10
  %call.i.i4320 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4321 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 8362812701812857587, i64 %call.i4321)
  %cmp269.not = icmp eq i64 %call.i4321, 8362812701812857587
  br i1 %cmp269.not, label %if.end256.if.end292_crit_edge, label %do.end285, !prof !25

if.end256.if.end292_crit_edge:                    ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end292

do.end285:                                        ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i4322 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4323 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 172, i32 noundef 9, ptr noundef nonnull @.str.3, i64 noundef %call.i4323, i64 noundef 8362812701812857587) #10
  br label %if.end292

if.end292:                                        ; preds = %do.end285, %if.end256.if.end292_crit_edge
  %call.i.i4324 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4325 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_and(i64 noundef 2401053088876082433, ptr noundef nonnull %v) #10
  %call.i.i4326 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4327 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 2306407127398223873, i64 %call.i4327)
  %cmp306.not = icmp eq i64 %call.i4327, 2306407127398223873
  br i1 %cmp306.not, label %if.end292.if.end329_crit_edge, label %do.end322, !prof !25

if.end292.if.end329_crit_edge:                    ; preds = %if.end292
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end329

do.end322:                                        ; preds = %if.end292
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i4328 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4329 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 173, i32 noundef 9, ptr noundef nonnull @.str.3, i64 noundef %call.i4329, i64 noundef 2306407127398223873) #10
  br label %if.end329

if.end329:                                        ; preds = %do.end322, %if.end292.if.end329_crit_edge
  %call.i.i4330 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4331 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4332 = call i64 @generic_atomic64_add_return(i64 noundef 1229782938533634594, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -4921268597358857681, i64 %call.i4332)
  %cmp345.not = icmp eq i64 %call.i4332, -4921268597358857681
  br i1 %cmp345.not, label %do.body362, label %do.body353, !prof !25

do.body353:                                       ; preds = %if.end329
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 175, 0\0A.popsection", ""() #10, !srcloc !223
  unreachable

do.body362:                                       ; preds = %if.end329
  %call.i.i4333 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4334 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -4921268597358857681, i64 %call.i4334)
  %cmp364.not = icmp eq i64 %call.i4334, -4921268597358857681
  br i1 %cmp364.not, label %do.body383, label %do.body372, !prof !25

do.body372:                                       ; preds = %do.body362
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 175, 0\0A.popsection", ""() #10, !srcloc !224
  unreachable

do.body383:                                       ; preds = %do.body362
  %call.i.i4335 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4336 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4337 = call i64 @generic_atomic64_add_return(i64 noundef 1229782938533634594, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -4921268597358857681, i64 %call.i4337)
  %cmp387.not = icmp eq i64 %call.i4337, -4921268597358857681
  br i1 %cmp387.not, label %do.body404, label %do.body395, !prof !25

do.body395:                                       ; preds = %do.body383
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 175, 0\0A.popsection", ""() #10, !srcloc !225
  unreachable

do.body404:                                       ; preds = %do.body383
  %call.i.i4338 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4339 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -4921268597358857681, i64 %call.i4339)
  %cmp406.not = icmp eq i64 %call.i4339, -4921268597358857681
  br i1 %cmp406.not, label %do.body425, label %do.body414, !prof !25

do.body414:                                       ; preds = %do.body404
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 175, 0\0A.popsection", ""() #10, !srcloc !226
  unreachable

do.body425:                                       ; preds = %do.body404
  %call.i.i4340 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4341 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4342 = call i64 @generic_atomic64_add_return(i64 noundef 1229782938533634594, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -4921268597358857681, i64 %call.i4342)
  %cmp429.not = icmp eq i64 %call.i4342, -4921268597358857681
  br i1 %cmp429.not, label %do.body446, label %do.body437, !prof !25

do.body437:                                       ; preds = %do.body425
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 175, 0\0A.popsection", ""() #10, !srcloc !227
  unreachable

do.body446:                                       ; preds = %do.body425
  %call.i.i4343 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4344 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -4921268597358857681, i64 %call.i4344)
  %cmp448.not = icmp eq i64 %call.i4344, -4921268597358857681
  br i1 %cmp448.not, label %do.body467, label %do.body456, !prof !25

do.body456:                                       ; preds = %do.body446
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 175, 0\0A.popsection", ""() #10, !srcloc !228
  unreachable

do.body467:                                       ; preds = %do.body446
  %call.i.i4345 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4346 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4347 = call i64 @generic_atomic64_add_return(i64 noundef 1229782938533634594, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -4921268597358857681, i64 %call.i4347)
  %cmp471.not = icmp eq i64 %call.i4347, -4921268597358857681
  br i1 %cmp471.not, label %do.body488, label %do.body479, !prof !25

do.body479:                                       ; preds = %do.body467
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 175, 0\0A.popsection", ""() #10, !srcloc !229
  unreachable

do.body488:                                       ; preds = %do.body467
  %call.i.i4348 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4349 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -4921268597358857681, i64 %call.i4349)
  %cmp490.not = icmp eq i64 %call.i4349, -4921268597358857681
  br i1 %cmp490.not, label %do.body515, label %do.body498, !prof !25

do.body498:                                       ; preds = %do.body488
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 175, 0\0A.popsection", ""() #10, !srcloc !230
  unreachable

do.body515:                                       ; preds = %do.body488
  %call.i.i4350 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4351 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4352 = call i64 @generic_atomic64_add_return(i64 noundef -1, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492276, i64 %call.i4352)
  %cmp521.not = icmp eq i64 %call.i4352, -6151051535892492276
  br i1 %cmp521.not, label %do.body538, label %do.body529, !prof !25

do.body529:                                       ; preds = %do.body515
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 176, 0\0A.popsection", ""() #10, !srcloc !231
  unreachable

do.body538:                                       ; preds = %do.body515
  %call.i.i4353 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4354 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492276, i64 %call.i4354)
  %cmp540.not = icmp eq i64 %call.i4354, -6151051535892492276
  br i1 %cmp540.not, label %do.body559, label %do.body548, !prof !25

do.body548:                                       ; preds = %do.body538
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 176, 0\0A.popsection", ""() #10, !srcloc !232
  unreachable

do.body559:                                       ; preds = %do.body538
  %call.i.i4355 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4356 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4357 = call i64 @generic_atomic64_add_return(i64 noundef -1, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492276, i64 %call.i4357)
  %cmp565.not = icmp eq i64 %call.i4357, -6151051535892492276
  br i1 %cmp565.not, label %do.body582, label %do.body573, !prof !25

do.body573:                                       ; preds = %do.body559
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 176, 0\0A.popsection", ""() #10, !srcloc !233
  unreachable

do.body582:                                       ; preds = %do.body559
  %call.i.i4358 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4359 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492276, i64 %call.i4359)
  %cmp584.not = icmp eq i64 %call.i4359, -6151051535892492276
  br i1 %cmp584.not, label %do.body603, label %do.body592, !prof !25

do.body592:                                       ; preds = %do.body582
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 176, 0\0A.popsection", ""() #10, !srcloc !234
  unreachable

do.body603:                                       ; preds = %do.body582
  %call.i.i4360 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4361 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4362 = call i64 @generic_atomic64_add_return(i64 noundef -1, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492276, i64 %call.i4362)
  %cmp609.not = icmp eq i64 %call.i4362, -6151051535892492276
  br i1 %cmp609.not, label %do.body626, label %do.body617, !prof !25

do.body617:                                       ; preds = %do.body603
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 176, 0\0A.popsection", ""() #10, !srcloc !235
  unreachable

do.body626:                                       ; preds = %do.body603
  %call.i.i4363 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4364 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492276, i64 %call.i4364)
  %cmp628.not = icmp eq i64 %call.i4364, -6151051535892492276
  br i1 %cmp628.not, label %do.body647, label %do.body636, !prof !25

do.body636:                                       ; preds = %do.body626
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 176, 0\0A.popsection", ""() #10, !srcloc !236
  unreachable

do.body647:                                       ; preds = %do.body626
  %call.i.i4365 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4366 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4367 = call i64 @generic_atomic64_add_return(i64 noundef -1, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492276, i64 %call.i4367)
  %cmp653.not = icmp eq i64 %call.i4367, -6151051535892492276
  br i1 %cmp653.not, label %do.body670, label %do.body661, !prof !25

do.body661:                                       ; preds = %do.body647
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 176, 0\0A.popsection", ""() #10, !srcloc !237
  unreachable

do.body670:                                       ; preds = %do.body647
  %call.i.i4368 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4369 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492276, i64 %call.i4369)
  %cmp672.not = icmp eq i64 %call.i4369, -6151051535892492276
  br i1 %cmp672.not, label %do.body697, label %do.body680, !prof !25

do.body680:                                       ; preds = %do.body670
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 176, 0\0A.popsection", ""() #10, !srcloc !238
  unreachable

do.body697:                                       ; preds = %do.body670
  %call.i.i4370 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4371 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4372 = call i64 @generic_atomic64_sub_return(i64 noundef 1229782938533634594, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -7380834474426126869, i64 %call.i4372)
  %cmp701.not = icmp eq i64 %call.i4372, -7380834474426126869
  br i1 %cmp701.not, label %do.body718, label %do.body709, !prof !25

do.body709:                                       ; preds = %do.body697
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 177, 0\0A.popsection", ""() #10, !srcloc !239
  unreachable

do.body718:                                       ; preds = %do.body697
  %call.i.i4373 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4374 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -7380834474426126869, i64 %call.i4374)
  %cmp720.not = icmp eq i64 %call.i4374, -7380834474426126869
  br i1 %cmp720.not, label %do.body739, label %do.body728, !prof !25

do.body728:                                       ; preds = %do.body718
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 177, 0\0A.popsection", ""() #10, !srcloc !240
  unreachable

do.body739:                                       ; preds = %do.body718
  %call.i.i4375 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4376 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4377 = call i64 @generic_atomic64_sub_return(i64 noundef 1229782938533634594, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -7380834474426126869, i64 %call.i4377)
  %cmp743.not = icmp eq i64 %call.i4377, -7380834474426126869
  br i1 %cmp743.not, label %do.body760, label %do.body751, !prof !25

do.body751:                                       ; preds = %do.body739
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 177, 0\0A.popsection", ""() #10, !srcloc !241
  unreachable

do.body760:                                       ; preds = %do.body739
  %call.i.i4378 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4379 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -7380834474426126869, i64 %call.i4379)
  %cmp762.not = icmp eq i64 %call.i4379, -7380834474426126869
  br i1 %cmp762.not, label %do.body781, label %do.body770, !prof !25

do.body770:                                       ; preds = %do.body760
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 177, 0\0A.popsection", ""() #10, !srcloc !242
  unreachable

do.body781:                                       ; preds = %do.body760
  %call.i.i4380 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4381 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4382 = call i64 @generic_atomic64_sub_return(i64 noundef 1229782938533634594, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -7380834474426126869, i64 %call.i4382)
  %cmp785.not = icmp eq i64 %call.i4382, -7380834474426126869
  br i1 %cmp785.not, label %do.body802, label %do.body793, !prof !25

do.body793:                                       ; preds = %do.body781
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 177, 0\0A.popsection", ""() #10, !srcloc !243
  unreachable

do.body802:                                       ; preds = %do.body781
  %call.i.i4383 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4384 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -7380834474426126869, i64 %call.i4384)
  %cmp804.not = icmp eq i64 %call.i4384, -7380834474426126869
  br i1 %cmp804.not, label %do.body823, label %do.body812, !prof !25

do.body812:                                       ; preds = %do.body802
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 177, 0\0A.popsection", ""() #10, !srcloc !244
  unreachable

do.body823:                                       ; preds = %do.body802
  %call.i.i4385 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4386 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4387 = call i64 @generic_atomic64_sub_return(i64 noundef 1229782938533634594, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -7380834474426126869, i64 %call.i4387)
  %cmp827.not = icmp eq i64 %call.i4387, -7380834474426126869
  br i1 %cmp827.not, label %do.body844, label %do.body835, !prof !25

do.body835:                                       ; preds = %do.body823
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 177, 0\0A.popsection", ""() #10, !srcloc !245
  unreachable

do.body844:                                       ; preds = %do.body823
  %call.i.i4388 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4389 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -7380834474426126869, i64 %call.i4389)
  %cmp846.not = icmp eq i64 %call.i4389, -7380834474426126869
  br i1 %cmp846.not, label %do.body871, label %do.body854, !prof !25

do.body854:                                       ; preds = %do.body844
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 177, 0\0A.popsection", ""() #10, !srcloc !246
  unreachable

do.body871:                                       ; preds = %do.body844
  %call.i.i4390 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4391 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4392 = call i64 @generic_atomic64_sub_return(i64 noundef -1, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492274, i64 %call.i4392)
  %cmp877.not = icmp eq i64 %call.i4392, -6151051535892492274
  br i1 %cmp877.not, label %do.body894, label %do.body885, !prof !25

do.body885:                                       ; preds = %do.body871
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 178, 0\0A.popsection", ""() #10, !srcloc !247
  unreachable

do.body894:                                       ; preds = %do.body871
  %call.i.i4393 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4394 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492274, i64 %call.i4394)
  %cmp896.not = icmp eq i64 %call.i4394, -6151051535892492274
  br i1 %cmp896.not, label %do.body915, label %do.body904, !prof !25

do.body904:                                       ; preds = %do.body894
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 178, 0\0A.popsection", ""() #10, !srcloc !248
  unreachable

do.body915:                                       ; preds = %do.body894
  %call.i.i4395 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4396 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4397 = call i64 @generic_atomic64_sub_return(i64 noundef -1, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492274, i64 %call.i4397)
  %cmp921.not = icmp eq i64 %call.i4397, -6151051535892492274
  br i1 %cmp921.not, label %do.body938, label %do.body929, !prof !25

do.body929:                                       ; preds = %do.body915
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 178, 0\0A.popsection", ""() #10, !srcloc !249
  unreachable

do.body938:                                       ; preds = %do.body915
  %call.i.i4398 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4399 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492274, i64 %call.i4399)
  %cmp940.not = icmp eq i64 %call.i4399, -6151051535892492274
  br i1 %cmp940.not, label %do.body959, label %do.body948, !prof !25

do.body948:                                       ; preds = %do.body938
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 178, 0\0A.popsection", ""() #10, !srcloc !250
  unreachable

do.body959:                                       ; preds = %do.body938
  %call.i.i4400 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4401 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4402 = call i64 @generic_atomic64_sub_return(i64 noundef -1, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492274, i64 %call.i4402)
  %cmp965.not = icmp eq i64 %call.i4402, -6151051535892492274
  br i1 %cmp965.not, label %do.body982, label %do.body973, !prof !25

do.body973:                                       ; preds = %do.body959
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 178, 0\0A.popsection", ""() #10, !srcloc !251
  unreachable

do.body982:                                       ; preds = %do.body959
  %call.i.i4403 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4404 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492274, i64 %call.i4404)
  %cmp984.not = icmp eq i64 %call.i4404, -6151051535892492274
  br i1 %cmp984.not, label %do.body1003, label %do.body992, !prof !25

do.body992:                                       ; preds = %do.body982
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 178, 0\0A.popsection", ""() #10, !srcloc !252
  unreachable

do.body1003:                                      ; preds = %do.body982
  %call.i.i4405 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4406 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4407 = call i64 @generic_atomic64_sub_return(i64 noundef -1, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492274, i64 %call.i4407)
  %cmp1009.not = icmp eq i64 %call.i4407, -6151051535892492274
  br i1 %cmp1009.not, label %do.body1026, label %do.body1017, !prof !25

do.body1017:                                      ; preds = %do.body1003
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 178, 0\0A.popsection", ""() #10, !srcloc !253
  unreachable

do.body1026:                                      ; preds = %do.body1003
  %call.i.i4408 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4409 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492274, i64 %call.i4409)
  %cmp1028.not = icmp eq i64 %call.i4409, -6151051535892492274
  br i1 %cmp1028.not, label %do.body1053, label %do.body1036, !prof !25

do.body1036:                                      ; preds = %do.body1026
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 178, 0\0A.popsection", ""() #10, !srcloc !254
  unreachable

do.body1053:                                      ; preds = %do.body1026
  %call.i.i4410 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4411 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4412 = call i64 @generic_atomic64_fetch_add(i64 noundef 1229782938533634594, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492275, i64 %call.i4412)
  %cmp1057.not = icmp eq i64 %call.i4412, -6151051535892492275
  br i1 %cmp1057.not, label %do.body1074, label %do.body1065, !prof !25

do.body1065:                                      ; preds = %do.body1053
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 180, 0\0A.popsection", ""() #10, !srcloc !255
  unreachable

do.body1074:                                      ; preds = %do.body1053
  %call.i.i4413 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4414 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -4921268597358857681, i64 %call.i4414)
  %cmp1076.not = icmp eq i64 %call.i4414, -4921268597358857681
  br i1 %cmp1076.not, label %do.body1095, label %do.body1084, !prof !25

do.body1084:                                      ; preds = %do.body1074
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 180, 0\0A.popsection", ""() #10, !srcloc !256
  unreachable

do.body1095:                                      ; preds = %do.body1074
  %call.i.i4415 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4416 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4417 = call i64 @generic_atomic64_fetch_add(i64 noundef 1229782938533634594, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492275, i64 %call.i4417)
  %cmp1099.not = icmp eq i64 %call.i4417, -6151051535892492275
  br i1 %cmp1099.not, label %do.body1116, label %do.body1107, !prof !25

do.body1107:                                      ; preds = %do.body1095
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 180, 0\0A.popsection", ""() #10, !srcloc !257
  unreachable

do.body1116:                                      ; preds = %do.body1095
  %call.i.i4418 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4419 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -4921268597358857681, i64 %call.i4419)
  %cmp1118.not = icmp eq i64 %call.i4419, -4921268597358857681
  br i1 %cmp1118.not, label %do.body1137, label %do.body1126, !prof !25

do.body1126:                                      ; preds = %do.body1116
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 180, 0\0A.popsection", ""() #10, !srcloc !258
  unreachable

do.body1137:                                      ; preds = %do.body1116
  %call.i.i4420 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4421 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4422 = call i64 @generic_atomic64_fetch_add(i64 noundef 1229782938533634594, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492275, i64 %call.i4422)
  %cmp1141.not = icmp eq i64 %call.i4422, -6151051535892492275
  br i1 %cmp1141.not, label %do.body1158, label %do.body1149, !prof !25

do.body1149:                                      ; preds = %do.body1137
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 180, 0\0A.popsection", ""() #10, !srcloc !259
  unreachable

do.body1158:                                      ; preds = %do.body1137
  %call.i.i4423 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4424 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -4921268597358857681, i64 %call.i4424)
  %cmp1160.not = icmp eq i64 %call.i4424, -4921268597358857681
  br i1 %cmp1160.not, label %do.body1179, label %do.body1168, !prof !25

do.body1168:                                      ; preds = %do.body1158
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 180, 0\0A.popsection", ""() #10, !srcloc !260
  unreachable

do.body1179:                                      ; preds = %do.body1158
  %call.i.i4425 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4426 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4427 = call i64 @generic_atomic64_fetch_add(i64 noundef 1229782938533634594, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492275, i64 %call.i4427)
  %cmp1183.not = icmp eq i64 %call.i4427, -6151051535892492275
  br i1 %cmp1183.not, label %do.body1200, label %do.body1191, !prof !25

do.body1191:                                      ; preds = %do.body1179
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 180, 0\0A.popsection", ""() #10, !srcloc !261
  unreachable

do.body1200:                                      ; preds = %do.body1179
  %call.i.i4428 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4429 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -4921268597358857681, i64 %call.i4429)
  %cmp1202.not = icmp eq i64 %call.i4429, -4921268597358857681
  br i1 %cmp1202.not, label %do.body1227, label %do.body1210, !prof !25

do.body1210:                                      ; preds = %do.body1200
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 180, 0\0A.popsection", ""() #10, !srcloc !262
  unreachable

do.body1227:                                      ; preds = %do.body1200
  %call.i.i4430 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4431 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4432 = call i64 @generic_atomic64_fetch_add(i64 noundef -1, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492275, i64 %call.i4432)
  %cmp1233.not = icmp eq i64 %call.i4432, -6151051535892492275
  br i1 %cmp1233.not, label %do.body1250, label %do.body1241, !prof !25

do.body1241:                                      ; preds = %do.body1227
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 181, 0\0A.popsection", ""() #10, !srcloc !263
  unreachable

do.body1250:                                      ; preds = %do.body1227
  %call.i.i4433 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4434 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492276, i64 %call.i4434)
  %cmp1252.not = icmp eq i64 %call.i4434, -6151051535892492276
  br i1 %cmp1252.not, label %do.body1271, label %do.body1260, !prof !25

do.body1260:                                      ; preds = %do.body1250
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 181, 0\0A.popsection", ""() #10, !srcloc !264
  unreachable

do.body1271:                                      ; preds = %do.body1250
  %call.i.i4435 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4436 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4437 = call i64 @generic_atomic64_fetch_add(i64 noundef -1, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492275, i64 %call.i4437)
  %cmp1277.not = icmp eq i64 %call.i4437, -6151051535892492275
  br i1 %cmp1277.not, label %do.body1294, label %do.body1285, !prof !25

do.body1285:                                      ; preds = %do.body1271
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 181, 0\0A.popsection", ""() #10, !srcloc !265
  unreachable

do.body1294:                                      ; preds = %do.body1271
  %call.i.i4438 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4439 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492276, i64 %call.i4439)
  %cmp1296.not = icmp eq i64 %call.i4439, -6151051535892492276
  br i1 %cmp1296.not, label %do.body1315, label %do.body1304, !prof !25

do.body1304:                                      ; preds = %do.body1294
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 181, 0\0A.popsection", ""() #10, !srcloc !266
  unreachable

do.body1315:                                      ; preds = %do.body1294
  %call.i.i4440 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4441 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4442 = call i64 @generic_atomic64_fetch_add(i64 noundef -1, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492275, i64 %call.i4442)
  %cmp1321.not = icmp eq i64 %call.i4442, -6151051535892492275
  br i1 %cmp1321.not, label %do.body1338, label %do.body1329, !prof !25

do.body1329:                                      ; preds = %do.body1315
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 181, 0\0A.popsection", ""() #10, !srcloc !267
  unreachable

do.body1338:                                      ; preds = %do.body1315
  %call.i.i4443 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4444 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492276, i64 %call.i4444)
  %cmp1340.not = icmp eq i64 %call.i4444, -6151051535892492276
  br i1 %cmp1340.not, label %do.body1359, label %do.body1348, !prof !25

do.body1348:                                      ; preds = %do.body1338
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 181, 0\0A.popsection", ""() #10, !srcloc !268
  unreachable

do.body1359:                                      ; preds = %do.body1338
  %call.i.i4445 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4446 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4447 = call i64 @generic_atomic64_fetch_add(i64 noundef -1, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492275, i64 %call.i4447)
  %cmp1365.not = icmp eq i64 %call.i4447, -6151051535892492275
  br i1 %cmp1365.not, label %do.body1382, label %do.body1373, !prof !25

do.body1373:                                      ; preds = %do.body1359
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 181, 0\0A.popsection", ""() #10, !srcloc !269
  unreachable

do.body1382:                                      ; preds = %do.body1359
  %call.i.i4448 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4449 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492276, i64 %call.i4449)
  %cmp1384.not = icmp eq i64 %call.i4449, -6151051535892492276
  br i1 %cmp1384.not, label %do.body1409, label %do.body1392, !prof !25

do.body1392:                                      ; preds = %do.body1382
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 181, 0\0A.popsection", ""() #10, !srcloc !270
  unreachable

do.body1409:                                      ; preds = %do.body1382
  %call.i.i4450 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4451 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4452 = call i64 @generic_atomic64_fetch_sub(i64 noundef 1229782938533634594, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492275, i64 %call.i4452)
  %cmp1413.not = icmp eq i64 %call.i4452, -6151051535892492275
  br i1 %cmp1413.not, label %do.body1430, label %do.body1421, !prof !25

do.body1421:                                      ; preds = %do.body1409
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 182, 0\0A.popsection", ""() #10, !srcloc !271
  unreachable

do.body1430:                                      ; preds = %do.body1409
  %call.i.i4453 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4454 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -7380834474426126869, i64 %call.i4454)
  %cmp1432.not = icmp eq i64 %call.i4454, -7380834474426126869
  br i1 %cmp1432.not, label %do.body1451, label %do.body1440, !prof !25

do.body1440:                                      ; preds = %do.body1430
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 182, 0\0A.popsection", ""() #10, !srcloc !272
  unreachable

do.body1451:                                      ; preds = %do.body1430
  %call.i.i4455 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4456 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4457 = call i64 @generic_atomic64_fetch_sub(i64 noundef 1229782938533634594, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492275, i64 %call.i4457)
  %cmp1455.not = icmp eq i64 %call.i4457, -6151051535892492275
  br i1 %cmp1455.not, label %do.body1472, label %do.body1463, !prof !25

do.body1463:                                      ; preds = %do.body1451
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 182, 0\0A.popsection", ""() #10, !srcloc !273
  unreachable

do.body1472:                                      ; preds = %do.body1451
  %call.i.i4458 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4459 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -7380834474426126869, i64 %call.i4459)
  %cmp1474.not = icmp eq i64 %call.i4459, -7380834474426126869
  br i1 %cmp1474.not, label %do.body1493, label %do.body1482, !prof !25

do.body1482:                                      ; preds = %do.body1472
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 182, 0\0A.popsection", ""() #10, !srcloc !274
  unreachable

do.body1493:                                      ; preds = %do.body1472
  %call.i.i4460 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4461 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4462 = call i64 @generic_atomic64_fetch_sub(i64 noundef 1229782938533634594, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492275, i64 %call.i4462)
  %cmp1497.not = icmp eq i64 %call.i4462, -6151051535892492275
  br i1 %cmp1497.not, label %do.body1514, label %do.body1505, !prof !25

do.body1505:                                      ; preds = %do.body1493
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 182, 0\0A.popsection", ""() #10, !srcloc !275
  unreachable

do.body1514:                                      ; preds = %do.body1493
  %call.i.i4463 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4464 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -7380834474426126869, i64 %call.i4464)
  %cmp1516.not = icmp eq i64 %call.i4464, -7380834474426126869
  br i1 %cmp1516.not, label %do.body1535, label %do.body1524, !prof !25

do.body1524:                                      ; preds = %do.body1514
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 182, 0\0A.popsection", ""() #10, !srcloc !276
  unreachable

do.body1535:                                      ; preds = %do.body1514
  %call.i.i4465 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4466 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4467 = call i64 @generic_atomic64_fetch_sub(i64 noundef 1229782938533634594, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492275, i64 %call.i4467)
  %cmp1539.not = icmp eq i64 %call.i4467, -6151051535892492275
  br i1 %cmp1539.not, label %do.body1556, label %do.body1547, !prof !25

do.body1547:                                      ; preds = %do.body1535
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 182, 0\0A.popsection", ""() #10, !srcloc !277
  unreachable

do.body1556:                                      ; preds = %do.body1535
  %call.i.i4468 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4469 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -7380834474426126869, i64 %call.i4469)
  %cmp1558.not = icmp eq i64 %call.i4469, -7380834474426126869
  br i1 %cmp1558.not, label %do.body1583, label %do.body1566, !prof !25

do.body1566:                                      ; preds = %do.body1556
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 182, 0\0A.popsection", ""() #10, !srcloc !278
  unreachable

do.body1583:                                      ; preds = %do.body1556
  %call.i.i4470 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4471 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4472 = call i64 @generic_atomic64_fetch_sub(i64 noundef -1, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492275, i64 %call.i4472)
  %cmp1589.not = icmp eq i64 %call.i4472, -6151051535892492275
  br i1 %cmp1589.not, label %do.body1606, label %do.body1597, !prof !25

do.body1597:                                      ; preds = %do.body1583
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 183, 0\0A.popsection", ""() #10, !srcloc !279
  unreachable

do.body1606:                                      ; preds = %do.body1583
  %call.i.i4473 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4474 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492274, i64 %call.i4474)
  %cmp1608.not = icmp eq i64 %call.i4474, -6151051535892492274
  br i1 %cmp1608.not, label %do.body1627, label %do.body1616, !prof !25

do.body1616:                                      ; preds = %do.body1606
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 183, 0\0A.popsection", ""() #10, !srcloc !280
  unreachable

do.body1627:                                      ; preds = %do.body1606
  %call.i.i4475 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4476 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4477 = call i64 @generic_atomic64_fetch_sub(i64 noundef -1, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492275, i64 %call.i4477)
  %cmp1633.not = icmp eq i64 %call.i4477, -6151051535892492275
  br i1 %cmp1633.not, label %do.body1650, label %do.body1641, !prof !25

do.body1641:                                      ; preds = %do.body1627
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 183, 0\0A.popsection", ""() #10, !srcloc !281
  unreachable

do.body1650:                                      ; preds = %do.body1627
  %call.i.i4478 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4479 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492274, i64 %call.i4479)
  %cmp1652.not = icmp eq i64 %call.i4479, -6151051535892492274
  br i1 %cmp1652.not, label %do.body1671, label %do.body1660, !prof !25

do.body1660:                                      ; preds = %do.body1650
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 183, 0\0A.popsection", ""() #10, !srcloc !282
  unreachable

do.body1671:                                      ; preds = %do.body1650
  %call.i.i4480 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4481 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4482 = call i64 @generic_atomic64_fetch_sub(i64 noundef -1, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492275, i64 %call.i4482)
  %cmp1677.not = icmp eq i64 %call.i4482, -6151051535892492275
  br i1 %cmp1677.not, label %do.body1694, label %do.body1685, !prof !25

do.body1685:                                      ; preds = %do.body1671
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 183, 0\0A.popsection", ""() #10, !srcloc !283
  unreachable

do.body1694:                                      ; preds = %do.body1671
  %call.i.i4483 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4484 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492274, i64 %call.i4484)
  %cmp1696.not = icmp eq i64 %call.i4484, -6151051535892492274
  br i1 %cmp1696.not, label %do.body1715, label %do.body1704, !prof !25

do.body1704:                                      ; preds = %do.body1694
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 183, 0\0A.popsection", ""() #10, !srcloc !284
  unreachable

do.body1715:                                      ; preds = %do.body1694
  %call.i.i4485 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4486 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4487 = call i64 @generic_atomic64_fetch_sub(i64 noundef -1, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492275, i64 %call.i4487)
  %cmp1721.not = icmp eq i64 %call.i4487, -6151051535892492275
  br i1 %cmp1721.not, label %do.body1738, label %do.body1729, !prof !25

do.body1729:                                      ; preds = %do.body1715
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 183, 0\0A.popsection", ""() #10, !srcloc !285
  unreachable

do.body1738:                                      ; preds = %do.body1715
  %call.i.i4488 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4489 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492274, i64 %call.i4489)
  %cmp1740.not = icmp eq i64 %call.i4489, -6151051535892492274
  br i1 %cmp1740.not, label %do.body1765, label %do.body1748, !prof !25

do.body1748:                                      ; preds = %do.body1738
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 183, 0\0A.popsection", ""() #10, !srcloc !286
  unreachable

do.body1765:                                      ; preds = %do.body1738
  %call.i.i4490 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4491 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4492 = call i64 @generic_atomic64_fetch_or(i64 noundef -2401053088876082434, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492275, i64 %call.i4492)
  %cmp1769.not = icmp eq i64 %call.i4492, -6151051535892492275
  br i1 %cmp1769.not, label %do.body1786, label %do.body1777, !prof !25

do.body1777:                                      ; preds = %do.body1765
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 185, 0\0A.popsection", ""() #10, !srcloc !287
  unreachable

do.body1786:                                      ; preds = %do.body1765
  %call.i.i4493 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4494 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -94645961477858561, i64 %call.i4494)
  %cmp1788.not = icmp eq i64 %call.i4494, -94645961477858561
  br i1 %cmp1788.not, label %do.body1807, label %do.body1796, !prof !25

do.body1796:                                      ; preds = %do.body1786
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 185, 0\0A.popsection", ""() #10, !srcloc !288
  unreachable

do.body1807:                                      ; preds = %do.body1786
  %call.i.i4495 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4496 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4497 = call i64 @generic_atomic64_fetch_or(i64 noundef -2401053088876082434, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492275, i64 %call.i4497)
  %cmp1811.not = icmp eq i64 %call.i4497, -6151051535892492275
  br i1 %cmp1811.not, label %do.body1828, label %do.body1819, !prof !25

do.body1819:                                      ; preds = %do.body1807
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 185, 0\0A.popsection", ""() #10, !srcloc !289
  unreachable

do.body1828:                                      ; preds = %do.body1807
  %call.i.i4498 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4499 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -94645961477858561, i64 %call.i4499)
  %cmp1830.not = icmp eq i64 %call.i4499, -94645961477858561
  br i1 %cmp1830.not, label %do.body1849, label %do.body1838, !prof !25

do.body1838:                                      ; preds = %do.body1828
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 185, 0\0A.popsection", ""() #10, !srcloc !290
  unreachable

do.body1849:                                      ; preds = %do.body1828
  %call.i.i4500 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4501 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4502 = call i64 @generic_atomic64_fetch_or(i64 noundef -2401053088876082434, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492275, i64 %call.i4502)
  %cmp1853.not = icmp eq i64 %call.i4502, -6151051535892492275
  br i1 %cmp1853.not, label %do.body1870, label %do.body1861, !prof !25

do.body1861:                                      ; preds = %do.body1849
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 185, 0\0A.popsection", ""() #10, !srcloc !291
  unreachable

do.body1870:                                      ; preds = %do.body1849
  %call.i.i4503 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4504 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -94645961477858561, i64 %call.i4504)
  %cmp1872.not = icmp eq i64 %call.i4504, -94645961477858561
  br i1 %cmp1872.not, label %do.body1891, label %do.body1880, !prof !25

do.body1880:                                      ; preds = %do.body1870
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 185, 0\0A.popsection", ""() #10, !srcloc !292
  unreachable

do.body1891:                                      ; preds = %do.body1870
  %call.i.i4505 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4506 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4507 = call i64 @generic_atomic64_fetch_or(i64 noundef -2401053088876082434, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492275, i64 %call.i4507)
  %cmp1895.not = icmp eq i64 %call.i4507, -6151051535892492275
  br i1 %cmp1895.not, label %do.body1912, label %do.body1903, !prof !25

do.body1903:                                      ; preds = %do.body1891
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 185, 0\0A.popsection", ""() #10, !srcloc !293
  unreachable

do.body1912:                                      ; preds = %do.body1891
  %call.i.i4508 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4509 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -94645961477858561, i64 %call.i4509)
  %cmp1914.not = icmp eq i64 %call.i4509, -94645961477858561
  br i1 %cmp1914.not, label %do.body1939, label %do.body1922, !prof !25

do.body1922:                                      ; preds = %do.body1912
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 185, 0\0A.popsection", ""() #10, !srcloc !294
  unreachable

do.body1939:                                      ; preds = %do.body1912
  %call.i.i4510 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4511 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4512 = call i64 @generic_atomic64_fetch_and(i64 noundef -2401053088876082434, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492275, i64 %call.i4512)
  %cmp1943.not = icmp eq i64 %call.i4512, -6151051535892492275
  br i1 %cmp1943.not, label %do.body1960, label %do.body1951, !prof !25

do.body1951:                                      ; preds = %do.body1939
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 186, 0\0A.popsection", ""() #10, !srcloc !295
  unreachable

do.body1960:                                      ; preds = %do.body1939
  %call.i.i4513 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4514 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -8457458663290716148, i64 %call.i4514)
  %cmp1962.not = icmp eq i64 %call.i4514, -8457458663290716148
  br i1 %cmp1962.not, label %do.body1981, label %do.body1970, !prof !25

do.body1970:                                      ; preds = %do.body1960
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 186, 0\0A.popsection", ""() #10, !srcloc !296
  unreachable

do.body1981:                                      ; preds = %do.body1960
  %call.i.i4515 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4516 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4517 = call i64 @generic_atomic64_fetch_and(i64 noundef -2401053088876082434, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492275, i64 %call.i4517)
  %cmp1985.not = icmp eq i64 %call.i4517, -6151051535892492275
  br i1 %cmp1985.not, label %do.body2002, label %do.body1993, !prof !25

do.body1993:                                      ; preds = %do.body1981
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 186, 0\0A.popsection", ""() #10, !srcloc !297
  unreachable

do.body2002:                                      ; preds = %do.body1981
  %call.i.i4518 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4519 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -8457458663290716148, i64 %call.i4519)
  %cmp2004.not = icmp eq i64 %call.i4519, -8457458663290716148
  br i1 %cmp2004.not, label %do.body2023, label %do.body2012, !prof !25

do.body2012:                                      ; preds = %do.body2002
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 186, 0\0A.popsection", ""() #10, !srcloc !298
  unreachable

do.body2023:                                      ; preds = %do.body2002
  %call.i.i4520 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4521 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4522 = call i64 @generic_atomic64_fetch_and(i64 noundef -2401053088876082434, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492275, i64 %call.i4522)
  %cmp2027.not = icmp eq i64 %call.i4522, -6151051535892492275
  br i1 %cmp2027.not, label %do.body2044, label %do.body2035, !prof !25

do.body2035:                                      ; preds = %do.body2023
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 186, 0\0A.popsection", ""() #10, !srcloc !299
  unreachable

do.body2044:                                      ; preds = %do.body2023
  %call.i.i4523 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4524 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -8457458663290716148, i64 %call.i4524)
  %cmp2046.not = icmp eq i64 %call.i4524, -8457458663290716148
  br i1 %cmp2046.not, label %do.body2065, label %do.body2054, !prof !25

do.body2054:                                      ; preds = %do.body2044
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 186, 0\0A.popsection", ""() #10, !srcloc !300
  unreachable

do.body2065:                                      ; preds = %do.body2044
  %call.i.i4525 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4526 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4527 = call i64 @generic_atomic64_fetch_and(i64 noundef -2401053088876082434, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492275, i64 %call.i4527)
  %cmp2069.not = icmp eq i64 %call.i4527, -6151051535892492275
  br i1 %cmp2069.not, label %do.body2086, label %do.body2077, !prof !25

do.body2077:                                      ; preds = %do.body2065
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 186, 0\0A.popsection", ""() #10, !srcloc !301
  unreachable

do.body2086:                                      ; preds = %do.body2065
  %call.i.i4528 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4529 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -8457458663290716148, i64 %call.i4529)
  %cmp2088.not = icmp eq i64 %call.i4529, -8457458663290716148
  br i1 %cmp2088.not, label %do.body2113, label %do.body2096, !prof !25

do.body2096:                                      ; preds = %do.body2086
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 186, 0\0A.popsection", ""() #10, !srcloc !302
  unreachable

do.body2113:                                      ; preds = %do.body2086
  %call.i.i4530 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4531 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i1.i = call i64 @generic_atomic64_fetch_and(i64 noundef 2401053088876082433, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492275, i64 %call.i1.i)
  %cmp2118.not = icmp eq i64 %call.i1.i, -6151051535892492275
  br i1 %cmp2118.not, label %do.body2135, label %do.body2126, !prof !25

do.body2126:                                      ; preds = %do.body2113
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 187, 0\0A.popsection", ""() #10, !srcloc !303
  unreachable

do.body2135:                                      ; preds = %do.body2113
  %call.i.i4532 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4533 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 2306407127398223873, i64 %call.i4533)
  %cmp2137.not = icmp eq i64 %call.i4533, 2306407127398223873
  br i1 %cmp2137.not, label %do.body2156, label %do.body2145, !prof !25

do.body2145:                                      ; preds = %do.body2135
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 187, 0\0A.popsection", ""() #10, !srcloc !304
  unreachable

do.body2156:                                      ; preds = %do.body2135
  %call.i.i4534 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4535 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i1.i4536 = call i64 @generic_atomic64_fetch_and(i64 noundef 2401053088876082433, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492275, i64 %call.i1.i4536)
  %cmp2161.not = icmp eq i64 %call.i1.i4536, -6151051535892492275
  br i1 %cmp2161.not, label %do.body2178, label %do.body2169, !prof !25

do.body2169:                                      ; preds = %do.body2156
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 187, 0\0A.popsection", ""() #10, !srcloc !305
  unreachable

do.body2178:                                      ; preds = %do.body2156
  %call.i.i4537 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4538 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 2306407127398223873, i64 %call.i4538)
  %cmp2180.not = icmp eq i64 %call.i4538, 2306407127398223873
  br i1 %cmp2180.not, label %do.body2199, label %do.body2188, !prof !25

do.body2188:                                      ; preds = %do.body2178
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 187, 0\0A.popsection", ""() #10, !srcloc !306
  unreachable

do.body2199:                                      ; preds = %do.body2178
  %call.i.i4539 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4540 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i1.i4541 = call i64 @generic_atomic64_fetch_and(i64 noundef 2401053088876082433, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492275, i64 %call.i1.i4541)
  %cmp2204.not = icmp eq i64 %call.i1.i4541, -6151051535892492275
  br i1 %cmp2204.not, label %do.body2221, label %do.body2212, !prof !25

do.body2212:                                      ; preds = %do.body2199
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 187, 0\0A.popsection", ""() #10, !srcloc !307
  unreachable

do.body2221:                                      ; preds = %do.body2199
  %call.i.i4542 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4543 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 2306407127398223873, i64 %call.i4543)
  %cmp2223.not = icmp eq i64 %call.i4543, 2306407127398223873
  br i1 %cmp2223.not, label %do.body2242, label %do.body2231, !prof !25

do.body2231:                                      ; preds = %do.body2221
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 187, 0\0A.popsection", ""() #10, !srcloc !308
  unreachable

do.body2242:                                      ; preds = %do.body2221
  %call.i.i4544 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4545 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i1.i4546 = call i64 @generic_atomic64_fetch_and(i64 noundef 2401053088876082433, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492275, i64 %call.i1.i4546)
  %cmp2247.not = icmp eq i64 %call.i1.i4546, -6151051535892492275
  br i1 %cmp2247.not, label %do.body2264, label %do.body2255, !prof !25

do.body2255:                                      ; preds = %do.body2242
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 187, 0\0A.popsection", ""() #10, !srcloc !309
  unreachable

do.body2264:                                      ; preds = %do.body2242
  %call.i.i4547 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4548 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 2306407127398223873, i64 %call.i4548)
  %cmp2266.not = icmp eq i64 %call.i4548, 2306407127398223873
  br i1 %cmp2266.not, label %do.body2291, label %do.body2274, !prof !25

do.body2274:                                      ; preds = %do.body2264
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 187, 0\0A.popsection", ""() #10, !srcloc !310
  unreachable

do.body2291:                                      ; preds = %do.body2264
  %call.i.i4549 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4550 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4551 = call i64 @generic_atomic64_fetch_xor(i64 noundef -2401053088876082434, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492275, i64 %call.i4551)
  %cmp2295.not = icmp eq i64 %call.i4551, -6151051535892492275
  br i1 %cmp2295.not, label %do.body2312, label %do.body2303, !prof !25

do.body2303:                                      ; preds = %do.body2291
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 188, 0\0A.popsection", ""() #10, !srcloc !311
  unreachable

do.body2312:                                      ; preds = %do.body2291
  %call.i.i4552 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4553 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 8362812701812857587, i64 %call.i4553)
  %cmp2314.not = icmp eq i64 %call.i4553, 8362812701812857587
  br i1 %cmp2314.not, label %do.body2333, label %do.body2322, !prof !25

do.body2322:                                      ; preds = %do.body2312
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 188, 0\0A.popsection", ""() #10, !srcloc !312
  unreachable

do.body2333:                                      ; preds = %do.body2312
  %call.i.i4554 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4555 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4556 = call i64 @generic_atomic64_fetch_xor(i64 noundef -2401053088876082434, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492275, i64 %call.i4556)
  %cmp2337.not = icmp eq i64 %call.i4556, -6151051535892492275
  br i1 %cmp2337.not, label %do.body2354, label %do.body2345, !prof !25

do.body2345:                                      ; preds = %do.body2333
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 188, 0\0A.popsection", ""() #10, !srcloc !313
  unreachable

do.body2354:                                      ; preds = %do.body2333
  %call.i.i4557 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4558 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 8362812701812857587, i64 %call.i4558)
  %cmp2356.not = icmp eq i64 %call.i4558, 8362812701812857587
  br i1 %cmp2356.not, label %do.body2375, label %do.body2364, !prof !25

do.body2364:                                      ; preds = %do.body2354
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 188, 0\0A.popsection", ""() #10, !srcloc !314
  unreachable

do.body2375:                                      ; preds = %do.body2354
  %call.i.i4559 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4560 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4561 = call i64 @generic_atomic64_fetch_xor(i64 noundef -2401053088876082434, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492275, i64 %call.i4561)
  %cmp2379.not = icmp eq i64 %call.i4561, -6151051535892492275
  br i1 %cmp2379.not, label %do.body2396, label %do.body2387, !prof !25

do.body2387:                                      ; preds = %do.body2375
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 188, 0\0A.popsection", ""() #10, !srcloc !315
  unreachable

do.body2396:                                      ; preds = %do.body2375
  %call.i.i4562 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4563 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 8362812701812857587, i64 %call.i4563)
  %cmp2398.not = icmp eq i64 %call.i4563, 8362812701812857587
  br i1 %cmp2398.not, label %do.body2417, label %do.body2406, !prof !25

do.body2406:                                      ; preds = %do.body2396
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 188, 0\0A.popsection", ""() #10, !srcloc !316
  unreachable

do.body2417:                                      ; preds = %do.body2396
  %call.i.i4564 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4565 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4566 = call i64 @generic_atomic64_fetch_xor(i64 noundef -2401053088876082434, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492275, i64 %call.i4566)
  %cmp2421.not = icmp eq i64 %call.i4566, -6151051535892492275
  br i1 %cmp2421.not, label %do.body2438, label %do.body2429, !prof !25

do.body2429:                                      ; preds = %do.body2417
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 188, 0\0A.popsection", ""() #10, !srcloc !317
  unreachable

do.body2438:                                      ; preds = %do.body2417
  %call.i.i4567 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4568 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 8362812701812857587, i64 %call.i4568)
  %cmp2440.not = icmp eq i64 %call.i4568, 8362812701812857587
  br i1 %cmp2440.not, label %do.body2463, label %do.body2448, !prof !25

do.body2448:                                      ; preds = %do.body2438
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 188, 0\0A.popsection", ""() #10, !srcloc !318
  unreachable

do.body2463:                                      ; preds = %do.body2438
  %call.i.i4569 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4570 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef nonnull %v) #10
  %3 = ptrtoint ptr %v to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %v, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492274, i64 %4)
  %cmp2469.not = icmp eq i64 %4, -6151051535892492274
  br i1 %cmp2469.not, label %do.body2486, label %do.body2477, !prof !25

do.body2477:                                      ; preds = %do.body2463
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 193, 0\0A.popsection", ""() #10, !srcloc !319
  unreachable

do.body2486:                                      ; preds = %do.body2463
  %call.i.i4571 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4572 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_sub(i64 noundef 1, ptr noundef nonnull %v) #10
  %5 = ptrtoint ptr %v to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %v, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492276, i64 %6)
  %cmp2492.not = icmp eq i64 %6, -6151051535892492276
  br i1 %cmp2492.not, label %do.body2511, label %do.body2500, !prof !25

do.body2500:                                      ; preds = %do.body2486
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 198, 0\0A.popsection", ""() #10, !srcloc !320
  unreachable

do.body2511:                                      ; preds = %do.body2486
  %call.i.i4573 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4574 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i2.i = call i64 @generic_atomic64_add_return(i64 noundef 1, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492274, i64 %call.i2.i)
  %cmp2515.not = icmp eq i64 %call.i2.i, -6151051535892492274
  br i1 %cmp2515.not, label %do.body2532, label %do.body2523, !prof !25

do.body2523:                                      ; preds = %do.body2511
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 200, 0\0A.popsection", ""() #10, !srcloc !321
  unreachable

do.body2532:                                      ; preds = %do.body2511
  %call.i.i4575 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4576 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492274, i64 %call.i4576)
  %cmp2535.not = icmp eq i64 %call.i4576, -6151051535892492274
  br i1 %cmp2535.not, label %do.body2554, label %do.body2543, !prof !25

do.body2543:                                      ; preds = %do.body2532
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 200, 0\0A.popsection", ""() #10, !srcloc !322
  unreachable

do.body2554:                                      ; preds = %do.body2532
  %call.i.i4577 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4578 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i2.i4579 = call i64 @generic_atomic64_add_return(i64 noundef 1, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492274, i64 %call.i2.i4579)
  %cmp2558.not = icmp eq i64 %call.i2.i4579, -6151051535892492274
  br i1 %cmp2558.not, label %do.body2575, label %do.body2566, !prof !25

do.body2566:                                      ; preds = %do.body2554
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 200, 0\0A.popsection", ""() #10, !srcloc !323
  unreachable

do.body2575:                                      ; preds = %do.body2554
  %call.i.i4580 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4581 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492274, i64 %call.i4581)
  %cmp2578.not = icmp eq i64 %call.i4581, -6151051535892492274
  br i1 %cmp2578.not, label %do.body2597, label %do.body2586, !prof !25

do.body2586:                                      ; preds = %do.body2575
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 200, 0\0A.popsection", ""() #10, !srcloc !324
  unreachable

do.body2597:                                      ; preds = %do.body2575
  %call.i.i4582 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4583 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i2.i4584 = call i64 @generic_atomic64_add_return(i64 noundef 1, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492274, i64 %call.i2.i4584)
  %cmp2601.not = icmp eq i64 %call.i2.i4584, -6151051535892492274
  br i1 %cmp2601.not, label %do.body2618, label %do.body2609, !prof !25

do.body2609:                                      ; preds = %do.body2597
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 200, 0\0A.popsection", ""() #10, !srcloc !325
  unreachable

do.body2618:                                      ; preds = %do.body2597
  %call.i.i4585 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4586 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492274, i64 %call.i4586)
  %cmp2621.not = icmp eq i64 %call.i4586, -6151051535892492274
  br i1 %cmp2621.not, label %do.body2640, label %do.body2629, !prof !25

do.body2629:                                      ; preds = %do.body2618
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 200, 0\0A.popsection", ""() #10, !srcloc !326
  unreachable

do.body2640:                                      ; preds = %do.body2618
  %call.i.i4587 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4588 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i2.i4589 = call i64 @generic_atomic64_add_return(i64 noundef 1, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492274, i64 %call.i2.i4589)
  %cmp2644.not = icmp eq i64 %call.i2.i4589, -6151051535892492274
  br i1 %cmp2644.not, label %do.body2661, label %do.body2652, !prof !25

do.body2652:                                      ; preds = %do.body2640
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 200, 0\0A.popsection", ""() #10, !srcloc !327
  unreachable

do.body2661:                                      ; preds = %do.body2640
  %call.i.i4590 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4591 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492274, i64 %call.i4591)
  %cmp2664.not = icmp eq i64 %call.i4591, -6151051535892492274
  br i1 %cmp2664.not, label %do.body2689, label %do.body2672, !prof !25

do.body2672:                                      ; preds = %do.body2661
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 200, 0\0A.popsection", ""() #10, !srcloc !328
  unreachable

do.body2689:                                      ; preds = %do.body2661
  %call.i.i4592 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4593 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i2.i4594 = call i64 @generic_atomic64_sub_return(i64 noundef 1, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492276, i64 %call.i2.i4594)
  %cmp2693.not = icmp eq i64 %call.i2.i4594, -6151051535892492276
  br i1 %cmp2693.not, label %do.body2710, label %do.body2701, !prof !25

do.body2701:                                      ; preds = %do.body2689
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 201, 0\0A.popsection", ""() #10, !srcloc !329
  unreachable

do.body2710:                                      ; preds = %do.body2689
  %call.i.i4595 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4596 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492276, i64 %call.i4596)
  %cmp2713.not = icmp eq i64 %call.i4596, -6151051535892492276
  br i1 %cmp2713.not, label %do.body2732, label %do.body2721, !prof !25

do.body2721:                                      ; preds = %do.body2710
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 201, 0\0A.popsection", ""() #10, !srcloc !330
  unreachable

do.body2732:                                      ; preds = %do.body2710
  %call.i.i4597 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4598 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i2.i4599 = call i64 @generic_atomic64_sub_return(i64 noundef 1, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492276, i64 %call.i2.i4599)
  %cmp2736.not = icmp eq i64 %call.i2.i4599, -6151051535892492276
  br i1 %cmp2736.not, label %do.body2753, label %do.body2744, !prof !25

do.body2744:                                      ; preds = %do.body2732
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 201, 0\0A.popsection", ""() #10, !srcloc !331
  unreachable

do.body2753:                                      ; preds = %do.body2732
  %call.i.i4600 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4601 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492276, i64 %call.i4601)
  %cmp2756.not = icmp eq i64 %call.i4601, -6151051535892492276
  br i1 %cmp2756.not, label %do.body2775, label %do.body2764, !prof !25

do.body2764:                                      ; preds = %do.body2753
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 201, 0\0A.popsection", ""() #10, !srcloc !332
  unreachable

do.body2775:                                      ; preds = %do.body2753
  %call.i.i4602 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4603 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i2.i4604 = call i64 @generic_atomic64_sub_return(i64 noundef 1, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492276, i64 %call.i2.i4604)
  %cmp2779.not = icmp eq i64 %call.i2.i4604, -6151051535892492276
  br i1 %cmp2779.not, label %do.body2796, label %do.body2787, !prof !25

do.body2787:                                      ; preds = %do.body2775
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 201, 0\0A.popsection", ""() #10, !srcloc !333
  unreachable

do.body2796:                                      ; preds = %do.body2775
  %call.i.i4605 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4606 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492276, i64 %call.i4606)
  %cmp2799.not = icmp eq i64 %call.i4606, -6151051535892492276
  br i1 %cmp2799.not, label %do.body2818, label %do.body2807, !prof !25

do.body2807:                                      ; preds = %do.body2796
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 201, 0\0A.popsection", ""() #10, !srcloc !334
  unreachable

do.body2818:                                      ; preds = %do.body2796
  %call.i.i4607 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4608 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i2.i4609 = call i64 @generic_atomic64_sub_return(i64 noundef 1, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492276, i64 %call.i2.i4609)
  %cmp2822.not = icmp eq i64 %call.i2.i4609, -6151051535892492276
  br i1 %cmp2822.not, label %do.body2839, label %do.body2830, !prof !25

do.body2830:                                      ; preds = %do.body2818
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 201, 0\0A.popsection", ""() #10, !srcloc !335
  unreachable

do.body2839:                                      ; preds = %do.body2818
  %call.i.i4610 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4611 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492276, i64 %call.i4611)
  %cmp2842.not = icmp eq i64 %call.i4611, -6151051535892492276
  br i1 %cmp2842.not, label %do.body2867, label %do.body2850, !prof !25

do.body2850:                                      ; preds = %do.body2839
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 201, 0\0A.popsection", ""() #10, !srcloc !336
  unreachable

do.body2867:                                      ; preds = %do.body2839
  %call.i.i4612 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4613 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4614 = call i64 @generic_atomic64_xchg(ptr noundef nonnull %v, i64 noundef -2401053088876082434) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492275, i64 %call.i4614)
  %cmp2870.not = icmp eq i64 %call.i4614, -6151051535892492275
  br i1 %cmp2870.not, label %do.body2887, label %do.body2878, !prof !25

do.body2878:                                      ; preds = %do.body2867
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 203, 0\0A.popsection", ""() #10, !srcloc !337
  unreachable

do.body2887:                                      ; preds = %do.body2867
  %call.i.i4615 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4616 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2401053088876082434, i64 %call.i4616)
  %cmp2889.not = icmp eq i64 %call.i4616, -2401053088876082434
  br i1 %cmp2889.not, label %do.body2908, label %do.body2897, !prof !25

do.body2897:                                      ; preds = %do.body2887
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 203, 0\0A.popsection", ""() #10, !srcloc !338
  unreachable

do.body2908:                                      ; preds = %do.body2887
  %call.i.i4617 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4618 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4619 = call i64 @generic_atomic64_xchg(ptr noundef nonnull %v, i64 noundef -2401053088876082434) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492275, i64 %call.i4619)
  %cmp2911.not = icmp eq i64 %call.i4619, -6151051535892492275
  br i1 %cmp2911.not, label %do.body2928, label %do.body2919, !prof !25

do.body2919:                                      ; preds = %do.body2908
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 203, 0\0A.popsection", ""() #10, !srcloc !339
  unreachable

do.body2928:                                      ; preds = %do.body2908
  %call.i.i4620 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4621 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2401053088876082434, i64 %call.i4621)
  %cmp2930.not = icmp eq i64 %call.i4621, -2401053088876082434
  br i1 %cmp2930.not, label %do.body2949, label %do.body2938, !prof !25

do.body2938:                                      ; preds = %do.body2928
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 203, 0\0A.popsection", ""() #10, !srcloc !340
  unreachable

do.body2949:                                      ; preds = %do.body2928
  %call.i.i4622 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4623 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4624 = call i64 @generic_atomic64_xchg(ptr noundef nonnull %v, i64 noundef -2401053088876082434) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492275, i64 %call.i4624)
  %cmp2952.not = icmp eq i64 %call.i4624, -6151051535892492275
  br i1 %cmp2952.not, label %do.body2969, label %do.body2960, !prof !25

do.body2960:                                      ; preds = %do.body2949
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 203, 0\0A.popsection", ""() #10, !srcloc !341
  unreachable

do.body2969:                                      ; preds = %do.body2949
  %call.i.i4625 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4626 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2401053088876082434, i64 %call.i4626)
  %cmp2971.not = icmp eq i64 %call.i4626, -2401053088876082434
  br i1 %cmp2971.not, label %do.body2990, label %do.body2979, !prof !25

do.body2979:                                      ; preds = %do.body2969
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 203, 0\0A.popsection", ""() #10, !srcloc !342
  unreachable

do.body2990:                                      ; preds = %do.body2969
  %call.i.i4627 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4628 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4629 = call i64 @generic_atomic64_xchg(ptr noundef nonnull %v, i64 noundef -2401053088876082434) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492275, i64 %call.i4629)
  %cmp2993.not = icmp eq i64 %call.i4629, -6151051535892492275
  br i1 %cmp2993.not, label %do.body3010, label %do.body3001, !prof !25

do.body3001:                                      ; preds = %do.body2990
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 203, 0\0A.popsection", ""() #10, !srcloc !343
  unreachable

do.body3010:                                      ; preds = %do.body2990
  %call.i.i4630 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4631 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2401053088876082434, i64 %call.i4631)
  %cmp3012.not = icmp eq i64 %call.i4631, -2401053088876082434
  br i1 %cmp3012.not, label %do.body3037, label %do.body3020, !prof !25

do.body3020:                                      ; preds = %do.body3010
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 203, 0\0A.popsection", ""() #10, !srcloc !344
  unreachable

do.body3037:                                      ; preds = %do.body3010
  %call.i.i4632 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4633 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4634 = call i64 @generic_atomic64_cmpxchg(ptr noundef nonnull %v, i64 noundef -6151051535892492275, i64 noundef -2401053088876082434) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492275, i64 %call.i4634)
  %cmp3040.not = icmp eq i64 %call.i4634, -6151051535892492275
  br i1 %cmp3040.not, label %do.body3057, label %do.body3048, !prof !25

do.body3048:                                      ; preds = %do.body3037
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #10, !srcloc !345
  unreachable

do.body3057:                                      ; preds = %do.body3037
  %call.i.i4635 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4636 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2401053088876082434, i64 %call.i4636)
  %cmp3059.not = icmp eq i64 %call.i4636, -2401053088876082434
  br i1 %cmp3059.not, label %do.body3078, label %do.body3067, !prof !25

do.body3067:                                      ; preds = %do.body3057
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #10, !srcloc !346
  unreachable

do.body3078:                                      ; preds = %do.body3057
  %call.i.i4637 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4638 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4639 = call i64 @generic_atomic64_cmpxchg(ptr noundef nonnull %v, i64 noundef -6151051535892492275, i64 noundef -2401053088876082434) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492275, i64 %call.i4639)
  %cmp3081.not = icmp eq i64 %call.i4639, -6151051535892492275
  br i1 %cmp3081.not, label %do.body3098, label %do.body3089, !prof !25

do.body3089:                                      ; preds = %do.body3078
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #10, !srcloc !347
  unreachable

do.body3098:                                      ; preds = %do.body3078
  %call.i.i4640 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4641 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2401053088876082434, i64 %call.i4641)
  %cmp3100.not = icmp eq i64 %call.i4641, -2401053088876082434
  br i1 %cmp3100.not, label %do.body3119, label %do.body3108, !prof !25

do.body3108:                                      ; preds = %do.body3098
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #10, !srcloc !348
  unreachable

do.body3119:                                      ; preds = %do.body3098
  %call.i.i4642 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4643 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4644 = call i64 @generic_atomic64_cmpxchg(ptr noundef nonnull %v, i64 noundef -6151051535892492275, i64 noundef -2401053088876082434) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492275, i64 %call.i4644)
  %cmp3122.not = icmp eq i64 %call.i4644, -6151051535892492275
  br i1 %cmp3122.not, label %do.body3139, label %do.body3130, !prof !25

do.body3130:                                      ; preds = %do.body3119
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #10, !srcloc !349
  unreachable

do.body3139:                                      ; preds = %do.body3119
  %call.i.i4645 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4646 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2401053088876082434, i64 %call.i4646)
  %cmp3141.not = icmp eq i64 %call.i4646, -2401053088876082434
  br i1 %cmp3141.not, label %do.body3160, label %do.body3149, !prof !25

do.body3149:                                      ; preds = %do.body3139
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #10, !srcloc !350
  unreachable

do.body3160:                                      ; preds = %do.body3139
  %call.i.i4647 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4648 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4649 = call i64 @generic_atomic64_cmpxchg(ptr noundef nonnull %v, i64 noundef -6151051535892492275, i64 noundef -2401053088876082434) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492275, i64 %call.i4649)
  %cmp3163.not = icmp eq i64 %call.i4649, -6151051535892492275
  br i1 %cmp3163.not, label %do.body3180, label %do.body3171, !prof !25

do.body3171:                                      ; preds = %do.body3160
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #10, !srcloc !351
  unreachable

do.body3180:                                      ; preds = %do.body3160
  %call.i.i4650 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4651 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2401053088876082434, i64 %call.i4651)
  %cmp3182.not = icmp eq i64 %call.i4651, -2401053088876082434
  br i1 %cmp3182.not, label %do.body3204, label %do.body3190, !prof !25

do.body3190:                                      ; preds = %do.body3180
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #10, !srcloc !352
  unreachable

do.body3204:                                      ; preds = %do.body3180
  %call.i.i4652 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4653 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4654 = call i64 @generic_atomic64_cmpxchg(ptr noundef nonnull %v, i64 noundef -374172955480035327, i64 noundef -2401053088876082434) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492275, i64 %call.i4654)
  %cmp3207.not = icmp eq i64 %call.i4654, -6151051535892492275
  br i1 %cmp3207.not, label %do.body3224, label %do.body3215, !prof !25

do.body3215:                                      ; preds = %do.body3204
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #10, !srcloc !353
  unreachable

do.body3224:                                      ; preds = %do.body3204
  %call.i.i4655 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4656 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492275, i64 %call.i4656)
  %cmp3226.not = icmp eq i64 %call.i4656, -6151051535892492275
  br i1 %cmp3226.not, label %do.body3245, label %do.body3234, !prof !25

do.body3234:                                      ; preds = %do.body3224
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #10, !srcloc !354
  unreachable

do.body3245:                                      ; preds = %do.body3224
  %call.i.i4657 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4658 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4659 = call i64 @generic_atomic64_cmpxchg(ptr noundef nonnull %v, i64 noundef -374172955480035327, i64 noundef -2401053088876082434) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492275, i64 %call.i4659)
  %cmp3248.not = icmp eq i64 %call.i4659, -6151051535892492275
  br i1 %cmp3248.not, label %do.body3265, label %do.body3256, !prof !25

do.body3256:                                      ; preds = %do.body3245
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #10, !srcloc !355
  unreachable

do.body3265:                                      ; preds = %do.body3245
  %call.i.i4660 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4661 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492275, i64 %call.i4661)
  %cmp3267.not = icmp eq i64 %call.i4661, -6151051535892492275
  br i1 %cmp3267.not, label %do.body3286, label %do.body3275, !prof !25

do.body3275:                                      ; preds = %do.body3265
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #10, !srcloc !356
  unreachable

do.body3286:                                      ; preds = %do.body3265
  %call.i.i4662 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4663 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4664 = call i64 @generic_atomic64_cmpxchg(ptr noundef nonnull %v, i64 noundef -374172955480035327, i64 noundef -2401053088876082434) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492275, i64 %call.i4664)
  %cmp3289.not = icmp eq i64 %call.i4664, -6151051535892492275
  br i1 %cmp3289.not, label %do.body3306, label %do.body3297, !prof !25

do.body3297:                                      ; preds = %do.body3286
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #10, !srcloc !357
  unreachable

do.body3306:                                      ; preds = %do.body3286
  %call.i.i4665 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4666 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492275, i64 %call.i4666)
  %cmp3308.not = icmp eq i64 %call.i4666, -6151051535892492275
  br i1 %cmp3308.not, label %do.body3327, label %do.body3316, !prof !25

do.body3316:                                      ; preds = %do.body3306
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #10, !srcloc !358
  unreachable

do.body3327:                                      ; preds = %do.body3306
  %call.i.i4667 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4668 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4669 = call i64 @generic_atomic64_cmpxchg(ptr noundef nonnull %v, i64 noundef -374172955480035327, i64 noundef -2401053088876082434) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492275, i64 %call.i4669)
  %cmp3330.not = icmp eq i64 %call.i4669, -6151051535892492275
  br i1 %cmp3330.not, label %do.body3347, label %do.body3338, !prof !25

do.body3338:                                      ; preds = %do.body3327
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #10, !srcloc !359
  unreachable

do.body3347:                                      ; preds = %do.body3327
  %call.i.i4670 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4671 = call i64 @generic_atomic64_read(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492275, i64 %call.i4671)
  %cmp3349.not = icmp eq i64 %call.i4671, -6151051535892492275
  br i1 %cmp3349.not, label %do.body3372, label %do.body3357, !prof !25

do.body3357:                                      ; preds = %do.body3347
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #10, !srcloc !360
  unreachable

do.body3372:                                      ; preds = %do.body3347
  %call.i.i4672 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4673 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i1.i4674 = call i64 @generic_atomic64_fetch_add_unless(ptr noundef nonnull %v, i64 noundef 1, i64 noundef -6151051535892492275) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492275, i64 %call.i1.i4674)
  %cmp.i.i.not = icmp eq i64 %call.i1.i4674, -6151051535892492275
  br i1 %cmp.i.i.not, label %do.body3393, label %do.body3384, !prof !25

do.body3384:                                      ; preds = %do.body3372
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 207, 0\0A.popsection", ""() #10, !srcloc !361
  unreachable

do.body3393:                                      ; preds = %do.body3372
  %7 = ptrtoint ptr %v to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %v, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492275, i64 %8)
  %cmp3395.not = icmp eq i64 %8, -6151051535892492275
  br i1 %cmp3395.not, label %do.body3412, label %do.body3403, !prof !25

do.body3403:                                      ; preds = %do.body3393
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 208, 0\0A.popsection", ""() #10, !srcloc !362
  unreachable

do.body3412:                                      ; preds = %do.body3393
  %call.i.i4675 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -6151051535892492275) #10
  %call.i.i4676 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i1.i4677 = call i64 @generic_atomic64_fetch_add_unless(ptr noundef nonnull %v, i64 noundef 1, i64 noundef -2401053088876082434) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2401053088876082434, i64 %call.i1.i4677)
  %cmp.i.i4678.not = icmp eq i64 %call.i1.i4677, -2401053088876082434
  br i1 %cmp.i.i4678.not, label %do.body3426, label %do.end3434, !prof !363

do.body3426:                                      ; preds = %do.body3412
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 211, 0\0A.popsection", ""() #10, !srcloc !364
  unreachable

do.end3434:                                       ; preds = %do.body3412
  %9 = ptrtoint ptr %v to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %v, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6151051535892492274, i64 %10)
  %cmp3438.not = icmp eq i64 %10, -6151051535892492274
  br i1 %cmp3438.not, label %do.body3455, label %do.body3446, !prof !25

do.body3446:                                      ; preds = %do.end3434
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 213, 0\0A.popsection", ""() #10, !srcloc !365
  unreachable

do.body3455:                                      ; preds = %do.end3434
  %call.i.i4679 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef 1229782938533634594) #10
  %call.i.i4680 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4681 = call i64 @generic_atomic64_dec_if_positive(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 1229782938533634593, i64 %call.i4681)
  %cmp3461.not = icmp eq i64 %call.i4681, 1229782938533634593
  br i1 %cmp3461.not, label %do.end3477, label %do.body3469, !prof !25

do.body3469:                                      ; preds = %do.body3455
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 216, 0\0A.popsection", ""() #10, !srcloc !366
  unreachable

do.end3477:                                       ; preds = %do.body3455
  %11 = ptrtoint ptr %v to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %v, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1229782938533634593, i64 %12)
  %cmp3481.not = icmp eq i64 %12, 1229782938533634593
  br i1 %cmp3481.not, label %do.body3498, label %do.body3489, !prof !25

do.body3489:                                      ; preds = %do.end3477
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 218, 0\0A.popsection", ""() #10, !srcloc !367
  unreachable

do.body3498:                                      ; preds = %do.end3477
  %call.i.i4682 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef 0) #10
  %call.i.i4683 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4684 = call i64 @generic_atomic64_dec_if_positive(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call.i4684)
  %cmp3504.not = icmp eq i64 %call.i4684, -1
  br i1 %cmp3504.not, label %do.body3521, label %do.body3512, !prof !25

do.body3512:                                      ; preds = %do.body3498
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 221, 0\0A.popsection", ""() #10, !srcloc !368
  unreachable

do.body3521:                                      ; preds = %do.body3498
  %13 = ptrtoint ptr %v to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %v, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %cmp3523.not = icmp eq i64 %14, 0
  br i1 %cmp3523.not, label %do.body3540, label %do.body3531, !prof !25

do.body3531:                                      ; preds = %do.body3521
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 222, 0\0A.popsection", ""() #10, !srcloc !369
  unreachable

do.body3540:                                      ; preds = %do.body3521
  %call.i.i4685 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -1) #10
  %call.i.i4686 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i4687 = call i64 @generic_atomic64_dec_if_positive(ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %call.i4687)
  %cmp3549.not = icmp eq i64 %call.i4687, -2
  br i1 %cmp3549.not, label %do.body3566, label %do.body3557, !prof !25

do.body3557:                                      ; preds = %do.body3540
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 225, 0\0A.popsection", ""() #10, !srcloc !370
  unreachable

do.body3566:                                      ; preds = %do.body3540
  %15 = ptrtoint ptr %v to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %v, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %16)
  %cmp3568.not = icmp eq i64 %16, -1
  br i1 %cmp3568.not, label %do.body3585, label %do.body3576, !prof !25

do.body3576:                                      ; preds = %do.body3566
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 226, 0\0A.popsection", ""() #10, !srcloc !371
  unreachable

do.body3585:                                      ; preds = %do.body3566
  %call.i.i4688 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef 1229782938533634594) #10
  %call.i.i4689 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i.i.i = call i64 @generic_atomic64_fetch_add_unless(ptr noundef nonnull %v, i64 noundef 1, i64 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i.i.i)
  %cmp.i.i.i.not = icmp eq i64 %call.i.i.i, 0
  br i1 %cmp.i.i.i.not, label %do.body3599, label %do.end3607, !prof !363

do.body3599:                                      ; preds = %do.body3585
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 229, 0\0A.popsection", ""() #10, !srcloc !372
  unreachable

do.end3607:                                       ; preds = %do.body3585
  %17 = ptrtoint ptr %v to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %v, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1229782938533634595, i64 %18)
  %cmp3611.not = icmp eq i64 %18, 1229782938533634595
  br i1 %cmp3611.not, label %do.body3628, label %do.body3619, !prof !25

do.body3619:                                      ; preds = %do.end3607
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 231, 0\0A.popsection", ""() #10, !srcloc !373
  unreachable

do.body3628:                                      ; preds = %do.end3607
  %call.i.i4690 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef 0) #10
  %call.i.i4691 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i.i.i4692 = call i64 @generic_atomic64_fetch_add_unless(ptr noundef nonnull %v, i64 noundef 1, i64 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i.i.i4692)
  %cmp.i.i.i4693.not = icmp eq i64 %call.i.i.i4692, 0
  br i1 %cmp.i.i.i4693.not, label %do.body3649, label %do.body3640, !prof !25

do.body3640:                                      ; preds = %do.body3628
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 234, 0\0A.popsection", ""() #10, !srcloc !374
  unreachable

do.body3649:                                      ; preds = %do.body3628
  %19 = ptrtoint ptr %v to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %v, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %20)
  %cmp3651.not = icmp eq i64 %20, 0
  br i1 %cmp3651.not, label %do.body3668, label %do.body3659, !prof !25

do.body3659:                                      ; preds = %do.body3649
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 235, 0\0A.popsection", ""() #10, !srcloc !375
  unreachable

do.body3668:                                      ; preds = %do.body3649
  %call.i.i4694 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -1) #10
  %call.i.i4695 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i.i.i4696 = call i64 @generic_atomic64_fetch_add_unless(ptr noundef nonnull %v, i64 noundef 1, i64 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i.i.i4696)
  %cmp.i.i.i4697.not = icmp eq i64 %call.i.i.i4696, 0
  br i1 %cmp.i.i.i4697.not, label %do.body3684, label %do.end3692, !prof !363

do.body3684:                                      ; preds = %do.body3668
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 238, 0\0A.popsection", ""() #10, !srcloc !376
  unreachable

do.end3692:                                       ; preds = %do.body3668
  %21 = ptrtoint ptr %v to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %v, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %22)
  %cmp3696.not = icmp eq i64 %22, 0
  br i1 %cmp3696.not, label %do.body3713, label %do.body3704, !prof !25

do.body3704:                                      ; preds = %do.end3692
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 240, 0\0A.popsection", ""() #10, !srcloc !377
  unreachable

do.body3713:                                      ; preds = %do.end3692
  %call.i.i4698 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  call void @generic_atomic64_set(ptr noundef nonnull %v, i64 noundef -9223372036854775808) #10
  %call.i.i4699 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %v, i32 noundef 8) #10
  %call.i.i.i4700 = call i64 @generic_atomic64_fetch_add_unless(ptr noundef nonnull %v, i64 noundef 1, i64 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i.i.i4700)
  %cmp.i.i.i4701.not = icmp eq i64 %call.i.i.i4700, 0
  br i1 %cmp.i.i.i4701.not, label %do.body3728, label %do.end3736, !prof !363

do.body3728:                                      ; preds = %do.body3713
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/atomic64_test.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 245, 0\0A.popsection", ""() #10, !srcloc !378
  unreachable

do.end3736:                                       ; preds = %do.body3713
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v) #10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_sub(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_or(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_and(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_xor(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_add_return(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_sub_return(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_fetch_add(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_fetch_sub(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_fetch_or(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_fetch_and(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_fetch_xor(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_xchg(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_cmpxchg(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_fetch_add_unless(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_dec_if_positive(ptr noundef) local_unnamed_addr #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind uwtable(sync) }
attributes #7 = { nomerge }
attributes #8 = { cold }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @__initcall__kmod_atomic64_test__106_273_test_atomics_init6, !1, !"__initcall__kmod_atomic64_test__106_273_test_atomics_init6", i1 false, i1 false}
!1 = !{!"../lib/atomic64_test.c", i32 273, i32 1}
!2 = !{ptr @__exitcall_test_atomics_exit, !3, !"__exitcall_test_atomics_exit", i1 false, i1 false}
!3 = !{!"../lib/atomic64_test.c", i32 274, i32 1}
!4 = !{ptr @__UNIQUE_ID_file107, !5, !"__UNIQUE_ID_file107", i1 false, i1 false}
!5 = !{!"../lib/atomic64_test.c", i32 276, i32 1}
!6 = !{ptr @__UNIQUE_ID_license108, !5, !"__UNIQUE_ID_license108", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../lib/atomic64_test.c", i32 265, i32 2}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @test_atomics_init._entry, !8, !"_entry", i1 false, i1 false}
!12 = !{ptr @test_atomics_init._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../lib/atomic64_test.c", i32 114, i32 2}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{!"auto-init"}
!24 = !{i64 2148331942, i64 2148331968, i64 2148331997, i64 2148332031, i64 2148332062, i64 2148332085}
!25 = !{!"branch_weights", i32 2000, i32 1}
!26 = !{i64 2148334407, i64 2148334433, i64 2148334462, i64 2148334496, i64 2148334527, i64 2148334550}
!27 = !{i64 2148340080, i64 2148340106, i64 2148340135, i64 2148340169, i64 2148340200, i64 2148340223}
!28 = !{i64 2148336820, i64 2148336846, i64 2148336875, i64 2148336909, i64 2148336940, i64 2148336963}
!29 = !{i64 2148341679, i64 2148341705, i64 2148341734, i64 2148341768, i64 2148341799, i64 2148341822}
!30 = !{i64 2148338436, i64 2148338462, i64 2148338491, i64 2148338525, i64 2148338556, i64 2148338579}
!31 = !{i64 2148417353}
!32 = !{i64 2148332662, i64 2148332694, i64 2148332723, i64 2148332757, i64 2148332788, i64 2148332811}
!33 = !{i64 2148417582}
!34 = !{i64 2151524329, i64 2151524813, i64 2151524366, i64 2151524422, i64 2151524456, i64 2151524480, i64 2151524521, i64 2151524542, i64 2151524570, i64 2151524604}
!35 = !{i64 2151525939, i64 2151526423, i64 2151525976, i64 2151526032, i64 2151526066, i64 2151526090, i64 2151526131, i64 2151526152, i64 2151526180, i64 2151526214}
!36 = !{i64 2148416500}
!37 = !{i64 2151527871, i64 2151528355, i64 2151527908, i64 2151527964, i64 2151527998, i64 2151528022, i64 2151528063, i64 2151528084, i64 2151528112, i64 2151528146}
!38 = !{i64 2151529481, i64 2151529965, i64 2151529518, i64 2151529574, i64 2151529608, i64 2151529632, i64 2151529673, i64 2151529694, i64 2151529722, i64 2151529756}
!39 = !{i64 2148416911}
!40 = !{i64 2151535474, i64 2151535958, i64 2151535511, i64 2151535567, i64 2151535601, i64 2151535625, i64 2151535666, i64 2151535687, i64 2151535715, i64 2151535749}
!41 = !{i64 2151537084, i64 2151537568, i64 2151537121, i64 2151537177, i64 2151537211, i64 2151537235, i64 2151537276, i64 2151537297, i64 2151537325, i64 2151537359}
!42 = !{i64 2151539016, i64 2151539500, i64 2151539053, i64 2151539109, i64 2151539143, i64 2151539167, i64 2151539208, i64 2151539229, i64 2151539257, i64 2151539291}
!43 = !{i64 2151540626, i64 2151541110, i64 2151540663, i64 2151540719, i64 2151540753, i64 2151540777, i64 2151540818, i64 2151540839, i64 2151540867, i64 2151540901}
!44 = !{i64 2151542881, i64 2151543365, i64 2151542918, i64 2151542974, i64 2151543008, i64 2151543032, i64 2151543073, i64 2151543094, i64 2151543122, i64 2151543156}
!45 = !{i64 2151544491, i64 2151544975, i64 2151544528, i64 2151544584, i64 2151544618, i64 2151544642, i64 2151544683, i64 2151544704, i64 2151544732, i64 2151544766}
!46 = !{i64 2151546407, i64 2151546891, i64 2151546444, i64 2151546500, i64 2151546534, i64 2151546558, i64 2151546599, i64 2151546620, i64 2151546648, i64 2151546682}
!47 = !{i64 2151548017, i64 2151548501, i64 2151548054, i64 2151548110, i64 2151548144, i64 2151548168, i64 2151548209, i64 2151548230, i64 2151548258, i64 2151548292}
!48 = !{i64 2151549933, i64 2151550417, i64 2151549970, i64 2151550026, i64 2151550060, i64 2151550084, i64 2151550125, i64 2151550146, i64 2151550174, i64 2151550208}
!49 = !{i64 2151551543, i64 2151552027, i64 2151551580, i64 2151551636, i64 2151551670, i64 2151551694, i64 2151551735, i64 2151551756, i64 2151551784, i64 2151551818}
!50 = !{i64 2151553459, i64 2151553943, i64 2151553496, i64 2151553552, i64 2151553586, i64 2151553610, i64 2151553651, i64 2151553672, i64 2151553700, i64 2151553734}
!51 = !{i64 2151555069, i64 2151555553, i64 2151555106, i64 2151555162, i64 2151555196, i64 2151555220, i64 2151555261, i64 2151555282, i64 2151555310, i64 2151555344}
!52 = !{i64 2148420394}
!53 = !{i64 2148335127, i64 2148335159, i64 2148335188, i64 2148335222, i64 2148335253, i64 2148335276}
!54 = !{i64 2148420623}
!55 = !{i64 2151557360, i64 2151557844, i64 2151557397, i64 2151557453, i64 2151557487, i64 2151557511, i64 2151557552, i64 2151557573, i64 2151557601, i64 2151557635}
!56 = !{i64 2151558970, i64 2151559454, i64 2151559007, i64 2151559063, i64 2151559097, i64 2151559121, i64 2151559162, i64 2151559183, i64 2151559211, i64 2151559245}
!57 = !{i64 2148419541}
!58 = !{i64 2151560902, i64 2151561386, i64 2151560939, i64 2151560995, i64 2151561029, i64 2151561053, i64 2151561094, i64 2151561115, i64 2151561143, i64 2151561177}
!59 = !{i64 2151562512, i64 2151567057, i64 2151562549, i64 2151562605, i64 2151562639, i64 2151562663, i64 2151562704, i64 2151562725, i64 2151562753, i64 2151562787}
!60 = !{i64 2148419952}
!61 = !{i64 2151568505, i64 2151568989, i64 2151568542, i64 2151568598, i64 2151568632, i64 2151568656, i64 2151568697, i64 2151568718, i64 2151568746, i64 2151568780}
!62 = !{i64 2151570115, i64 2151570599, i64 2151570152, i64 2151570208, i64 2151570242, i64 2151570266, i64 2151570307, i64 2151570328, i64 2151570356, i64 2151570390}
!63 = !{i64 2151572047, i64 2151572531, i64 2151572084, i64 2151572140, i64 2151572174, i64 2151572198, i64 2151572239, i64 2151572260, i64 2151572288, i64 2151572322}
!64 = !{i64 2151573657, i64 2151574141, i64 2151573694, i64 2151573750, i64 2151573784, i64 2151573808, i64 2151573849, i64 2151573870, i64 2151573898, i64 2151573932}
!65 = !{i64 2151575912, i64 2151576396, i64 2151575949, i64 2151576005, i64 2151576039, i64 2151576063, i64 2151576104, i64 2151576125, i64 2151576153, i64 2151576187}
!66 = !{i64 2151577522, i64 2151578006, i64 2151577559, i64 2151577615, i64 2151577649, i64 2151577673, i64 2151577714, i64 2151577735, i64 2151577763, i64 2151577797}
!67 = !{i64 2151579438, i64 2151579922, i64 2151579475, i64 2151579531, i64 2151579565, i64 2151579589, i64 2151579630, i64 2151579651, i64 2151579679, i64 2151579713}
!68 = !{i64 2151581048, i64 2151581532, i64 2151581085, i64 2151581141, i64 2151581175, i64 2151581199, i64 2151581240, i64 2151581261, i64 2151581289, i64 2151581323}
!69 = !{i64 2151582964, i64 2151583448, i64 2151583001, i64 2151583057, i64 2151583091, i64 2151583115, i64 2151583156, i64 2151583177, i64 2151583205, i64 2151583239}
!70 = !{i64 2151584574, i64 2151585058, i64 2151584611, i64 2151584667, i64 2151584701, i64 2151584725, i64 2151584766, i64 2151584787, i64 2151584815, i64 2151584849}
!71 = !{i64 2151586490, i64 2151586974, i64 2151586527, i64 2151586583, i64 2151586617, i64 2151586641, i64 2151586682, i64 2151586703, i64 2151586731, i64 2151586765}
!72 = !{i64 2151588100, i64 2151588584, i64 2151588137, i64 2151588193, i64 2151588227, i64 2151588251, i64 2151588292, i64 2151588313, i64 2151588341, i64 2151588375}
!73 = !{i64 2148418873}
!74 = !{i64 2148333472, i64 2148333504, i64 2148333533, i64 2148333567, i64 2148333598, i64 2148333621}
!75 = !{i64 2148419101}
!76 = !{i64 2151590380, i64 2151590864, i64 2151590417, i64 2151590473, i64 2151590507, i64 2151590531, i64 2151590572, i64 2151590593, i64 2151590621, i64 2151590655}
!77 = !{i64 2151591990, i64 2151592474, i64 2151592027, i64 2151592083, i64 2151592117, i64 2151592141, i64 2151592182, i64 2151592203, i64 2151592231, i64 2151592265}
!78 = !{i64 2148418021}
!79 = !{i64 2151593920, i64 2151594404, i64 2151593957, i64 2151594013, i64 2151594047, i64 2151594071, i64 2151594112, i64 2151594133, i64 2151594161, i64 2151594195}
!80 = !{i64 2151595530, i64 2151600075, i64 2151595567, i64 2151595623, i64 2151595657, i64 2151595681, i64 2151595722, i64 2151595743, i64 2151595771, i64 2151595805}
!81 = !{i64 2148418432}
!82 = !{i64 2151601521, i64 2151602005, i64 2151601558, i64 2151601614, i64 2151601648, i64 2151601672, i64 2151601713, i64 2151601734, i64 2151601762, i64 2151601796}
!83 = !{i64 2151603131, i64 2151603615, i64 2151603168, i64 2151603224, i64 2151603258, i64 2151603282, i64 2151603323, i64 2151603344, i64 2151603372, i64 2151603406}
!84 = !{i64 2151605061, i64 2151605545, i64 2151605098, i64 2151605154, i64 2151605188, i64 2151605212, i64 2151605253, i64 2151605274, i64 2151605302, i64 2151605336}
!85 = !{i64 2151606671, i64 2151607155, i64 2151606708, i64 2151606764, i64 2151606798, i64 2151606822, i64 2151606863, i64 2151606884, i64 2151606912, i64 2151606946}
!86 = !{i64 2151608915, i64 2151609399, i64 2151608952, i64 2151609008, i64 2151609042, i64 2151609066, i64 2151609107, i64 2151609128, i64 2151609156, i64 2151609190}
!87 = !{i64 2151610525, i64 2151611009, i64 2151610562, i64 2151610618, i64 2151610652, i64 2151610676, i64 2151610717, i64 2151610738, i64 2151610766, i64 2151610800}
!88 = !{i64 2151612439, i64 2151612923, i64 2151612476, i64 2151612532, i64 2151612566, i64 2151612590, i64 2151612631, i64 2151612652, i64 2151612680, i64 2151612714}
!89 = !{i64 2151614049, i64 2151614533, i64 2151614086, i64 2151614142, i64 2151614176, i64 2151614200, i64 2151614241, i64 2151614262, i64 2151614290, i64 2151614324}
!90 = !{i64 2151615963, i64 2151616447, i64 2151616000, i64 2151616056, i64 2151616090, i64 2151616114, i64 2151616155, i64 2151616176, i64 2151616204, i64 2151616238}
!91 = !{i64 2151617573, i64 2151618057, i64 2151617610, i64 2151617666, i64 2151617700, i64 2151617724, i64 2151617765, i64 2151617786, i64 2151617814, i64 2151617848}
!92 = !{i64 2151619487, i64 2151619971, i64 2151619524, i64 2151619580, i64 2151619614, i64 2151619638, i64 2151619679, i64 2151619700, i64 2151619728, i64 2151619762}
!93 = !{i64 2151621097, i64 2151621581, i64 2151621134, i64 2151621190, i64 2151621224, i64 2151621248, i64 2151621289, i64 2151621310, i64 2151621338, i64 2151621372}
!94 = !{i64 2148421914}
!95 = !{i64 2148335937, i64 2148335969, i64 2148335998, i64 2148336032, i64 2148336063, i64 2148336086}
!96 = !{i64 2148422142}
!97 = !{i64 2151623377, i64 2151623861, i64 2151623414, i64 2151623470, i64 2151623504, i64 2151623528, i64 2151623569, i64 2151623590, i64 2151623618, i64 2151623652}
!98 = !{i64 2151624987, i64 2151625471, i64 2151625024, i64 2151625080, i64 2151625114, i64 2151625138, i64 2151625179, i64 2151625200, i64 2151625228, i64 2151625262}
!99 = !{i64 2148421062}
!100 = !{i64 2151626917, i64 2151627401, i64 2151626954, i64 2151627010, i64 2151627044, i64 2151627068, i64 2151627109, i64 2151627130, i64 2151627158, i64 2151627192}
!101 = !{i64 2151628527, i64 2151633072, i64 2151628564, i64 2151628620, i64 2151628654, i64 2151628678, i64 2151628719, i64 2151628740, i64 2151628768, i64 2151628802}
!102 = !{i64 2148421473}
!103 = !{i64 2151634518, i64 2151635002, i64 2151634555, i64 2151634611, i64 2151634645, i64 2151634669, i64 2151634710, i64 2151634731, i64 2151634759, i64 2151634793}
!104 = !{i64 2151636128, i64 2151636612, i64 2151636165, i64 2151636221, i64 2151636255, i64 2151636279, i64 2151636320, i64 2151636341, i64 2151636369, i64 2151636403}
!105 = !{i64 2151638058, i64 2151638542, i64 2151638095, i64 2151638151, i64 2151638185, i64 2151638209, i64 2151638250, i64 2151638271, i64 2151638299, i64 2151638333}
!106 = !{i64 2151639668, i64 2151640152, i64 2151639705, i64 2151639761, i64 2151639795, i64 2151639819, i64 2151639860, i64 2151639881, i64 2151639909, i64 2151639943}
!107 = !{i64 2151641912, i64 2151642396, i64 2151641949, i64 2151642005, i64 2151642039, i64 2151642063, i64 2151642104, i64 2151642125, i64 2151642153, i64 2151642187}
!108 = !{i64 2151643522, i64 2151644006, i64 2151643559, i64 2151643615, i64 2151643649, i64 2151643673, i64 2151643714, i64 2151643735, i64 2151643763, i64 2151643797}
!109 = !{i64 2151645436, i64 2151645920, i64 2151645473, i64 2151645529, i64 2151645563, i64 2151645587, i64 2151645628, i64 2151645649, i64 2151645677, i64 2151645711}
!110 = !{i64 2151647046, i64 2151647530, i64 2151647083, i64 2151647139, i64 2151647173, i64 2151647197, i64 2151647238, i64 2151647259, i64 2151647287, i64 2151647321}
!111 = !{i64 2151648960, i64 2151649444, i64 2151648997, i64 2151649053, i64 2151649087, i64 2151649111, i64 2151649152, i64 2151649173, i64 2151649201, i64 2151649235}
!112 = !{i64 2151650570, i64 2151651054, i64 2151650607, i64 2151650663, i64 2151650697, i64 2151650721, i64 2151650762, i64 2151650783, i64 2151650811, i64 2151650845}
!113 = !{i64 2151652484, i64 2151652968, i64 2151652521, i64 2151652577, i64 2151652611, i64 2151652635, i64 2151652676, i64 2151652697, i64 2151652725, i64 2151652759}
!114 = !{i64 2151654094, i64 2151654578, i64 2151654131, i64 2151654187, i64 2151654221, i64 2151654245, i64 2151654286, i64 2151654307, i64 2151654335, i64 2151654369}
!115 = !{i64 2148430732}
!116 = !{i64 2148340800, i64 2148340832, i64 2148340861, i64 2148340895, i64 2148340926, i64 2148340949}
!117 = !{i64 2148430959}
!118 = !{i64 2151656311, i64 2151656795, i64 2151656348, i64 2151656404, i64 2151656438, i64 2151656462, i64 2151656503, i64 2151656524, i64 2151656552, i64 2151656586}
!119 = !{i64 2151657921, i64 2151658405, i64 2151657958, i64 2151658014, i64 2151658048, i64 2151658072, i64 2151658113, i64 2151658134, i64 2151658162, i64 2151658196}
!120 = !{i64 2148429881}
!121 = !{i64 2151659822, i64 2151660306, i64 2151659859, i64 2151659915, i64 2151659949, i64 2151659973, i64 2151660014, i64 2151660035, i64 2151660063, i64 2151660097}
!122 = !{i64 2151661432, i64 2151665977, i64 2151661469, i64 2151661525, i64 2151661559, i64 2151661583, i64 2151661624, i64 2151661645, i64 2151661673, i64 2151661707}
!123 = !{i64 2148430292}
!124 = !{i64 2151667394, i64 2151667878, i64 2151667431, i64 2151667487, i64 2151667521, i64 2151667545, i64 2151667586, i64 2151667607, i64 2151667635, i64 2151667669}
!125 = !{i64 2151669004, i64 2151669488, i64 2151669041, i64 2151669097, i64 2151669131, i64 2151669155, i64 2151669196, i64 2151669217, i64 2151669245, i64 2151669279}
!126 = !{i64 2151670905, i64 2151671389, i64 2151670942, i64 2151670998, i64 2151671032, i64 2151671056, i64 2151671097, i64 2151671118, i64 2151671146, i64 2151671180}
!127 = !{i64 2151672515, i64 2151672999, i64 2151672552, i64 2151672608, i64 2151672642, i64 2151672666, i64 2151672707, i64 2151672728, i64 2151672756, i64 2151672790}
!128 = !{i64 2148427687}
!129 = !{i64 2148337543, i64 2148337575, i64 2148337604, i64 2148337638, i64 2148337669, i64 2148337692}
!130 = !{i64 2148427915}
!131 = !{i64 2151674741, i64 2151675225, i64 2151674778, i64 2151674834, i64 2151674868, i64 2151674892, i64 2151674933, i64 2151674954, i64 2151674982, i64 2151675016}
!132 = !{i64 2151676351, i64 2151676835, i64 2151676388, i64 2151676444, i64 2151676478, i64 2151676502, i64 2151676543, i64 2151676564, i64 2151676592, i64 2151676626}
!133 = !{i64 2148426835}
!134 = !{i64 2151678257, i64 2151678741, i64 2151678294, i64 2151678350, i64 2151678384, i64 2151678408, i64 2151678449, i64 2151678470, i64 2151678498, i64 2151678532}
!135 = !{i64 2151679867, i64 2151680351, i64 2151679904, i64 2151679960, i64 2151679994, i64 2151680018, i64 2151680059, i64 2151680080, i64 2151680108, i64 2151680142}
!136 = !{i64 2148427246}
!137 = !{i64 2151681773, i64 2151682257, i64 2151681810, i64 2151681866, i64 2151681900, i64 2151681924, i64 2151681965, i64 2151681986, i64 2151682014, i64 2151682048}
!138 = !{i64 2151683383, i64 2151683867, i64 2151683420, i64 2151683476, i64 2151683510, i64 2151683534, i64 2151683575, i64 2151683596, i64 2151683624, i64 2151683658}
!139 = !{i64 2151685289, i64 2151685773, i64 2151685326, i64 2151685382, i64 2151685416, i64 2151685440, i64 2151685481, i64 2151685502, i64 2151685530, i64 2151685564}
!140 = !{i64 2151686899, i64 2151687383, i64 2151686936, i64 2151686992, i64 2151687026, i64 2151687050, i64 2151687091, i64 2151687112, i64 2151687140, i64 2151687174}
!141 = !{i64 2148429212}
!142 = !{i64 2148339187, i64 2148339219, i64 2148339248, i64 2148339282, i64 2148339313, i64 2148339336}
!143 = !{i64 2148429443}
!144 = !{i64 2151689164, i64 2151689648, i64 2151689201, i64 2151689257, i64 2151689291, i64 2151689315, i64 2151689356, i64 2151689377, i64 2151689405, i64 2151689439}
!145 = !{i64 2151690774, i64 2151691258, i64 2151690811, i64 2151690867, i64 2151690901, i64 2151690925, i64 2151690966, i64 2151690987, i64 2151691015, i64 2151691049}
!146 = !{i64 2148428357}
!147 = !{i64 2151692697, i64 2151693181, i64 2151692734, i64 2151692790, i64 2151692824, i64 2151692848, i64 2151692889, i64 2151692910, i64 2151692938, i64 2151692972}
!148 = !{i64 2151694307, i64 2151698852, i64 2151694344, i64 2151694400, i64 2151694434, i64 2151694458, i64 2151694499, i64 2151694520, i64 2151694548, i64 2151694582}
!149 = !{i64 2148428768}
!150 = !{i64 2151700291, i64 2151700775, i64 2151700328, i64 2151700384, i64 2151700418, i64 2151700442, i64 2151700483, i64 2151700504, i64 2151700532, i64 2151700566}
!151 = !{i64 2151701901, i64 2151702385, i64 2151701938, i64 2151701994, i64 2151702028, i64 2151702052, i64 2151702093, i64 2151702114, i64 2151702142, i64 2151702176}
!152 = !{i64 2151703824, i64 2151704308, i64 2151703861, i64 2151703917, i64 2151703951, i64 2151703975, i64 2151704016, i64 2151704037, i64 2151704065, i64 2151704099}
!153 = !{i64 2151705434, i64 2151705918, i64 2151705471, i64 2151705527, i64 2151705561, i64 2151705585, i64 2151705626, i64 2151705647, i64 2151705675, i64 2151705709}
!154 = !{i64 2148432250}
!155 = !{i64 2148342402, i64 2148342434, i64 2148342463, i64 2148342497, i64 2148342528, i64 2148342551}
!156 = !{i64 2148432478}
!157 = !{i64 2151707660, i64 2151708144, i64 2151707697, i64 2151707753, i64 2151707787, i64 2151707811, i64 2151707852, i64 2151707873, i64 2151707901, i64 2151707935}
!158 = !{i64 2151709270, i64 2151709754, i64 2151709307, i64 2151709363, i64 2151709397, i64 2151709421, i64 2151709462, i64 2151709483, i64 2151709511, i64 2151709545}
!159 = !{i64 2148431398}
!160 = !{i64 2151711176, i64 2151711660, i64 2151711213, i64 2151711269, i64 2151711303, i64 2151711327, i64 2151711368, i64 2151711389, i64 2151711417, i64 2151711451}
!161 = !{i64 2151712786, i64 2151713270, i64 2151712823, i64 2151712879, i64 2151712913, i64 2151712937, i64 2151712978, i64 2151712999, i64 2151713027, i64 2151713061}
!162 = !{i64 2148431809}
!163 = !{i64 2151714692, i64 2151715176, i64 2151714729, i64 2151714785, i64 2151714819, i64 2151714843, i64 2151714884, i64 2151714905, i64 2151714933, i64 2151714967}
!164 = !{i64 2151716302, i64 2151716786, i64 2151716339, i64 2151716395, i64 2151716429, i64 2151716453, i64 2151716494, i64 2151716515, i64 2151716543, i64 2151716577}
!165 = !{i64 2151718208, i64 2151718692, i64 2151718245, i64 2151718301, i64 2151718335, i64 2151718359, i64 2151718400, i64 2151718421, i64 2151718449, i64 2151718483}
!166 = !{i64 2151719818, i64 2151720302, i64 2151719855, i64 2151719911, i64 2151719945, i64 2151719969, i64 2151720010, i64 2151720031, i64 2151720059, i64 2151720093}
!167 = !{i64 2151722179, i64 2151722663, i64 2151722216, i64 2151722272, i64 2151722306, i64 2151722330, i64 2151722371, i64 2151722392, i64 2151722420, i64 2151722454}
!168 = !{i64 2151723811, i64 2151724295, i64 2151723848, i64 2151723904, i64 2151723938, i64 2151723962, i64 2151724003, i64 2151724024, i64 2151724052, i64 2151724086}
!169 = !{i64 2151725739, i64 2151726223, i64 2151725776, i64 2151725832, i64 2151725866, i64 2151725890, i64 2151725931, i64 2151725952, i64 2151725980, i64 2151726014}
!170 = !{i64 2151731432, i64 2151731916, i64 2151731469, i64 2151731525, i64 2151731559, i64 2151731583, i64 2151731624, i64 2151731645, i64 2151731673, i64 2151731707}
!171 = !{i64 2151733360, i64 2151733844, i64 2151733397, i64 2151733453, i64 2151733487, i64 2151733511, i64 2151733552, i64 2151733573, i64 2151733601, i64 2151733635}
!172 = !{i64 2151734992, i64 2151735476, i64 2151735029, i64 2151735085, i64 2151735119, i64 2151735143, i64 2151735184, i64 2151735205, i64 2151735233, i64 2151735267}
!173 = !{i64 2151736920, i64 2151737404, i64 2151736957, i64 2151737013, i64 2151737047, i64 2151737071, i64 2151737112, i64 2151737133, i64 2151737161, i64 2151737195}
!174 = !{i64 2151738552, i64 2151739036, i64 2151738589, i64 2151738645, i64 2151738679, i64 2151738703, i64 2151738744, i64 2151738765, i64 2151738793, i64 2151738827}
!175 = !{i64 2151740913, i64 2151741397, i64 2151740950, i64 2151741006, i64 2151741040, i64 2151741064, i64 2151741105, i64 2151741126, i64 2151741154, i64 2151741188}
!176 = !{i64 2151742545, i64 2151743029, i64 2151742582, i64 2151742638, i64 2151742672, i64 2151742696, i64 2151742737, i64 2151742758, i64 2151742786, i64 2151742820}
!177 = !{i64 2151744473, i64 2151744957, i64 2151744510, i64 2151744566, i64 2151744600, i64 2151744624, i64 2151744665, i64 2151744686, i64 2151744714, i64 2151744748}
!178 = !{i64 2151746105, i64 2151746589, i64 2151746142, i64 2151746198, i64 2151746232, i64 2151746256, i64 2151746297, i64 2151746318, i64 2151746346, i64 2151746380}
!179 = !{i64 2151748033, i64 2151748517, i64 2151748070, i64 2151748126, i64 2151748160, i64 2151748184, i64 2151748225, i64 2151748246, i64 2151748274, i64 2151748308}
!180 = !{i64 2151749665, i64 2151750149, i64 2151749702, i64 2151749758, i64 2151749792, i64 2151749816, i64 2151749857, i64 2151749878, i64 2151749906, i64 2151749940}
!181 = !{i64 2151751593, i64 2151752077, i64 2151751630, i64 2151751686, i64 2151751720, i64 2151751744, i64 2151751785, i64 2151751806, i64 2151751834, i64 2151751868}
!182 = !{i64 2151753225, i64 2151753709, i64 2151753262, i64 2151753318, i64 2151753352, i64 2151753376, i64 2151753417, i64 2151753438, i64 2151753466, i64 2151753500}
!183 = !{i64 2148591782}
!184 = !{i64 838710, i64 838727, i64 838751, i64 838777, i64 838795}
!185 = !{i64 2148592152}
!186 = !{i64 2151755429, i64 2151755913, i64 2151755466, i64 2151755522, i64 2151755556, i64 2151755580, i64 2151755621, i64 2151755642, i64 2151755670, i64 2151755704}
!187 = !{i64 2151757041, i64 2151757525, i64 2151757078, i64 2151757134, i64 2151757168, i64 2151757192, i64 2151757233, i64 2151757254, i64 2151757282, i64 2151757316}
!188 = !{i64 2148593094}
!189 = !{i64 2148593464}
!190 = !{i64 2151758896, i64 2151759380, i64 2151758933, i64 2151758989, i64 2151759023, i64 2151759047, i64 2151759088, i64 2151759109, i64 2151759137, i64 2151759171}
!191 = !{i64 2151760508, i64 2151765053, i64 2151760545, i64 2151760601, i64 2151760635, i64 2151760659, i64 2151760700, i64 2151760721, i64 2151760749, i64 2151760783}
!192 = !{i64 2148594423}
!193 = !{i64 2148594793}
!194 = !{i64 2151766424, i64 2151766908, i64 2151766461, i64 2151766517, i64 2151766551, i64 2151766575, i64 2151766616, i64 2151766637, i64 2151766665, i64 2151766699}
!195 = !{i64 2151768036, i64 2151768520, i64 2151768073, i64 2151768129, i64 2151768163, i64 2151768187, i64 2151768228, i64 2151768249, i64 2151768277, i64 2151768311}
!196 = !{i64 2148595735}
!197 = !{i64 2148596105}
!198 = !{i64 2151769891, i64 2151770375, i64 2151769928, i64 2151769984, i64 2151770018, i64 2151770042, i64 2151770083, i64 2151770104, i64 2151770132, i64 2151770166}
!199 = !{i64 2151771503, i64 2151771987, i64 2151771540, i64 2151771596, i64 2151771630, i64 2151771654, i64 2151771695, i64 2151771716, i64 2151771744, i64 2151771778}
!200 = !{i64 2148433765}
!201 = !{i64 817455, i64 817479, i64 817500, i64 817517, i64 817534}
!202 = !{i64 2148433991}
!203 = !{i64 2151773891, i64 2151774375, i64 2151773928, i64 2151773984, i64 2151774018, i64 2151774042, i64 2151774083, i64 2151774104, i64 2151774132, i64 2151774166}
!204 = !{i64 2151775503, i64 2151775987, i64 2151775540, i64 2151775596, i64 2151775630, i64 2151775654, i64 2151775695, i64 2151775716, i64 2151775744, i64 2151775778}
!205 = !{i64 2148432915}
!206 = !{i64 2151777388, i64 2151777872, i64 2151777425, i64 2151777481, i64 2151777515, i64 2151777539, i64 2151777580, i64 2151777601, i64 2151777629, i64 2151777663}
!207 = !{i64 2151779000, i64 2151779484, i64 2151779037, i64 2151779093, i64 2151779127, i64 2151779151, i64 2151779192, i64 2151779213, i64 2151779241, i64 2151779275}
!208 = !{i64 2148433326}
!209 = !{i64 2151780885, i64 2151781369, i64 2151780922, i64 2151780978, i64 2151781012, i64 2151781036, i64 2151781077, i64 2151781098, i64 2151781126, i64 2151781160}
!210 = !{i64 2151782497, i64 2151782981, i64 2151782534, i64 2151782590, i64 2151782624, i64 2151782648, i64 2151782689, i64 2151782710, i64 2151782738, i64 2151782772}
!211 = !{i64 2151784382, i64 2151784866, i64 2151784419, i64 2151784475, i64 2151784509, i64 2151784533, i64 2151784574, i64 2151784595, i64 2151784623, i64 2151784657}
!212 = !{i64 2151785994, i64 2151786478, i64 2151786031, i64 2151786087, i64 2151786121, i64 2151786145, i64 2151786186, i64 2151786207, i64 2151786235, i64 2151786269}
!213 = !{i64 2151788198, i64 2151788682, i64 2151788235, i64 2151788291, i64 2151788325, i64 2151788349, i64 2151788390, i64 2151788411, i64 2151788439, i64 2151788473}
!214 = !{i64 2151789810, i64 2151790294, i64 2151789847, i64 2151789903, i64 2151789937, i64 2151789961, i64 2151790002, i64 2151790023, i64 2151790051, i64 2151790085}
!215 = !{i64 2151791713, i64 2151792197, i64 2151791750, i64 2151791806, i64 2151791840, i64 2151791864, i64 2151791905, i64 2151791926, i64 2151791954, i64 2151791988}
!216 = !{i64 2151793325, i64 2151793809, i64 2151793362, i64 2151793418, i64 2151793452, i64 2151793476, i64 2151793517, i64 2151793538, i64 2151793566, i64 2151793600}
!217 = !{i64 2151799289, i64 2151799773, i64 2151799326, i64 2151799382, i64 2151799416, i64 2151799440, i64 2151799481, i64 2151799502, i64 2151799530, i64 2151799564}
!218 = !{i64 2151800901, i64 2151801385, i64 2151800938, i64 2151800994, i64 2151801028, i64 2151801052, i64 2151801093, i64 2151801114, i64 2151801142, i64 2151801176}
!219 = !{i64 2151802804, i64 2151803288, i64 2151802841, i64 2151802897, i64 2151802931, i64 2151802955, i64 2151802996, i64 2151803017, i64 2151803045, i64 2151803079}
!220 = !{i64 2151804416, i64 2151804900, i64 2151804453, i64 2151804509, i64 2151804543, i64 2151804567, i64 2151804608, i64 2151804629, i64 2151804657, i64 2151804691}
!221 = !{i64 2151807787, i64 2151808271, i64 2151807824, i64 2151807880, i64 2151807914, i64 2151807938, i64 2151807979, i64 2151808000, i64 2151808028, i64 2151808062}
!222 = !{i64 2151809387, i64 2151809871, i64 2151809424, i64 2151809480, i64 2151809514, i64 2151809538, i64 2151809579, i64 2151809600, i64 2151809628, i64 2151809662}
!223 = !{i64 2151819660, i64 2151820144, i64 2151819697, i64 2151819753, i64 2151819787, i64 2151819811, i64 2151819852, i64 2151819873, i64 2151819901, i64 2151819935}
!224 = !{i64 2151821276, i64 2151821760, i64 2151821313, i64 2151821369, i64 2151821403, i64 2151821427, i64 2151821468, i64 2151821489, i64 2151821517, i64 2151821551}
!225 = !{i64 2151823225, i64 2151823709, i64 2151823262, i64 2151823318, i64 2151823352, i64 2151823376, i64 2151823417, i64 2151823438, i64 2151823466, i64 2151823500}
!226 = !{i64 2151824841, i64 2151825325, i64 2151824878, i64 2151824934, i64 2151824968, i64 2151824992, i64 2151825033, i64 2151825054, i64 2151825082, i64 2151825116}
!227 = !{i64 2151830851, i64 2151831335, i64 2151830888, i64 2151830944, i64 2151830978, i64 2151831002, i64 2151831043, i64 2151831064, i64 2151831092, i64 2151831126}
!228 = !{i64 2151832467, i64 2151832951, i64 2151832504, i64 2151832560, i64 2151832594, i64 2151832618, i64 2151832659, i64 2151832680, i64 2151832708, i64 2151832742}
!229 = !{i64 2151834416, i64 2151834900, i64 2151834453, i64 2151834509, i64 2151834543, i64 2151834567, i64 2151834608, i64 2151834629, i64 2151834657, i64 2151834691}
!230 = !{i64 2151836032, i64 2151836516, i64 2151836069, i64 2151836125, i64 2151836159, i64 2151836183, i64 2151836224, i64 2151836245, i64 2151836273, i64 2151836307}
!231 = !{i64 2151838319, i64 2151838803, i64 2151838356, i64 2151838412, i64 2151838446, i64 2151838470, i64 2151838511, i64 2151838532, i64 2151838560, i64 2151838594}
!232 = !{i64 2151839935, i64 2151840419, i64 2151839972, i64 2151840028, i64 2151840062, i64 2151840086, i64 2151840127, i64 2151840148, i64 2151840176, i64 2151840210}
!233 = !{i64 2151841868, i64 2151842352, i64 2151841905, i64 2151841961, i64 2151841995, i64 2151842019, i64 2151842060, i64 2151842081, i64 2151842109, i64 2151842143}
!234 = !{i64 2151843484, i64 2151843968, i64 2151843521, i64 2151843577, i64 2151843611, i64 2151843635, i64 2151843676, i64 2151843697, i64 2151843725, i64 2151843759}
!235 = !{i64 2151845417, i64 2151845901, i64 2151845454, i64 2151845510, i64 2151845544, i64 2151845568, i64 2151845609, i64 2151845630, i64 2151845658, i64 2151845692}
!236 = !{i64 2151847033, i64 2151847517, i64 2151847070, i64 2151847126, i64 2151847160, i64 2151847184, i64 2151847225, i64 2151847246, i64 2151847274, i64 2151847308}
!237 = !{i64 2151848966, i64 2151849450, i64 2151849003, i64 2151849059, i64 2151849093, i64 2151849117, i64 2151849158, i64 2151849179, i64 2151849207, i64 2151849241}
!238 = !{i64 2151850582, i64 2151851066, i64 2151850619, i64 2151850675, i64 2151850709, i64 2151850733, i64 2151850774, i64 2151850795, i64 2151850823, i64 2151850857}
!239 = !{i64 2151852905, i64 2151853389, i64 2151852942, i64 2151852998, i64 2151853032, i64 2151853056, i64 2151853097, i64 2151853118, i64 2151853146, i64 2151853180}
!240 = !{i64 2151854521, i64 2151855005, i64 2151854558, i64 2151854614, i64 2151854648, i64 2151854672, i64 2151854713, i64 2151854734, i64 2151854762, i64 2151854796}
!241 = !{i64 2151856470, i64 2151856954, i64 2151856507, i64 2151856563, i64 2151856597, i64 2151856621, i64 2151856662, i64 2151856683, i64 2151856711, i64 2151856745}
!242 = !{i64 2151862147, i64 2151862631, i64 2151862184, i64 2151862240, i64 2151862274, i64 2151862298, i64 2151862339, i64 2151862360, i64 2151862388, i64 2151862422}
!243 = !{i64 2151864096, i64 2151864580, i64 2151864133, i64 2151864189, i64 2151864223, i64 2151864247, i64 2151864288, i64 2151864309, i64 2151864337, i64 2151864371}
!244 = !{i64 2151865712, i64 2151866196, i64 2151865749, i64 2151865805, i64 2151865839, i64 2151865863, i64 2151865904, i64 2151865925, i64 2151865953, i64 2151865987}
!245 = !{i64 2151867661, i64 2151868145, i64 2151867698, i64 2151867754, i64 2151867788, i64 2151867812, i64 2151867853, i64 2151867874, i64 2151867902, i64 2151867936}
!246 = !{i64 2151869277, i64 2151869761, i64 2151869314, i64 2151869370, i64 2151869404, i64 2151869428, i64 2151869469, i64 2151869490, i64 2151869518, i64 2151869552}
!247 = !{i64 2151871564, i64 2151872048, i64 2151871601, i64 2151871657, i64 2151871691, i64 2151871715, i64 2151871756, i64 2151871777, i64 2151871805, i64 2151871839}
!248 = !{i64 2151873180, i64 2151873664, i64 2151873217, i64 2151873273, i64 2151873307, i64 2151873331, i64 2151873372, i64 2151873393, i64 2151873421, i64 2151873455}
!249 = !{i64 2151875113, i64 2151875597, i64 2151875150, i64 2151875206, i64 2151875240, i64 2151875264, i64 2151875305, i64 2151875326, i64 2151875354, i64 2151875388}
!250 = !{i64 2151876729, i64 2151877213, i64 2151876766, i64 2151876822, i64 2151876856, i64 2151876880, i64 2151876921, i64 2151876942, i64 2151876970, i64 2151877004}
!251 = !{i64 2151878662, i64 2151879146, i64 2151878699, i64 2151878755, i64 2151878789, i64 2151878813, i64 2151878854, i64 2151878875, i64 2151878903, i64 2151878937}
!252 = !{i64 2151880278, i64 2151880762, i64 2151880315, i64 2151880371, i64 2151880405, i64 2151880429, i64 2151880470, i64 2151880491, i64 2151880519, i64 2151880553}
!253 = !{i64 2151882211, i64 2151882695, i64 2151882248, i64 2151882304, i64 2151882338, i64 2151882362, i64 2151882403, i64 2151882424, i64 2151882452, i64 2151882486}
!254 = !{i64 2151883827, i64 2151884311, i64 2151883864, i64 2151883920, i64 2151883954, i64 2151883978, i64 2151884019, i64 2151884040, i64 2151884068, i64 2151884102}
!255 = !{i64 2151886139, i64 2151886623, i64 2151886176, i64 2151886232, i64 2151886266, i64 2151886290, i64 2151886331, i64 2151886352, i64 2151886380, i64 2151886414}
!256 = !{i64 2151887755, i64 2151888239, i64 2151887792, i64 2151887848, i64 2151887882, i64 2151887906, i64 2151887947, i64 2151887968, i64 2151887996, i64 2151888030}
!257 = !{i64 2151893763, i64 2151894247, i64 2151893800, i64 2151893856, i64 2151893890, i64 2151893914, i64 2151893955, i64 2151893976, i64 2151894004, i64 2151894038}
!258 = !{i64 2151895379, i64 2151895863, i64 2151895416, i64 2151895472, i64 2151895506, i64 2151895530, i64 2151895571, i64 2151895592, i64 2151895620, i64 2151895654}
!259 = !{i64 2151897326, i64 2151897810, i64 2151897363, i64 2151897419, i64 2151897453, i64 2151897477, i64 2151897518, i64 2151897539, i64 2151897567, i64 2151897601}
!260 = !{i64 2151898942, i64 2151899426, i64 2151898979, i64 2151899035, i64 2151899069, i64 2151899093, i64 2151899134, i64 2151899155, i64 2151899183, i64 2151899217}
!261 = !{i64 2151900889, i64 2151901373, i64 2151900926, i64 2151900982, i64 2151901016, i64 2151901040, i64 2151901081, i64 2151901102, i64 2151901130, i64 2151901164}
!262 = !{i64 2151902505, i64 2151902989, i64 2151902542, i64 2151902598, i64 2151902632, i64 2151902656, i64 2151902697, i64 2151902718, i64 2151902746, i64 2151902780}
!263 = !{i64 2151904781, i64 2151905265, i64 2151904818, i64 2151904874, i64 2151904908, i64 2151904932, i64 2151904973, i64 2151904994, i64 2151905022, i64 2151905056}
!264 = !{i64 2151906397, i64 2151906881, i64 2151906434, i64 2151906490, i64 2151906524, i64 2151906548, i64 2151906589, i64 2151906610, i64 2151906638, i64 2151906672}
!265 = !{i64 2151908328, i64 2151908812, i64 2151908365, i64 2151908421, i64 2151908455, i64 2151908479, i64 2151908520, i64 2151908541, i64 2151908569, i64 2151908603}
!266 = !{i64 2151909944, i64 2151910428, i64 2151909981, i64 2151910037, i64 2151910071, i64 2151910095, i64 2151910136, i64 2151910157, i64 2151910185, i64 2151910219}
!267 = !{i64 2151911875, i64 2151912359, i64 2151911912, i64 2151911968, i64 2151912002, i64 2151912026, i64 2151912067, i64 2151912088, i64 2151912116, i64 2151912150}
!268 = !{i64 2151913491, i64 2151913975, i64 2151913528, i64 2151913584, i64 2151913618, i64 2151913642, i64 2151913683, i64 2151913704, i64 2151913732, i64 2151913766}
!269 = !{i64 2151915422, i64 2151915906, i64 2151915459, i64 2151915515, i64 2151915549, i64 2151915573, i64 2151915614, i64 2151915635, i64 2151915663, i64 2151915697}
!270 = !{i64 2151917038, i64 2151917522, i64 2151917075, i64 2151917131, i64 2151917165, i64 2151917189, i64 2151917230, i64 2151917251, i64 2151917279, i64 2151917313}
!271 = !{i64 2151923411, i64 2151923895, i64 2151923448, i64 2151923504, i64 2151923538, i64 2151923562, i64 2151923603, i64 2151923624, i64 2151923652, i64 2151923686}
!272 = !{i64 2151925027, i64 2151925511, i64 2151925064, i64 2151925120, i64 2151925154, i64 2151925178, i64 2151925219, i64 2151925240, i64 2151925268, i64 2151925302}
!273 = !{i64 2151926974, i64 2151927458, i64 2151927011, i64 2151927067, i64 2151927101, i64 2151927125, i64 2151927166, i64 2151927187, i64 2151927215, i64 2151927249}
!274 = !{i64 2151928590, i64 2151929074, i64 2151928627, i64 2151928683, i64 2151928717, i64 2151928741, i64 2151928782, i64 2151928803, i64 2151928831, i64 2151928865}
!275 = !{i64 2151930537, i64 2151931021, i64 2151930574, i64 2151930630, i64 2151930664, i64 2151930688, i64 2151930729, i64 2151930750, i64 2151930778, i64 2151930812}
!276 = !{i64 2151932153, i64 2151932637, i64 2151932190, i64 2151932246, i64 2151932280, i64 2151932304, i64 2151932345, i64 2151932366, i64 2151932394, i64 2151932428}
!277 = !{i64 2151934100, i64 2151934584, i64 2151934137, i64 2151934193, i64 2151934227, i64 2151934251, i64 2151934292, i64 2151934313, i64 2151934341, i64 2151934375}
!278 = !{i64 2151935716, i64 2151936200, i64 2151935753, i64 2151935809, i64 2151935843, i64 2151935867, i64 2151935908, i64 2151935929, i64 2151935957, i64 2151935991}
!279 = !{i64 2151937992, i64 2151938476, i64 2151938029, i64 2151938085, i64 2151938119, i64 2151938143, i64 2151938184, i64 2151938205, i64 2151938233, i64 2151938267}
!280 = !{i64 2151939608, i64 2151940092, i64 2151939645, i64 2151939701, i64 2151939735, i64 2151939759, i64 2151939800, i64 2151939821, i64 2151939849, i64 2151939883}
!281 = !{i64 2151941539, i64 2151942023, i64 2151941576, i64 2151941632, i64 2151941666, i64 2151941690, i64 2151941731, i64 2151941752, i64 2151941780, i64 2151941814}
!282 = !{i64 2151943155, i64 2151943639, i64 2151943192, i64 2151943248, i64 2151943282, i64 2151943306, i64 2151943347, i64 2151943368, i64 2151943396, i64 2151943430}
!283 = !{i64 2151945086, i64 2151945570, i64 2151945123, i64 2151945179, i64 2151945213, i64 2151945237, i64 2151945278, i64 2151945299, i64 2151945327, i64 2151945361}
!284 = !{i64 2151946702, i64 2151947186, i64 2151946739, i64 2151946795, i64 2151946829, i64 2151946853, i64 2151946894, i64 2151946915, i64 2151946943, i64 2151946977}
!285 = !{i64 2151948633, i64 2151949117, i64 2151948670, i64 2151948726, i64 2151948760, i64 2151948784, i64 2151948825, i64 2151948846, i64 2151948874, i64 2151948908}
!286 = !{i64 2151954310, i64 2151954794, i64 2151954347, i64 2151954403, i64 2151954437, i64 2151954461, i64 2151954502, i64 2151954523, i64 2151954551, i64 2151954585}
!287 = !{i64 2151956559, i64 2151957043, i64 2151956596, i64 2151956652, i64 2151956686, i64 2151956710, i64 2151956751, i64 2151956772, i64 2151956800, i64 2151956834}
!288 = !{i64 2151958175, i64 2151958659, i64 2151958212, i64 2151958268, i64 2151958302, i64 2151958326, i64 2151958367, i64 2151958388, i64 2151958416, i64 2151958450}
!289 = !{i64 2151960093, i64 2151960577, i64 2151960130, i64 2151960186, i64 2151960220, i64 2151960244, i64 2151960285, i64 2151960306, i64 2151960334, i64 2151960368}
!290 = !{i64 2151961709, i64 2151962193, i64 2151961746, i64 2151961802, i64 2151961836, i64 2151961860, i64 2151961901, i64 2151961922, i64 2151961950, i64 2151961984}
!291 = !{i64 2151963627, i64 2151964111, i64 2151963664, i64 2151963720, i64 2151963754, i64 2151963778, i64 2151963819, i64 2151963840, i64 2151963868, i64 2151963902}
!292 = !{i64 2151965243, i64 2151965727, i64 2151965280, i64 2151965336, i64 2151965370, i64 2151965394, i64 2151965435, i64 2151965456, i64 2151965484, i64 2151965518}
!293 = !{i64 2151967161, i64 2151967645, i64 2151967198, i64 2151967254, i64 2151967288, i64 2151967312, i64 2151967353, i64 2151967374, i64 2151967402, i64 2151967436}
!294 = !{i64 2151968777, i64 2151969261, i64 2151968814, i64 2151968870, i64 2151968904, i64 2151968928, i64 2151968969, i64 2151968990, i64 2151969018, i64 2151969052}
!295 = !{i64 2151971035, i64 2151971519, i64 2151971072, i64 2151971128, i64 2151971162, i64 2151971186, i64 2151971227, i64 2151971248, i64 2151971276, i64 2151971310}
!296 = !{i64 2151972651, i64 2151973135, i64 2151972688, i64 2151972744, i64 2151972778, i64 2151972802, i64 2151972843, i64 2151972864, i64 2151972892, i64 2151972926}
!297 = !{i64 2151974574, i64 2151975058, i64 2151974611, i64 2151974667, i64 2151974701, i64 2151974725, i64 2151974766, i64 2151974787, i64 2151974815, i64 2151974849}
!298 = !{i64 2151976190, i64 2151976674, i64 2151976227, i64 2151976283, i64 2151976317, i64 2151976341, i64 2151976382, i64 2151976403, i64 2151976431, i64 2151976465}
!299 = !{i64 2151978113, i64 2151978597, i64 2151978150, i64 2151978206, i64 2151978240, i64 2151978264, i64 2151978305, i64 2151978326, i64 2151978354, i64 2151978388}
!300 = !{i64 2151979729, i64 2151980213, i64 2151979766, i64 2151979822, i64 2151979856, i64 2151979880, i64 2151979921, i64 2151979942, i64 2151979970, i64 2151980004}
!301 = !{i64 2151985713, i64 2151986197, i64 2151985750, i64 2151985806, i64 2151985840, i64 2151985864, i64 2151985905, i64 2151985926, i64 2151985954, i64 2151985988}
!302 = !{i64 2151987329, i64 2151987813, i64 2151987366, i64 2151987422, i64 2151987456, i64 2151987480, i64 2151987521, i64 2151987542, i64 2151987570, i64 2151987604}
!303 = !{i64 2151989626, i64 2151990110, i64 2151989663, i64 2151989719, i64 2151989753, i64 2151989777, i64 2151989818, i64 2151989839, i64 2151989867, i64 2151989901}
!304 = !{i64 2151991242, i64 2151991726, i64 2151991279, i64 2151991335, i64 2151991369, i64 2151991393, i64 2151991434, i64 2151991455, i64 2151991483, i64 2151991517}
!305 = !{i64 2151993182, i64 2151993666, i64 2151993219, i64 2151993275, i64 2151993309, i64 2151993333, i64 2151993374, i64 2151993395, i64 2151993423, i64 2151993457}
!306 = !{i64 2151994798, i64 2151995282, i64 2151994835, i64 2151994891, i64 2151994925, i64 2151994949, i64 2151994990, i64 2151995011, i64 2151995039, i64 2151995073}
!307 = !{i64 2151996738, i64 2151997222, i64 2151996775, i64 2151996831, i64 2151996865, i64 2151996889, i64 2151996930, i64 2151996951, i64 2151996979, i64 2151997013}
!308 = !{i64 2151998354, i64 2151998838, i64 2151998391, i64 2151998447, i64 2151998481, i64 2151998505, i64 2151998546, i64 2151998567, i64 2151998595, i64 2151998629}
!309 = !{i64 2152000294, i64 2152000778, i64 2152000331, i64 2152000387, i64 2152000421, i64 2152000445, i64 2152000486, i64 2152000507, i64 2152000535, i64 2152000569}
!310 = !{i64 2152001910, i64 2152002394, i64 2152001947, i64 2152002003, i64 2152002037, i64 2152002061, i64 2152002102, i64 2152002123, i64 2152002151, i64 2152002185}
!311 = !{i64 2152004168, i64 2152004652, i64 2152004205, i64 2152004261, i64 2152004295, i64 2152004319, i64 2152004360, i64 2152004381, i64 2152004409, i64 2152004443}
!312 = !{i64 2152005784, i64 2152006268, i64 2152005821, i64 2152005877, i64 2152005911, i64 2152005935, i64 2152005976, i64 2152005997, i64 2152006025, i64 2152006059}
!313 = !{i64 2152007707, i64 2152008191, i64 2152007744, i64 2152007800, i64 2152007834, i64 2152007858, i64 2152007899, i64 2152007920, i64 2152007948, i64 2152007982}
!314 = !{i64 2152009323, i64 2152009807, i64 2152009360, i64 2152009416, i64 2152009450, i64 2152009474, i64 2152009515, i64 2152009536, i64 2152009564, i64 2152009598}
!315 = !{i64 2152011246, i64 2152011730, i64 2152011283, i64 2152011339, i64 2152011373, i64 2152011397, i64 2152011438, i64 2152011459, i64 2152011487, i64 2152011521}
!316 = !{i64 2152016923, i64 2152017407, i64 2152016960, i64 2152017016, i64 2152017050, i64 2152017074, i64 2152017115, i64 2152017136, i64 2152017164, i64 2152017198}
!317 = !{i64 2152018846, i64 2152019330, i64 2152018883, i64 2152018939, i64 2152018973, i64 2152018997, i64 2152019038, i64 2152019059, i64 2152019087, i64 2152019121}
!318 = !{i64 2152020462, i64 2152020946, i64 2152020499, i64 2152020555, i64 2152020589, i64 2152020613, i64 2152020654, i64 2152020675, i64 2152020703, i64 2152020737}
!319 = !{i64 2152022097, i64 2152022581, i64 2152022134, i64 2152022190, i64 2152022224, i64 2152022248, i64 2152022289, i64 2152022310, i64 2152022338, i64 2152022372}
!320 = !{i64 2152023732, i64 2152024216, i64 2152023769, i64 2152023825, i64 2152023859, i64 2152023883, i64 2152023924, i64 2152023945, i64 2152023973, i64 2152024007}
!321 = !{i64 2152026125, i64 2152026609, i64 2152026162, i64 2152026218, i64 2152026252, i64 2152026276, i64 2152026317, i64 2152026338, i64 2152026366, i64 2152026400}
!322 = !{i64 2152027763, i64 2152028247, i64 2152027800, i64 2152027856, i64 2152027890, i64 2152027914, i64 2152027955, i64 2152027976, i64 2152028004, i64 2152028038}
!323 = !{i64 2152029708, i64 2152030192, i64 2152029745, i64 2152029801, i64 2152029835, i64 2152029859, i64 2152029900, i64 2152029921, i64 2152029949, i64 2152029983}
!324 = !{i64 2152031346, i64 2152031830, i64 2152031383, i64 2152031439, i64 2152031473, i64 2152031497, i64 2152031538, i64 2152031559, i64 2152031587, i64 2152031621}
!325 = !{i64 2152033291, i64 2152033775, i64 2152033328, i64 2152033384, i64 2152033418, i64 2152033442, i64 2152033483, i64 2152033504, i64 2152033532, i64 2152033566}
!326 = !{i64 2152034929, i64 2152035413, i64 2152034966, i64 2152035022, i64 2152035056, i64 2152035080, i64 2152035121, i64 2152035142, i64 2152035170, i64 2152035204}
!327 = !{i64 2152036874, i64 2152037358, i64 2152036911, i64 2152036967, i64 2152037001, i64 2152037025, i64 2152037066, i64 2152037087, i64 2152037115, i64 2152037149}
!328 = !{i64 2152038512, i64 2152038996, i64 2152038549, i64 2152038605, i64 2152038639, i64 2152038663, i64 2152038704, i64 2152038725, i64 2152038753, i64 2152038787}
!329 = !{i64 2152040905, i64 2152041389, i64 2152040942, i64 2152040998, i64 2152041032, i64 2152041056, i64 2152041097, i64 2152041118, i64 2152041146, i64 2152041180}
!330 = !{i64 2152042543, i64 2152043027, i64 2152042580, i64 2152042636, i64 2152042670, i64 2152042694, i64 2152042735, i64 2152042756, i64 2152042784, i64 2152042818}
!331 = !{i64 2152048549, i64 2152049033, i64 2152048586, i64 2152048642, i64 2152048676, i64 2152048700, i64 2152048741, i64 2152048762, i64 2152048790, i64 2152048824}
!332 = !{i64 2152050187, i64 2152050671, i64 2152050224, i64 2152050280, i64 2152050314, i64 2152050338, i64 2152050379, i64 2152050400, i64 2152050428, i64 2152050462}
!333 = !{i64 2152052132, i64 2152052616, i64 2152052169, i64 2152052225, i64 2152052259, i64 2152052283, i64 2152052324, i64 2152052345, i64 2152052373, i64 2152052407}
!334 = !{i64 2152053770, i64 2152054254, i64 2152053807, i64 2152053863, i64 2152053897, i64 2152053921, i64 2152053962, i64 2152053983, i64 2152054011, i64 2152054045}
!335 = !{i64 2152055715, i64 2152056199, i64 2152055752, i64 2152055808, i64 2152055842, i64 2152055866, i64 2152055907, i64 2152055928, i64 2152055956, i64 2152055990}
!336 = !{i64 2152057353, i64 2152057837, i64 2152057390, i64 2152057446, i64 2152057480, i64 2152057504, i64 2152057545, i64 2152057566, i64 2152057594, i64 2152057628}
!337 = !{i64 2152059589, i64 2152060073, i64 2152059626, i64 2152059682, i64 2152059716, i64 2152059740, i64 2152059781, i64 2152059802, i64 2152059830, i64 2152059864}
!338 = !{i64 2152061207, i64 2152061691, i64 2152061244, i64 2152061300, i64 2152061334, i64 2152061358, i64 2152061399, i64 2152061420, i64 2152061448, i64 2152061482}
!339 = !{i64 2152063079, i64 2152063563, i64 2152063116, i64 2152063172, i64 2152063206, i64 2152063230, i64 2152063271, i64 2152063292, i64 2152063320, i64 2152063354}
!340 = !{i64 2152064697, i64 2152065181, i64 2152064734, i64 2152064790, i64 2152064824, i64 2152064848, i64 2152064889, i64 2152064910, i64 2152064938, i64 2152064972}
!341 = !{i64 2152066569, i64 2152067053, i64 2152066606, i64 2152066662, i64 2152066696, i64 2152066720, i64 2152066761, i64 2152066782, i64 2152066810, i64 2152066844}
!342 = !{i64 2152068187, i64 2152068671, i64 2152068224, i64 2152068280, i64 2152068314, i64 2152068338, i64 2152068379, i64 2152068400, i64 2152068428, i64 2152068462}
!343 = !{i64 2152070059, i64 2152070543, i64 2152070096, i64 2152070152, i64 2152070186, i64 2152070210, i64 2152070251, i64 2152070272, i64 2152070300, i64 2152070334}
!344 = !{i64 2152071677, i64 2152072161, i64 2152071714, i64 2152071770, i64 2152071804, i64 2152071828, i64 2152071869, i64 2152071890, i64 2152071918, i64 2152071952}
!345 = !{i64 2152074094, i64 2152078639, i64 2152074131, i64 2152074187, i64 2152074221, i64 2152074245, i64 2152074286, i64 2152074307, i64 2152074335, i64 2152074369}
!346 = !{i64 2152079773, i64 2152080257, i64 2152079810, i64 2152079866, i64 2152079900, i64 2152079924, i64 2152079965, i64 2152079986, i64 2152080014, i64 2152080048}
!347 = !{i64 2152081675, i64 2152082159, i64 2152081712, i64 2152081768, i64 2152081802, i64 2152081826, i64 2152081867, i64 2152081888, i64 2152081916, i64 2152081950}
!348 = !{i64 2152083293, i64 2152083777, i64 2152083330, i64 2152083386, i64 2152083420, i64 2152083444, i64 2152083485, i64 2152083506, i64 2152083534, i64 2152083568}
!349 = !{i64 2152085195, i64 2152085679, i64 2152085232, i64 2152085288, i64 2152085322, i64 2152085346, i64 2152085387, i64 2152085408, i64 2152085436, i64 2152085470}
!350 = !{i64 2152086813, i64 2152087297, i64 2152086850, i64 2152086906, i64 2152086940, i64 2152086964, i64 2152087005, i64 2152087026, i64 2152087054, i64 2152087088}
!351 = !{i64 2152088715, i64 2152089199, i64 2152088752, i64 2152088808, i64 2152088842, i64 2152088866, i64 2152088907, i64 2152088928, i64 2152088956, i64 2152088990}
!352 = !{i64 2152090333, i64 2152090817, i64 2152090370, i64 2152090426, i64 2152090460, i64 2152090484, i64 2152090525, i64 2152090546, i64 2152090574, i64 2152090608}
!353 = !{i64 2152092524, i64 2152093008, i64 2152092561, i64 2152092617, i64 2152092651, i64 2152092675, i64 2152092716, i64 2152092737, i64 2152092765, i64 2152092799}
!354 = !{i64 2152094142, i64 2152094626, i64 2152094179, i64 2152094235, i64 2152094269, i64 2152094293, i64 2152094334, i64 2152094355, i64 2152094383, i64 2152094417}
!355 = !{i64 2152096044, i64 2152096528, i64 2152096081, i64 2152096137, i64 2152096171, i64 2152096195, i64 2152096236, i64 2152096257, i64 2152096285, i64 2152096319}
!356 = !{i64 2152097662, i64 2152098146, i64 2152097699, i64 2152097755, i64 2152097789, i64 2152097813, i64 2152097854, i64 2152097875, i64 2152097903, i64 2152097937}
!357 = !{i64 2152099564, i64 2152100048, i64 2152099601, i64 2152099657, i64 2152099691, i64 2152099715, i64 2152099756, i64 2152099777, i64 2152099805, i64 2152099839}
!358 = !{i64 2152101182, i64 2152101666, i64 2152101219, i64 2152101275, i64 2152101309, i64 2152101333, i64 2152101374, i64 2152101395, i64 2152101423, i64 2152101457}
!359 = !{i64 2152103084, i64 2152103568, i64 2152103121, i64 2152103177, i64 2152103211, i64 2152103235, i64 2152103276, i64 2152103297, i64 2152103325, i64 2152103359}
!360 = !{i64 2152104702, i64 2152109247, i64 2152104739, i64 2152104795, i64 2152104829, i64 2152104853, i64 2152104894, i64 2152104915, i64 2152104943, i64 2152104977}
!361 = !{i64 2152110434, i64 2152110918, i64 2152110471, i64 2152110527, i64 2152110561, i64 2152110585, i64 2152110626, i64 2152110647, i64 2152110675, i64 2152110709}
!362 = !{i64 2152112018, i64 2152112502, i64 2152112055, i64 2152112111, i64 2152112145, i64 2152112169, i64 2152112210, i64 2152112231, i64 2152112259, i64 2152112293}
!363 = !{!"branch_weights", i32 1, i32 2000}
!364 = !{i64 2152113691, i64 2152114175, i64 2152113728, i64 2152113784, i64 2152113818, i64 2152113842, i64 2152113883, i64 2152113904, i64 2152113932, i64 2152113966}
!365 = !{i64 2152115275, i64 2152115759, i64 2152115312, i64 2152115368, i64 2152115402, i64 2152115426, i64 2152115467, i64 2152115488, i64 2152115516, i64 2152115550}
!366 = !{i64 2152116986, i64 2152117470, i64 2152117023, i64 2152117079, i64 2152117113, i64 2152117137, i64 2152117178, i64 2152117199, i64 2152117227, i64 2152117261}
!367 = !{i64 2152118570, i64 2152119054, i64 2152118607, i64 2152118663, i64 2152118697, i64 2152118721, i64 2152118762, i64 2152118783, i64 2152118811, i64 2152118845}
!368 = !{i64 2152120247, i64 2152120731, i64 2152120284, i64 2152120340, i64 2152120374, i64 2152120398, i64 2152120439, i64 2152120460, i64 2152120488, i64 2152120522}
!369 = !{i64 2152121831, i64 2152122315, i64 2152121868, i64 2152121924, i64 2152121958, i64 2152121982, i64 2152122023, i64 2152122044, i64 2152122072, i64 2152122106}
!370 = !{i64 2152123530, i64 2152124014, i64 2152123567, i64 2152123623, i64 2152123657, i64 2152123681, i64 2152123722, i64 2152123743, i64 2152123771, i64 2152123805}
!371 = !{i64 2152125114, i64 2152125598, i64 2152125151, i64 2152125207, i64 2152125241, i64 2152125265, i64 2152125306, i64 2152125327, i64 2152125355, i64 2152125389}
!372 = !{i64 2152126785, i64 2152127269, i64 2152126822, i64 2152126878, i64 2152126912, i64 2152126936, i64 2152126977, i64 2152126998, i64 2152127026, i64 2152127060}
!373 = !{i64 2152128369, i64 2152128853, i64 2152128406, i64 2152128462, i64 2152128496, i64 2152128520, i64 2152128561, i64 2152128582, i64 2152128610, i64 2152128644}
!374 = !{i64 2152130024, i64 2152130508, i64 2152130061, i64 2152130117, i64 2152130151, i64 2152130175, i64 2152130216, i64 2152130237, i64 2152130265, i64 2152130299}
!375 = !{i64 2152131608, i64 2152132092, i64 2152131645, i64 2152131701, i64 2152131735, i64 2152131759, i64 2152131800, i64 2152131821, i64 2152131849, i64 2152131883}
!376 = !{i64 2152133271, i64 2152133755, i64 2152133308, i64 2152133364, i64 2152133398, i64 2152133422, i64 2152133463, i64 2152133484, i64 2152133512, i64 2152133546}
!377 = !{i64 2152134855, i64 2152135339, i64 2152134892, i64 2152134948, i64 2152134982, i64 2152135006, i64 2152135047, i64 2152135068, i64 2152135096, i64 2152135130}
!378 = !{i64 2152136474, i64 2152136958, i64 2152136511, i64 2152136567, i64 2152136601, i64 2152136625, i64 2152136666, i64 2152136687, i64 2152136715, i64 2152136749}
