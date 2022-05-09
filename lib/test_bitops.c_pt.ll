; ModuleID = '/llk/IR_all_yes/lib/test_bitops.c_pt.bc'
source_filename = "../lib/test_bitops.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@__UNIQUE_ID_author106 = internal constant [91 x i8] c"author=Jesse Brandeburg <jesse.brandeburg@intel.com>, Wei Yang <richard.weiyang@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license107 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description108 = internal constant [31 x i8] c"description=Bit testing module\00", section ".modinfo", align 1
@test_bitops_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016test_bitops: Starting bitops test\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"test_bitops_startup\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lib/test_bitops.c\00", [46 x i8] zeroinitializer }, align 32
@test_bitops_startup._entry_ptr = internal global ptr @test_bitops_startup._entry, section ".printk_index", align 4
@g_bitmap = internal global { [8 x i32], [32 x i8] } zeroinitializer, align 32
@order_comb = internal constant { [7 x [2 x i32]], [40 x i8] } { [7 x [2 x i32]] [[2 x i32] [i32 3, i32 2], [2 x i32] [i32 4, i32 2], [2 x i32] [i32 8191, i32 13], [2 x i32] [i32 8192, i32 13], [2 x i32] [i32 1342177280, i32 31], [2 x i32] [i32 -2147483648, i32 31], [2 x i32] [i32 -2147471360, i32 32]], [40 x i8] zeroinitializer }, align 32
@test_bitops_startup._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 67, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014test_bitops: get_count_order wrong for %x\0A\00", [51 x i8] zeroinitializer }, align 32
@test_bitops_startup._entry_ptr.5 = internal global ptr @test_bitops_startup._entry.3, section ".printk_index", align 4
@test_bitops_startup._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014test_bitops: get_count_order_long wrong for %x\0A\00", [46 x i8] zeroinitializer }, align 32
@test_bitops_startup._entry_ptr.8 = internal global ptr @test_bitops_startup._entry.6, section ".printk_index", align 4
@test_bitops_startup._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013test_bitops: ERROR: FOUND SET BIT %d\0A\00", [56 x i8] zeroinitializer }, align 32
@test_bitops_startup._entry_ptr.11 = internal global ptr @test_bitops_startup._entry.9, section ".printk_index", align 4
@test_bitops_startup._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016test_bitops: Completed bitops test\0A\00", [58 x i8] zeroinitializer }, align 32
@test_bitops_startup._entry_ptr.14 = internal global ptr @test_bitops_startup._entry.12, section ".printk_index", align 4
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 57, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [9 x i8] c"g_bitmap\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 29, i32 8 }
@___asan_gen_.30 = private unnamed_addr constant [11 x i8] c"order_comb\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 31, i32 21 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 66, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 72, i32 4 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 95, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private constant [21 x i8] c"../lib/test_bitops.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 97, i32 2 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_author106, ptr @__UNIQUE_ID_description108, ptr @__UNIQUE_ID_license107, ptr @test_bitops_startup._entry, ptr @test_bitops_startup._entry.12, ptr @test_bitops_startup._entry.3, ptr @test_bitops_startup._entry.6, ptr @test_bitops_startup._entry.9, ptr @test_bitops_startup._entry_ptr, ptr @test_bitops_startup._entry_ptr.11, ptr @test_bitops_startup._entry_ptr.14, ptr @test_bitops_startup._entry_ptr.5, ptr @test_bitops_startup._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @g_bitmap, ptr @order_comb, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bitops_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_bitmap to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @order_comb to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bitops_startup._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bitops_startup._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bitops_startup._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bitops_startup._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #7
  tail call void @_set_bit(i32 noundef 4, ptr noundef nonnull @g_bitmap) #8
  tail call void @_set_bit(i32 noundef 7, ptr noundef nonnull @g_bitmap) #8
  tail call void @_set_bit(i32 noundef 11, ptr noundef nonnull @g_bitmap) #8
  tail call void @_set_bit(i32 noundef 31, ptr noundef nonnull @g_bitmap) #8
  tail call void @_set_bit(i32 noundef 88, ptr noundef nonnull @g_bitmap) #8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.062 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [7 x [2 x i32]], ptr @order_comb, i32 0, i32 %i.062
  %arrayidx1 = getelementptr [7 x [2 x i32]], ptr @order_comb, i32 0, i32 %i.062, i32 1
  %0 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx1, align 4
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %for.body.get_count_order.exit_crit_edge, label %if.end.i

for.body.get_count_order.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_count_order.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %dec.i = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i.i = icmp eq i32 %dec.i, 0
  %4 = tail call i32 @llvm.ctlz.i32(i32 %dec.i, i1 true) #8, !range !40
  %sub.i.i = sub nuw nsw i32 32, %4
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  br label %get_count_order.exit

get_count_order.exit:                             ; preds = %if.end.i, %for.body.get_count_order.exit_crit_edge
  %retval.0.i = phi i32 [ %cond.i.i, %if.end.i ], [ -1, %for.body.get_count_order.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %retval.0.i)
  %cmp5.not = icmp eq i32 %1, %retval.0.i
  br i1 %cmp5.not, label %get_count_order.exit.for.inc_crit_edge, label %do.end8

get_count_order.exit.for.inc_crit_edge:           ; preds = %get_count_order.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

do.end8:                                          ; preds = %get_count_order.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %3) #7
  br label %for.inc

for.inc:                                          ; preds = %do.end8, %get_count_order.exit.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.062, 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %for.inc.for.body15_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.body15_crit_edge:                     ; preds = %for.inc
  br label %for.body15

for.body15:                                       ; preds = %for.inc31.for.body15_crit_edge, %for.inc.for.body15_crit_edge
  %i.163 = phi i32 [ %inc32, %for.inc31.for.body15_crit_edge ], [ 0, %for.inc.for.body15_crit_edge ]
  %arrayidx16 = getelementptr [7 x [2 x i32]], ptr @order_comb, i32 0, i32 %i.163
  %arrayidx17 = getelementptr [7 x [2 x i32]], ptr @order_comb, i32 0, i32 %i.163, i32 1
  %5 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx17, align 4
  %7 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i58 = icmp eq i32 %8, 0
  br i1 %cmp.i58, label %for.body15.get_count_order_long.exit_crit_edge, label %if.end.i60

for.body15.get_count_order_long.exit_crit_edge:   ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_count_order_long.exit

if.end.i60:                                       ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #6
  %dec.i59 = add i32 %8, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i59)
  %tobool.not.i.i.i = icmp eq i32 %dec.i59, 0
  %9 = tail call i32 @llvm.ctlz.i32(i32 %dec.i59, i1 true) #8, !range !40
  %sub.i.i.i = sub nuw nsw i32 32, %9
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.i.i
  br label %get_count_order_long.exit

get_count_order_long.exit:                        ; preds = %if.end.i60, %for.body15.get_count_order_long.exit_crit_edge
  %retval.0.i61 = phi i32 [ %cond.i.i.i, %if.end.i60 ], [ -1, %for.body15.get_count_order_long.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %retval.0.i61)
  %cmp21.not = icmp eq i32 %6, %retval.0.i61
  br i1 %cmp21.not, label %get_count_order_long.exit.for.inc31_crit_edge, label %do.end25

get_count_order_long.exit.for.inc31_crit_edge:    ; preds = %get_count_order_long.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc31

do.end25:                                         ; preds = %get_count_order_long.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %8) #7
  br label %for.inc31

for.inc31:                                        ; preds = %do.end25, %get_count_order_long.exit.for.inc31_crit_edge
  %inc32 = add nuw nsw i32 %i.163, 1
  %exitcond64.not = icmp eq i32 %inc32, 7
  br i1 %exitcond64.not, label %for.end33, label %for.inc31.for.body15_crit_edge

for.inc31.for.body15_crit_edge:                   ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body15

for.end33:                                        ; preds = %for.inc31
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !41
  tail call void @_clear_bit(i32 noundef 4, ptr noundef nonnull @g_bitmap) #8
  tail call void @_clear_bit(i32 noundef 7, ptr noundef nonnull @g_bitmap) #8
  tail call void @_clear_bit(i32 noundef 11, ptr noundef nonnull @g_bitmap) #8
  tail call void @_clear_bit(i32 noundef 31, ptr noundef nonnull @g_bitmap) #8
  tail call void @_clear_bit(i32 noundef 88, ptr noundef nonnull @g_bitmap) #8
  %call34 = tail call i32 @_find_first_bit_be(ptr noundef nonnull @g_bitmap, i32 noundef 255) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call34)
  %cmp35.not = icmp eq i32 %call34, 255
  br i1 %cmp35.not, label %for.end33.do.end45_crit_edge, label %do.end39

for.end33.do.end45_crit_edge:                     ; preds = %for.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end45

do.end39:                                         ; preds = %for.end33
  call void @__sanitizer_cov_trace_pc() #6
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call34) #7
  br label %do.end45

do.end45:                                         ; preds = %do.end39, %for.end33.do.end45_crit_edge
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #7
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind uwtable(sync) }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @__UNIQUE_ID_author106, !1, !"__UNIQUE_ID_author106", i1 false, i1 false}
!1 = !{!"../lib/test_bitops.c", i32 109, i32 1}
!2 = !{ptr @__UNIQUE_ID_license107, !3, !"__UNIQUE_ID_license107", i1 false, i1 false}
!3 = !{!"../lib/test_bitops.c", i32 110, i32 1}
!4 = !{ptr @__UNIQUE_ID_description108, !5, !"__UNIQUE_ID_description108", i1 false, i1 false}
!5 = !{!"../lib/test_bitops.c", i32 111, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../lib/test_bitops.c", i32 57, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @test_bitops_startup._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @test_bitops_startup._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../lib/test_bitops.c", i32 66, i32 4}
!14 = !{ptr @test_bitops_startup._entry.3, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @test_bitops_startup._entry_ptr.5, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../lib/test_bitops.c", i32 72, i32 4}
!18 = !{ptr @test_bitops_startup._entry.6, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @test_bitops_startup._entry_ptr.8, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../lib/test_bitops.c", i32 95, i32 3}
!22 = !{ptr @test_bitops_startup._entry.9, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @test_bitops_startup._entry_ptr.11, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../lib/test_bitops.c", i32 97, i32 2}
!26 = !{ptr @test_bitops_startup._entry.12, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @test_bitops_startup._entry_ptr.14, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @g_bitmap, !29, !"g_bitmap", i1 false, i1 false}
!29 = !{!"../lib/test_bitops.c", i32 29, i32 8}
!30 = !{ptr @order_comb, !31, !"order_comb", i1 false, i1 false}
!31 = !{!"../lib/test_bitops.c", i32 31, i32 21}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{i32 0, i32 33}
!41 = !{i64 2151517802}
