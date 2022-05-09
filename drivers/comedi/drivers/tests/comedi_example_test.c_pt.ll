; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/tests/comedi_example_test.c_pt.bc'
source_filename = "../drivers/comedi/drivers/tests/comedi_example_test.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }

@__initcall__kmod_comedi_example_test__108_65_unittest_enter6 = internal global ptr @unittest_enter, section ".initcall6.init", align 4
@__exitcall_unittest_exit = internal global ptr @unittest_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author109 = internal constant [61 x i8] c"comedi_example_test.author=Spencer Olson <olsonse@umich.edu>\00", section ".modinfo", align 1
@__UNIQUE_ID_description110 = internal constant [58 x i8] c"comedi_example_test.description=Comedi unit-tests example\00", section ".modinfo", align 1
@__UNIQUE_ID_file111 = internal constant [74 x i8] c"comedi_example_test.file=drivers/comedi/drivers/tests/comedi_example_test\00", section ".modinfo", align 1
@__UNIQUE_ID_license112 = internal constant [32 x i8] c"comedi_example_test.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"example\00", [24 x i8] zeroinitializer }, align 32
@dev.0 = internal global { i1, [31 x i8] } zeroinitializer, align 32
@unittest_results.0 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@unittest_results.1 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@test0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 47, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013FAIL %s():%i negative result\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"test0\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/comedi/drivers/tests/comedi_example_test.c\00", [45 x i8] zeroinitializer }, align 32
@test0._entry_ptr = internal global ptr @test0._entry, section ".printk_index", align 4
@test0.__UNIQUE_ID_ddebug106 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.2, ptr @.str.3, ptr @.str.5, i8 0, i8 11, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"comedi_example_test\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pass %s():%i negative result\0A\00", [34 x i8] zeroinitializer }, align 32
@test0._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 48, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013FAIL %s():%i positive result\0A\00", [32 x i8] zeroinitializer }, align 32
@test0._entry_ptr.8 = internal global ptr @test0._entry.6, section ".printk_index", align 4
@test0.__UNIQUE_ID_ddebug107 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.2, ptr @.str.3, ptr @.str.9, i8 0, i8 12, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pass %s():%i positive result\0A\00", [34 x i8] zeroinitializer }, align 32
@exec_unittests._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.13, i32 53, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016begin comedi:\22%s\22 unittests\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"exec_unittests\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/comedi/drivers/tests/unittest.h\00", [56 x i8] zeroinitializer }, align 32
@exec_unittests._entry_ptr = internal global ptr @exec_unittests._entry, section ".printk_index", align 4
@exec_unittests._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.12, ptr @.str.13, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016end of comedi:\22%s\22 unittests - %i passed, %i failed\0A\00", [41 x i8] zeroinitializer }, align 32
@exec_unittests._entry_ptr.16 = internal global ptr @exec_unittests._entry.14, section ".printk_index", align 4
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 59, i32 17 }
@___asan_gen_.20 = private unnamed_addr constant [6 x i8] c"dev.0\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [19 x i8] c"unittest_results.0\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [19 x i8] c"unittest_results.1\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 47, i32 2 }
@___asan_gen_.48 = private constant [54 x i8] c"../drivers/comedi/drivers/tests/comedi_example_test.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 48, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 53, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [43 x i8] c"../drivers/comedi/drivers/tests/unittest.h\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 58, i32 2 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_author109, ptr @__UNIQUE_ID_description110, ptr @__UNIQUE_ID_file111, ptr @__UNIQUE_ID_license112, ptr @__exitcall_unittest_exit, ptr @__initcall__kmod_comedi_example_test__108_65_unittest_enter6, ptr @exec_unittests._entry, ptr @exec_unittests._entry.14, ptr @exec_unittests._entry_ptr, ptr @exec_unittests._entry_ptr.16, ptr @test0._entry, ptr @test0._entry.6, ptr @test0._entry_ptr, ptr @test0._entry_ptr.8, ptr @unittest_exit, ptr @.str, ptr @dev.0, ptr @unittest_results.0, ptr @unittest_results.1, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev.0 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unittest_results.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unittest_results.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test0._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exec_unittests._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exec_unittests._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @unittest_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @unittest_enter() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str) #7
  store i1 true, ptr @dev.0, align 4
  %0 = load i32, ptr @unittest_results.0, align 4
  %inc1.i.i = add i32 %0, 1
  store i32 %inc1.i.i, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test0.__UNIQUE_ID_ddebug106, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@unittest_enter, %if.end14.i.i)) #4
          to label %if.then11.i.i [label %if.end14.i.i], !srcloc !55

if.then11.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test0.__UNIQUE_ID_ddebug106, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, i32 noundef 47) #4
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then11.i.i, %entry
  %.b.i.i = load i1, ptr @dev.0, align 4
  br i1 %.b.i.i, label %if.else32.i.i, label %if.then25.i.i

if.then25.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %1 = load i32, ptr @unittest_results.1, align 4
  %inc26.i.i = add i32 %1, 1
  store i32 %inc26.i.i, ptr @unittest_results.1, align 4
  %call31.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.2, i32 noundef 48) #7
  br label %exec_unittests.exit

if.else32.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %2 = load i32, ptr @unittest_results.0, align 4
  %inc33.i.i = add i32 %2, 1
  store i32 %inc33.i.i, ptr @unittest_results.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test0.__UNIQUE_ID_ddebug107, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@unittest_enter, %exec_unittests.exit)) #4
          to label %if.then48.i.i [label %exec_unittests.exit], !srcloc !55

if.then48.i.i:                                    ; preds = %if.else32.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @test0.__UNIQUE_ID_ddebug107, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.2, i32 noundef 48) #4
  br label %exec_unittests.exit

exec_unittests.exit:                              ; preds = %if.then48.i.i, %if.else32.i.i, %if.then25.i.i
  %3 = load i32, ptr @unittest_results.0, align 4
  %4 = load i32, ptr @unittest_results.1, align 4
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str, i32 noundef %3, i32 noundef %4) #7
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !30, !32, !34, !36, !38, !39, !40, !41, !42, !44, !45}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @__initcall__kmod_comedi_example_test__108_65_unittest_enter6, !1, !"__initcall__kmod_comedi_example_test__108_65_unittest_enter6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/tests/comedi_example_test.c", i32 65, i32 1}
!2 = !{ptr @__exitcall_unittest_exit, !3, !"__exitcall_unittest_exit", i1 false, i1 false}
!3 = !{!"../drivers/comedi/drivers/tests/comedi_example_test.c", i32 66, i32 1}
!4 = !{ptr @__UNIQUE_ID_author109, !5, !"__UNIQUE_ID_author109", i1 false, i1 false}
!5 = !{!"../drivers/comedi/drivers/tests/comedi_example_test.c", i32 68, i32 1}
!6 = !{ptr @__UNIQUE_ID_description110, !7, !"__UNIQUE_ID_description110", i1 false, i1 false}
!7 = !{!"../drivers/comedi/drivers/tests/comedi_example_test.c", i32 69, i32 1}
!8 = !{ptr @__UNIQUE_ID_file111, !9, !"__UNIQUE_ID_file111", i1 false, i1 false}
!9 = !{!"../drivers/comedi/drivers/tests/comedi_example_test.c", i32 70, i32 1}
!10 = !{ptr @__UNIQUE_ID_license112, !9, !"__UNIQUE_ID_license112", i1 false, i1 false}
!11 = distinct !{null, !12, !"unit_tests", i1 false, i1 false}
!12 = !{!"../drivers/comedi/drivers/tests/comedi_example_test.c", i32 54, i32 29}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/comedi/drivers/tests/comedi_example_test.c", i32 59, i32 17}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/comedi/drivers/tests/comedi_example_test.c", i32 47, i32 2}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @test0._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @test0._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @test0.__UNIQUE_ID_ddebug106, !16, !"__UNIQUE_ID_ddebug106", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/comedi/drivers/tests/comedi_example_test.c", i32 48, i32 2}
!26 = !{ptr @test0._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @test0._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @test0.__UNIQUE_ID_ddebug107, !25, !"__UNIQUE_ID_ddebug107", i1 false, i1 false}
!30 = distinct !{null, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/comedi/drivers/tests/comedi_example_test.c", i32 31, i32 16}
!32 = distinct !{null, !33, !"dev", i1 false, i1 false}
!33 = !{!"../drivers/comedi/drivers/tests/comedi_example_test.c", i32 30, i32 29}
!34 = distinct !{null, !35, !"unittest_results", i1 false, i1 false}
!35 = !{!"../drivers/comedi/drivers/tests/unittest.h", i32 27, i32 3}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/comedi/drivers/tests/unittest.h", i32 53, i32 2}
!38 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @exec_unittests._entry, !37, !"_entry", i1 false, i1 false}
!41 = !{ptr @exec_unittests._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/comedi/drivers/tests/unittest.h", i32 58, i32 2}
!44 = !{ptr @exec_unittests._entry.14, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @exec_unittests._entry_ptr.16, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{i64 2148953306, i64 2148953311, i64 2148953324, i64 2148953368, i64 2148953402, i64 2148953423}
