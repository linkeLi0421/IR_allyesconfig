; ModuleID = '/llk/IR_all_yes/drivers/infiniband/core/packer.c_pt.bc'
source_filename = "../drivers/infiniband/core/packer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ib_pack\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_pack\09\09\09\09"
module asm "\09.long\09__crc_ib_pack\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_pack:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_pack\22\09\09\09\09\09"
module asm "__kstrtabns_ib_pack:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_unpack\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_unpack\09\09\09\09"
module asm "\09.long\09__crc_ib_unpack\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_unpack:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_unpack\22\09\09\09\09\09"
module asm "__kstrtabns_ib_unpack:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ib_field = type { i32, i32, i32, i32, i32, ptr }

@ib_pack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014Structure field %s of size %d bits is not byte-aligned\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ib_pack\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/infiniband/core/packer.c\00", [63 x i8] zeroinitializer }, align 32
@ib_pack._entry_ptr = internal global ptr @ib_pack._entry, section ".printk_index", align 4
@__kstrtab_ib_pack = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_pack = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_pack = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_pack to i32), ptr @__kstrtab_ib_pack, ptr @__kstrtabns_ib_pack }, section "___ksymtab+ib_pack", align 4
@ib_unpack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.3, ptr @.str.2, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ib_unpack\00", [22 x i8] zeroinitializer }, align 32
@ib_unpack._entry_ptr = internal global ptr @ib_unpack._entry, section ".printk_index", align 4
@__kstrtab_ib_unpack = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_unpack = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_unpack = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_unpack to i32), ptr @__kstrtab_ib_unpack, ptr @__kstrtabns_ib_unpack }, section "___ksymtab+ib_unpack", align 4
@value_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 47, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014Field size %d bits not handled\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"value_read\00", [21 x i8] zeroinitializer }, align 32
@value_read._entry_ptr = internal global ptr @value_read._entry, section ".printk_index", align 4
@value_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.6, ptr @.str.2, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"value_write\00", [20 x i8] zeroinitializer }, align 32
@value_write._entry_ptr = internal global ptr @value_write._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.7 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.8 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 7]
@__sancov_gen_cov_switch_values.9 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 7]
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 107, i32 5 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 190, i32 5 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 47, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private constant [36 x i8] c"../drivers/infiniband/core/packer.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 134, i32 3 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__ksymtab_ib_pack, ptr @__ksymtab_ib_unpack, ptr @ib_pack._entry, ptr @ib_pack._entry_ptr, ptr @ib_unpack._entry, ptr @ib_unpack._entry_ptr, ptr @value_read._entry, ptr @value_read._entry_ptr, ptr @value_write._entry, ptr @value_write._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_pack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_unpack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @value_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @value_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ib_pack(ptr nocapture noundef readonly %desc, i32 noundef %desc_len, ptr nocapture noundef readonly %structure, ptr nocapture noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %desc_len)
  %cmp197 = icmp sgt i32 %desc_len, 0
  br i1 %cmp197, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0198 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ib_field, ptr %desc, i32 %i.0198
  %size_bits = getelementptr %struct.ib_field, ptr %desc, i32 %i.0198, i32 4
  %0 = ptrtoint ptr %size_bits to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %1)
  %cmp1 = icmp slt i32 %1, 33
  br i1 %cmp1, label %if.then, label %if.else21

if.then:                                          ; preds = %for.body
  %offset_bits = getelementptr %struct.ib_field, ptr %desc, i32 %i.0198, i32 3
  %2 = ptrtoint ptr %offset_bits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset_bits, align 4
  %4 = add i32 %1, %3
  %sub5 = sub i32 32, %4
  %struct_size_bytes = getelementptr %struct.ib_field, ptr %desc, i32 %i.0198, i32 1
  %5 = ptrtoint ptr %struct_size_bytes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %struct_size_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then7

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  %.pre = zext i32 %sub5 to i64
  br label %if.end

if.then7:                                         ; preds = %if.then
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %9 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %do.end.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb1.i
    i32 4, label %sw.bb4.i
    i32 8, label %sw.bb8.i
  ]

sw.bb.i:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr.i = getelementptr i8, ptr %structure, i32 %8
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %add.ptr.i, align 1
  %conv.i = zext i8 %11 to i64
  br label %value_read.exit

sw.bb1.i:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr2.i = getelementptr i8, ptr %structure, i32 %8
  %12 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr2.i, align 2
  %conv3.i = zext i16 %13 to i64
  br label %value_read.exit

sw.bb4.i:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr5.i = getelementptr i8, ptr %structure, i32 %8
  %14 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr5.i, align 4
  %conv7.i = zext i32 %15 to i64
  br label %value_read.exit

sw.bb8.i:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr9.i = getelementptr i8, ptr %structure, i32 %8
  %16 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %add.ptr9.i, align 8
  br label %value_read.exit

do.end.i:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #4
  %mul.i = shl i32 %6, 3
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %mul.i) #5
  br label %value_read.exit

value_read.exit:                                  ; preds = %do.end.i, %sw.bb8.i, %sw.bb4.i, %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi i64 [ 0, %do.end.i ], [ %17, %sw.bb8.i ], [ %conv7.i, %sw.bb4.i ], [ %conv3.i, %sw.bb1.i ], [ %conv.i, %sw.bb.i ]
  %sh_prom = zext i32 %sub5 to i64
  %shl = shl i64 %retval.0.i, %sh_prom
  %conv = trunc i64 %shl to i32
  br label %if.end

if.end:                                           ; preds = %value_read.exit, %if.then.if.end_crit_edge
  %sh_prom16.pre-phi = phi i64 [ %.pre, %if.then.if.end_crit_edge ], [ %sh_prom, %value_read.exit ]
  %val.0 = phi i32 [ 0, %if.then.if.end_crit_edge ], [ %conv, %value_read.exit ]
  %18 = ptrtoint ptr %size_bits to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size_bits, align 4
  %sh_prom13 = zext i32 %19 to i64
  %notmask = shl nsw i64 -1, %sh_prom13
  %sub15 = xor i64 %notmask, -1
  %shl17 = shl i64 %sub15, %sh_prom16.pre-phi
  %conv18 = trunc i64 %shl17 to i32
  %offset_words = getelementptr %struct.ib_field, ptr %desc, i32 %i.0198, i32 2
  %20 = ptrtoint ptr %offset_words to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset_words, align 4
  %add.ptr = getelementptr i32, ptr %buf, i32 %21
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr, align 4
  %neg = xor i32 %conv18, -1
  %and = and i32 %23, %neg
  %and20 = and i32 %val.0, %conv18
  %or = or i32 %and, %and20
  store i32 %or, ptr %add.ptr, align 4
  br label %for.inc

if.else21:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %1)
  %cmp24 = icmp ult i32 %1, 65
  %offset_bits32 = getelementptr %struct.ib_field, ptr %desc, i32 %i.0198, i32 3
  %24 = ptrtoint ptr %offset_bits32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offset_bits32, align 4
  br i1 %cmp24, label %if.then26, label %if.else63

if.then26:                                        ; preds = %if.else21
  %26 = add i32 %1, %25
  %sub36 = sub i32 64, %26
  %struct_size_bytes38 = getelementptr %struct.ib_field, ptr %desc, i32 %i.0198, i32 1
  %27 = ptrtoint ptr %struct_size_bytes38 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %struct_size_bytes38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool39.not = icmp eq i32 %28, 0
  br i1 %tobool39.not, label %if.then26.if.end49_crit_edge, label %if.then40

if.then26.if.end49_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #4
  %.pre201 = zext i32 %sub36 to i64
  br label %if.end49

if.then40:                                        ; preds = %if.then26
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 4
  %31 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %28, label %do.end.i190 [
    i32 1, label %sw.bb.i179
    i32 2, label %sw.bb1.i182
    i32 4, label %sw.bb4.i185
    i32 8, label %sw.bb8.i187
  ]

sw.bb.i179:                                       ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr.i177 = getelementptr i8, ptr %structure, i32 %30
  %32 = ptrtoint ptr %add.ptr.i177 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %add.ptr.i177, align 1
  %conv.i178 = zext i8 %33 to i64
  br label %value_read.exit192

sw.bb1.i182:                                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr2.i180 = getelementptr i8, ptr %structure, i32 %30
  %34 = ptrtoint ptr %add.ptr2.i180 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %add.ptr2.i180, align 2
  %conv3.i181 = zext i16 %35 to i64
  br label %value_read.exit192

sw.bb4.i185:                                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr5.i183 = getelementptr i8, ptr %structure, i32 %30
  %36 = ptrtoint ptr %add.ptr5.i183 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr5.i183, align 4
  %conv7.i184 = zext i32 %37 to i64
  br label %value_read.exit192

sw.bb8.i187:                                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr9.i186 = getelementptr i8, ptr %structure, i32 %30
  %38 = ptrtoint ptr %add.ptr9.i186 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %add.ptr9.i186, align 8
  br label %value_read.exit192

do.end.i190:                                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #4
  %mul.i188 = shl i32 %28, 3
  %call11.i189 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %mul.i188) #5
  br label %value_read.exit192

value_read.exit192:                               ; preds = %do.end.i190, %sw.bb8.i187, %sw.bb4.i185, %sw.bb1.i182, %sw.bb.i179
  %retval.0.i191 = phi i64 [ 0, %do.end.i190 ], [ %39, %sw.bb8.i187 ], [ %conv7.i184, %sw.bb4.i185 ], [ %conv3.i181, %sw.bb1.i182 ], [ %conv.i178, %sw.bb.i179 ]
  %sh_prom46 = zext i32 %sub36 to i64
  %shl47 = shl i64 %retval.0.i191, %sh_prom46
  br label %if.end49

if.end49:                                         ; preds = %value_read.exit192, %if.then26.if.end49_crit_edge
  %sh_prom54.pre-phi = phi i64 [ %.pre201, %if.then26.if.end49_crit_edge ], [ %sh_prom46, %value_read.exit192 ]
  %val28.0 = phi i64 [ 0, %if.then26.if.end49_crit_edge ], [ %shl47, %value_read.exit192 ]
  %40 = ptrtoint ptr %size_bits to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %size_bits, align 4
  %sub52 = sub i32 64, %41
  %sh_prom53 = zext i32 %sub52 to i64
  %shr = lshr i64 -1, %sh_prom53
  %shl55 = shl i64 %shr, %sh_prom54.pre-phi
  %offset_words57 = getelementptr %struct.ib_field, ptr %desc, i32 %i.0198, i32 2
  %42 = ptrtoint ptr %offset_words57 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %offset_words57, align 4
  %add.ptr58 = getelementptr i32, ptr %buf, i32 %43
  %44 = ptrtoint ptr %add.ptr58 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %add.ptr58, align 8
  %neg59 = xor i64 %shl55, -1
  %and60 = and i64 %45, %neg59
  %and61 = and i64 %shl55, %val28.0
  %or62 = or i64 %and60, %and61
  store i64 %or62, ptr %add.ptr58, align 8
  br label %for.inc

if.else63:                                        ; preds = %if.else21
  %46 = and i32 %25, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool66.not = icmp eq i32 %46, 0
  %47 = and i32 %1, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool70.not = icmp eq i32 %47, 0
  %or.cond = select i1 %tobool66.not, i1 %tobool70.not, i1 false
  br i1 %or.cond, label %if.else63.if.end76_crit_edge, label %do.end

if.else63.if.end76_crit_edge:                     ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end76

do.end:                                           ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #4
  %field_name = getelementptr %struct.ib_field, ptr %desc, i32 %i.0198, i32 5
  %48 = ptrtoint ptr %field_name to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %field_name, align 4
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %49, i32 noundef %1) #5
  br label %if.end76

if.end76:                                         ; preds = %do.end, %if.else63.if.end76_crit_edge
  %struct_size_bytes78 = getelementptr %struct.ib_field, ptr %desc, i32 %i.0198, i32 1
  %50 = ptrtoint ptr %struct_size_bytes78 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %struct_size_bytes78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool79.not = icmp eq i32 %51, 0
  %offset_words95 = getelementptr %struct.ib_field, ptr %desc, i32 %i.0198, i32 2
  %52 = ptrtoint ptr %offset_words95 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %offset_words95, align 4
  %mul96 = shl i32 %53, 2
  %add.ptr97 = getelementptr i8, ptr %buf, i32 %mul96
  %54 = ptrtoint ptr %offset_bits32 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %offset_bits32, align 4
  %div100 = sdiv i32 %55, 8
  %add.ptr101 = getelementptr i8, ptr %add.ptr97, i32 %div100
  br i1 %tobool79.not, label %if.else93, label %if.then80

if.then80:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #4
  %56 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx, align 4
  %add.ptr89 = getelementptr i8, ptr %structure, i32 %57
  %58 = ptrtoint ptr %size_bits to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %size_bits, align 4
  %div92 = sdiv i32 %59, 8
  %60 = call ptr @memcpy(ptr %add.ptr101, ptr %add.ptr89, i32 %div92)
  br label %for.inc

if.else93:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #4
  %61 = ptrtoint ptr %size_bits to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %size_bits, align 4
  %div104 = sdiv i32 %62, 8
  %63 = call ptr @memset(ptr %add.ptr101, i32 0, i32 %div104)
  br label %for.inc

for.inc:                                          ; preds = %if.else93, %if.then80, %if.end49, %if.end
  %inc = add nuw nsw i32 %i.0198, 1
  %exitcond.not = icmp eq i32 %inc, %desc_len
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ib_unpack(ptr nocapture noundef readonly %desc, i32 noundef %desc_len, ptr nocapture noundef readonly %buf, ptr nocapture noundef writeonly %structure) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %desc_len)
  %cmp149 = icmp sgt i32 %desc_len, 0
  br i1 %cmp149, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0150 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ib_field, ptr %desc, i32 %i.0150
  %struct_size_bytes = getelementptr %struct.ib_field, ptr %desc, i32 %i.0150, i32 1
  %0 = ptrtoint ptr %struct_size_bytes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %struct_size_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc

if.end:                                           ; preds = %for.body
  %size_bits = getelementptr %struct.ib_field, ptr %desc, i32 %i.0150, i32 4
  %2 = ptrtoint ptr %size_bits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %3)
  %cmp2 = icmp slt i32 %3, 33
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %offset_bits = getelementptr %struct.ib_field, ptr %desc, i32 %i.0150, i32 3
  %4 = ptrtoint ptr %offset_bits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset_bits, align 4
  %6 = add i32 %3, %5
  %sub7 = sub i32 32, %6
  %sh_prom = zext i32 %3 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub10 = xor i64 %notmask, -1
  %sh_prom11 = zext i32 %sub7 to i64
  %shl12 = shl i64 %sub10, %sh_prom11
  %conv = trunc i64 %shl12 to i32
  %offset_words = getelementptr %struct.ib_field, ptr %desc, i32 %i.0150, i32 2
  %7 = ptrtoint ptr %offset_words to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %offset_words, align 4
  %add.ptr = getelementptr i32, ptr %buf, i32 %8
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr, align 4
  %and = and i32 %10, %conv
  %shr = lshr i32 %and, %sub7
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %mul.i = shl i32 %1, 3
  %13 = add i32 %mul.i, -8
  %14 = lshr exact i32 %13, 3
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %14, label %do.end.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 3, label %sw.bb4.i
    i32 7, label %sw.bb7.i
  ]

sw.bb.i:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #4
  %conv.i = trunc i32 %shr to i8
  %add.ptr.i = getelementptr i8, ptr %structure, i32 %12
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv.i, ptr %add.ptr.i, align 1
  br label %for.inc

sw.bb1.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #4
  %conv2.i = trunc i32 %shr to i16
  %add.ptr3.i = getelementptr i8, ptr %structure, i32 %12
  %17 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv2.i, ptr %add.ptr3.i, align 2
  br label %for.inc

sw.bb4.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr6.i = getelementptr i8, ptr %structure, i32 %12
  %18 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shr, ptr %add.ptr6.i, align 4
  br label %for.inc

sw.bb7.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #4
  %conv17 = zext i32 %shr to i64
  %add.ptr8.i = getelementptr i8, ptr %structure, i32 %12
  %19 = ptrtoint ptr %add.ptr8.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv17, ptr %add.ptr8.i, align 8
  br label %for.inc

do.end.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %mul.i) #5
  br label %for.inc

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %3)
  %cmp20 = icmp ult i32 %3, 65
  %offset_bits28 = getelementptr %struct.ib_field, ptr %desc, i32 %i.0150, i32 3
  %20 = ptrtoint ptr %offset_bits28 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset_bits28, align 4
  br i1 %cmp20, label %if.then22, label %if.else51

if.then22:                                        ; preds = %if.else
  %22 = add i32 %3, %21
  %sub32 = sub i32 64, %22
  %sub35 = sub nuw nsw i32 64, %3
  %sh_prom36 = zext i32 %sub35 to i64
  %shr37 = lshr i64 -1, %sh_prom36
  %sh_prom38 = zext i32 %sub32 to i64
  %shl39 = shl i64 %shr37, %sh_prom38
  %offset_words41 = getelementptr %struct.ib_field, ptr %desc, i32 %i.0150, i32 2
  %23 = ptrtoint ptr %offset_words41 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offset_words41, align 4
  %add.ptr42 = getelementptr i64, ptr %buf, i32 %24
  %25 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %add.ptr42, align 8
  %and44 = and i64 %shl39, %26
  %shr46 = lshr i64 %and44, %sh_prom38
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  %mul.i131 = shl i32 %1, 3
  %29 = add i32 %mul.i131, -8
  %30 = lshr exact i32 %29, 3
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %30, label %do.end.i143 [
    i32 0, label %sw.bb.i134
    i32 1, label %sw.bb1.i137
    i32 3, label %sw.bb4.i139
    i32 7, label %sw.bb7.i141
  ]

sw.bb.i134:                                       ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #4
  %conv.i132 = trunc i64 %shr46 to i8
  %add.ptr.i133 = getelementptr i8, ptr %structure, i32 %28
  %32 = ptrtoint ptr %add.ptr.i133 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv.i132, ptr %add.ptr.i133, align 1
  br label %for.inc

sw.bb1.i137:                                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #4
  %conv2.i135 = trunc i64 %shr46 to i16
  %add.ptr3.i136 = getelementptr i8, ptr %structure, i32 %28
  %33 = ptrtoint ptr %add.ptr3.i136 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv2.i135, ptr %add.ptr3.i136, align 2
  br label %for.inc

sw.bb4.i139:                                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #4
  %conv5.i = trunc i64 %shr46 to i32
  %add.ptr6.i138 = getelementptr i8, ptr %structure, i32 %28
  %34 = ptrtoint ptr %add.ptr6.i138 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv5.i, ptr %add.ptr6.i138, align 4
  br label %for.inc

sw.bb7.i141:                                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr8.i140 = getelementptr i8, ptr %structure, i32 %28
  %35 = ptrtoint ptr %add.ptr8.i140 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %shr46, ptr %add.ptr8.i140, align 8
  br label %for.inc

do.end.i143:                                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #4
  %call.i142 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %mul.i131) #5
  br label %for.inc

if.else51:                                        ; preds = %if.else
  %36 = and i32 %21, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool54.not = icmp eq i32 %36, 0
  %37 = and i32 %3, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool58.not = icmp eq i32 %37, 0
  %or.cond = select i1 %tobool54.not, i1 %tobool58.not, i1 false
  br i1 %or.cond, label %if.else51.if.end64_crit_edge, label %do.end

if.else51.if.end64_crit_edge:                     ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end64

do.end:                                           ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #4
  %field_name = getelementptr %struct.ib_field, ptr %desc, i32 %i.0150, i32 5
  %38 = ptrtoint ptr %field_name to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %field_name, align 4
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %39, i32 noundef %3) #5
  br label %if.end64

if.end64:                                         ; preds = %do.end, %if.else51.if.end64_crit_edge
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx, align 4
  %add.ptr67 = getelementptr i8, ptr %structure, i32 %41
  %offset_words69 = getelementptr %struct.ib_field, ptr %desc, i32 %i.0150, i32 2
  %42 = ptrtoint ptr %offset_words69 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %offset_words69, align 4
  %mul = shl i32 %43, 2
  %add.ptr70 = getelementptr i8, ptr %buf, i32 %mul
  %44 = ptrtoint ptr %offset_bits28 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %offset_bits28, align 4
  %div = sdiv i32 %45, 8
  %add.ptr73 = getelementptr i8, ptr %add.ptr70, i32 %div
  %46 = ptrtoint ptr %size_bits to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %size_bits, align 4
  %div76 = sdiv i32 %47, 8
  %48 = call ptr @memcpy(ptr %add.ptr67, ptr %add.ptr73, i32 %div76)
  br label %for.inc

for.inc:                                          ; preds = %if.end64, %do.end.i143, %sw.bb7.i141, %sw.bb4.i139, %sw.bb1.i137, %sw.bb.i134, %do.end.i, %sw.bb7.i, %sw.bb4.i, %sw.bb1.i, %sw.bb.i, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0150, 1
  %exitcond.not = icmp eq i32 %inc, %desc_len
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }
attributes #5 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !14, !16, !17, !18, !19, !21, !22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/core/packer.c", i32 107, i32 5}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ib_pack._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ib_pack._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__ksymtab_ib_pack, !7, !"__ksymtab_ib_pack", i1 false, i1 false}
!7 = !{!"../drivers/infiniband/core/packer.c", i32 124, i32 1}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/core/packer.c", i32 190, i32 5}
!10 = !{ptr @ib_unpack._entry, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @ib_unpack._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @__ksymtab_ib_unpack, !13, !"__ksymtab_ib_unpack", i1 false, i1 false}
!13 = !{!"../drivers/infiniband/core/packer.c", i32 201, i32 1}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/infiniband/core/packer.c", i32 47, i32 3}
!16 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @value_read._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @value_read._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/infiniband/core/packer.c", i32 134, i32 3}
!21 = !{ptr @value_write._entry, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @value_write._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
