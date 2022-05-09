; ModuleID = '/llk/IR_all_yes/net/ceph/striper.c_pt.bc'
source_filename = "../net/ceph/striper.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ceph_calc_file_object_mapping\22, \22a\22\09"
module asm "\09.weak\09__crc_ceph_calc_file_object_mapping\09\09\09\09"
module asm "\09.long\09__crc_ceph_calc_file_object_mapping\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ceph_calc_file_object_mapping:\09\09\09\09\09"
module asm "\09.asciz \09\22ceph_calc_file_object_mapping\22\09\09\09\09\09"
module asm "__kstrtabns_ceph_calc_file_object_mapping:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ceph_file_to_extents\22, \22a\22\09"
module asm "\09.weak\09__crc_ceph_file_to_extents\09\09\09\09"
module asm "\09.long\09__crc_ceph_file_to_extents\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ceph_file_to_extents:\09\09\09\09\09"
module asm "\09.asciz \09\22ceph_file_to_extents\22\09\09\09\09\09"
module asm "__kstrtabns_ceph_file_to_extents:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ceph_iterate_extents\22, \22a\22\09"
module asm "\09.weak\09__crc_ceph_iterate_extents\09\09\09\09"
module asm "\09.long\09__crc_ceph_iterate_extents\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ceph_iterate_extents:\09\09\09\09\09"
module asm "\09.asciz \09\22ceph_iterate_extents\22\09\09\09\09\09"
module asm "__kstrtabns_ceph_iterate_extents:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ceph_extent_to_file\22, \22a\22\09"
module asm "\09.weak\09__crc_ceph_extent_to_file\09\09\09\09"
module asm "\09.long\09__crc_ceph_extent_to_file\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ceph_extent_to_file:\09\09\09\09\09"
module asm "\09.asciz \09\22ceph_extent_to_file\22\09\09\09\09\09"
module asm "__kstrtabns_ceph_extent_to_file:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ceph_get_num_objects\22, \22a\22\09"
module asm "\09.weak\09__crc_ceph_get_num_objects\09\09\09\09"
module asm "\09.long\09__crc_ceph_get_num_objects\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ceph_get_num_objects:\09\09\09\09\09"
module asm "\09.asciz \09\22ceph_get_num_objects\22\09\09\09\09\09"
module asm "__kstrtabns_ceph_get_num_objects:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ceph_file_layout = type { i32, i32, i32, i64, ptr }
%struct.list_head = type { ptr, ptr }
%struct.ceph_object_extent = type { %struct.list_head, i64, i64, i64 }
%struct.ceph_file_extent = type { i64, i64 }

@__kstrtab_ceph_calc_file_object_mapping = external dso_local constant [0 x i8], align 1
@__kstrtabns_ceph_calc_file_object_mapping = external dso_local constant [0 x i8], align 1
@__ksymtab_ceph_calc_file_object_mapping = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ceph_calc_file_object_mapping to i32), ptr @__kstrtab_ceph_calc_file_object_mapping, ptr @__kstrtabns_ceph_calc_file_object_mapping }, section "___ksymtab+ceph_calc_file_object_mapping", align 4
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/ceph/striper.c\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: object_extents list not sorted!\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.ceph_file_to_extents = private unnamed_addr constant [21 x i8] c"ceph_file_to_extents\00", align 1
@__kstrtab_ceph_file_to_extents = external dso_local constant [0 x i8], align 1
@__kstrtabns_ceph_file_to_extents = external dso_local constant [0 x i8], align 1
@__ksymtab_ceph_file_to_extents = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ceph_file_to_extents to i32), ptr @__kstrtab_ceph_file_to_extents, ptr @__kstrtabns_ceph_file_to_extents }, section "___ksymtab+ceph_file_to_extents", align 4
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: objno %llu %llu~%u not found!\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.ceph_iterate_extents = private unnamed_addr constant [21 x i8] c"ceph_iterate_extents\00", align 1
@__kstrtab_ceph_iterate_extents = external dso_local constant [0 x i8], align 1
@__kstrtabns_ceph_iterate_extents = external dso_local constant [0 x i8], align 1
@__ksymtab_ceph_iterate_extents = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ceph_iterate_extents to i32), ptr @__kstrtab_ceph_iterate_extents, ptr @__kstrtabns_ceph_iterate_extents }, section "___ksymtab+ceph_iterate_extents", align 4
@__kstrtab_ceph_extent_to_file = external dso_local constant [0 x i8], align 1
@__kstrtabns_ceph_extent_to_file = external dso_local constant [0 x i8], align 1
@__ksymtab_ceph_extent_to_file = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ceph_extent_to_file to i32), ptr @__kstrtab_ceph_extent_to_file, ptr @__kstrtabns_ceph_extent_to_file }, section "___ksymtab+ceph_extent_to_file", align 4
@__kstrtab_ceph_get_num_objects = external dso_local constant [0 x i8], align 1
@__kstrtabns_ceph_get_num_objects = external dso_local constant [0 x i8], align 1
@__ksymtab_ceph_get_num_objects = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ceph_get_num_objects to i32), ptr @__kstrtab_ceph_get_num_objects, ptr @__kstrtabns_ceph_get_num_objects }, section "___ksymtab+ceph_get_num_objects", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 160, i32 4 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private constant [22 x i8] c"../net/ceph/striper.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 189, i32 4 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_ceph_calc_file_object_mapping, ptr @__ksymtab_ceph_extent_to_file, ptr @__ksymtab_ceph_file_to_extents, ptr @__ksymtab_ceph_get_num_objects, ptr @__ksymtab_ceph_iterate_extents, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_calc_file_object_mapping(ptr nocapture noundef readonly %l, i64 noundef %off, i64 noundef %len, ptr nocapture noundef writeonly %objno, ptr nocapture noundef writeonly %objoff, ptr nocapture noundef writeonly %xlen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %object_size = getelementptr inbounds %struct.ceph_file_layout, ptr %l, i32 0, i32 2
  %0 = ptrtoint ptr %object_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %object_size, align 8
  %2 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %l, align 8
  %div = udiv i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %off)
  %cmp164.i = icmp ult i64 %off, 4294967296
  br i1 %cmp164.i, label %if.then168.i, label %if.else174.i, !prof !26

if.then168.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i = trunc i64 %off to i32
  %.frozen = freeze i32 %3
  %div172.i = udiv i32 %conv169.i, %.frozen
  %4 = mul i32 %div172.i, %.frozen
  %rem170.i.decomposed = sub i32 %conv169.i, %4
  %conv173.i = zext i32 %div172.i to i64
  br label %div_u64_rem.exit

if.else174.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %3, i64 %off) #9, !srcloc !27
  %asmresult.i261.i = extractvalue { i64, i64 } %5, 0
  %asmresult1.i.i = extractvalue { i64, i64 } %5, 1
  %shr.i.i = lshr i64 %asmresult.i261.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %div_u64_rem.exit

div_u64_rem.exit:                                 ; preds = %if.else174.i, %if.then168.i
  %dividend.addr.0.i = phi i64 [ %conv173.i, %if.then168.i ], [ %asmresult1.i.i, %if.else174.i ]
  %__rem.0.i = phi i32 [ %rem170.i.decomposed, %if.then168.i ], [ %conv.i.i, %if.else174.i ]
  %stripe_count = getelementptr inbounds %struct.ceph_file_layout, ptr %l, i32 0, i32 1
  %6 = ptrtoint ptr %stripe_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stripe_count, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %dividend.addr.0.i)
  %cmp164.i136 = icmp ult i64 %dividend.addr.0.i, 4294967296
  br i1 %cmp164.i136, label %if.then168.i142, label %if.else174.i147, !prof !26

if.then168.i142:                                  ; preds = %div_u64_rem.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i138 = trunc i64 %dividend.addr.0.i to i32
  %conv169.i138.frozen = freeze i32 %conv169.i138
  %.frozen279 = freeze i32 %7
  %div172.i140 = udiv i32 %conv169.i138.frozen, %.frozen279
  %8 = mul i32 %div172.i140, %.frozen279
  %rem170.i139.decomposed = sub i32 %conv169.i138.frozen, %8
  %conv173.i141 = zext i32 %div172.i140 to i64
  br label %if.else162.i265

if.else174.i147:                                  ; preds = %div_u64_rem.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %7, i64 %dividend.addr.0.i) #9, !srcloc !27
  %asmresult.i261.i143 = extractvalue { i64, i64 } %9, 0
  %asmresult1.i.i144 = extractvalue { i64, i64 } %9, 1
  %shr.i.i145 = lshr i64 %asmresult.i261.i143, 32
  %conv.i.i146 = trunc i64 %shr.i.i145 to i32
  br label %if.else162.i265

if.else162.i265:                                  ; preds = %if.else174.i147, %if.then168.i142
  %dividend.addr.0.i148 = phi i64 [ %conv173.i141, %if.then168.i142 ], [ %asmresult1.i.i144, %if.else174.i147 ]
  %__rem.0.i149 = phi i32 [ %rem170.i139.decomposed, %if.then168.i142 ], [ %conv.i.i146, %if.else174.i147 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %dividend.addr.0.i148)
  %cmp164.i264 = icmp ult i64 %dividend.addr.0.i148, 4294967296
  br i1 %cmp164.i264, label %if.then168.i270, label %if.else174.i275, !prof !26

if.then168.i270:                                  ; preds = %if.else162.i265
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i266 = trunc i64 %dividend.addr.0.i148 to i32
  %conv169.i266.frozen = freeze i32 %conv169.i266
  %div.frozen = freeze i32 %div
  %div172.i268 = udiv i32 %conv169.i266.frozen, %div.frozen
  %10 = mul i32 %div172.i268, %div.frozen
  %rem170.i267.decomposed = sub i32 %conv169.i266.frozen, %10
  %conv173.i269 = zext i32 %div172.i268 to i64
  br label %div_u64_rem.exit278

if.else174.i275:                                  ; preds = %if.else162.i265
  call void @__sanitizer_cov_trace_pc() #8
  %11 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div, i64 %dividend.addr.0.i148) #9, !srcloc !27
  %asmresult.i261.i271 = extractvalue { i64, i64 } %11, 0
  %asmresult1.i.i272 = extractvalue { i64, i64 } %11, 1
  %shr.i.i273 = lshr i64 %asmresult.i261.i271, 32
  %conv.i.i274 = trunc i64 %shr.i.i273 to i32
  br label %div_u64_rem.exit278

div_u64_rem.exit278:                              ; preds = %if.else174.i275, %if.then168.i270
  %dividend.addr.0.i276 = phi i64 [ %conv173.i269, %if.then168.i270 ], [ %asmresult1.i.i272, %if.else174.i275 ]
  %__rem.0.i277 = phi i32 [ %rem170.i267.decomposed, %if.then168.i270 ], [ %conv.i.i274, %if.else174.i275 ]
  %conv = zext i32 %7 to i64
  %mul = mul i64 %dividend.addr.0.i276, %conv
  %conv5 = zext i32 %__rem.0.i149 to i64
  %add = add i64 %mul, %conv5
  %12 = ptrtoint ptr %objno to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %add, ptr %objno, align 8
  %13 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %l, align 8
  %mul7 = mul i32 %14, %__rem.0.i277
  %add8 = add i32 %mul7, %__rem.0.i
  %conv9 = zext i32 %add8 to i64
  %15 = ptrtoint ptr %objoff to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv9, ptr %objoff, align 8
  %16 = load i32, ptr %l, align 8
  %sub = sub i32 %16, %__rem.0.i
  %conv11 = zext i32 %sub to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv11, i64 %len)
  %cmp = icmp ugt i64 %conv11, %len
  %extract.t = trunc i64 %len to i32
  %cond.off0 = select i1 %cmp, i32 %extract.t, i32 %sub
  %17 = ptrtoint ptr %xlen to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond.off0, ptr %xlen, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_file_to_extents(ptr nocapture noundef readonly %l, i64 noundef %off, i64 noundef %len, ptr noundef %object_extents, ptr nocapture noundef readonly %alloc_fn, ptr noundef %alloc_arg, ptr noundef readonly %action_fn, ptr noundef %action_arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %len)
  %tobool.not135 = icmp eq i64 %len, 0
  br i1 %tobool.not135, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %object_size.i = getelementptr inbounds %struct.ceph_file_layout, ptr %l, i32 0, i32 2
  %stripe_count.i = getelementptr inbounds %struct.ceph_file_layout, ptr %l, i32 0, i32 1
  %tobool19.not = icmp eq ptr %action_fn, null
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %off.addr.0137 = phi i64 [ %off, %while.body.lr.ph ], [ %add24, %cleanup.while.body_crit_edge ]
  %len.addr.0136 = phi i64 [ %len, %while.body.lr.ph ], [ %sub, %cleanup.while.body_crit_edge ]
  %0 = ptrtoint ptr %object_size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %object_size.i, align 8
  %2 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %l, align 8
  %div.i = udiv i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %off.addr.0137)
  %cmp164.i.i = icmp ult i64 %off.addr.0137, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !26

if.then168.i.i:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i.i = trunc i64 %off.addr.0137 to i32
  %conv169.i.i.frozen = freeze i32 %conv169.i.i
  %.frozen = freeze i32 %3
  %div172.i.i = udiv i32 %conv169.i.i.frozen, %.frozen
  %4 = mul i32 %div172.i.i, %.frozen
  %rem170.i.i.decomposed = sub i32 %conv169.i.i.frozen, %4
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %div_u64_rem.exit.i

if.else174.i.i:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %5 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %3, i64 %off.addr.0137) #9, !srcloc !27
  %asmresult.i261.i.i = extractvalue { i64, i64 } %5, 0
  %asmresult1.i.i.i = extractvalue { i64, i64 } %5, 1
  %shr.i.i.i = lshr i64 %asmresult.i261.i.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  br label %div_u64_rem.exit.i

div_u64_rem.exit.i:                               ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i = phi i64 [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  %__rem.0.i.i = phi i32 [ %rem170.i.i.decomposed, %if.then168.i.i ], [ %conv.i.i.i, %if.else174.i.i ]
  %6 = ptrtoint ptr %stripe_count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stripe_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %dividend.addr.0.i.i)
  %cmp164.i136.i = icmp ult i64 %dividend.addr.0.i.i, 4294967296
  br i1 %cmp164.i136.i, label %if.then168.i142.i, label %if.else174.i147.i, !prof !26

if.then168.i142.i:                                ; preds = %div_u64_rem.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i138.i = trunc i64 %dividend.addr.0.i.i to i32
  %conv169.i138.i.frozen = freeze i32 %conv169.i138.i
  %.frozen151 = freeze i32 %7
  %div172.i140.i = udiv i32 %conv169.i138.i.frozen, %.frozen151
  %8 = mul i32 %div172.i140.i, %.frozen151
  %rem170.i139.i.decomposed = sub i32 %conv169.i138.i.frozen, %8
  %conv173.i141.i = zext i32 %div172.i140.i to i64
  br label %if.else162.i265.i

if.else174.i147.i:                                ; preds = %div_u64_rem.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %7, i64 %dividend.addr.0.i.i) #9, !srcloc !27
  %asmresult.i261.i143.i = extractvalue { i64, i64 } %9, 0
  %asmresult1.i.i144.i = extractvalue { i64, i64 } %9, 1
  %shr.i.i145.i = lshr i64 %asmresult.i261.i143.i, 32
  %conv.i.i146.i = trunc i64 %shr.i.i145.i to i32
  br label %if.else162.i265.i

if.else162.i265.i:                                ; preds = %if.else174.i147.i, %if.then168.i142.i
  %dividend.addr.0.i148.i = phi i64 [ %conv173.i141.i, %if.then168.i142.i ], [ %asmresult1.i.i144.i, %if.else174.i147.i ]
  %__rem.0.i149.i = phi i32 [ %rem170.i139.i.decomposed, %if.then168.i142.i ], [ %conv.i.i146.i, %if.else174.i147.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %dividend.addr.0.i148.i)
  %cmp164.i264.i = icmp ult i64 %dividend.addr.0.i148.i, 4294967296
  br i1 %cmp164.i264.i, label %if.then168.i270.i, label %if.else174.i275.i, !prof !26

if.then168.i270.i:                                ; preds = %if.else162.i265.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i266.i = trunc i64 %dividend.addr.0.i148.i to i32
  %conv169.i266.i.frozen = freeze i32 %conv169.i266.i
  %div.i.frozen = freeze i32 %div.i
  %div172.i268.i = udiv i32 %conv169.i266.i.frozen, %div.i.frozen
  %10 = mul i32 %div172.i268.i, %div.i.frozen
  %rem170.i267.i.decomposed = sub i32 %conv169.i266.i.frozen, %10
  %conv173.i269.i = zext i32 %div172.i268.i to i64
  br label %ceph_calc_file_object_mapping.exit

if.else174.i275.i:                                ; preds = %if.else162.i265.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div.i, i64 %dividend.addr.0.i148.i) #9, !srcloc !27
  %asmresult.i261.i271.i = extractvalue { i64, i64 } %11, 0
  %asmresult1.i.i272.i = extractvalue { i64, i64 } %11, 1
  %shr.i.i273.i = lshr i64 %asmresult.i261.i271.i, 32
  %conv.i.i274.i = trunc i64 %shr.i.i273.i to i32
  br label %ceph_calc_file_object_mapping.exit

ceph_calc_file_object_mapping.exit:               ; preds = %if.else174.i275.i, %if.then168.i270.i
  %dividend.addr.0.i276.i = phi i64 [ %conv173.i269.i, %if.then168.i270.i ], [ %asmresult1.i.i272.i, %if.else174.i275.i ]
  %__rem.0.i277.i = phi i32 [ %rem170.i267.i.decomposed, %if.then168.i270.i ], [ %conv.i.i274.i, %if.else174.i275.i ]
  %conv.i = zext i32 %7 to i64
  %mul.i = mul i64 %dividend.addr.0.i276.i, %conv.i
  %conv5.i = zext i32 %__rem.0.i149.i to i64
  %add.i = add i64 %mul.i, %conv5.i
  %mul7.i = mul i32 %__rem.0.i277.i, %3
  %add8.i = add i32 %mul7.i, %__rem.0.i.i
  %conv9.i = zext i32 %add8.i to i64
  %sub.i = sub i32 %3, %__rem.0.i.i
  %conv11.i = zext i32 %sub.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %len.addr.0136, i64 %conv11.i)
  %cmp.i = icmp ult i64 %len.addr.0136, %conv11.i
  %extract.t.i = trunc i64 %len.addr.0136 to i32
  %cond.off0.i = select i1 %cmp.i, i32 %extract.t.i, i32 %sub.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %ceph_calc_file_object_mapping.exit
  %object_extents.pn.i = phi ptr [ %object_extents, %ceph_calc_file_object_mapping.exit ], [ %pos.0.i, %for.body.i.for.cond.i_crit_edge ]
  %retval.0.i = phi ptr [ undef, %ceph_calc_file_object_mapping.exit ], [ %retval.1.i, %for.body.i.for.cond.i_crit_edge ]
  %pos.0.in.i = getelementptr inbounds %struct.list_head, ptr %object_extents.pn.i, i32 0, i32 1
  %12 = ptrtoint ptr %pos.0.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %pos.0.i = load ptr, ptr %pos.0.in.i, align 4
  %cmp.i.not.i = icmp eq ptr %pos.0.i, %object_extents
  br i1 %cmp.i.not.i, label %for.cond.i.if.then_crit_edge, label %for.body.i

for.cond.i.if.then_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.body.i:                                       ; preds = %for.cond.i
  %oe_objno.i = getelementptr inbounds %struct.ceph_object_extent, ptr %pos.0.i, i32 0, i32 1
  %13 = ptrtoint ptr %oe_objno.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %oe_objno.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %add.i)
  %cmp.i113 = icmp eq i64 %14, %add.i
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %add.i)
  %cmp2.i = icmp ult i64 %14, %add.i
  %..i = select i1 %cmp2.i, i32 2, i32 0
  %retval.1.i = select i1 %cmp.i113, ptr %pos.0.i, ptr %retval.0.i
  %cleanup.dest.slot.0.i = select i1 %cmp.i113, i32 1, i32 %..i
  %15 = zext i32 %cleanup.dest.slot.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cleanup.dest.slot.0.i, label %lookup_last.exit [
    i32 0, label %for.body.i.for.cond.i_crit_edge
    i32 2, label %for.body.i.if.then_crit_edge
  ]

for.body.i.if.then_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

lookup_last.exit:                                 ; preds = %for.body.i
  %tobool1.not = icmp eq ptr %retval.1.i, null
  br i1 %tobool1.not, label %lookup_last.exit.if.then_crit_edge, label %lor.lhs.false

lookup_last.exit.if.then_crit_edge:               ; preds = %lookup_last.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %lookup_last.exit
  %oe_off = getelementptr inbounds %struct.ceph_object_extent, ptr %retval.1.i, i32 0, i32 2
  %16 = ptrtoint ptr %oe_off to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %oe_off, align 8
  %oe_len = getelementptr inbounds %struct.ceph_object_extent, ptr %retval.1.i, i32 0, i32 3
  %18 = ptrtoint ptr %oe_len to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %oe_len, align 8
  %add = add i64 %19, %17
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv9.i)
  %cmp.not = icmp eq i64 %add, %conv9.i
  br i1 %cmp.not, label %if.else15, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %lookup_last.exit.if.then_crit_edge, %for.body.i.if.then_crit_edge, %for.cond.i.if.then_crit_edge
  %tobool1.not130 = phi i1 [ false, %lor.lhs.false.if.then_crit_edge ], [ true, %lookup_last.exit.if.then_crit_edge ], [ true, %for.cond.i.if.then_crit_edge ], [ true, %for.body.i.if.then_crit_edge ]
  %retval.2.i129 = phi ptr [ %retval.1.i, %lor.lhs.false.if.then_crit_edge ], [ null, %lookup_last.exit.if.then_crit_edge ], [ null, %for.cond.i.if.then_crit_edge ], [ null, %for.body.i.if.then_crit_edge ]
  %add_pos.0128 = phi ptr [ null, %lor.lhs.false.if.then_crit_edge ], [ null, %lookup_last.exit.if.then_crit_edge ], [ %pos.0.i, %for.body.i.if.then_crit_edge ], [ %object_extents, %for.cond.i.if.then_crit_edge ]
  %call2 = tail call ptr %alloc_fn(ptr noundef %alloc_arg) #6
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.then.cleanup77_crit_edge, label %if.end

if.then.cleanup77_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup77

if.end:                                           ; preds = %if.then
  %oe_objno = getelementptr inbounds %struct.ceph_object_extent, ptr %call2, i32 0, i32 1
  %20 = ptrtoint ptr %oe_objno to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %add.i, ptr %oe_objno, align 8
  %oe_off5 = getelementptr inbounds %struct.ceph_object_extent, ptr %call2, i32 0, i32 2
  %21 = ptrtoint ptr %oe_off5 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv9.i, ptr %oe_off5, align 8
  %conv = zext i32 %cond.off0.i to i64
  %oe_len6 = getelementptr inbounds %struct.ceph_object_extent, ptr %call2, i32 0, i32 3
  %22 = ptrtoint ptr %oe_len6 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv, ptr %oe_len6, align 8
  br i1 %tobool19.not, label %if.end.if.end9_crit_edge, label %if.then8

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %action_fn(ptr noundef nonnull %call2, i32 noundef %cond.off0.i, ptr noundef %action_arg) #6
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end.if.end9_crit_edge
  br i1 %tobool1.not130, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end9
  %23 = ptrtoint ptr %add_pos.0128 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add_pos.0128, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call2, ptr noundef %add_pos.0128, ptr noundef %24) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call2, ptr %prev1.i.i, align 4
  %26 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %24, ptr %call2, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call2, i32 0, i32 1
  %27 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add_pos.0128, ptr %prev3.i.i, align 4
  %28 = ptrtoint ptr %add_pos.0128 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %call2, ptr %add_pos.0128, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end9
  %29 = ptrtoint ptr %retval.2.i129 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %retval.2.i129, align 4
  %call.i.i114 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call2, ptr noundef %retval.2.i129, ptr noundef %30) #6
  br i1 %call.i.i114, label %if.end.i.i117, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i117:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i115 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i115 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call2, ptr %prev1.i.i115, align 4
  %32 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %30, ptr %call2, align 4
  %prev3.i.i116 = getelementptr inbounds %struct.list_head, ptr %call2, i32 0, i32 1
  %33 = ptrtoint ptr %prev3.i.i116 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %retval.2.i129, ptr %prev3.i.i116, align 4
  %34 = ptrtoint ptr %retval.2.i129 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %call2, ptr %retval.2.i129, align 4
  br label %cleanup

if.else15:                                        ; preds = %lor.lhs.false
  %conv16 = zext i32 %cond.off0.i to i64
  %add18 = add i64 %19, %conv16
  %35 = ptrtoint ptr %oe_len to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %add18, ptr %oe_len, align 8
  br i1 %tobool19.not, label %if.else15.cleanup_crit_edge, label %if.then20

if.else15.cleanup_crit_edge:                      ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then20:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %action_fn(ptr noundef nonnull %retval.1.i, i32 noundef %cond.off0.i, ptr noundef %action_arg) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.else15.cleanup_crit_edge, %if.end.i.i117, %if.else.cleanup_crit_edge, %if.end.i.i, %if.then11.cleanup_crit_edge
  %conv23.pre-phi = phi i64 [ %conv16, %if.then20 ], [ %conv16, %if.else15.cleanup_crit_edge ], [ %conv, %if.then11.cleanup_crit_edge ], [ %conv, %if.end.i.i ], [ %conv, %if.else.cleanup_crit_edge ], [ %conv, %if.end.i.i117 ]
  %add24 = add i64 %off.addr.0137, %conv23.pre-phi
  %sub = sub i64 %len.addr.0136, %conv23.pre-phi
  %tobool.not = icmp eq i64 %sub, 0
  br i1 %tobool.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %entry.while.end_crit_edge
  %36 = ptrtoint ptr %object_extents to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %object_extents, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %ex.0143 = load ptr, ptr %37, align 8
  %cmp35.not144 = icmp eq ptr %ex.0143, %object_extents
  br i1 %cmp35.not144, label %while.end.cleanup77_crit_edge, label %while.end.for.body_crit_edge

while.end.for.body_crit_edge:                     ; preds = %while.end
  br label %for.body

while.end.cleanup77_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup77

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %while.end.for.body_crit_edge
  %ex.0146 = phi ptr [ %ex.0, %for.inc.for.body_crit_edge ], [ %ex.0143, %while.end.for.body_crit_edge ]
  %last_ex.0145 = phi ptr [ %ex.0146, %for.inc.for.body_crit_edge ], [ %37, %while.end.for.body_crit_edge ]
  %oe_objno37 = getelementptr inbounds %struct.ceph_object_extent, ptr %last_ex.0145, i32 0, i32 1
  %39 = ptrtoint ptr %oe_objno37 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %oe_objno37, align 8
  %oe_objno38 = getelementptr inbounds %struct.ceph_object_extent, ptr %ex.0146, i32 0, i32 1
  %41 = ptrtoint ptr %oe_objno38 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %oe_objno38, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %40, i64 %42)
  %cmp39 = icmp ugt i64 %40, %42
  br i1 %cmp39, label %for.body.do.end_crit_edge, label %lor.lhs.false41

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false41:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp8(i64 %40, i64 %42)
  %cmp44 = icmp eq i64 %40, %42
  br i1 %cmp44, label %land.lhs.true, label %lor.lhs.false41.for.inc_crit_edge

lor.lhs.false41.for.inc_crit_edge:                ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %lor.lhs.false41
  %oe_off46 = getelementptr inbounds %struct.ceph_object_extent, ptr %last_ex.0145, i32 0, i32 2
  %43 = ptrtoint ptr %oe_off46 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %oe_off46, align 8
  %oe_len47 = getelementptr inbounds %struct.ceph_object_extent, ptr %last_ex.0145, i32 0, i32 3
  %45 = ptrtoint ptr %oe_len47 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %oe_len47, align 8
  %add48 = add i64 %46, %44
  %oe_off49 = getelementptr inbounds %struct.ceph_object_extent, ptr %ex.0146, i32 0, i32 2
  %47 = ptrtoint ptr %oe_off49 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %oe_off49, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add48, i64 %48)
  %cmp50.not = icmp ult i64 %add48, %48
  br i1 %cmp50.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.end:                                           ; preds = %land.lhs.true.do.end_crit_edge, %for.body.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 161, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ceph_file_to_extents) #6
  br label %cleanup77

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %lor.lhs.false41.for.inc_crit_edge
  %49 = ptrtoint ptr %ex.0146 to i32
  call void @__asan_load4_noabort(i32 %49)
  %ex.0 = load ptr, ptr %ex.0146, align 8
  %cmp35.not = icmp eq ptr %ex.0, %object_extents
  br i1 %cmp35.not, label %for.inc.cleanup77_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup77_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup77

cleanup77:                                        ; preds = %for.inc.cleanup77_crit_edge, %do.end, %while.end.cleanup77_crit_edge, %if.then.cleanup77_crit_edge
  %retval.2 = phi i32 [ -22, %do.end ], [ 0, %while.end.cleanup77_crit_edge ], [ 0, %for.inc.cleanup77_crit_edge ], [ -12, %if.then.cleanup77_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_iterate_extents(ptr nocapture noundef readonly %l, i64 noundef %off, i64 noundef %len, ptr noundef readonly %object_extents, ptr nocapture noundef readonly %action_fn, ptr noundef %action_arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %len)
  %tobool.not51 = icmp eq i64 %len, 0
  br i1 %tobool.not51, label %entry.return_crit_edge, label %while.body.lr.ph

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

while.body.lr.ph:                                 ; preds = %entry
  %object_size.i = getelementptr inbounds %struct.ceph_file_layout, ptr %l, i32 0, i32 2
  %stripe_count.i = getelementptr inbounds %struct.ceph_file_layout, ptr %l, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %off.addr.053 = phi i64 [ %off, %while.body.lr.ph ], [ %add, %cleanup.while.body_crit_edge ]
  %len.addr.052 = phi i64 [ %len, %while.body.lr.ph ], [ %sub, %cleanup.while.body_crit_edge ]
  %0 = ptrtoint ptr %object_size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %object_size.i, align 8
  %2 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %l, align 8
  %div.i = udiv i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %off.addr.053)
  %cmp164.i.i = icmp ult i64 %off.addr.053, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !26

if.then168.i.i:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i.i = trunc i64 %off.addr.053 to i32
  %conv169.i.i.frozen = freeze i32 %conv169.i.i
  %.frozen = freeze i32 %3
  %div172.i.i = udiv i32 %conv169.i.i.frozen, %.frozen
  %4 = mul i32 %div172.i.i, %.frozen
  %rem170.i.i.decomposed = sub i32 %conv169.i.i.frozen, %4
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %div_u64_rem.exit.i

if.else174.i.i:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %5 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %3, i64 %off.addr.053) #9, !srcloc !27
  %asmresult.i261.i.i = extractvalue { i64, i64 } %5, 0
  %asmresult1.i.i.i = extractvalue { i64, i64 } %5, 1
  %shr.i.i.i = lshr i64 %asmresult.i261.i.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  br label %div_u64_rem.exit.i

div_u64_rem.exit.i:                               ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i = phi i64 [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  %__rem.0.i.i = phi i32 [ %rem170.i.i.decomposed, %if.then168.i.i ], [ %conv.i.i.i, %if.else174.i.i ]
  %6 = ptrtoint ptr %stripe_count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stripe_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %dividend.addr.0.i.i)
  %cmp164.i136.i = icmp ult i64 %dividend.addr.0.i.i, 4294967296
  br i1 %cmp164.i136.i, label %if.then168.i142.i, label %if.else174.i147.i, !prof !26

if.then168.i142.i:                                ; preds = %div_u64_rem.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i138.i = trunc i64 %dividend.addr.0.i.i to i32
  %conv169.i138.i.frozen = freeze i32 %conv169.i138.i
  %.frozen113 = freeze i32 %7
  %div172.i140.i = udiv i32 %conv169.i138.i.frozen, %.frozen113
  %8 = mul i32 %div172.i140.i, %.frozen113
  %rem170.i139.i.decomposed = sub i32 %conv169.i138.i.frozen, %8
  %conv173.i141.i = zext i32 %div172.i140.i to i64
  br label %if.else162.i265.i

if.else174.i147.i:                                ; preds = %div_u64_rem.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %7, i64 %dividend.addr.0.i.i) #9, !srcloc !27
  %asmresult.i261.i143.i = extractvalue { i64, i64 } %9, 0
  %asmresult1.i.i144.i = extractvalue { i64, i64 } %9, 1
  %shr.i.i145.i = lshr i64 %asmresult.i261.i143.i, 32
  %conv.i.i146.i = trunc i64 %shr.i.i145.i to i32
  br label %if.else162.i265.i

if.else162.i265.i:                                ; preds = %if.else174.i147.i, %if.then168.i142.i
  %dividend.addr.0.i148.i = phi i64 [ %conv173.i141.i, %if.then168.i142.i ], [ %asmresult1.i.i144.i, %if.else174.i147.i ]
  %__rem.0.i149.i = phi i32 [ %rem170.i139.i.decomposed, %if.then168.i142.i ], [ %conv.i.i146.i, %if.else174.i147.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %dividend.addr.0.i148.i)
  %cmp164.i264.i = icmp ult i64 %dividend.addr.0.i148.i, 4294967296
  br i1 %cmp164.i264.i, label %if.then168.i270.i, label %if.else174.i275.i, !prof !26

if.then168.i270.i:                                ; preds = %if.else162.i265.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i266.i = trunc i64 %dividend.addr.0.i148.i to i32
  %conv169.i266.i.frozen = freeze i32 %conv169.i266.i
  %div.i.frozen = freeze i32 %div.i
  %div172.i268.i = udiv i32 %conv169.i266.i.frozen, %div.i.frozen
  %10 = mul i32 %div172.i268.i, %div.i.frozen
  %rem170.i267.i.decomposed = sub i32 %conv169.i266.i.frozen, %10
  %conv173.i269.i = zext i32 %div172.i268.i to i64
  br label %ceph_calc_file_object_mapping.exit

if.else174.i275.i:                                ; preds = %if.else162.i265.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div.i, i64 %dividend.addr.0.i148.i) #9, !srcloc !27
  %asmresult.i261.i271.i = extractvalue { i64, i64 } %11, 0
  %asmresult1.i.i272.i = extractvalue { i64, i64 } %11, 1
  %shr.i.i273.i = lshr i64 %asmresult.i261.i271.i, 32
  %conv.i.i274.i = trunc i64 %shr.i.i273.i to i32
  br label %ceph_calc_file_object_mapping.exit

ceph_calc_file_object_mapping.exit:               ; preds = %if.else174.i275.i, %if.then168.i270.i
  %dividend.addr.0.i276.i = phi i64 [ %conv173.i269.i, %if.then168.i270.i ], [ %asmresult1.i.i272.i, %if.else174.i275.i ]
  %__rem.0.i277.i = phi i32 [ %rem170.i267.i.decomposed, %if.then168.i270.i ], [ %conv.i.i274.i, %if.else174.i275.i ]
  %conv.i = zext i32 %7 to i64
  %mul.i = mul i64 %dividend.addr.0.i276.i, %conv.i
  %conv5.i = zext i32 %__rem.0.i149.i to i64
  %add.i = add i64 %mul.i, %conv5.i
  %mul7.i = mul i32 %__rem.0.i277.i, %3
  %add8.i = add i32 %mul7.i, %__rem.0.i.i
  %conv9.i = zext i32 %add8.i to i64
  %sub.i = sub i32 %3, %__rem.0.i.i
  %conv11.i = zext i32 %sub.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %len.addr.052, i64 %conv11.i)
  %cmp.i = icmp ult i64 %len.addr.052, %conv11.i
  %extract.t.i = trunc i64 %len.addr.052 to i32
  %cond.off0.i = select i1 %cmp.i, i32 %extract.t.i, i32 %sub.i
  %conv.i28 = zext i32 %cond.off0.i to i64
  %add5.i = add nuw nsw i64 %conv9.i, %conv.i28
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end.i.for.cond.i_crit_edge, %ceph_calc_file_object_mapping.exit
  %ex.0.in.i = phi ptr [ %object_extents, %ceph_calc_file_object_mapping.exit ], [ %ex.0.i, %if.end.i.for.cond.i_crit_edge ]
  %12 = ptrtoint ptr %ex.0.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %ex.0.i = load ptr, ptr %ex.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %ex.0.i, %object_extents
  br i1 %cmp.not.i, label %for.cond.i.cleanup.thread_crit_edge, label %for.body.i

for.cond.i.cleanup.thread_crit_edge:              ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

for.body.i:                                       ; preds = %for.cond.i
  %oe_objno.i = getelementptr inbounds %struct.ceph_object_extent, ptr %ex.0.i, i32 0, i32 1
  %13 = ptrtoint ptr %oe_objno.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %oe_objno.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %add.i)
  %cmp1.i = icmp eq i64 %14, %add.i
  br i1 %cmp1.i, label %land.lhs.true.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %oe_off.i = getelementptr inbounds %struct.ceph_object_extent, ptr %ex.0.i, i32 0, i32 2
  %15 = ptrtoint ptr %oe_off.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %oe_off.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %conv9.i)
  %cmp2.not.i = icmp ugt i64 %16, %conv9.i
  br i1 %cmp2.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %oe_len.i = getelementptr inbounds %struct.ceph_object_extent, ptr %ex.0.i, i32 0, i32 3
  %17 = ptrtoint ptr %oe_len.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %oe_len.i, align 8
  %add.i29 = add i64 %18, %16
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i29, i64 %add5.i)
  %cmp6.not.i = icmp ult i64 %add.i29, %add5.i
  br i1 %cmp6.not.i, label %land.lhs.true3.i.if.end.i_crit_edge, label %lookup_containing.exit

land.lhs.true3.i.if.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true3.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %cmp9.i = icmp ugt i64 %14, %add.i
  br i1 %cmp9.i, label %if.end.i.cleanup.thread_crit_edge, label %if.end.i.for.cond.i_crit_edge

if.end.i.for.cond.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

if.end.i.cleanup.thread_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

lookup_containing.exit:                           ; preds = %land.lhs.true3.i
  %tobool1.not = icmp eq ptr %ex.0.i, null
  br i1 %tobool1.not, label %lookup_containing.exit.cleanup.thread_crit_edge, label %cleanup

lookup_containing.exit.cleanup.thread_crit_edge:  ; preds = %lookup_containing.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %lookup_containing.exit.cleanup.thread_crit_edge, %if.end.i.cleanup.thread_crit_edge, %for.cond.i.cleanup.thread_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 190, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ceph_iterate_extents, i64 noundef %add.i, i64 noundef %conv9.i, i32 noundef %cond.off0.i) #6
  br label %return

cleanup:                                          ; preds = %lookup_containing.exit
  tail call void %action_fn(ptr noundef nonnull %ex.0.i, i32 noundef %cond.off0.i, ptr noundef %action_arg) #6
  %add = add i64 %off.addr.053, %conv.i28
  %sub = sub i64 %len.addr.052, %conv.i28
  %tobool.not = icmp eq i64 %sub, 0
  br i1 %tobool.not, label %cleanup.return_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

cleanup.return_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

return:                                           ; preds = %cleanup.return_crit_edge, %cleanup.thread, %entry.return_crit_edge
  %retval.2 = phi i32 [ -22, %cleanup.thread ], [ 0, %entry.return_crit_edge ], [ 0, %cleanup.return_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_extent_to_file(ptr nocapture noundef readonly %l, i64 noundef %objno, i64 noundef %objoff, i64 noundef %objlen, ptr nocapture noundef %file_extents, ptr nocapture noundef %num_file_extents) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %object_size = getelementptr inbounds %struct.ceph_file_layout, ptr %l, i32 0, i32 2
  %0 = ptrtoint ptr %object_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %object_size, align 8
  %2 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %l, align 8
  %div = udiv i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %objlen)
  %tobool.not = icmp eq i64 %objlen, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %file_extents to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %file_extents, align 4
  %5 = ptrtoint ptr %num_file_extents to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %num_file_extents, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i32 %3 to i64
  %add = add nsw i64 %conv, -1
  %add2 = add i64 %add, %objoff
  %sub = add i64 %add2, %objlen
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp175 = icmp ult i64 %sub, 4294967296
  br i1 %cmp175, label %if.then179, label %if.else185, !prof !26

if.then179:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv180 = trunc i64 %sub to i32
  %div183 = udiv i32 %conv180, %3
  %conv184 = zext i32 %div183 to i64
  br label %if.else393

if.else185:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %3, i64 %sub) #9, !srcloc !27
  %asmresult1.i = extractvalue { i64, i64 } %6, 1
  br label %if.else393

if.else393:                                       ; preds = %if.else185, %if.then179
  %_tmp.0 = phi i64 [ %conv184, %if.then179 ], [ %asmresult1.i, %if.else185 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %objoff)
  %cmp395 = icmp ult i64 %objoff, 4294967296
  br i1 %cmp395, label %if.then403, label %if.else409, !prof !26

if.then403:                                       ; preds = %if.else393
  call void @__sanitizer_cov_trace_pc() #8
  %conv404 = trunc i64 %objoff to i32
  %div407 = udiv i32 %conv404, %3
  %conv408 = zext i32 %div407 to i64
  br label %if.end413

if.else409:                                       ; preds = %if.else393
  call void @__sanitizer_cov_trace_pc() #8
  %7 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %3, i64 %objoff) #9, !srcloc !27
  %asmresult1.i697 = extractvalue { i64, i64 } %7, 1
  br label %if.end413

if.end413:                                        ; preds = %if.else409, %if.then403
  %_tmp192.0 = phi i64 [ %conv408, %if.then403 ], [ %asmresult1.i697, %if.else409 ]
  %sub416 = sub i64 %_tmp.0, %_tmp192.0
  %conv417 = trunc i64 %sub416 to i32
  %8 = ptrtoint ptr %num_file_extents to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv417, ptr %num_file_extents, align 4
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %conv417, i32 16) #6
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !28

kmalloc_array.exit.thread:                        ; preds = %if.end413
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %file_extents to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %file_extents, align 4
  br label %cleanup

if.end7.i:                                        ; preds = %if.end413
  %12 = extractvalue { i32, i1 } %9, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %12, i32 noundef 3072) #10
  %13 = ptrtoint ptr %file_extents to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call8.i, ptr %file_extents, align 4
  %tobool419.not = icmp eq ptr %call8.i, null
  br i1 %tobool419.not, label %if.end7.i.cleanup_crit_edge, label %if.end421

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end421:                                        ; preds = %if.end7.i
  %14 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %l, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %objoff)
  %cmp164.i = icmp ult i64 %objoff, 4294967296
  br i1 %cmp164.i, label %if.then168.i, label %if.else174.i, !prof !26

if.then168.i:                                     ; preds = %if.end421
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i = trunc i64 %objoff to i32
  %rem170.i = urem i32 %conv169.i, %15
  br label %while.body.lr.ph

if.else174.i:                                     ; preds = %if.end421
  call void @__sanitizer_cov_trace_pc() #8
  %16 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %15, i64 %objoff) #9, !srcloc !27
  %asmresult.i261.i = extractvalue { i64, i64 } %16, 0
  %shr.i.i = lshr i64 %asmresult.i261.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.else174.i, %if.then168.i
  %__rem.0.i = phi i32 [ %rem170.i, %if.then168.i ], [ %conv.i.i, %if.else174.i ]
  %stripe_count = getelementptr inbounds %struct.ceph_file_layout, ptr %l, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %objno)
  %cmp164.i815 = icmp ult i64 %objno, 4294967296
  %conv169.i817 = trunc i64 %objno to i32
  %conv428 = zext i32 %div to i64
  %17 = ptrtoint ptr %stripe_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %stripe_count, align 4
  br i1 %cmp164.i815, label %if.then168.i821.peel, label %if.else174.i826.peel, !prof !26

if.else174.i826.peel:                             ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #8
  %19 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %18, i64 %objno) #9, !srcloc !27
  %asmresult.i261.i822.peel = extractvalue { i64, i64 } %19, 0
  %asmresult1.i.i823.peel = extractvalue { i64, i64 } %19, 1
  %shr.i.i824.peel = lshr i64 %asmresult.i261.i822.peel, 32
  %conv.i.i825.peel = trunc i64 %shr.i.i824.peel to i32
  br label %div_u64_rem.exit829.peel

if.then168.i821.peel:                             ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #8
  %.frozen = freeze i32 %18
  %div172.i819.peel = udiv i32 %conv169.i817, %.frozen
  %20 = mul i32 %div172.i819.peel, %.frozen
  %rem170.i818.peel.decomposed = sub i32 %conv169.i817, %20
  %conv173.i820.peel = zext i32 %div172.i819.peel to i64
  br label %div_u64_rem.exit829.peel

div_u64_rem.exit829.peel:                         ; preds = %if.then168.i821.peel, %if.else174.i826.peel
  %dividend.addr.0.i827.peel = phi i64 [ %conv173.i820.peel, %if.then168.i821.peel ], [ %asmresult1.i.i823.peel, %if.else174.i826.peel ]
  %__rem.0.i828.peel = phi i32 [ %rem170.i818.peel.decomposed, %if.then168.i821.peel ], [ %conv.i.i825.peel, %if.else174.i826.peel ]
  %21 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %l, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %objoff)
  %cmp164.i.i.peel = icmp ult i64 %objoff, 4294967296
  br i1 %cmp164.i.i.peel, label %if.then168.i.i.peel, label %if.else174.i.i.peel, !prof !26

if.else174.i.i.peel:                              ; preds = %div_u64_rem.exit829.peel
  call void @__sanitizer_cov_trace_pc() #8
  %23 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %22, i64 %objoff) #9, !srcloc !27
  %asmresult1.i.i.i.peel = extractvalue { i64, i64 } %23, 1
  br label %div_u64.exit.peel

if.then168.i.i.peel:                              ; preds = %div_u64_rem.exit829.peel
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i.i.peel = trunc i64 %objoff to i32
  %div172.i.i.peel = udiv i32 %conv169.i.i.peel, %22
  %conv173.i.i.peel = zext i32 %div172.i.i.peel to i64
  br label %div_u64.exit.peel

div_u64.exit.peel:                                ; preds = %if.then168.i.i.peel, %if.else174.i.i.peel
  %dividend.addr.0.i.i.peel = phi i64 [ %conv173.i.i.peel, %if.then168.i.i.peel ], [ %asmresult1.i.i.i.peel, %if.else174.i.i.peel ]
  %mul429.peel = mul i64 %dividend.addr.0.i827.peel, %conv428
  %add430.peel = add i64 %dividend.addr.0.i.i.peel, %mul429.peel
  %conv432.peel = zext i32 %18 to i64
  %mul433.peel = mul i64 %add430.peel, %conv432.peel
  %conv434.peel = zext i32 %__rem.0.i828.peel to i64
  %add435.peel = add i64 %mul433.peel, %conv434.peel
  %conv437.peel = zext i32 %22 to i64
  %mul438.peel = mul i64 %add435.peel, %conv437.peel
  %conv439.peel = zext i32 %__rem.0.i to i64
  %add440.peel = add i64 %mul438.peel, %conv439.peel
  %sub442.peel = sub i32 %22, %__rem.0.i
  %conv443.peel = zext i32 %sub442.peel to i64
  %24 = tail call i64 @llvm.umin.i64(i64 %objlen, i64 %conv443.peel)
  %25 = ptrtoint ptr %file_extents to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %file_extents, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %add440.peel, ptr %26, align 8
  %28 = load ptr, ptr %file_extents, align 4
  %fe_len.peel = getelementptr %struct.ceph_file_extent, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %fe_len.peel to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %24, ptr %fe_len.peel, align 8
  %add452.peel = add i64 %24, %objoff
  %sub453.peel = sub i64 %objlen, %24
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub453.peel)
  %tobool424.not.peel = icmp eq i64 %sub453.peel, 0
  br i1 %tobool424.not.peel, label %div_u64.exit.peel.do.body_crit_edge, label %div_u64.exit.peel.while.body_crit_edge

div_u64.exit.peel.while.body_crit_edge:           ; preds = %div_u64.exit.peel
  br label %while.body

div_u64.exit.peel.do.body_crit_edge:              ; preds = %div_u64.exit.peel
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

while.body:                                       ; preds = %div_u64.exit.while.body_crit_edge, %div_u64.exit.peel.while.body_crit_edge
  %objoff.addr.0904 = phi i64 [ %add452, %div_u64.exit.while.body_crit_edge ], [ %add452.peel, %div_u64.exit.peel.while.body_crit_edge ]
  %objlen.addr.0903 = phi i64 [ %sub453, %div_u64.exit.while.body_crit_edge ], [ %sub453.peel, %div_u64.exit.peel.while.body_crit_edge ]
  %i.0902 = phi i32 [ %inc, %div_u64.exit.while.body_crit_edge ], [ 1, %div_u64.exit.peel.while.body_crit_edge ]
  %30 = ptrtoint ptr %stripe_count to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %stripe_count, align 4
  br i1 %cmp164.i815, label %if.then168.i821, label %if.else174.i826, !prof !26

if.then168.i821:                                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %.frozen915 = freeze i32 %31
  %div172.i819 = udiv i32 %conv169.i817, %.frozen915
  %32 = mul i32 %div172.i819, %.frozen915
  %rem170.i818.decomposed = sub i32 %conv169.i817, %32
  %conv173.i820 = zext i32 %div172.i819 to i64
  br label %div_u64_rem.exit829

if.else174.i826:                                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %33 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %31, i64 %objno) #9, !srcloc !27
  %asmresult.i261.i822 = extractvalue { i64, i64 } %33, 0
  %asmresult1.i.i823 = extractvalue { i64, i64 } %33, 1
  %shr.i.i824 = lshr i64 %asmresult.i261.i822, 32
  %conv.i.i825 = trunc i64 %shr.i.i824 to i32
  br label %div_u64_rem.exit829

div_u64_rem.exit829:                              ; preds = %if.else174.i826, %if.then168.i821
  %dividend.addr.0.i827 = phi i64 [ %conv173.i820, %if.then168.i821 ], [ %asmresult1.i.i823, %if.else174.i826 ]
  %__rem.0.i828 = phi i32 [ %rem170.i818.decomposed, %if.then168.i821 ], [ %conv.i.i825, %if.else174.i826 ]
  %34 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %l, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %objoff.addr.0904)
  %cmp164.i.i = icmp ult i64 %objoff.addr.0904, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !26

if.then168.i.i:                                   ; preds = %div_u64_rem.exit829
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i.i = trunc i64 %objoff.addr.0904 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %35
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %div_u64_rem.exit829
  call void @__sanitizer_cov_trace_pc() #8
  %36 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %35, i64 %objoff.addr.0904) #9, !srcloc !27
  %asmresult1.i.i.i = extractvalue { i64, i64 } %36, 1
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i = phi i64 [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  %mul429 = mul i64 %dividend.addr.0.i827, %conv428
  %add430 = add i64 %dividend.addr.0.i.i, %mul429
  %conv432 = zext i32 %31 to i64
  %mul433 = mul i64 %add430, %conv432
  %conv434 = zext i32 %__rem.0.i828 to i64
  %add435 = add i64 %mul433, %conv434
  %conv437 = zext i32 %35 to i64
  %mul438 = mul i64 %add435, %conv437
  %conv443 = zext i32 %35 to i64
  %37 = tail call i64 @llvm.umin.i64(i64 %objlen.addr.0903, i64 %conv443)
  %38 = ptrtoint ptr %file_extents to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %file_extents, align 4
  %arrayidx = getelementptr %struct.ceph_file_extent, ptr %39, i32 %i.0902
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %mul438, ptr %arrayidx, align 8
  %41 = load ptr, ptr %file_extents, align 4
  %fe_len = getelementptr %struct.ceph_file_extent, ptr %41, i32 %i.0902, i32 1
  %42 = ptrtoint ptr %fe_len to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %37, ptr %fe_len, align 8
  %add452 = add i64 %37, %objoff.addr.0904
  %sub453 = sub i64 %objlen.addr.0903, %37
  %inc = add i32 %i.0902, 1
  %tobool424.not = icmp eq i64 %sub453, 0
  br i1 %tobool424.not, label %div_u64.exit.do.body_crit_edge, label %div_u64.exit.while.body_crit_edge, !llvm.loop !29

div_u64.exit.while.body_crit_edge:                ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

div_u64.exit.do.body_crit_edge:                   ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %div_u64.exit.do.body_crit_edge, %div_u64.exit.peel.do.body_crit_edge
  %inc.lcssa = phi i32 [ 1, %div_u64.exit.peel.do.body_crit_edge ], [ %inc, %div_u64.exit.do.body_crit_edge ]
  %43 = ptrtoint ptr %num_file_extents to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_file_extents, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.lcssa, i32 %44)
  %cmp454.not = icmp eq i32 %inc.lcssa, %44
  br i1 %cmp454.not, label %do.body.cleanup_crit_edge, label %do.body463, !prof !26

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body463:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/striper.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 258, 0\0A.popsection", ""() #6, !srcloc !31
  unreachable

cleanup:                                          ; preds = %do.body.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %kmalloc_array.exit.thread, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -12, %if.end7.i.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ], [ -12, %kmalloc_array.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @ceph_get_num_objects(ptr nocapture noundef readonly %l, i64 noundef %size) #2 align 64 {
entry:
  %remainder_bytes = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %stripe_count = getelementptr inbounds %struct.ceph_file_layout, ptr %l, i32 0, i32 1
  %0 = ptrtoint ptr %stripe_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stripe_count, align 4
  %conv = zext i32 %1 to i64
  %object_size = getelementptr inbounds %struct.ceph_file_layout, ptr %l, i32 0, i32 2
  %2 = ptrtoint ptr %object_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %object_size, align 8
  %conv1 = zext i32 %3 to i64
  %mul = mul nuw i64 %conv1, %conv
  %add = add i64 %size, -1
  %sub = add i64 %add, %mul
  %call = tail call i64 @div64_u64(i64 noundef %sub, i64 noundef %mul) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %remainder_bytes) #6
  %4 = ptrtoint ptr %remainder_bytes to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %remainder_bytes, align 8, !annotation !32
  %call2 = call i64 @div64_u64_rem(i64 noundef %size, i64 noundef %mul, ptr noundef nonnull %remainder_bytes) #6
  %5 = ptrtoint ptr %remainder_bytes to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %remainder_bytes, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %cmp.not = icmp eq i64 %6, 0
  br i1 %cmp.not, label %entry.if.end209_crit_edge, label %land.lhs.true

entry.if.end209_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end209

land.lhs.true:                                    ; preds = %entry
  %7 = ptrtoint ptr %stripe_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stripe_count, align 4
  %conv5 = zext i32 %8 to i64
  %9 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %l, align 8
  %conv6 = zext i32 %10 to i64
  %mul7 = mul nuw i64 %conv6, %conv5
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %mul7)
  %cmp8 = icmp ult i64 %6, %mul7
  br i1 %cmp8, label %if.then, label %land.lhs.true.if.end209_crit_edge

land.lhs.true.if.end209_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end209

if.then:                                          ; preds = %land.lhs.true
  %add15 = add nsw i64 %conv6, -1
  %sub16 = add i64 %add15, %6
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub16)
  %cmp191 = icmp ult i64 %sub16, 4294967296
  br i1 %cmp191, label %if.then195, label %if.else201, !prof !26

if.then195:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %conv196 = trunc i64 %sub16 to i32
  %div199 = udiv i32 %conv196, %10
  %conv200 = zext i32 %div199 to i64
  br label %if.end205

if.else201:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %11 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %10, i64 %sub16) #9, !srcloc !27
  %asmresult1.i = extractvalue { i64, i64 } %11, 1
  br label %if.end205

if.end205:                                        ; preds = %if.else201, %if.then195
  %_tmp12.0 = phi i64 [ %conv200, %if.then195 ], [ %asmresult1.i, %if.else201 ]
  %sub208.neg = sub i64 %_tmp12.0, %conv5
  br label %if.end209

if.end209:                                        ; preds = %if.end205, %land.lhs.true.if.end209_crit_edge, %entry.if.end209_crit_edge
  %remainder_objs.0.neg = phi i64 [ %sub208.neg, %if.end205 ], [ 0, %land.lhs.true.if.end209_crit_edge ], [ 0, %entry.if.end209_crit_edge ]
  %12 = ptrtoint ptr %stripe_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stripe_count, align 4
  %conv211 = zext i32 %13 to i64
  %mul212 = mul i64 %call, %conv211
  %sub213 = add i64 %mul212, %remainder_objs.0.neg
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %remainder_bytes) #6
  ret i64 %sub213
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64_rem(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readnone }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !11, !13, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @__ksymtab_ceph_calc_file_object_mapping, !1, !"__ksymtab_ceph_calc_file_object_mapping", i1 false, i1 false}
!1 = !{!"../net/ceph/striper.c", i32 45, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/ceph/striper.c", i32 160, i32 4}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @__func__.ceph_file_to_extents, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @__ksymtab_ceph_file_to_extents, !7, !"__ksymtab_ceph_file_to_extents", i1 false, i1 false}
!7 = !{!"../net/ceph/striper.c", i32 168, i32 1}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/ceph/striper.c", i32 189, i32 4}
!10 = !{ptr @__func__.ceph_iterate_extents, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @__ksymtab_ceph_iterate_extents, !12, !"__ksymtab_ceph_iterate_extents", i1 false, i1 false}
!12 = !{!"../net/ceph/striper.c", i32 202, i32 1}
!13 = !{ptr @__ksymtab_ceph_extent_to_file, !14, !"__ksymtab_ceph_extent_to_file", i1 false, i1 false}
!14 = !{!"../net/ceph/striper.c", i32 261, i32 1}
!15 = !{ptr @__ksymtab_ceph_get_num_objects, !16, !"__ksymtab_ceph_get_num_objects", i1 false, i1 false}
!16 = !{!"../net/ceph/striper.c", i32 278, i32 1}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{!"branch_weights", i32 2000, i32 1}
!27 = !{i64 2148053468, i64 2148053748, i64 2148054082, i64 2148054416}
!28 = !{!"branch_weights", i32 1, i32 2000}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.peeled.count", i32 1}
!31 = !{i64 2152259453, i64 2152259936, i64 2152259490, i64 2152259546, i64 2152259580, i64 2152259604, i64 2152259645, i64 2152259666, i64 2152259694, i64 2152259728}
!32 = !{!"auto-init"}
