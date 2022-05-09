; ModuleID = '/llk/IR_all_yes/lib/asn1_encoder.c_pt.bc'
source_filename = "../lib/asn1_encoder.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+asn1_encode_integer\22, \22a\22\09"
module asm "\09.weak\09__crc_asn1_encode_integer\09\09\09\09"
module asm "\09.long\09__crc_asn1_encode_integer\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_asn1_encode_integer:\09\09\09\09\09"
module asm "\09.asciz \09\22asn1_encode_integer\22\09\09\09\09\09"
module asm "__kstrtabns_asn1_encode_integer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+asn1_encode_oid\22, \22a\22\09"
module asm "\09.weak\09__crc_asn1_encode_oid\09\09\09\09"
module asm "\09.long\09__crc_asn1_encode_oid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_asn1_encode_oid:\09\09\09\09\09"
module asm "\09.asciz \09\22asn1_encode_oid\22\09\09\09\09\09"
module asm "__kstrtabns_asn1_encode_oid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+asn1_encode_tag\22, \22a\22\09"
module asm "\09.weak\09__crc_asn1_encode_tag\09\09\09\09"
module asm "\09.long\09__crc_asn1_encode_tag\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_asn1_encode_tag:\09\09\09\09\09"
module asm "\09.asciz \09\22asn1_encode_tag\22\09\09\09\09\09"
module asm "__kstrtabns_asn1_encode_tag:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+asn1_encode_octet_string\22, \22a\22\09"
module asm "\09.weak\09__crc_asn1_encode_octet_string\09\09\09\09"
module asm "\09.long\09__crc_asn1_encode_octet_string\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_asn1_encode_octet_string:\09\09\09\09\09"
module asm "\09.asciz \09\22asn1_encode_octet_string\22\09\09\09\09\09"
module asm "__kstrtabns_asn1_encode_octet_string:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+asn1_encode_sequence\22, \22a\22\09"
module asm "\09.weak\09__crc_asn1_encode_sequence\09\09\09\09"
module asm "\09.long\09__crc_asn1_encode_sequence\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_asn1_encode_sequence:\09\09\09\09\09"
module asm "\09.asciz \09\22asn1_encode_sequence\22\09\09\09\09\09"
module asm "__kstrtabns_asn1_encode_sequence:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+asn1_encode_boolean\22, \22a\22\09"
module asm "\09.weak\09__crc_asn1_encode_boolean\09\09\09\09"
module asm "\09.long\09__crc_asn1_encode_boolean\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_asn1_encode_boolean:\09\09\09\09\09"
module asm "\09.asciz \09\22asn1_encode_boolean\22\09\09\09\09\09"
module asm "__kstrtabns_asn1_encode_boolean:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lib/asn1_encoder.c\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"BUG: integer encode only supports positive integers\00", [44 x i8] zeroinitializer }, align 32
@__kstrtab_asn1_encode_integer = external dso_local constant [0 x i8], align 1
@__kstrtabns_asn1_encode_integer = external dso_local constant [0 x i8], align 1
@__ksymtab_asn1_encode_integer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @asn1_encode_integer to i32), ptr @__kstrtab_asn1_encode_integer, ptr @__kstrtabns_asn1_encode_integer }, section "___ksymtab_gpl+asn1_encode_integer", align 4
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"OID must have at least two elements\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"OID is too large\00", [47 x i8] zeroinitializer }, align 32
@__kstrtab_asn1_encode_oid = external dso_local constant [0 x i8], align 1
@__kstrtabns_asn1_encode_oid = external dso_local constant [0 x i8], align 1
@__ksymtab_asn1_encode_oid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @asn1_encode_oid to i32), ptr @__kstrtab_asn1_encode_oid, ptr @__kstrtabns_asn1_encode_oid }, section "___ksymtab_gpl+asn1_encode_oid", align 4
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ASN.1 tag can't be > 30\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"BUG: recode tag is too big (>127)\00", [62 x i8] zeroinitializer }, align 32
@__kstrtab_asn1_encode_tag = external dso_local constant [0 x i8], align 1
@__kstrtabns_asn1_encode_tag = external dso_local constant [0 x i8], align 1
@__ksymtab_asn1_encode_tag = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @asn1_encode_tag to i32), ptr @__kstrtab_asn1_encode_tag, ptr @__kstrtabns_asn1_encode_tag }, section "___ksymtab_gpl+asn1_encode_tag", align 4
@__kstrtab_asn1_encode_octet_string = external dso_local constant [0 x i8], align 1
@__kstrtabns_asn1_encode_octet_string = external dso_local constant [0 x i8], align 1
@__ksymtab_asn1_encode_octet_string = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @asn1_encode_octet_string to i32), ptr @__kstrtab_asn1_encode_octet_string, ptr @__kstrtabns_asn1_encode_octet_string }, section "___ksymtab_gpl+asn1_encode_octet_string", align 4
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"BUG: recode sequence is too big (>127)\00", [57 x i8] zeroinitializer }, align 32
@__kstrtab_asn1_encode_sequence = external dso_local constant [0 x i8], align 1
@__kstrtabns_asn1_encode_sequence = external dso_local constant [0 x i8], align 1
@__ksymtab_asn1_encode_sequence = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @asn1_encode_sequence to i32), ptr @__kstrtab_asn1_encode_sequence, ptr @__kstrtabns_asn1_encode_sequence }, section "___ksymtab_gpl+asn1_encode_sequence", align 4
@__kstrtab_asn1_encode_boolean = external dso_local constant [0 x i8], align 1
@__kstrtabns_asn1_encode_boolean = external dso_local constant [0 x i8], align 1
@__ksymtab_asn1_encode_boolean = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @asn1_encode_boolean to i32), ptr @__kstrtab_asn1_encode_boolean, ptr @__kstrtabns_asn1_encode_boolean }, section "___ksymtab_gpl+asn1_encode_boolean", align 4
@__UNIQUE_ID_file106 = internal constant [35 x i8] c"asn1_encoder.file=lib/asn1_encoder\00", section ".modinfo", align 1
@__UNIQUE_ID_license107 = internal constant [25 x i8] c"asn1_encoder.license=GPL\00", section ".modinfo", align 1
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ASN.1 length can't be > 0xffffff\00", [63 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 32, i32 6 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 148, i32 6 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 151, i32 6 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 276, i32 6 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 279, i32 17 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 379, i32 14 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private constant [22 x i8] c"../lib/asn1_encoder.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 229, i32 6 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_file106, ptr @__UNIQUE_ID_license107, ptr @__ksymtab_asn1_encode_boolean, ptr @__ksymtab_asn1_encode_integer, ptr @__ksymtab_asn1_encode_octet_string, ptr @__ksymtab_asn1_encode_oid, ptr @__ksymtab_asn1_encode_sequence, ptr @__ksymtab_asn1_encode_tag, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @asn1_encode_integer(ptr noundef %data, ptr noundef %end_data, i64 noundef %integer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  %sub.ptr.lhs.cast = ptrtoint ptr %end_data to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %data to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %arrayidx = getelementptr i8, ptr %data, i32 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %integer)
  %cmp = icmp slt i64 %integer, 0
  br i1 %cmp, label %do.end, label %if.end21, !prof !38

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 33, i32 noundef 9, ptr noundef nonnull @.str.1) #5
  br label %cleanup61

if.end21:                                         ; preds = %entry
  %cmp.i = icmp ugt ptr %data, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end21.cleanup61_crit_edge, label %if.end24

if.end21.cleanup61_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup61

if.end24:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.ptr.sub)
  %cmp25 = icmp slt i32 %sub.ptr.sub, 3
  br i1 %cmp25, label %if.end24.cleanup61_crit_edge, label %if.end28

if.end24.cleanup61_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup61

if.end28:                                         ; preds = %if.end24
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 2, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %integer)
  %cmp30 = icmp eq i64 %integer, 0
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #4
  %incdec.ptr = getelementptr i8, ptr %data, i32 3
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %arrayidx, align 1
  br label %out

if.end32:                                         ; preds = %if.end28
  %sub = add nsw i32 %sub.ptr.sub, -2
  %shr225 = lshr i64 %integer, 56
  %conv = trunc i64 %shr225 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %cmp36 = icmp eq i32 %conv, 0
  br i1 %cmp36, label %if.end32.for.inc_crit_edge, label %if.end39

if.end32.for.inc_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc

if.end39:                                         ; preds = %if.end32
  %and = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool42.not = icmp eq i32 %and, 0
  br i1 %tobool42.not, label %if.end39.if.end50_crit_edge, label %if.end45

if.end39.if.end50_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end50

if.end45:                                         ; preds = %if.end39
  %incdec.ptr44 = getelementptr i8, ptr %data, i32 3
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %arrayidx, align 1
  %dec = add nsw i32 %sub.ptr.sub, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp46 = icmp eq i32 %dec, 0
  br i1 %cmp46, label %if.end45.cleanup61_crit_edge, label %if.end45.if.end50_crit_edge

if.end45.if.end50_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end50

if.end45.cleanup61_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup61

if.end50:                                         ; preds = %if.end45.if.end50_crit_edge, %if.end39.if.end50_crit_edge
  %d.1108 = phi ptr [ %incdec.ptr44, %if.end45.if.end50_crit_edge ], [ %arrayidx, %if.end39.if.end50_crit_edge ]
  %data_len.1107 = phi i32 [ %dec, %if.end45.if.end50_crit_edge ], [ %sub, %if.end39.if.end50_crit_edge ]
  %conv51 = trunc i64 %shr225 to i8
  %incdec.ptr52 = getelementptr i8, ptr %d.1108, i32 1
  %3 = ptrtoint ptr %d.1108 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv51, ptr %d.1108, align 1
  %dec53 = add nsw i32 %data_len.1107, -1
  br label %for.inc

for.inc:                                          ; preds = %if.end50, %if.end32.for.inc_crit_edge
  %data_len.2.ph = phi i32 [ %sub, %if.end32.for.inc_crit_edge ], [ %dec53, %if.end50 ]
  %d.2.ph = phi ptr [ %arrayidx, %if.end32.for.inc_crit_edge ], [ %incdec.ptr52, %if.end50 ]
  %shr.1226 = lshr i64 %integer, 48
  %4 = or i64 %shr225, %shr.1226
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %for.inc.1, label %if.end39.1

if.end39.1:                                       ; preds = %for.inc
  %6 = and i64 %integer, 36028797018963968
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool42.not.1 = icmp ne i64 %6, 0
  %7 = and i1 %cmp36, %tobool42.not.1
  br i1 %7, label %if.then43.1, label %if.end39.1.if.end45.1_crit_edge

if.end39.1.if.end45.1_crit_edge:                  ; preds = %if.end39.1
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end45.1

if.then43.1:                                      ; preds = %if.end39.1
  call void @__sanitizer_cov_trace_pc() #4
  %incdec.ptr44.1 = getelementptr i8, ptr %d.2.ph, i32 1
  %8 = ptrtoint ptr %d.2.ph to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %d.2.ph, align 1
  %dec.1 = add nsw i32 %data_len.2.ph, -1
  br label %if.end45.1

if.end45.1:                                       ; preds = %if.then43.1, %if.end39.1.if.end45.1_crit_edge
  %data_len.1.1 = phi i32 [ %data_len.2.ph, %if.end39.1.if.end45.1_crit_edge ], [ %dec.1, %if.then43.1 ]
  %d.1.1 = phi ptr [ %d.2.ph, %if.end39.1.if.end45.1_crit_edge ], [ %incdec.ptr44.1, %if.then43.1 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_len.1.1)
  %cmp46.1 = icmp eq i32 %data_len.1.1, 0
  br i1 %cmp46.1, label %if.end45.1.cleanup61_crit_edge, label %if.end39.2.thread

if.end45.1.cleanup61_crit_edge:                   ; preds = %if.end45.1
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup61

if.end39.2.thread:                                ; preds = %if.end45.1
  call void @__sanitizer_cov_trace_pc() #4
  %conv51.1 = trunc i64 %shr.1226 to i8
  %incdec.ptr52.1 = getelementptr i8, ptr %d.1.1, i32 1
  %9 = ptrtoint ptr %d.1.1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv51.1, ptr %d.1.1, align 1
  %dec53.1 = add nsw i32 %data_len.1.1, -1
  %shr.2112236 = lshr i64 %integer, 40
  %extract.t238 = trunc i64 %shr.2112236 to i8
  br label %if.end45.2

for.inc.1:                                        ; preds = %for.inc
  %shr.2227 = lshr i64 %integer, 40
  %10 = or i64 %shr225, %shr.2227
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %for.inc.2, label %if.end39.2

if.end39.2:                                       ; preds = %for.inc.1
  %12 = and i64 %integer, 140737488355328
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %tobool42.not.2 = icmp ne i64 %12, 0
  %13 = and i1 %cmp36, %tobool42.not.2
  %extract.t = trunc i64 %shr.2227 to i8
  br i1 %13, label %if.then43.2, label %if.end39.2.if.end45.2_crit_edge

if.end39.2.if.end45.2_crit_edge:                  ; preds = %if.end39.2
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end45.2

if.then43.2:                                      ; preds = %if.end39.2
  call void @__sanitizer_cov_trace_pc() #4
  %incdec.ptr44.2 = getelementptr i8, ptr %d.2.ph, i32 1
  %14 = ptrtoint ptr %d.2.ph to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %d.2.ph, align 1
  %dec.2 = add nsw i32 %data_len.2.ph, -1
  %extract.t237 = trunc i64 %shr.2227 to i8
  br label %if.end45.2

if.end45.2:                                       ; preds = %if.then43.2, %if.end39.2.if.end45.2_crit_edge, %if.end39.2.thread
  %shr.2118128.off0 = phi i8 [ %extract.t, %if.end39.2.if.end45.2_crit_edge ], [ %extract.t237, %if.then43.2 ], [ %extract.t238, %if.end39.2.thread ]
  %data_len.1.2 = phi i32 [ %data_len.2.ph, %if.end39.2.if.end45.2_crit_edge ], [ %dec.2, %if.then43.2 ], [ %dec53.1, %if.end39.2.thread ]
  %d.1.2 = phi ptr [ %d.2.ph, %if.end39.2.if.end45.2_crit_edge ], [ %incdec.ptr44.2, %if.then43.2 ], [ %incdec.ptr52.1, %if.end39.2.thread ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_len.1.2)
  %cmp46.2 = icmp eq i32 %data_len.1.2, 0
  br i1 %cmp46.2, label %if.end45.2.cleanup61_crit_edge, label %if.end39.3.thread

if.end45.2.cleanup61_crit_edge:                   ; preds = %if.end45.2
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup61

if.end39.3.thread:                                ; preds = %if.end45.2
  call void @__sanitizer_cov_trace_pc() #4
  %incdec.ptr52.2 = getelementptr i8, ptr %d.1.2, i32 1
  %15 = ptrtoint ptr %d.1.2 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %shr.2118128.off0, ptr %d.1.2, align 1
  %dec53.2 = add nsw i32 %data_len.1.2, -1
  %shr.3132228 = lshr i64 %integer, 32
  %extract.t241 = trunc i64 %shr.3132228 to i8
  br label %if.end45.3

for.inc.2:                                        ; preds = %for.inc.1
  %shr.3232 = lshr i64 %integer, 32
  %16 = or i64 %shr225, %shr.3232
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %for.inc.3, label %if.end39.3

if.end39.3:                                       ; preds = %for.inc.2
  %18 = and i64 %integer, 549755813888
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %tobool42.not.3 = icmp ne i64 %18, 0
  %19 = and i1 %cmp36, %tobool42.not.3
  %extract.t239 = trunc i64 %shr.3232 to i8
  br i1 %19, label %if.then43.3, label %if.end39.3.if.end45.3_crit_edge

if.end39.3.if.end45.3_crit_edge:                  ; preds = %if.end39.3
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end45.3

if.then43.3:                                      ; preds = %if.end39.3
  call void @__sanitizer_cov_trace_pc() #4
  %incdec.ptr44.3 = getelementptr i8, ptr %d.2.ph, i32 1
  %20 = ptrtoint ptr %d.2.ph to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %d.2.ph, align 1
  %dec.3 = add nsw i32 %data_len.2.ph, -1
  %extract.t240 = trunc i64 %shr.3232 to i8
  br label %if.end45.3

if.end45.3:                                       ; preds = %if.then43.3, %if.end39.3.if.end45.3_crit_edge, %if.end39.3.thread
  %shr.3138148.off0 = phi i8 [ %extract.t239, %if.end39.3.if.end45.3_crit_edge ], [ %extract.t240, %if.then43.3 ], [ %extract.t241, %if.end39.3.thread ]
  %data_len.1.3 = phi i32 [ %data_len.2.ph, %if.end39.3.if.end45.3_crit_edge ], [ %dec.3, %if.then43.3 ], [ %dec53.2, %if.end39.3.thread ]
  %d.1.3 = phi ptr [ %d.2.ph, %if.end39.3.if.end45.3_crit_edge ], [ %incdec.ptr44.3, %if.then43.3 ], [ %incdec.ptr52.2, %if.end39.3.thread ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_len.1.3)
  %cmp46.3 = icmp eq i32 %data_len.1.3, 0
  br i1 %cmp46.3, label %if.end45.3.cleanup61_crit_edge, label %if.end39.4.thread

if.end45.3.cleanup61_crit_edge:                   ; preds = %if.end45.3
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup61

if.end39.4.thread:                                ; preds = %if.end45.3
  call void @__sanitizer_cov_trace_pc() #4
  %incdec.ptr52.3 = getelementptr i8, ptr %d.1.3, i32 1
  %21 = ptrtoint ptr %d.1.3 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %shr.3138148.off0, ptr %d.1.3, align 1
  %dec53.3 = add nsw i32 %data_len.1.3, -1
  %shr.4152229 = lshr i64 %integer, 24
  %extract.t244 = trunc i64 %shr.4152229 to i8
  br label %if.end45.4

for.inc.3:                                        ; preds = %for.inc.2
  %shr.4233 = lshr i64 %integer, 24
  %22 = or i64 %shr225, %shr.4233
  %23 = trunc i64 %22 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %for.inc.4, label %if.end39.4

if.end39.4:                                       ; preds = %for.inc.3
  %25 = and i64 %integer, 2147483648
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %25)
  %tobool42.not.4 = icmp ne i64 %25, 0
  %26 = and i1 %cmp36, %tobool42.not.4
  %extract.t242 = trunc i64 %shr.4233 to i8
  br i1 %26, label %if.then43.4, label %if.end39.4.if.end45.4_crit_edge

if.end39.4.if.end45.4_crit_edge:                  ; preds = %if.end39.4
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end45.4

if.then43.4:                                      ; preds = %if.end39.4
  call void @__sanitizer_cov_trace_pc() #4
  %incdec.ptr44.4 = getelementptr i8, ptr %d.2.ph, i32 1
  %27 = ptrtoint ptr %d.2.ph to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %d.2.ph, align 1
  %dec.4 = add nsw i32 %data_len.2.ph, -1
  %extract.t243 = trunc i64 %shr.4233 to i8
  br label %if.end45.4

if.end45.4:                                       ; preds = %if.then43.4, %if.end39.4.if.end45.4_crit_edge, %if.end39.4.thread
  %shr.4158168.off0 = phi i8 [ %extract.t242, %if.end39.4.if.end45.4_crit_edge ], [ %extract.t243, %if.then43.4 ], [ %extract.t244, %if.end39.4.thread ]
  %data_len.1.4 = phi i32 [ %data_len.2.ph, %if.end39.4.if.end45.4_crit_edge ], [ %dec.4, %if.then43.4 ], [ %dec53.3, %if.end39.4.thread ]
  %d.1.4 = phi ptr [ %d.2.ph, %if.end39.4.if.end45.4_crit_edge ], [ %incdec.ptr44.4, %if.then43.4 ], [ %incdec.ptr52.3, %if.end39.4.thread ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_len.1.4)
  %cmp46.4 = icmp eq i32 %data_len.1.4, 0
  br i1 %cmp46.4, label %if.end45.4.cleanup61_crit_edge, label %if.end39.5.thread

if.end45.4.cleanup61_crit_edge:                   ; preds = %if.end45.4
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup61

if.end39.5.thread:                                ; preds = %if.end45.4
  call void @__sanitizer_cov_trace_pc() #4
  %incdec.ptr52.4 = getelementptr i8, ptr %d.1.4, i32 1
  %28 = ptrtoint ptr %d.1.4 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %shr.4158168.off0, ptr %d.1.4, align 1
  %dec53.4 = add nsw i32 %data_len.1.4, -1
  %shr.5172230 = lshr i64 %integer, 16
  %extract.t247 = trunc i64 %shr.5172230 to i8
  br label %if.end45.5

for.inc.4:                                        ; preds = %for.inc.3
  %shr.5234 = lshr i64 %integer, 16
  %29 = or i64 %shr225, %shr.5234
  %30 = trunc i64 %29 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %for.inc.5, label %if.end39.5

if.end39.5:                                       ; preds = %for.inc.4
  %32 = and i64 %integer, 8388608
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %32)
  %tobool42.not.5 = icmp ne i64 %32, 0
  %33 = and i1 %cmp36, %tobool42.not.5
  %extract.t245 = trunc i64 %shr.5234 to i8
  br i1 %33, label %if.then43.5, label %if.end39.5.if.end45.5_crit_edge

if.end39.5.if.end45.5_crit_edge:                  ; preds = %if.end39.5
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end45.5

if.then43.5:                                      ; preds = %if.end39.5
  call void @__sanitizer_cov_trace_pc() #4
  %incdec.ptr44.5 = getelementptr i8, ptr %d.2.ph, i32 1
  %34 = ptrtoint ptr %d.2.ph to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %d.2.ph, align 1
  %dec.5 = add nsw i32 %data_len.2.ph, -1
  %extract.t246 = trunc i64 %shr.5234 to i8
  br label %if.end45.5

if.end45.5:                                       ; preds = %if.then43.5, %if.end39.5.if.end45.5_crit_edge, %if.end39.5.thread
  %shr.5178188.off0 = phi i8 [ %extract.t245, %if.end39.5.if.end45.5_crit_edge ], [ %extract.t246, %if.then43.5 ], [ %extract.t247, %if.end39.5.thread ]
  %data_len.1.5 = phi i32 [ %data_len.2.ph, %if.end39.5.if.end45.5_crit_edge ], [ %dec.5, %if.then43.5 ], [ %dec53.4, %if.end39.5.thread ]
  %d.1.5 = phi ptr [ %d.2.ph, %if.end39.5.if.end45.5_crit_edge ], [ %incdec.ptr44.5, %if.then43.5 ], [ %incdec.ptr52.4, %if.end39.5.thread ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_len.1.5)
  %cmp46.5 = icmp eq i32 %data_len.1.5, 0
  br i1 %cmp46.5, label %if.end45.5.cleanup61_crit_edge, label %if.end39.6.thread

if.end45.5.cleanup61_crit_edge:                   ; preds = %if.end45.5
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup61

if.end39.6.thread:                                ; preds = %if.end45.5
  call void @__sanitizer_cov_trace_pc() #4
  %incdec.ptr52.5 = getelementptr i8, ptr %d.1.5, i32 1
  %35 = ptrtoint ptr %d.1.5 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %shr.5178188.off0, ptr %d.1.5, align 1
  %dec53.5 = add nsw i32 %data_len.1.5, -1
  %shr.6192231 = lshr i64 %integer, 8
  %extract.t250 = trunc i64 %shr.6192231 to i8
  br label %if.end45.6

for.inc.5:                                        ; preds = %for.inc.4
  %shr.6235 = lshr i64 %integer, 8
  %36 = or i64 %shr225, %shr.6235
  %37 = trunc i64 %36 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %for.inc.6, label %if.end39.6

if.end39.6:                                       ; preds = %for.inc.5
  %39 = and i64 %integer, 32768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %39)
  %tobool42.not.6 = icmp ne i64 %39, 0
  %40 = and i1 %cmp36, %tobool42.not.6
  %extract.t248 = trunc i64 %shr.6235 to i8
  br i1 %40, label %if.then43.6, label %if.end39.6.if.end45.6_crit_edge

if.end39.6.if.end45.6_crit_edge:                  ; preds = %if.end39.6
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end45.6

if.then43.6:                                      ; preds = %if.end39.6
  call void @__sanitizer_cov_trace_pc() #4
  %incdec.ptr44.6 = getelementptr i8, ptr %d.2.ph, i32 1
  %41 = ptrtoint ptr %d.2.ph to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %d.2.ph, align 1
  %dec.6 = add nsw i32 %data_len.2.ph, -1
  %extract.t249 = trunc i64 %shr.6235 to i8
  br label %if.end45.6

if.end45.6:                                       ; preds = %if.then43.6, %if.end39.6.if.end45.6_crit_edge, %if.end39.6.thread
  %shr.6198208.off0 = phi i8 [ %extract.t248, %if.end39.6.if.end45.6_crit_edge ], [ %extract.t249, %if.then43.6 ], [ %extract.t250, %if.end39.6.thread ]
  %data_len.1.6 = phi i32 [ %data_len.2.ph, %if.end39.6.if.end45.6_crit_edge ], [ %dec.6, %if.then43.6 ], [ %dec53.5, %if.end39.6.thread ]
  %d.1.6 = phi ptr [ %d.2.ph, %if.end39.6.if.end45.6_crit_edge ], [ %incdec.ptr44.6, %if.then43.6 ], [ %incdec.ptr52.5, %if.end39.6.thread ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_len.1.6)
  %cmp46.6 = icmp eq i32 %data_len.1.6, 0
  br i1 %cmp46.6, label %if.end45.6.cleanup61_crit_edge, label %if.end39.7.thread

if.end45.6.cleanup61_crit_edge:                   ; preds = %if.end45.6
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup61

if.end39.7.thread:                                ; preds = %if.end45.6
  call void @__sanitizer_cov_trace_pc() #4
  %incdec.ptr52.6 = getelementptr i8, ptr %d.1.6, i32 1
  %42 = ptrtoint ptr %d.1.6 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %shr.6198208.off0, ptr %d.1.6, align 1
  %dec53.6 = add nsw i32 %data_len.1.6, -1
  br label %if.end45.7

for.inc.6:                                        ; preds = %for.inc.5
  %43 = or i64 %shr225, %integer
  %44 = trunc i64 %43 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %for.inc.6.out_crit_edge, label %if.end39.7

for.inc.6.out_crit_edge:                          ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

if.end39.7:                                       ; preds = %for.inc.6
  %and.7251 = and i64 %integer, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.7251)
  %tobool42.not.7 = icmp ne i64 %and.7251, 0
  %46 = and i1 %cmp36, %tobool42.not.7
  br i1 %46, label %if.then43.7, label %if.end39.7.if.end45.7_crit_edge

if.end39.7.if.end45.7_crit_edge:                  ; preds = %if.end39.7
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end45.7

if.then43.7:                                      ; preds = %if.end39.7
  call void @__sanitizer_cov_trace_pc() #4
  %incdec.ptr44.7 = getelementptr i8, ptr %d.2.ph, i32 1
  %47 = ptrtoint ptr %d.2.ph to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %d.2.ph, align 1
  %dec.7 = add nsw i32 %data_len.2.ph, -1
  br label %if.end45.7

if.end45.7:                                       ; preds = %if.then43.7, %if.end39.7.if.end45.7_crit_edge, %if.end39.7.thread
  %data_len.1.7 = phi i32 [ %data_len.2.ph, %if.end39.7.if.end45.7_crit_edge ], [ %dec.7, %if.then43.7 ], [ %dec53.6, %if.end39.7.thread ]
  %d.1.7 = phi ptr [ %d.2.ph, %if.end39.7.if.end45.7_crit_edge ], [ %incdec.ptr44.7, %if.then43.7 ], [ %incdec.ptr52.6, %if.end39.7.thread ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_len.1.7)
  %cmp46.7 = icmp eq i32 %data_len.1.7, 0
  br i1 %cmp46.7, label %if.end45.7.cleanup61_crit_edge, label %if.end50.7

if.end45.7.cleanup61_crit_edge:                   ; preds = %if.end45.7
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup61

if.end50.7:                                       ; preds = %if.end45.7
  call void @__sanitizer_cov_trace_pc() #4
  %conv51.7 = trunc i64 %integer to i8
  %incdec.ptr52.7 = getelementptr i8, ptr %d.1.7, i32 1
  %48 = ptrtoint ptr %d.1.7 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv51.7, ptr %d.1.7, align 1
  br label %out

out:                                              ; preds = %if.end50.7, %for.inc.6.out_crit_edge, %if.then31
  %d.3 = phi ptr [ %incdec.ptr, %if.then31 ], [ %d.2.ph, %for.inc.6.out_crit_edge ], [ %incdec.ptr52.7, %if.end50.7 ]
  %sub.ptr.lhs.cast55 = ptrtoint ptr %d.3 to i32
  %sub.ptr.sub57 = sub i32 %sub.ptr.lhs.cast55, %sub.ptr.rhs.cast
  %49 = trunc i32 %sub.ptr.sub57 to i8
  %conv59 = add i8 %49, -2
  %arrayidx60 = getelementptr i8, ptr %data, i32 1
  %50 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv59, ptr %arrayidx60, align 1
  br label %cleanup61

cleanup61:                                        ; preds = %out, %if.end45.7.cleanup61_crit_edge, %if.end45.6.cleanup61_crit_edge, %if.end45.5.cleanup61_crit_edge, %if.end45.4.cleanup61_crit_edge, %if.end45.3.cleanup61_crit_edge, %if.end45.2.cleanup61_crit_edge, %if.end45.1.cleanup61_crit_edge, %if.end45.cleanup61_crit_edge, %if.end24.cleanup61_crit_edge, %if.end21.cleanup61_crit_edge, %do.end
  %retval.2 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %d.3, %out ], [ %data, %if.end21.cleanup61_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end24.cleanup61_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end45.7.cleanup61_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end45.6.cleanup61_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end45.5.cleanup61_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end45.4.cleanup61_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end45.3.cleanup61_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end45.2.cleanup61_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end45.1.cleanup61_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end45.cleanup61_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @asn1_encode_oid(ptr noundef %data, ptr noundef %end_data, ptr nocapture noundef readonly %oid, i32 noundef %oid_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  %sub.ptr.lhs.cast = ptrtoint ptr %end_data to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %data to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr = getelementptr i8, ptr %data, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %oid_len)
  %cmp = icmp slt i32 %oid_len, 2
  br i1 %cmp, label %do.end, label %if.end21, !prof !38

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 148, i32 noundef 9, ptr noundef nonnull @.str.2) #5
  br label %cleanup

if.end21:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %oid_len)
  %cmp23 = icmp ugt i32 %oid_len, 32
  br i1 %cmp23, label %do.end39, label %if.end56, !prof !38

do.end39:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %cleanup

if.end56:                                         ; preds = %if.end21
  %cmp.i = icmp ugt ptr %data, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end56.cleanup_crit_edge, label %if.end59

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end59:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.ptr.sub)
  %cmp60 = icmp slt i32 %sub.ptr.sub, 3
  br i1 %cmp60, label %if.end59.cleanup_crit_edge, label %if.end63

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end63:                                         ; preds = %if.end59
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 6, ptr %data, align 1
  %1 = ptrtoint ptr %oid to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %oid, align 4
  %mul = mul i32 %2, 40
  %arrayidx65 = getelementptr i32, ptr %oid, i32 1
  %3 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx65, align 4
  %add = add i32 %mul, %4
  %conv = trunc i32 %add to i8
  %incdec.ptr = getelementptr i8, ptr %data, i32 3
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %oid_len)
  %cmp66116 = icmp ugt i32 %oid_len, 2
  br i1 %cmp66116, label %for.body.preheader, label %if.end63.for.end_crit_edge

if.end63.for.end_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.body.preheader:                               ; preds = %if.end63
  %sub = add nsw i32 %sub.ptr.sub, -3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0119 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 2, %for.body.preheader ]
  %d.0118 = phi ptr [ %data.1.ph.i, %for.inc.for.body_crit_edge ], [ %incdec.ptr, %for.body.preheader ]
  %data_len.0117 = phi i32 [ %dec23.i, %for.inc.for.body_crit_edge ], [ %sub, %for.body.preheader ]
  %arrayidx68 = getelementptr i32, ptr %oid, i32 %i.0119
  %6 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %data_len.0117)
  %cmp.i99 = icmp slt i32 %data_len.0117, 1
  br i1 %cmp.i99, label %for.body.cleanup_crit_edge, label %if.end.i

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1.i = icmp eq i32 %7, 0
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i.while.cond.i_crit_edge

if.end.i.while.cond.i_crit_edge:                  ; preds = %if.end.i
  br label %while.cond.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  %8 = ptrtoint ptr %d.0118 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -128, ptr %d.0118, align 1
  br label %for.inc

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.end.i.while.cond.i_crit_edge
  %start.0.i = phi i32 [ %sub.i, %while.cond.i.while.cond.i_crit_edge ], [ 28, %if.end.i.while.cond.i_crit_edge ]
  %shr.i = lshr i32 %7, %start.0.i
  %cmp4.i = icmp eq i32 %shr.i, 0
  %sub.i = add i32 %start.0.i, -7
  br i1 %cmp4.i, label %while.cond.i.while.cond.i_crit_edge, label %while.cond5.preheader.i

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.cond.i

while.cond5.preheader.i:                          ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start.0.i)
  %cmp650.i = icmp sgt i32 %start.0.i, 0
  br i1 %cmp650.i, label %while.cond5.preheader.i.land.rhs.i_crit_edge, label %while.cond5.preheader.i.while.end17.i_crit_edge

while.cond5.preheader.i.while.end17.i_crit_edge:  ; preds = %while.cond5.preheader.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end17.i

while.cond5.preheader.i.land.rhs.i_crit_edge:     ; preds = %while.cond5.preheader.i
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body8.i.land.rhs.i_crit_edge, %while.cond5.preheader.i.land.rhs.i_crit_edge
  %data_len.1 = phi i32 [ %dec16.i, %while.body8.i.land.rhs.i_crit_edge ], [ %data_len.0117, %while.cond5.preheader.i.land.rhs.i_crit_edge ]
  %start.153.i = phi i32 [ %sub12.i, %while.body8.i.land.rhs.i_crit_edge ], [ %start.0.i, %while.cond5.preheader.i.land.rhs.i_crit_edge ]
  %data.052.i = phi ptr [ %incdec.ptr15.i, %while.body8.i.land.rhs.i_crit_edge ], [ %d.0118, %while.cond5.preheader.i.land.rhs.i_crit_edge ]
  %oid.addr.051.i = phi i32 [ %sub11.i, %while.body8.i.land.rhs.i_crit_edge ], [ %7, %while.cond5.preheader.i.land.rhs.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_len.1)
  %cmp7.i = icmp sgt i32 %data_len.1, 0
  br i1 %cmp7.i, label %while.body8.i, label %land.rhs.i.cleanup_crit_edge

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

while.body8.i:                                    ; preds = %land.rhs.i
  %shr9.i = lshr i32 %oid.addr.051.i, %start.153.i
  %conv10.i = and i32 %shr9.i, 255
  %shl.i = shl i32 %conv10.i, %start.153.i
  %sub11.i = sub i32 %oid.addr.051.i, %shl.i
  %sub12.i = add nsw i32 %start.153.i, -7
  %9 = trunc i32 %shr9.i to i8
  %conv14.i = or i8 %9, -128
  %incdec.ptr15.i = getelementptr i8, ptr %data.052.i, i32 1
  %10 = ptrtoint ptr %data.052.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv14.i, ptr %data.052.i, align 1
  %dec16.i = add nsw i32 %data_len.1, -1
  %cmp6.i = icmp sgt i32 %start.153.i, 7
  br i1 %cmp6.i, label %while.body8.i.land.rhs.i_crit_edge, label %while.body8.i.while.end17.i_crit_edge

while.body8.i.while.end17.i_crit_edge:            ; preds = %while.body8.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end17.i

while.body8.i.land.rhs.i_crit_edge:               ; preds = %while.body8.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %land.rhs.i

while.end17.i:                                    ; preds = %while.body8.i.while.end17.i_crit_edge, %while.cond5.preheader.i.while.end17.i_crit_edge
  %data_len.2 = phi i32 [ %data_len.0117, %while.cond5.preheader.i.while.end17.i_crit_edge ], [ %dec16.i, %while.body8.i.while.end17.i_crit_edge ]
  %oid.addr.0.lcssa.i = phi i32 [ %7, %while.cond5.preheader.i.while.end17.i_crit_edge ], [ %sub11.i, %while.body8.i.while.end17.i_crit_edge ]
  %data.0.lcssa.i = phi ptr [ %d.0118, %while.cond5.preheader.i.while.end17.i_crit_edge ], [ %incdec.ptr15.i, %while.body8.i.while.end17.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_len.2)
  %cmp18.i = icmp sgt i32 %data_len.2, 0
  br i1 %cmp18.i, label %if.then20.i, label %while.end17.i.cleanup_crit_edge

while.end17.i.cleanup_crit_edge:                  ; preds = %while.end17.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then20.i:                                      ; preds = %while.end17.i
  call void @__sanitizer_cov_trace_pc() #4
  %conv21.i = trunc i32 %oid.addr.0.lcssa.i to i8
  %11 = ptrtoint ptr %data.0.lcssa.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv21.i, ptr %data.0.lcssa.i, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then20.i, %if.then2.i
  %data_len.3 = phi i32 [ %data_len.0117, %if.then2.i ], [ %data_len.2, %if.then20.i ]
  %data.0.lcssa.pn.i = phi ptr [ %d.0118, %if.then2.i ], [ %data.0.lcssa.i, %if.then20.i ]
  %data.1.ph.i = getelementptr i8, ptr %data.0.lcssa.pn.i, i32 1
  %dec23.i = add nsw i32 %data_len.3, -1
  %inc = add nuw nsw i32 %i.0119, 1
  %exitcond.not = icmp eq i32 %inc, %oid_len
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end63.for.end_crit_edge
  %d.0.lcssa = phi ptr [ %incdec.ptr, %if.end63.for.end_crit_edge ], [ %data.1.ph.i, %for.inc.for.end_crit_edge ]
  %sub.ptr.lhs.cast75 = ptrtoint ptr %d.0.lcssa to i32
  %sub.ptr.sub77 = sub i32 %sub.ptr.lhs.cast75, %sub.ptr.rhs.cast
  %12 = trunc i32 %sub.ptr.sub77 to i8
  %conv79 = add i8 %12, -2
  %arrayidx80 = getelementptr i8, ptr %data, i32 1
  %13 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv79, ptr %arrayidx80, align 1
  br label %cleanup

cleanup:                                          ; preds = %for.end, %while.end17.i.cleanup_crit_edge, %land.rhs.i.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end59.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %do.end39, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ inttoptr (i32 -22 to ptr), %do.end39 ], [ %d.0.lcssa, %for.end ], [ %data, %if.end56.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end59.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.rhs.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %for.body.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %while.end17.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @asn1_encode_tag(ptr noundef %data, ptr noundef %end_data, i32 noundef %tag, ptr noundef readonly %string, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  %sub.ptr.lhs.cast = ptrtoint ptr %end_data to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %data to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %tag)
  %cmp = icmp ugt i32 %tag, 30
  br i1 %cmp, label %do.end, label %if.end21, !prof !38

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 276, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %cleanup

if.end21:                                         ; preds = %entry
  %tobool22.not = icmp eq ptr %string, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %len)
  %cmp24 = icmp sgt i32 %len, 127
  %or.cond98 = and i1 %tobool22.not, %cmp24
  br i1 %or.cond98, label %do.end40, label %if.end57, !prof !39

do.end40:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 280, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %cleanup

if.end57:                                         ; preds = %if.end21
  %cmp.i = icmp ugt ptr %data, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end57.cleanup_crit_edge, label %if.end60

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end60:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp63 = icmp sgt i32 %len, 0
  %or.cond = and i1 %tobool22.not, %cmp63
  br i1 %or.cond, label %if.end3.i.thread, label %if.end65

if.end65:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.ptr.sub)
  %cmp66 = icmp slt i32 %sub.ptr.sub, 2
  br i1 %cmp66, label %if.end65.cleanup_crit_edge, label %if.end69

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end69:                                         ; preds = %if.end65
  %0 = trunc i32 %tag to i8
  %conv = or i8 %0, -96
  %incdec.ptr = getelementptr i8, ptr %data, i32 1
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %data, align 1
  %dec = add nsw i32 %sub.ptr.sub, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp1.i = icmp slt i32 %len, 0
  br i1 %cmp1.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #4
  %incdec.ptr.i = getelementptr i8, ptr %data, i32 2
  %2 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %incdec.ptr, align 1
  %dec.i = add nsw i32 %sub.ptr.sub, -2
  br label %if.end75

if.end3.i:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %len)
  %cmp4.i = icmp ult i32 %len, 128
  br i1 %cmp4.i, label %if.end3.i.if.then5.i_crit_edge, label %if.end8.i

if.end3.i.if.then5.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then5.i

if.end3.i.thread:                                 ; preds = %if.end60
  %add.ptr = getelementptr i8, ptr %data, i32 -2
  %3 = trunc i32 %tag to i8
  %conv132 = or i8 %3, -96
  %incdec.ptr133 = getelementptr i8, ptr %data, i32 -1
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv132, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %len)
  %cmp4.i145 = icmp ult i32 %len, 128
  br i1 %cmp4.i145, label %if.end3.i.thread.if.then5.i_crit_edge, label %if.end3.i.thread.cleanup_crit_edge

if.end3.i.thread.cleanup_crit_edge:               ; preds = %if.end3.i.thread
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end3.i.thread.if.then5.i_crit_edge:            ; preds = %if.end3.i.thread
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then5.i

if.then5.i:                                       ; preds = %if.end3.i.thread.if.then5.i_crit_edge, %if.end3.i.if.then5.i_crit_edge
  %dec137141149 = phi i32 [ 1, %if.end3.i.thread.if.then5.i_crit_edge ], [ %dec, %if.end3.i.if.then5.i_crit_edge ]
  %incdec.ptr136142146 = phi ptr [ %incdec.ptr133, %if.end3.i.thread.if.then5.i_crit_edge ], [ %incdec.ptr, %if.end3.i.if.then5.i_crit_edge ]
  %conv.i = trunc i32 %len to i8
  %incdec.ptr6.i = getelementptr i8, ptr %incdec.ptr136142146, i32 1
  %5 = ptrtoint ptr %incdec.ptr136142146 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv.i, ptr %incdec.ptr136142146, align 1
  %dec7.i = add nsw i32 %dec137141149, -1
  br label %if.end75

if.end8.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dec)
  %cmp9.i = icmp ult i32 %dec, 2
  br i1 %cmp9.i, label %if.end8.i.cleanup_crit_edge, label %if.end12.i

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end12.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %len)
  %cmp13.i = icmp ult i32 %len, 256
  br i1 %cmp13.i, label %if.then15.i, label %if.end19.i

if.then15.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #4
  %incdec.ptr16.i = getelementptr i8, ptr %data, i32 2
  %6 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -127, ptr %incdec.ptr, align 1
  %conv17.i = trunc i32 %len to i8
  %incdec.ptr18.i = getelementptr i8, ptr %data, i32 3
  %7 = ptrtoint ptr %incdec.ptr16.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv17.i, ptr %incdec.ptr16.i, align 1
  %sub.i = add nsw i32 %sub.ptr.sub, -3
  br label %if.end75

if.end19.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %dec)
  %cmp20.i = icmp ult i32 %dec, 3
  br i1 %cmp20.i, label %if.end19.i.cleanup_crit_edge, label %if.end23.i

if.end19.i.cleanup_crit_edge:                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end23.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %len)
  %cmp24.i = icmp ult i32 %len, 65536
  br i1 %cmp24.i, label %if.then26.i, label %if.end35.i

if.then26.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #4
  %incdec.ptr27.i = getelementptr i8, ptr %data, i32 2
  %8 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -126, ptr %incdec.ptr, align 1
  %9 = lshr i32 %len, 8
  %conv29.i = trunc i32 %9 to i8
  %incdec.ptr30.i = getelementptr i8, ptr %data, i32 3
  %10 = ptrtoint ptr %incdec.ptr27.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv29.i, ptr %incdec.ptr27.i, align 1
  %conv32.i = trunc i32 %len to i8
  %incdec.ptr33.i = getelementptr i8, ptr %data, i32 4
  %11 = ptrtoint ptr %incdec.ptr30.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv32.i, ptr %incdec.ptr30.i, align 1
  %sub34.i = add nsw i32 %sub.ptr.sub, -4
  br label %if.end75

if.end35.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %len)
  %cmp36.i = icmp ugt i32 %len, 16777215
  br i1 %cmp36.i, label %do.end.i, label %if.end60.i, !prof !38

do.end.i:                                         ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 229, i32 noundef 9, ptr noundef nonnull @.str.7) #5
  br label %cleanup

if.end60.i:                                       ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %dec)
  %cmp61.i = icmp ult i32 %dec, 4
  br i1 %cmp61.i, label %if.end60.i.cleanup_crit_edge, label %if.end64.i

if.end60.i.cleanup_crit_edge:                     ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end64.i:                                       ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #4
  %incdec.ptr65.i = getelementptr i8, ptr %data, i32 2
  %12 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -125, ptr %incdec.ptr, align 1
  %13 = lshr i32 %len, 16
  %conv68.i = trunc i32 %13 to i8
  %incdec.ptr69.i = getelementptr i8, ptr %data, i32 3
  %14 = ptrtoint ptr %incdec.ptr65.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv68.i, ptr %incdec.ptr65.i, align 1
  %15 = lshr i32 %len, 8
  %conv72.i = trunc i32 %15 to i8
  %incdec.ptr73.i = getelementptr i8, ptr %data, i32 4
  %16 = ptrtoint ptr %incdec.ptr69.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv72.i, ptr %incdec.ptr69.i, align 1
  %conv75.i = trunc i32 %len to i8
  %incdec.ptr76.i = getelementptr i8, ptr %data, i32 5
  %17 = ptrtoint ptr %incdec.ptr73.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv75.i, ptr %incdec.ptr73.i, align 1
  %sub77.i = add nsw i32 %sub.ptr.sub, -5
  br label %if.end75

if.end75:                                         ; preds = %if.end64.i, %if.then26.i, %if.then15.i, %if.then5.i, %if.then2.i
  %data.addr.1 = phi ptr [ %incdec.ptr.i, %if.then2.i ], [ %incdec.ptr6.i, %if.then5.i ], [ %incdec.ptr18.i, %if.then15.i ], [ %incdec.ptr33.i, %if.then26.i ], [ %incdec.ptr76.i, %if.end64.i ]
  %data_len.1 = phi i32 [ %dec.i, %if.then2.i ], [ %dec7.i, %if.then5.i ], [ %sub.i, %if.then15.i ], [ %sub34.i, %if.then26.i ], [ %sub77.i, %if.end64.i ]
  br i1 %tobool22.not, label %if.end75.cleanup_crit_edge, label %if.end78

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end78:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_cmp4(i32 %data_len.1, i32 %len)
  %cmp79 = icmp slt i32 %data_len.1, %len
  br i1 %cmp79, label %if.end78.cleanup_crit_edge, label %if.end83

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end83:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #4
  %18 = call ptr @memcpy(ptr %data.addr.1, ptr %string, i32 %len)
  %add.ptr84 = getelementptr i8, ptr %data.addr.1, i32 %len
  br label %cleanup

cleanup:                                          ; preds = %if.end83, %if.end78.cleanup_crit_edge, %if.end75.cleanup_crit_edge, %if.end60.i.cleanup_crit_edge, %do.end.i, %if.end19.i.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge, %if.end3.i.thread.cleanup_crit_edge, %if.end65.cleanup_crit_edge, %if.end57.cleanup_crit_edge, %do.end40, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %add.ptr84, %if.end83 ], [ inttoptr (i32 -22 to ptr), %do.end40 ], [ %data, %if.end57.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end65.cleanup_crit_edge ], [ %data.addr.1, %if.end75.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end78.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end3.i.thread.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end.i ], [ inttoptr (i32 -22 to ptr), %if.end8.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end19.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end60.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @asn1_encode_octet_string(ptr noundef %data, ptr noundef %end_data, ptr nocapture noundef readonly %string, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  %sub.ptr.lhs.cast = ptrtoint ptr %end_data to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %data to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp.i = icmp ugt ptr %data, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.ptr.sub)
  %cmp = icmp slt i32 %sub.ptr.sub, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %incdec.ptr = getelementptr i8, ptr %data, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 4, ptr %data, align 1
  %dec = add nsw i32 %sub.ptr.sub, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp1.i = icmp slt i32 %len, 0
  br i1 %cmp1.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  %incdec.ptr.i = getelementptr i8, ptr %data, i32 2
  %1 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %incdec.ptr, align 1
  br label %if.end7

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %len)
  %cmp4.i = icmp ult i32 %len, 128
  br i1 %cmp4.i, label %if.then5.i, label %if.end8.i

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #4
  %conv.i = trunc i32 %len to i8
  %incdec.ptr6.i = getelementptr i8, ptr %data, i32 2
  %2 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv.i, ptr %incdec.ptr, align 1
  br label %if.end7

if.end8.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dec)
  %cmp9.i = icmp ult i32 %dec, 2
  br i1 %cmp9.i, label %if.end8.i.cleanup_crit_edge, label %if.end12.i

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end12.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %len)
  %cmp13.i = icmp ult i32 %len, 256
  br i1 %cmp13.i, label %if.then15.i, label %if.end19.i

if.then15.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #4
  %incdec.ptr16.i = getelementptr i8, ptr %data, i32 2
  %3 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -127, ptr %incdec.ptr, align 1
  %conv17.i = trunc i32 %len to i8
  %incdec.ptr18.i = getelementptr i8, ptr %data, i32 3
  %4 = ptrtoint ptr %incdec.ptr16.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv17.i, ptr %incdec.ptr16.i, align 1
  br label %if.end7

if.end19.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %dec)
  %cmp20.i = icmp ult i32 %dec, 3
  br i1 %cmp20.i, label %if.end19.i.cleanup_crit_edge, label %if.end23.i

if.end19.i.cleanup_crit_edge:                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end23.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %len)
  %cmp24.i = icmp ult i32 %len, 65536
  br i1 %cmp24.i, label %if.then26.i, label %if.end35.i

if.then26.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #4
  %incdec.ptr27.i = getelementptr i8, ptr %data, i32 2
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -126, ptr %incdec.ptr, align 1
  %6 = lshr i32 %len, 8
  %conv29.i = trunc i32 %6 to i8
  %incdec.ptr30.i = getelementptr i8, ptr %data, i32 3
  %7 = ptrtoint ptr %incdec.ptr27.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv29.i, ptr %incdec.ptr27.i, align 1
  %conv32.i = trunc i32 %len to i8
  %incdec.ptr33.i = getelementptr i8, ptr %data, i32 4
  %8 = ptrtoint ptr %incdec.ptr30.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv32.i, ptr %incdec.ptr30.i, align 1
  br label %if.end7

if.end35.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %len)
  %cmp36.i = icmp ugt i32 %len, 16777215
  br i1 %cmp36.i, label %do.end.i, label %if.end60.i, !prof !38

do.end.i:                                         ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 229, i32 noundef 9, ptr noundef nonnull @.str.7) #5
  br label %cleanup

if.end60.i:                                       ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %dec)
  %cmp61.i = icmp ult i32 %dec, 4
  br i1 %cmp61.i, label %if.end60.i.cleanup_crit_edge, label %if.end64.i

if.end60.i.cleanup_crit_edge:                     ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end64.i:                                       ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #4
  %incdec.ptr65.i = getelementptr i8, ptr %data, i32 2
  %9 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -125, ptr %incdec.ptr, align 1
  %10 = lshr i32 %len, 16
  %conv68.i = trunc i32 %10 to i8
  %incdec.ptr69.i = getelementptr i8, ptr %data, i32 3
  %11 = ptrtoint ptr %incdec.ptr65.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv68.i, ptr %incdec.ptr65.i, align 1
  %12 = lshr i32 %len, 8
  %conv72.i = trunc i32 %12 to i8
  %incdec.ptr73.i = getelementptr i8, ptr %data, i32 4
  %13 = ptrtoint ptr %incdec.ptr69.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv72.i, ptr %incdec.ptr69.i, align 1
  %conv75.i = trunc i32 %len to i8
  %incdec.ptr76.i = getelementptr i8, ptr %data, i32 5
  %14 = ptrtoint ptr %incdec.ptr73.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv75.i, ptr %incdec.ptr73.i, align 1
  br label %if.end7

if.end7:                                          ; preds = %if.end64.i, %if.then26.i, %if.then15.i, %if.then5.i, %if.then2.i
  %.sink = phi i32 [ -2, %if.then2.i ], [ -2, %if.then5.i ], [ -3, %if.then15.i ], [ -4, %if.then26.i ], [ -5, %if.end64.i ]
  %data.addr.0.ph = phi ptr [ %incdec.ptr.i, %if.then2.i ], [ %incdec.ptr6.i, %if.then5.i ], [ %incdec.ptr18.i, %if.then15.i ], [ %incdec.ptr33.i, %if.then26.i ], [ %incdec.ptr76.i, %if.end64.i ]
  %dec.i = add nsw i32 %sub.ptr.sub, %.sink
  call void @__sanitizer_cov_trace_cmp4(i32 %dec.i, i32 %len)
  %cmp8 = icmp ult i32 %dec.i, %len
  br i1 %cmp8, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #4
  %15 = call ptr @memcpy(ptr %data.addr.0.ph, ptr %string, i32 %len)
  %add.ptr = getelementptr i8, ptr %data.addr.0.ph, i32 %len
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end7.cleanup_crit_edge, %if.end60.i.cleanup_crit_edge, %do.end.i, %if.end19.i.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %if.end11 ], [ %data, %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end7.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end60.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end.i ], [ inttoptr (i32 -22 to ptr), %if.end19.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end8.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @asn1_encode_sequence(ptr noundef %data, ptr noundef %end_data, ptr noundef readonly %seq, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  %sub.ptr.lhs.cast = ptrtoint ptr %end_data to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %data to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %tobool.not = icmp eq ptr %seq, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %len)
  %cmp = icmp sgt i32 %len, 127
  %or.cond59 = and i1 %tobool.not, %cmp
  br i1 %or.cond59, label %do.end, label %if.end22, !prof !39

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 380, i32 noundef 9, ptr noundef nonnull @.str.6) #5
  br label %cleanup

if.end22:                                         ; preds = %entry
  %cmp.i = icmp ugt ptr %data, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end22.cleanup_crit_edge, label %if.end25

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end25:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %len)
  %cmp28 = icmp sgt i32 %len, -1
  %or.cond = and i1 %tobool.not, %cmp28
  br i1 %or.cond, label %if.end3.i.thread, label %if.end30

if.end30:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.ptr.sub)
  %cmp31 = icmp slt i32 %sub.ptr.sub, 2
  br i1 %cmp31, label %if.end30.cleanup_crit_edge, label %if.end34

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  %incdec.ptr = getelementptr i8, ptr %data, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 48, ptr %data, align 1
  %dec = add nsw i32 %sub.ptr.sub, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp1.i = icmp slt i32 %len, 0
  br i1 %cmp1.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #4
  %incdec.ptr.i = getelementptr i8, ptr %data, i32 2
  %1 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %incdec.ptr, align 1
  %dec.i = add nsw i32 %sub.ptr.sub, -2
  br label %if.end39

if.end3.i:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %len)
  %cmp4.i = icmp ult i32 %len, 128
  br i1 %cmp4.i, label %if.end3.i.if.then5.i_crit_edge, label %if.end8.i

if.end3.i.if.then5.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then5.i

if.end3.i.thread:                                 ; preds = %if.end25
  %add.ptr = getelementptr i8, ptr %data, i32 -2
  %incdec.ptr93 = getelementptr i8, ptr %data, i32 -1
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 48, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %len)
  %cmp4.i105 = icmp ult i32 %len, 128
  br i1 %cmp4.i105, label %if.end3.i.thread.if.then5.i_crit_edge, label %if.end3.i.thread.cleanup_crit_edge

if.end3.i.thread.cleanup_crit_edge:               ; preds = %if.end3.i.thread
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end3.i.thread.if.then5.i_crit_edge:            ; preds = %if.end3.i.thread
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then5.i

if.then5.i:                                       ; preds = %if.end3.i.thread.if.then5.i_crit_edge, %if.end3.i.if.then5.i_crit_edge
  %dec97101109 = phi i32 [ 1, %if.end3.i.thread.if.then5.i_crit_edge ], [ %dec, %if.end3.i.if.then5.i_crit_edge ]
  %incdec.ptr96102106 = phi ptr [ %incdec.ptr93, %if.end3.i.thread.if.then5.i_crit_edge ], [ %incdec.ptr, %if.end3.i.if.then5.i_crit_edge ]
  %conv.i = trunc i32 %len to i8
  %incdec.ptr6.i = getelementptr i8, ptr %incdec.ptr96102106, i32 1
  %3 = ptrtoint ptr %incdec.ptr96102106 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv.i, ptr %incdec.ptr96102106, align 1
  %dec7.i = add nsw i32 %dec97101109, -1
  br label %if.end39

if.end8.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dec)
  %cmp9.i = icmp ult i32 %dec, 2
  br i1 %cmp9.i, label %if.end8.i.cleanup_crit_edge, label %if.end12.i

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end12.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %len)
  %cmp13.i = icmp ult i32 %len, 256
  br i1 %cmp13.i, label %if.then15.i, label %if.end19.i

if.then15.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #4
  %incdec.ptr16.i = getelementptr i8, ptr %data, i32 2
  %4 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -127, ptr %incdec.ptr, align 1
  %conv17.i = trunc i32 %len to i8
  %incdec.ptr18.i = getelementptr i8, ptr %data, i32 3
  %5 = ptrtoint ptr %incdec.ptr16.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv17.i, ptr %incdec.ptr16.i, align 1
  %sub.i = add nsw i32 %sub.ptr.sub, -3
  br label %if.end39

if.end19.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %dec)
  %cmp20.i = icmp ult i32 %dec, 3
  br i1 %cmp20.i, label %if.end19.i.cleanup_crit_edge, label %if.end23.i

if.end19.i.cleanup_crit_edge:                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end23.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %len)
  %cmp24.i = icmp ult i32 %len, 65536
  br i1 %cmp24.i, label %if.then26.i, label %if.end35.i

if.then26.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #4
  %incdec.ptr27.i = getelementptr i8, ptr %data, i32 2
  %6 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -126, ptr %incdec.ptr, align 1
  %7 = lshr i32 %len, 8
  %conv29.i = trunc i32 %7 to i8
  %incdec.ptr30.i = getelementptr i8, ptr %data, i32 3
  %8 = ptrtoint ptr %incdec.ptr27.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv29.i, ptr %incdec.ptr27.i, align 1
  %conv32.i = trunc i32 %len to i8
  %incdec.ptr33.i = getelementptr i8, ptr %data, i32 4
  %9 = ptrtoint ptr %incdec.ptr30.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv32.i, ptr %incdec.ptr30.i, align 1
  %sub34.i = add nsw i32 %sub.ptr.sub, -4
  br label %if.end39

if.end35.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %len)
  %cmp36.i = icmp ugt i32 %len, 16777215
  br i1 %cmp36.i, label %do.end.i, label %if.end60.i, !prof !38

do.end.i:                                         ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 229, i32 noundef 9, ptr noundef nonnull @.str.7) #5
  br label %cleanup

if.end60.i:                                       ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %dec)
  %cmp61.i = icmp ult i32 %dec, 4
  br i1 %cmp61.i, label %if.end60.i.cleanup_crit_edge, label %if.end64.i

if.end60.i.cleanup_crit_edge:                     ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end64.i:                                       ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #4
  %incdec.ptr65.i = getelementptr i8, ptr %data, i32 2
  %10 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -125, ptr %incdec.ptr, align 1
  %11 = lshr i32 %len, 16
  %conv68.i = trunc i32 %11 to i8
  %incdec.ptr69.i = getelementptr i8, ptr %data, i32 3
  %12 = ptrtoint ptr %incdec.ptr65.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv68.i, ptr %incdec.ptr65.i, align 1
  %13 = lshr i32 %len, 8
  %conv72.i = trunc i32 %13 to i8
  %incdec.ptr73.i = getelementptr i8, ptr %data, i32 4
  %14 = ptrtoint ptr %incdec.ptr69.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv72.i, ptr %incdec.ptr69.i, align 1
  %conv75.i = trunc i32 %len to i8
  %incdec.ptr76.i = getelementptr i8, ptr %data, i32 5
  %15 = ptrtoint ptr %incdec.ptr73.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv75.i, ptr %incdec.ptr73.i, align 1
  %sub77.i = add nsw i32 %sub.ptr.sub, -5
  br label %if.end39

if.end39:                                         ; preds = %if.end64.i, %if.then26.i, %if.then15.i, %if.then5.i, %if.then2.i
  %data.addr.1 = phi ptr [ %incdec.ptr.i, %if.then2.i ], [ %incdec.ptr6.i, %if.then5.i ], [ %incdec.ptr18.i, %if.then15.i ], [ %incdec.ptr33.i, %if.then26.i ], [ %incdec.ptr76.i, %if.end64.i ]
  %data_len.1 = phi i32 [ %dec.i, %if.then2.i ], [ %dec7.i, %if.then5.i ], [ %sub.i, %if.then15.i ], [ %sub34.i, %if.then26.i ], [ %sub77.i, %if.end64.i ]
  br i1 %tobool.not, label %if.end39.cleanup_crit_edge, label %if.end42

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end42:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_cmp4(i32 %data_len.1, i32 %len)
  %cmp43 = icmp slt i32 %data_len.1, %len
  br i1 %cmp43, label %if.end42.cleanup_crit_edge, label %if.end46

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end46:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #4
  %16 = call ptr @memcpy(ptr %data.addr.1, ptr %seq, i32 %len)
  %add.ptr47 = getelementptr i8, ptr %data.addr.1, i32 %len
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.end42.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %if.end60.i.cleanup_crit_edge, %do.end.i, %if.end19.i.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge, %if.end3.i.thread.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ %add.ptr47, %if.end46 ], [ inttoptr (i32 -22 to ptr), %do.end ], [ %data, %if.end22.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end30.cleanup_crit_edge ], [ %data.addr.1, %if.end39.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end42.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end3.i.thread.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end.i ], [ inttoptr (i32 -22 to ptr), %if.end8.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end19.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end60.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local ptr @asn1_encode_boolean(ptr noundef %data, ptr noundef %end_data, i1 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  %cmp.i = icmp ugt ptr %data, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub.ptr.lhs.cast = ptrtoint ptr %end_data to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %data to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.ptr.sub)
  %cmp = icmp slt i32 %sub.ptr.sub, 3
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %asn1_encode_length.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

asn1_encode_length.exit:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %incdec.ptr = getelementptr i8, ptr %data, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %data, align 1
  %incdec.ptr6.i = getelementptr i8, ptr %data, i32 2
  %1 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %incdec.ptr, align 1
  %incdec.ptr6 = getelementptr i8, ptr %data, i32 3
  %. = zext i1 %val to i8
  %2 = ptrtoint ptr %incdec.ptr6.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %., ptr %incdec.ptr6.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %asn1_encode_length.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %data, %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ], [ %incdec.ptr6, %asn1_encode_length.exit ]
  ret ptr %retval.0
}

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind uwtable(sync) }
attributes #4 = { nomerge }
attributes #5 = { nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../lib/asn1_encoder.c", i32 32, i32 6}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__ksymtab_asn1_encode_integer, !4, !"__ksymtab_asn1_encode_integer", i1 false, i1 false}
!4 = !{!"../lib/asn1_encoder.c", i32 86, i32 1}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../lib/asn1_encoder.c", i32 148, i32 6}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../lib/asn1_encoder.c", i32 151, i32 6}
!9 = !{ptr @__ksymtab_asn1_encode_oid, !10, !"__ksymtab_asn1_encode_oid", i1 false, i1 false}
!10 = !{!"../lib/asn1_encoder.c", i32 177, i32 1}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../lib/asn1_encoder.c", i32 276, i32 6}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../lib/asn1_encoder.c", i32 279, i32 17}
!15 = !{ptr @__ksymtab_asn1_encode_tag, !16, !"__ksymtab_asn1_encode_tag", i1 false, i1 false}
!16 = !{!"../lib/asn1_encoder.c", i32 316, i32 1}
!17 = !{ptr @__ksymtab_asn1_encode_octet_string, !18, !"__ksymtab_asn1_encode_octet_string", i1 false, i1 false}
!18 = !{!"../lib/asn1_encoder.c", i32 357, i32 1}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../lib/asn1_encoder.c", i32 379, i32 14}
!21 = !{ptr @__ksymtab_asn1_encode_sequence, !22, !"__ksymtab_asn1_encode_sequence", i1 false, i1 false}
!22 = !{!"../lib/asn1_encoder.c", i32 417, i32 1}
!23 = !{ptr @__ksymtab_asn1_encode_boolean, !24, !"__ksymtab_asn1_encode_boolean", i1 false, i1 false}
!24 = !{!"../lib/asn1_encoder.c", i32 450, i32 1}
!25 = !{ptr @__UNIQUE_ID_file106, !26, !"__UNIQUE_ID_file106", i1 false, i1 false}
!26 = !{!"../lib/asn1_encoder.c", i32 452, i32 1}
!27 = !{ptr @__UNIQUE_ID_license107, !26, !"__UNIQUE_ID_license107", i1 false, i1 false}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../lib/asn1_encoder.c", i32 229, i32 6}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{!"branch_weights", i32 1, i32 2000}
!39 = !{!"branch_weights", i32 1, i32 4001}
