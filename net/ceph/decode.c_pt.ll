; ModuleID = '/llk/IR_all_yes/net/ceph/decode.c_pt.bc'
source_filename = "../net/ceph/decode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ceph_decode_entity_addr\22, \22a\22\09"
module asm "\09.weak\09__crc_ceph_decode_entity_addr\09\09\09\09"
module asm "\09.long\09__crc_ceph_decode_entity_addr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ceph_decode_entity_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22ceph_decode_entity_addr\22\09\09\09\09\09"
module asm "__kstrtabns_ceph_decode_entity_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ceph_decode_entity_addrvec\22, \22a\22\09"
module asm "\09.weak\09__crc_ceph_decode_entity_addrvec\09\09\09\09"
module asm "\09.long\09__crc_ceph_decode_entity_addrvec\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ceph_decode_entity_addrvec:\09\09\09\09\09"
module asm "\09.asciz \09\22ceph_decode_entity_addrvec\22\09\09\09\09\09"
module asm "__kstrtabns_ceph_decode_entity_addrvec:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ceph_entity_addr = type { i32, i32, %struct.__kernel_sockaddr_storage }
%struct.__kernel_sockaddr_storage = type { %union.anon }
%union.anon = type { ptr, [124 x i8] }
%struct.anon = type { i16, [126 x i8] }

@__kstrtab_ceph_decode_entity_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_ceph_decode_entity_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_ceph_decode_entity_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ceph_decode_entity_addr to i32), ptr @__kstrtab_ceph_decode_entity_addr, ptr @__kstrtabns_ceph_decode_entity_addr }, section "___ksymtab+ceph_decode_entity_addr", align 4
@ceph_decode_entity_addrvec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013libceph: bad addrvec marker %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ceph_decode_entity_addrvec\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/ceph/decode.c\00", [46 x i8] zeroinitializer }, align 32
@ceph_decode_entity_addrvec._entry_ptr = internal global ptr @ceph_decode_entity_addrvec._entry, section ".printk_index", align 4
@ceph_decode_entity_addrvec.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 28, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"libceph\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%.*s %12.12s:%-4d : %s addr_cnt %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"libceph: %.*s %12.12s:%-4d : %s addr_cnt %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"    \00", [27 x i8] zeroinitializer }, align 32
@ceph_decode_entity_addrvec.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%.*s %12.12s:%-4d : %s i %d addr %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"libceph: %.*s %12.12s:%-4d : %s i %d addr %s\0A\00", [50 x i8] zeroinitializer }, align 32
@ceph_decode_entity_addrvec._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013libceph: another match of type %d in addrvec\0A\00", [48 x i8] zeroinitializer }, align 32
@ceph_decode_entity_addrvec._entry_ptr.11 = internal global ptr @ceph_decode_entity_addrvec._entry.9, section ".printk_index", align 4
@ceph_decode_entity_addrvec._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013libceph: no match of type %d in addrvec\0A\00", [53 x i8] zeroinitializer }, align 32
@ceph_decode_entity_addrvec._entry_ptr.14 = internal global ptr @ceph_decode_entity_addrvec._entry.12, section ".printk_index", align 4
@__kstrtab_ceph_decode_entity_addrvec = external dso_local constant [0 x i8], align 1
@__kstrtabns_ceph_decode_entity_addrvec = external dso_local constant [0 x i8], align 1
@__ksymtab_ceph_decode_entity_addrvec = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ceph_decode_entity_addrvec to i32), ptr @__kstrtab_ceph_decode_entity_addrvec, ptr @__kstrtabns_ceph_decode_entity_addrvec }, section "___ksymtab+ceph_decode_entity_addrvec", align 4
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"entity_addr_t\00", [18 x i8] zeroinitializer }, align 32
@ceph_start_decoding._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.18, i32 347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014libceph: got struct_v %d struct_compat %d > %d of %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ceph_start_decoding\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/ceph/decode.h\00", [36 x i8] zeroinitializer }, align 32
@ceph_start_decoding._entry_ptr = internal global ptr @ceph_start_decoding._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 109, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 114, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 122, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 125, i32 5 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 144, i32 2 }
@___asan_gen_.63 = private constant [21 x i8] c"../net/ceph/decode.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 18, i32 39 }
@___asan_gen_.65 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [31 x i8] c"../include/linux/ceph/decode.h\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 346, i32 3 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__ksymtab_ceph_decode_entity_addr, ptr @__ksymtab_ceph_decode_entity_addrvec, ptr @ceph_decode_entity_addrvec._entry, ptr @ceph_decode_entity_addrvec._entry.12, ptr @ceph_decode_entity_addrvec._entry.9, ptr @ceph_decode_entity_addrvec._entry_ptr, ptr @ceph_decode_entity_addrvec._entry_ptr.11, ptr @ceph_decode_entity_addrvec._entry_ptr.14, ptr @ceph_start_decoding._entry, ptr @ceph_start_decoding._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_decode_entity_addrvec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_decode_entity_addrvec._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_decode_entity_addrvec._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_start_decoding._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_decode_entity_addr(ptr noundef %p, ptr noundef %end, ptr nocapture noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %end to i32
  %2 = icmp ult ptr %1, %end
  br i1 %2, label %do.end, label %entry.cleanup_crit_edge, !prof !45

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %1, align 1
  %incdec.ptr.i = getelementptr i8, ptr %1, i32 1
  %5 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %incdec.ptr.i, ptr %p, align 4
  %6 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %4, label %do.end.cleanup_crit_edge [
    i8 1, label %if.then7
    i8 0, label %if.then12
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then7:                                         ; preds = %do.end
  %cmp.not.i.i.i = icmp ule ptr %incdec.ptr.i, %end
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %incdec.ptr.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub.ptr.sub.i.i.i)
  %cmp1.i.i.i = icmp ugt i32 %sub.ptr.sub.i.i.i, 5
  %7 = select i1 %cmp.not.i.i.i, i1 %cmp1.i.i.i, i1 false
  br i1 %7, label %do.end.i.i, label %if.then7.cleanup_crit_edge, !prof !45

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i.i:                                       ; preds = %if.then7
  %8 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %incdec.ptr.i, align 1
  %incdec.ptr.i.i.i = getelementptr i8, ptr %1, i32 2
  %10 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %incdec.ptr.i.i.i, ptr %p, align 4
  %11 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %incdec.ptr.i.i.i, align 1
  %incdec.ptr.i1.i.i = getelementptr i8, ptr %1, i32 3
  store ptr %incdec.ptr.i1.i.i, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp.i.i = icmp ugt i8 %12, 1
  br i1 %cmp.i.i, label %do.end9.i.i, label %if.end14.i.i

do.end9.i.i:                                      ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv4.i.i = zext i8 %12 to i32
  %conv10.i.i = zext i8 %9 to i32
  %call13.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %conv10.i.i, i32 noundef %conv4.i.i, i32 noundef 1, ptr noundef nonnull @.str.15) #10
  br label %cleanup

if.end14.i.i:                                     ; preds = %do.end.i.i
  %13 = ptrtoint ptr %incdec.ptr.i1.i.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %incdec.ptr.i1.i.i, align 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 7
  %16 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr.i.i.i, ptr %p, align 4
  %cmp.not.i2.i.i = icmp ule ptr %add.ptr.i.i.i, %end
  %sub.ptr.rhs.cast.i4.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.sub.i5.i.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i4.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i5.i.i, i32 %15)
  %cmp1.i6.i.i = icmp uge i32 %sub.ptr.sub.i5.i.i, %15
  %17 = select i1 %cmp.not.i2.i.i, i1 %cmp1.i6.i.i, i1 false
  br i1 %17, label %if.end.i, label %if.end14.i.i.cleanup_crit_edge, !prof !45

if.end14.i.i.cleanup_crit_edge:                   ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end14.i.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.ptr.sub.i5.i.i)
  %cmp1.i.i = icmp ugt i32 %sub.ptr.sub.i5.i.i, 3
  br i1 %cmp1.i.i, label %do.end.i, label %if.end.i.cleanup_crit_edge, !prof !45

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i:                                         ; preds = %if.end.i
  %18 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %add.ptr.i.i.i, align 1
  %20 = ptrtoint ptr %addr to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %19, ptr %addr, align 1
  %21 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %p, align 4
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 4
  store ptr %add.ptr.i.i, ptr %p, align 4
  %cmp.not.i87.i = icmp ule ptr %add.ptr.i.i, %end
  %sub.ptr.rhs.cast.i89.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.sub.i90.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i89.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.ptr.sub.i90.i)
  %cmp1.i91.i = icmp ugt i32 %sub.ptr.sub.i90.i, 3
  %23 = select i1 %cmp.not.i87.i, i1 %cmp1.i91.i, i1 false
  br i1 %23, label %do.end21.i, label %do.end.i.cleanup_crit_edge, !prof !45

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end21.i:                                       ; preds = %do.end.i
  %nonce.i = getelementptr inbounds %struct.ceph_entity_addr, ptr %addr, i32 0, i32 1
  %24 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %add.ptr.i.i, align 1
  %26 = ptrtoint ptr %nonce.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %nonce.i, align 1
  %27 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %p, align 4
  %add.ptr.i92.i = getelementptr i8, ptr %28, i32 4
  store ptr %add.ptr.i92.i, ptr %p, align 4
  %cmp.not.i93.i = icmp ule ptr %add.ptr.i92.i, %end
  %sub.ptr.rhs.cast.i95.i = ptrtoint ptr %add.ptr.i92.i to i32
  %sub.ptr.sub.i96.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i95.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.ptr.sub.i96.i)
  %cmp1.i97.i = icmp ugt i32 %sub.ptr.sub.i96.i, 3
  %29 = select i1 %cmp.not.i93.i, i1 %cmp1.i97.i, i1 false
  br i1 %29, label %do.end36.i, label %do.end21.i.cleanup_crit_edge, !prof !45

do.end21.i.cleanup_crit_edge:                     ; preds = %do.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end36.i:                                       ; preds = %do.end21.i
  %30 = ptrtoint ptr %add.ptr.i92.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %add.ptr.i92.i, align 1
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #7
  %add.ptr.i98.i = getelementptr i8, ptr %28, i32 8
  %33 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr.i98.i, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %32)
  %cmp.i = icmp ugt i32 %32, 128
  br i1 %cmp.i, label %do.end36.i.cleanup_crit_edge, label %if.end41.i

do.end36.i.cleanup_crit_edge:                     ; preds = %do.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end41.i:                                       ; preds = %do.end36.i
  %in_addr.i = getelementptr inbounds %struct.ceph_entity_addr, ptr %addr, i32 0, i32 2
  %34 = call ptr @memset(ptr %in_addr.i, i32 0, i32 128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool42.not.i = icmp eq i32 %31, 0
  br i1 %tobool42.not.i, label %if.end41.i.if.end63.i_crit_edge, label %do.body45.i

if.end41.i.if.end63.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63.i

do.body45.i:                                      ; preds = %if.end41.i
  %35 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %p, align 4
  %cmp.not.i99.i = icmp ule ptr %36, %end
  %sub.ptr.rhs.cast.i101.i = ptrtoint ptr %36 to i32
  %sub.ptr.sub.i102.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i101.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i102.i, i32 %32)
  %cmp1.i103.i = icmp uge i32 %sub.ptr.sub.i102.i, %32
  %37 = select i1 %cmp.not.i99.i, i1 %cmp1.i103.i, i1 false
  br i1 %37, label %do.end56.i, label %do.body45.i.cleanup_crit_edge, !prof !45

do.body45.i.cleanup_crit_edge:                    ; preds = %do.body45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end56.i:                                       ; preds = %do.body45.i
  call void @__sanitizer_cov_trace_pc() #9
  %38 = call ptr @memcpy(ptr %in_addr.i, ptr %36, i32 %32)
  %39 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %p, align 4
  %add.ptr.i104.i = getelementptr i8, ptr %40, i32 %32
  store ptr %add.ptr.i104.i, ptr %p, align 4
  %41 = ptrtoint ptr %in_addr.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %in_addr.i, align 1
  %43 = tail call i16 @llvm.bswap.i16(i16 %42) #7
  %44 = ptrtoint ptr %in_addr.i to i32
  call void @__asan_storeN_noabort(i32 %44, i32 2)
  store i16 %43, ptr %in_addr.i, align 1
  br label %if.end63.i

if.end63.i:                                       ; preds = %do.end56.i, %if.end41.i.if.end63.i_crit_edge
  %45 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %add.ptr.i, ptr %p, align 4
  br label %cleanup

if.then12:                                        ; preds = %do.end
  %cmp.not.i.i23 = icmp ule ptr %incdec.ptr.i, %end
  %sub.ptr.rhs.cast.i.i24 = ptrtoint ptr %incdec.ptr.i to i32
  %sub.ptr.sub.i.i25 = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i.i24
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.ptr.sub.i.i25)
  %cmp1.i.i26 = icmp ugt i32 %sub.ptr.sub.i.i25, 2
  %46 = select i1 %cmp.not.i.i23, i1 %cmp1.i.i26, i1 false
  br i1 %46, label %do.end.i28, label %if.then12.cleanup_crit_edge, !prof !45

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i28:                                       ; preds = %if.then12
  %add.ptr.i27 = getelementptr i8, ptr %1, i32 4
  %47 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %add.ptr.i27, ptr %p, align 4
  %48 = ptrtoint ptr %addr to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 16777216, ptr %addr, align 1
  %49 = load ptr, ptr %p, align 4
  %cmp.not.i51.i = icmp ule ptr %49, %end
  %sub.ptr.rhs.cast.i53.i = ptrtoint ptr %49 to i32
  %sub.ptr.sub.i54.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i53.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.ptr.sub.i54.i)
  %cmp1.i55.i = icmp ugt i32 %sub.ptr.sub.i54.i, 3
  %50 = select i1 %cmp.not.i51.i, i1 %cmp1.i55.i, i1 false
  br i1 %50, label %do.end17.i, label %do.end.i28.cleanup_crit_edge, !prof !45

do.end.i28.cleanup_crit_edge:                     ; preds = %do.end.i28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end17.i:                                       ; preds = %do.end.i28
  %nonce.i29 = getelementptr inbounds %struct.ceph_entity_addr, ptr %addr, i32 0, i32 1
  %51 = ptrtoint ptr %49 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %49, align 1
  %53 = ptrtoint ptr %nonce.i29 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 %52, ptr %nonce.i29, align 1
  %54 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %p, align 4
  %add.ptr.i.i30 = getelementptr i8, ptr %55, i32 4
  store ptr %add.ptr.i.i30, ptr %p, align 4
  %in_addr.i31 = getelementptr inbounds %struct.ceph_entity_addr, ptr %addr, i32 0, i32 2
  %56 = call ptr @memset(ptr %in_addr.i31, i32 0, i32 128)
  %57 = load ptr, ptr %p, align 4
  %cmp.not.i56.i = icmp ule ptr %57, %end
  %sub.ptr.rhs.cast.i58.i = ptrtoint ptr %57 to i32
  %sub.ptr.sub.i59.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i58.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %sub.ptr.sub.i59.i)
  %cmp1.i60.i = icmp ugt i32 %sub.ptr.sub.i59.i, 127
  %58 = select i1 %cmp.not.i56.i, i1 %cmp1.i60.i, i1 false
  br i1 %58, label %do.end32.i, label %do.end17.i.cleanup_crit_edge, !prof !45

do.end17.i.cleanup_crit_edge:                     ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end32.i:                                       ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  %59 = call ptr @memcpy(ptr %in_addr.i31, ptr %57, i32 128)
  %60 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %p, align 4
  %add.ptr.i61.i = getelementptr i8, ptr %61, i32 128
  store ptr %add.ptr.i61.i, ptr %p, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end32.i, %do.end17.i.cleanup_crit_edge, %do.end.i28.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %if.end63.i, %do.body45.i.cleanup_crit_edge, %do.end36.i.cleanup_crit_edge, %do.end21.i.cleanup_crit_edge, %do.end.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end14.i.i.cleanup_crit_edge, %do.end9.i.i, %if.then7.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end36.i.cleanup_crit_edge ], [ 0, %if.end63.i ], [ -22, %do.body45.i.cleanup_crit_edge ], [ -22, %do.end21.i.cleanup_crit_edge ], [ -22, %do.end.i.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %do.end9.i.i ], [ -34, %if.end14.i.i.cleanup_crit_edge ], [ -34, %if.then7.cleanup_crit_edge ], [ 0, %do.end32.i ], [ -22, %do.end17.i.cleanup_crit_edge ], [ -22, %do.end.i28.cleanup_crit_edge ], [ -22, %if.then12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_decode_entity_addrvec(ptr noundef %p, ptr noundef %end, i1 noundef zeroext %msgr2, ptr nocapture noundef writeonly %addr) #0 align 64 {
entry:
  %tmp_addr = alloca %struct.ceph_entity_addr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = select i1 %msgr2, i32 33554432, i32 16777216
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %tmp_addr) #7
  %0 = call ptr @memset(ptr %tmp_addr, i32 255, i32 136)
  %1 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %p, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %end to i32
  %3 = icmp ult ptr %2, %end
  br i1 %3, label %do.end, label %entry.cleanup_crit_edge, !prof !45

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %2, align 1
  %incdec.ptr.i = getelementptr i8, ptr %2, i32 1
  %6 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %incdec.ptr.i, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp.not = icmp eq i8 %5, 2
  br i1 %cmp.not, label %do.body16, label %do.end11

do.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %5 to i32
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv) #10
  br label %cleanup

do.body16:                                        ; preds = %do.end
  %cmp.not.i126 = icmp ule ptr %incdec.ptr.i, %end
  %sub.ptr.rhs.cast.i128 = ptrtoint ptr %incdec.ptr.i to i32
  %sub.ptr.sub.i129 = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i128
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.ptr.sub.i129)
  %cmp1.i130 = icmp ugt i32 %sub.ptr.sub.i129, 3
  %7 = select i1 %cmp.not.i126, i1 %cmp1.i130, i1 false
  br i1 %7, label %do.end27, label %do.body16.cleanup_crit_edge, !prof !45

do.body16.cleanup_crit_edge:                      ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end27:                                         ; preds = %do.body16
  %8 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %incdec.ptr.i, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  %add.ptr.i = getelementptr i8, ptr %2, i32 5
  %11 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr.i, ptr %p, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_decode_entity_addrvec.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_decode_entity_addrvec, %if.then42)) #7
          to label %do.end46 [label %if.then42], !srcloc !46

if.then42:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_decode_entity_addrvec.__UNIQUE_ID_ddebug280, ptr noundef nonnull @.str.5, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 114, ptr noundef nonnull @.str.1, i32 noundef %10) #7
  br label %do.end46

do.end46:                                         ; preds = %if.then42, %do.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp47136 = icmp sgt i32 %10, 0
  br i1 %cmp47136, label %do.end46.for.body.outer_crit_edge, label %do.end46.if.end85_crit_edge

do.end46.if.end85_crit_edge:                      ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

do.end46.for.body.outer_crit_edge:                ; preds = %do.end46
  br label %for.body.outer

for.body.outer:                                   ; preds = %for.inc.thread.for.body.outer_crit_edge, %do.end46.for.body.outer_crit_edge
  %found.0.off0139.ph = phi i1 [ true, %for.inc.thread.for.body.outer_crit_edge ], [ false, %do.end46.for.body.outer_crit_edge ]
  %i.0137.ph = phi i32 [ %inc143, %for.inc.thread.for.body.outer_crit_edge ], [ 0, %do.end46.for.body.outer_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.outer
  %i.0137 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %i.0137.ph, %for.body.outer ]
  %call49 = call i32 @ceph_decode_entity_addr(ptr noundef %p, ptr noundef nonnull %end, ptr noundef nonnull %tmp_addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %do.body53, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body53:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_decode_entity_addrvec.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_decode_entity_addrvec, %if.then65)) #7
          to label %do.end70 [label %if.then65], !srcloc !46

if.then65:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #9
  %call67 = call ptr @ceph_pr_addr(ptr noundef nonnull %tmp_addr) #7
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_decode_entity_addrvec.__UNIQUE_ID_ddebug281, ptr noundef nonnull @.str.8, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 122, ptr noundef nonnull @.str.1, i32 noundef %i.0137, ptr noundef %call67) #7
  br label %do.end70

do.end70:                                         ; preds = %if.then65, %do.body53
  %12 = ptrtoint ptr %tmp_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tmp_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %cond)
  %cmp71 = icmp eq i32 %13, %cond
  br i1 %cmp71, label %if.then73, label %for.inc

if.then73:                                        ; preds = %do.end70
  br i1 %found.0.off0139.ph, label %do.end78, label %for.inc.thread

do.end78:                                         ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #9
  %14 = lshr exact i32 %cond, 24
  %call80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %14) #10
  br label %cleanup

for.inc:                                          ; preds = %do.end70
  %inc = add nuw nsw i32 %i.0137, 1
  %exitcond.not = icmp eq i32 %inc, %10
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.thread:                                   ; preds = %if.then73
  %15 = call ptr @memcpy(ptr %addr, ptr %tmp_addr, i32 136)
  %inc143 = add nuw nsw i32 %i.0137, 1
  %exitcond.not144 = icmp eq i32 %inc143, %10
  br i1 %exitcond.not144, label %for.inc.thread.cleanup_crit_edge, label %for.inc.thread.for.body.outer_crit_edge

for.inc.thread.for.body.outer_crit_edge:          ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.outer

for.inc.thread.cleanup_crit_edge:                 ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end:                                          ; preds = %for.inc
  br i1 %found.0.off0139.ph, label %for.end.cleanup_crit_edge, label %for.end.if.end85_crit_edge

for.end.if.end85_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end85:                                         ; preds = %for.end.if.end85_crit_edge, %do.end46.if.end85_crit_edge
  %16 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %10, label %if.end85.do.end97_crit_edge [
    i32 0, label %if.end85.cleanup_crit_edge
    i32 1, label %land.lhs.true
  ]

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end85.do.end97_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end97

land.lhs.true:                                    ; preds = %if.end85
  %call91 = call ptr @memchr_inv(ptr noundef nonnull %tmp_addr, i32 noundef 0, i32 noundef 136) #7
  %tobool92.not = icmp eq ptr %call91, null
  br i1 %tobool92.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.do.end97_crit_edge

land.lhs.true.do.end97_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end97

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end97:                                         ; preds = %land.lhs.true.do.end97_crit_edge, %if.end85.do.end97_crit_edge
  %17 = lshr exact i32 %cond, 24
  %call99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %17) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end97, %land.lhs.true.cleanup_crit_edge, %if.end85.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.inc.thread.cleanup_crit_edge, %do.end78, %for.body.cleanup_crit_edge, %do.body16.cleanup_crit_edge, %do.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end11 ], [ -22, %do.end78 ], [ -2, %do.end97 ], [ 0, %for.end.cleanup_crit_edge ], [ %10, %if.end85.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ -22, %do.body16.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call49, %for.body.cleanup_crit_edge ], [ 0, %for.inc.thread.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %tmp_addr) #7
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_pr_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ceph_entity_addr_encoding_len(ptr nocapture noundef readonly %addr) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %in_addr = getelementptr inbounds %struct.ceph_entity_addr, ptr %addr, i32 0, i32 2
  %0 = ptrtoint ptr %in_addr to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %in_addr, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %1)
  %switch.selectcmp2.i = icmp eq i16 %1, 2
  %add = select i1 %switch.selectcmp2.i, i32 35, i32 47
  ret i32 %add
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ceph_encode_entity_addr(ptr noundef %p, ptr nocapture noundef readonly %addr) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %in_addr = getelementptr inbounds %struct.ceph_entity_addr, ptr %addr, i32 0, i32 2
  %0 = ptrtoint ptr %in_addr to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %in_addr, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %1)
  %switch.selectcmp2.i = icmp eq i16 %1, 2
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 16, i32 28
  %2 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %3, align 1
  %5 = load ptr, ptr %p, align 4
  %incdec.ptr.i = getelementptr i8, ptr %5, i32 1
  store ptr %incdec.ptr.i, ptr %p, align 4
  %6 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %incdec.ptr.i, align 1
  %7 = load ptr, ptr %p, align 4
  %incdec.ptr.i.i = getelementptr i8, ptr %7, i32 1
  store ptr %incdec.ptr.i.i, ptr %p, align 4
  %8 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %incdec.ptr.i.i, align 1
  %9 = load ptr, ptr %p, align 4
  %incdec.ptr.i1.i = getelementptr i8, ptr %9, i32 1
  store ptr %incdec.ptr.i1.i, ptr %p, align 4
  %add = shl nuw nsw i32 %switch.select3.i, 24
  %10 = add nuw nsw i32 %add, 201326592
  %11 = ptrtoint ptr %incdec.ptr.i1.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %10, ptr %incdec.ptr.i1.i, align 1
  %12 = load ptr, ptr %p, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 4
  store ptr %add.ptr.i.i, ptr %p, align 4
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %addr, align 1
  %15 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %add.ptr.i.i, align 1
  %16 = load ptr, ptr %p, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 4
  store ptr %add.ptr.i, ptr %p, align 4
  %nonce = getelementptr inbounds %struct.ceph_entity_addr, ptr %addr, i32 0, i32 1
  %17 = ptrtoint ptr %nonce to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %nonce, align 1
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %18, ptr %add.ptr.i, align 1
  %20 = load ptr, ptr %p, align 4
  %add.ptr.i14 = getelementptr i8, ptr %20, i32 4
  store ptr %add.ptr.i14, ptr %p, align 4
  %21 = ptrtoint ptr %add.ptr.i14 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %add, ptr %add.ptr.i14, align 1
  %22 = load ptr, ptr %p, align 4
  %add.ptr.i15 = getelementptr i8, ptr %22, i32 4
  store ptr %add.ptr.i15, ptr %p, align 4
  %23 = tail call i16 @llvm.bswap.i16(i16 %1) #7
  %24 = ptrtoint ptr %add.ptr.i15 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 %23, ptr %add.ptr.i15, align 1
  %25 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %p, align 4
  %add.ptr.i16 = getelementptr i8, ptr %26, i32 2
  store ptr %add.ptr.i16, ptr %p, align 4
  %__data = getelementptr inbounds %struct.anon, ptr %in_addr, i32 0, i32 1
  %sub = add nsw i32 %switch.select3.i, -2
  %27 = call ptr @memcpy(ptr %add.ptr.i16, ptr %__data, i32 %sub)
  %28 = load ptr, ptr %p, align 4
  %add.ptr.i17 = getelementptr i8, ptr %28, i32 %sub
  store ptr %add.ptr.i17, ptr %p, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !30, !32, !33, !34, !35}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @__ksymtab_ceph_decode_entity_addr, !1, !"__ksymtab_ceph_decode_entity_addr", i1 false, i1 false}
!1 = !{!"../net/ceph/decode.c", i32 87, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/ceph/decode.c", i32 109, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ceph_decode_entity_addrvec._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @ceph_decode_entity_addrvec._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/ceph/decode.c", i32 114, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @ceph_decode_entity_addrvec.__UNIQUE_ID_ddebug280, !9, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!12 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/ceph/decode.c", i32 122, i32 3}
!16 = !{ptr @ceph_decode_entity_addrvec.__UNIQUE_ID_ddebug281, !15, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!17 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/ceph/decode.c", i32 125, i32 5}
!20 = !{ptr @ceph_decode_entity_addrvec._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @ceph_decode_entity_addrvec._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/ceph/decode.c", i32 144, i32 2}
!24 = !{ptr @ceph_decode_entity_addrvec._entry.12, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @ceph_decode_entity_addrvec._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @__ksymtab_ceph_decode_entity_addrvec, !27, !"__ksymtab_ceph_decode_entity_addrvec", i1 false, i1 false}
!27 = !{!"../net/ceph/decode.c", i32 150, i32 1}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/ceph/decode.c", i32 18, i32 39}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../include/linux/ceph/decode.h", i32 346, i32 3}
!32 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ceph_start_decoding._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @ceph_start_decoding._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{i64 2148618447, i64 2148618452, i64 2148618465, i64 2148618509, i64 2148618543, i64 2148618564}
