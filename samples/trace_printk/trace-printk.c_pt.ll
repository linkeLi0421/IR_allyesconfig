; ModuleID = '/llk/IR_all_yes/samples/trace_printk/trace-printk.c_pt.bc'
source_filename = "../samples/trace_printk/trace-printk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
%struct.rcuwait = type { ptr }

@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"This is a dynamic string that will use trace_puts\0A\00", [45 x i8] zeroinitializer }, align 32
@trace_printk_test_global_str = dso_local global { ptr, [28 x i8] } { ptr @.str, [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"(irq) This is a dynamic string that will use trace_puts\0A\00", [39 x i8] zeroinitializer }, align 32
@trace_printk_test_global_str_irq = dso_local global { ptr, [28 x i8] } { ptr @.str.1, [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%sThis is a %s that will use trace_printk\0A\00", [53 x i8] zeroinitializer }, align 32
@trace_printk_test_global_str_fmt = dso_local global { ptr, [28 x i8] } { ptr @.str.2, [28 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author195 = internal constant [22 x i8] c"author=Steven Rostedt\00", section ".modinfo", align 1
@__UNIQUE_ID_description196 = internal constant [25 x i8] c"description=trace-printk\00", section ".modinfo", align 1
@__UNIQUE_ID_license197 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@irqwork = internal global { %struct.irq_work, [16 x i8] } zeroinitializer, align 32
@trace_printk_init.trace_printk_fmt = internal global ptr @.str.3, section "__trace_printk_fmt", align 4
@.str.3 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"This is a static string that will use trace_bputs\0A\00", [45 x i8] zeroinitializer }, align 32
@trace_printk_init.trace_printk_fmt.4 = internal global ptr @.str.3, section "__trace_printk_fmt", align 4
@trace_printk_init.trace_printk_fmt.6 = internal global ptr null, section "__trace_printk_fmt", align 4
@trace_printk_init.trace_printk_fmt.7 = internal global ptr null, section "__trace_printk_fmt", align 4
@trace_printk_init.trace_printk_fmt.9 = internal global ptr @.str.10, section "__trace_printk_fmt", align 4
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"This is a %s that will use trace_bprintk()\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"static string\00", [18 x i8] zeroinitializer }, align 32
@trace_printk_init.trace_printk_fmt.12 = internal global ptr @.str.10, section "__trace_printk_fmt", align 4
@trace_printk_init.trace_printk_fmt.14 = internal global ptr null, section "__trace_printk_fmt", align 4
@.str.15 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dynamic string\00", [17 x i8] zeroinitializer }, align 32
@trace_printk_init.trace_printk_fmt.17 = internal global ptr null, section "__trace_printk_fmt", align 4
@trace_printk_irq_work.trace_printk_fmt = internal global ptr @.str.18, section "__trace_printk_fmt", align 4
@.str.18 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"(irq) This is a static string that will use trace_bputs\0A\00", [39 x i8] zeroinitializer }, align 32
@trace_printk_irq_work.trace_printk_fmt.19 = internal global ptr @.str.18, section "__trace_printk_fmt", align 4
@trace_printk_irq_work.trace_printk_fmt.21 = internal global ptr null, section "__trace_printk_fmt", align 4
@trace_printk_irq_work.trace_printk_fmt.22 = internal global ptr null, section "__trace_printk_fmt", align 4
@trace_printk_irq_work.trace_printk_fmt.24 = internal global ptr @.str.25, section "__trace_printk_fmt", align 4
@.str.25 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"(irq) This is a %s that will use trace_bprintk()\0A\00", [46 x i8] zeroinitializer }, align 32
@trace_printk_irq_work.trace_printk_fmt.26 = internal global ptr @.str.25, section "__trace_printk_fmt", align 4
@trace_printk_irq_work.trace_printk_fmt.28 = internal global ptr null, section "__trace_printk_fmt", align 4
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(irq) \00", [25 x i8] zeroinitializer }, align 32
@trace_printk_irq_work.trace_printk_fmt.30 = internal global ptr null, section "__trace_printk_fmt", align 4
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 8, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [29 x i8] c"trace_printk_test_global_str\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 7, i32 7 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 11, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [33 x i8] c"trace_printk_test_global_str_irq\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 10, i32 7 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 14, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [33 x i8] c"trace_printk_test_global_str_fmt\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 13, i32 7 }
@___asan_gen_.49 = private unnamed_addr constant [8 x i8] c"irqwork\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 16, i32 24 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 34, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 41, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 44, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 20, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 23, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private constant [39 x i8] c"../samples/trace_printk/trace-printk.c\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 26, i32 2 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author195, ptr @__UNIQUE_ID_description196, ptr @__UNIQUE_ID_license197, ptr @trace_printk_init.trace_printk_fmt, ptr @trace_printk_init.trace_printk_fmt.12, ptr @trace_printk_init.trace_printk_fmt.14, ptr @trace_printk_init.trace_printk_fmt.17, ptr @trace_printk_init.trace_printk_fmt.4, ptr @trace_printk_init.trace_printk_fmt.6, ptr @trace_printk_init.trace_printk_fmt.7, ptr @trace_printk_init.trace_printk_fmt.9, ptr @trace_printk_irq_work.trace_printk_fmt, ptr @trace_printk_irq_work.trace_printk_fmt.19, ptr @trace_printk_irq_work.trace_printk_fmt.21, ptr @trace_printk_irq_work.trace_printk_fmt.22, ptr @trace_printk_irq_work.trace_printk_fmt.24, ptr @trace_printk_irq_work.trace_printk_fmt.26, ptr @trace_printk_irq_work.trace_printk_fmt.28, ptr @trace_printk_irq_work.trace_printk_fmt.30, ptr @.str, ptr @trace_printk_test_global_str, ptr @.str.1, ptr @trace_printk_test_global_str_irq, ptr @.str.2, ptr @trace_printk_test_global_str_fmt, ptr @irqwork, ptr @.str.3, ptr @.str.10, ptr @.str.11, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.25, ptr @.str.29], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_printk_test_global_str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_printk_test_global_str_irq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_printk_test_global_str_fmt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irqwork to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@init_module = dso_local alias i32 (), ptr @trace_printk_init

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_printk_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr null, ptr @irqwork, align 4
  store i32 0, ptr getelementptr inbounds (%struct.irq_work, ptr @irqwork, i32 0, i32 0, i32 1, i32 0), align 4
  store ptr @trace_printk_irq_work, ptr getelementptr inbounds (%struct.irq_work, ptr @irqwork, i32 0, i32 1), align 4
  store ptr null, ptr getelementptr inbounds (%struct.irq_work, ptr @irqwork, i32 0, i32 2, i32 0), align 4
  br label %__here11

__here11:                                         ; preds = %entry
  %0 = load ptr, ptr @trace_printk_init.trace_printk_fmt.4, align 4
  %call13 = tail call i32 @__trace_bputs(i32 noundef ptrtoint (ptr blockaddress(@trace_printk_init, %__here11) to i32), ptr noundef %0) #5
  br label %__here46

__here46:                                         ; preds = %__here11
  %1 = load ptr, ptr @trace_printk_test_global_str, align 4
  %call48 = tail call i32 @strlen(ptr noundef %1) #8
  %call49 = tail call i32 @__trace_puts(i32 noundef ptrtoint (ptr blockaddress(@trace_printk_init, %__here46) to i32), ptr noundef %1, i32 noundef %call48) #5
  %call54 = tail call zeroext i1 @irq_work_queue(ptr noundef nonnull @irqwork) #5
  tail call void @irq_work_sync(ptr noundef nonnull @irqwork) #5
  br label %__here63

__here63:                                         ; preds = %__here46
  %2 = load ptr, ptr @trace_printk_init.trace_printk_fmt.9, align 4
  %call65 = tail call i32 (i32, ptr, ...) @__trace_bprintk(i32 noundef ptrtoint (ptr blockaddress(@trace_printk_init, %__here63) to i32), ptr noundef %2, ptr noundef nonnull @.str.11) #5
  br label %__here98

__here98:                                         ; preds = %__here63
  call void @__sanitizer_cov_trace_pc() #7
  %3 = load ptr, ptr @trace_printk_test_global_str_fmt, align 4
  %call100 = tail call i32 (i32, ptr, ...) @__trace_printk(i32 noundef ptrtoint (ptr blockaddress(@trace_printk_init, %__here98) to i32), ptr noundef %3, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16) #5
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_printk_irq_work(ptr nocapture noundef readnone %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br label %__here11

__here11:                                         ; preds = %entry
  %0 = load ptr, ptr @trace_printk_irq_work.trace_printk_fmt.19, align 4
  %call13 = tail call i32 @__trace_bputs(i32 noundef ptrtoint (ptr blockaddress(@trace_printk_irq_work, %__here11) to i32), ptr noundef %0) #5
  br label %__here46

__here46:                                         ; preds = %__here11
  %1 = load ptr, ptr @trace_printk_test_global_str_irq, align 4
  %call48 = tail call i32 @strlen(ptr noundef %1) #8
  %call49 = tail call i32 @__trace_puts(i32 noundef ptrtoint (ptr blockaddress(@trace_printk_irq_work, %__here46) to i32), ptr noundef %1, i32 noundef %call48) #5
  br label %__here62

__here62:                                         ; preds = %__here46
  %2 = load ptr, ptr @trace_printk_irq_work.trace_printk_fmt.24, align 4
  %call64 = tail call i32 (i32, ptr, ...) @__trace_bprintk(i32 noundef ptrtoint (ptr blockaddress(@trace_printk_irq_work, %__here62) to i32), ptr noundef %2, ptr noundef nonnull @.str.11) #5
  br label %__here97

__here97:                                         ; preds = %__here62
  call void @__sanitizer_cov_trace_pc() #7
  %3 = load ptr, ptr @trace_printk_test_global_str_fmt, align 4
  %call99 = tail call i32 (i32, ptr, ...) @__trace_printk(i32 noundef ptrtoint (ptr blockaddress(@trace_printk_irq_work, %__here97) to i32), ptr noundef %3, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.16) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__trace_bprintk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__trace_printk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__trace_bputs(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__trace_puts(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @irq_work_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !24, !25, !27, !28, !29, !30, !32, !33, !34, !35, !37, !39, !40, !41, !43, !44, !46, !47, !48, !50, !51}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../samples/trace_printk/trace-printk.c", i32 8, i32 2}
!2 = !{ptr @trace_printk_test_global_str, !3, !"trace_printk_test_global_str", i1 false, i1 false}
!3 = !{!"../samples/trace_printk/trace-printk.c", i32 7, i32 7}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../samples/trace_printk/trace-printk.c", i32 11, i32 2}
!6 = !{ptr @trace_printk_test_global_str_irq, !7, !"trace_printk_test_global_str_irq", i1 false, i1 false}
!7 = !{!"../samples/trace_printk/trace-printk.c", i32 10, i32 7}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../samples/trace_printk/trace-printk.c", i32 14, i32 2}
!10 = !{ptr @trace_printk_test_global_str_fmt, !11, !"trace_printk_test_global_str_fmt", i1 false, i1 false}
!11 = !{!"../samples/trace_printk/trace-printk.c", i32 13, i32 7}
!12 = !{ptr @__UNIQUE_ID_author195, !13, !"__UNIQUE_ID_author195", i1 false, i1 false}
!13 = !{!"../samples/trace_printk/trace-printk.c", i32 56, i32 1}
!14 = !{ptr @__UNIQUE_ID_description196, !15, !"__UNIQUE_ID_description196", i1 false, i1 false}
!15 = !{!"../samples/trace_printk/trace-printk.c", i32 57, i32 1}
!16 = !{ptr @__UNIQUE_ID_license197, !17, !"__UNIQUE_ID_license197", i1 false, i1 false}
!17 = !{!"../samples/trace_printk/trace-printk.c", i32 58, i32 1}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../samples/trace_printk/trace-printk.c", i32 34, i32 2}
!20 = !{ptr @trace_printk_init.trace_printk_fmt, !19, !"trace_printk_fmt", i1 false, i1 false}
!21 = !{ptr @trace_printk_init.trace_printk_fmt.4, !19, !"trace_printk_fmt", i1 false, i1 false}
!22 = !{ptr @trace_printk_init.trace_printk_fmt.6, !23, !"trace_printk_fmt", i1 false, i1 false}
!23 = !{!"../samples/trace_printk/trace-printk.c", i32 35, i32 2}
!24 = !{ptr @trace_printk_init.trace_printk_fmt.7, !23, !"trace_printk_fmt", i1 false, i1 false}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../samples/trace_printk/trace-printk.c", i32 41, i32 2}
!27 = !{ptr @trace_printk_init.trace_printk_fmt.9, !26, !"trace_printk_fmt", i1 false, i1 false}
!28 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @trace_printk_init.trace_printk_fmt.12, !26, !"trace_printk_fmt", i1 false, i1 false}
!30 = !{ptr @trace_printk_init.trace_printk_fmt.14, !31, !"trace_printk_fmt", i1 false, i1 false}
!31 = !{!"../samples/trace_printk/trace-printk.c", i32 44, i32 2}
!32 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @trace_printk_init.trace_printk_fmt.17, !31, !"trace_printk_fmt", i1 false, i1 false}
!35 = !{ptr @irqwork, !36, !"irqwork", i1 false, i1 false}
!36 = !{!"../samples/trace_printk/trace-printk.c", i32 16, i32 24}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../samples/trace_printk/trace-printk.c", i32 20, i32 2}
!39 = !{ptr @trace_printk_irq_work.trace_printk_fmt, !38, !"trace_printk_fmt", i1 false, i1 false}
!40 = !{ptr @trace_printk_irq_work.trace_printk_fmt.19, !38, !"trace_printk_fmt", i1 false, i1 false}
!41 = !{ptr @trace_printk_irq_work.trace_printk_fmt.21, !42, !"trace_printk_fmt", i1 false, i1 false}
!42 = !{!"../samples/trace_printk/trace-printk.c", i32 21, i32 2}
!43 = !{ptr @trace_printk_irq_work.trace_printk_fmt.22, !42, !"trace_printk_fmt", i1 false, i1 false}
!44 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../samples/trace_printk/trace-printk.c", i32 23, i32 2}
!46 = !{ptr @trace_printk_irq_work.trace_printk_fmt.24, !45, !"trace_printk_fmt", i1 false, i1 false}
!47 = !{ptr @trace_printk_irq_work.trace_printk_fmt.26, !45, !"trace_printk_fmt", i1 false, i1 false}
!48 = !{ptr @trace_printk_irq_work.trace_printk_fmt.28, !49, !"trace_printk_fmt", i1 false, i1 false}
!49 = !{!"../samples/trace_printk/trace-printk.c", i32 26, i32 2}
!50 = !{ptr @.str.29, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @trace_printk_irq_work.trace_printk_fmt.30, !49, !"trace_printk_fmt", i1 false, i1 false}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
