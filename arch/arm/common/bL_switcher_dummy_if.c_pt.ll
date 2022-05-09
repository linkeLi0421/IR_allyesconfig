; ModuleID = '/llk/IR_all_yes/arch/arm/common/bL_switcher_dummy_if.c_pt.bc'
source_filename = "../arch/arm/common/bL_switcher_dummy_if.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.list_head = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__initcall__kmod_bL_switcher_dummy_if__211_56_bL_switcher_device_init6 = internal global ptr @bL_switcher_device_init, section ".initcall6.init", align 4
@bL_switcher_device = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 255, ptr @.str, ptr @bL_switcher_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bL_switcher_device_exit = internal global ptr @bL_switcher_device_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author212 = internal constant [60 x i8] c"bL_switcher_dummy_if.author=Nicolas Pitre <nico@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file213 = internal constant [63 x i8] c"bL_switcher_dummy_if.file=arch/arm/common/bL_switcher_dummy_if\00", section ".modinfo", align 1
@__UNIQUE_ID_license214 = internal constant [36 x i8] c"bL_switcher_dummy_if.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description215 = internal constant [74 x i8] c"bL_switcher_dummy_if.description=big.LITTLE switcher dummy user interface\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"b.L_switcher\00", [19 x i8] zeroinitializer }, align 32
@bL_switcher_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr @bL_switcher_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@bL_switcher_write.__UNIQUE_ID_ddebug210 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 6, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bL_switcher_dummy_if\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bL_switcher_write\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"arch/arm/common/bL_switcher_dummy_if.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant [19 x i8] c"bL_switcher_device\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 51, i32 26 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 53, i32 2 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"bL_switcher_fops\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 46, i32 37 }
@___asan_gen_.27 = private constant [42 x i8] c"../arch/arm/common/bL_switcher_dummy_if.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 25, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 156, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_author212, ptr @__UNIQUE_ID_description215, ptr @__UNIQUE_ID_file213, ptr @__UNIQUE_ID_license214, ptr @__exitcall_bL_switcher_device_exit, ptr @__initcall__kmod_bL_switcher_dummy_if__211_56_bL_switcher_device_init6, ptr @bL_switcher_device_exit, ptr @bL_switcher_device, ptr @.str, ptr @bL_switcher_fops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.7], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bL_switcher_device to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bL_switcher_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bL_switcher_device_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @misc_register(ptr noundef nonnull @bL_switcher_device) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bL_switcher_device_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @misc_deregister(ptr noundef nonnull @bL_switcher_device) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bL_switcher_write(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %len, ptr nocapture noundef readnone %pos) #2 align 64 {
entry:
  %val = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !39
  %1 = getelementptr inbounds [3 x i8], ptr %val, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !39
  %3 = getelementptr inbounds [3 x i8], ptr %val, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !39
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bL_switcher_write.__UNIQUE_ID_ddebug210, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bL_switcher_write, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !40

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bL_switcher_write.__UNIQUE_ID_ddebug210, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %len)
  %cmp = icmp ult i32 %len, 3
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.then.i

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %do.end
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #5
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i, label %if.then.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.if.then11.i.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 3, i32 -1226833920) #8, !srcloc !41
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !42

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val, i32 noundef 3) #5
  %6 = call i32 @llvm.read_register.i32(metadata !29) #5
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !43
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #5, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %val, ptr noundef %buf, i32 noundef 3) #5
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #5, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end8, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !42

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 3, %if.then.i.if.then11.i.i_crit_edge ], [ 3, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 3, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %val, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end8:                                          ; preds = %if.end.i.i
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %val, align 1
  %conv = zext i8 %11 to i32
  %12 = add i8 %11, -58
  call void @__sanitizer_cov_trace_const_cmp1(i8 -10, i8 %12)
  %13 = icmp ult i8 %12, -10
  br i1 %13, label %if.end8.cleanup_crit_edge, label %lor.lhs.false15

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false15:                                  ; preds = %if.end8
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %15)
  %cmp18.not = icmp eq i8 %15, 44
  br i1 %cmp18.not, label %lor.lhs.false20, label %lor.lhs.false15.cleanup_crit_edge

lor.lhs.false15.cleanup_crit_edge:                ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false20:                                  ; preds = %lor.lhs.false15
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %3, align 1
  %18 = add i8 %17, -50
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %18)
  %19 = icmp ult i8 %18, -2
  br i1 %19, label %lor.lhs.false20.cleanup_crit_edge, label %if.end31

lor.lhs.false20.cleanup_crit_edge:                ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end31:                                         ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #7
  %conv22 = zext i8 %17 to i32
  %sub = add nsw i32 %conv, -48
  %sub36 = add nsw i32 %conv22, -48
  %call.i = call i32 @bL_switch_request_cb(i32 noundef %sub, i32 noundef %sub36, ptr noundef null, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool38.not = icmp eq i32 %call.i, 0
  %spec.select = select i1 %tobool38.not, i32 %len, i32 %call.i
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %lor.lhs.false20.cleanup_crit_edge, %lor.lhs.false15.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then11.i.i, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end31 ], [ -22, %do.end.cleanup_crit_edge ], [ -22, %lor.lhs.false20.cleanup_crit_edge ], [ -22, %lor.lhs.false15.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bL_switch_request_cb(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !25, !27}
!llvm.named.register.sp = !{!29}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @__initcall__kmod_bL_switcher_dummy_if__211_56_bL_switcher_device_init6, !1, !"__initcall__kmod_bL_switcher_dummy_if__211_56_bL_switcher_device_init6", i1 false, i1 false}
!1 = !{!"../arch/arm/common/bL_switcher_dummy_if.c", i32 56, i32 1}
!2 = !{ptr @__exitcall_bL_switcher_device_exit, !1, !"__exitcall_bL_switcher_device_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author212, !4, !"__UNIQUE_ID_author212", i1 false, i1 false}
!4 = !{!"../arch/arm/common/bL_switcher_dummy_if.c", i32 58, i32 1}
!5 = !{ptr @__UNIQUE_ID_file213, !6, !"__UNIQUE_ID_file213", i1 false, i1 false}
!6 = !{!"../arch/arm/common/bL_switcher_dummy_if.c", i32 59, i32 1}
!7 = !{ptr @__UNIQUE_ID_license214, !6, !"__UNIQUE_ID_license214", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description215, !9, !"__UNIQUE_ID_description215", i1 false, i1 false}
!9 = !{!"../arch/arm/common/bL_switcher_dummy_if.c", i32 60, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../arch/arm/common/bL_switcher_dummy_if.c", i32 53, i32 2}
!12 = !{ptr @bL_switcher_device, !13, !"bL_switcher_device", i1 false, i1 false}
!13 = !{!"../arch/arm/common/bL_switcher_dummy_if.c", i32 51, i32 26}
!14 = !{ptr @bL_switcher_fops, !15, !"bL_switcher_fops", i1 false, i1 false}
!15 = !{!"../arch/arm/common/bL_switcher_dummy_if.c", i32 46, i32 37}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../arch/arm/common/bL_switcher_dummy_if.c", i32 25, i32 2}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @bL_switcher_write.__UNIQUE_ID_ddebug210, !17, !"__UNIQUE_ID_ddebug210", i1 false, i1 false}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!24 = distinct !{null, !23, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!29 = !{!"sp"}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{!"auto-init"}
!40 = !{i64 2148952893, i64 2148952898, i64 2148952911, i64 2148952955, i64 2148952989, i64 2148953010}
!41 = !{i64 2152404133, i64 2152404158}
!42 = !{!"branch_weights", i32 2000, i32 1}
!43 = !{i64 4899688}
!44 = !{i64 4899885}
!45 = !{i64 2152385118}
