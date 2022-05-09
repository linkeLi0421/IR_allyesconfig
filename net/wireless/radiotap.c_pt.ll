; ModuleID = '/llk/IR_all_yes/net/wireless/radiotap.c_pt.bc'
source_filename = "../net/wireless/radiotap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ieee80211_radiotap_iterator_init\22, \22a\22\09"
module asm "\09.weak\09__crc_ieee80211_radiotap_iterator_init\09\09\09\09"
module asm "\09.long\09__crc_ieee80211_radiotap_iterator_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_radiotap_iterator_init:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_radiotap_iterator_init\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_radiotap_iterator_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ieee80211_radiotap_iterator_next\22, \22a\22\09"
module asm "\09.weak\09__crc_ieee80211_radiotap_iterator_next\09\09\09\09"
module asm "\09.long\09__crc_ieee80211_radiotap_iterator_next\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_radiotap_iterator_next:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_radiotap_iterator_next\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_radiotap_iterator_next:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.ieee80211_radiotap_namespace = type { ptr, i32, i32, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.radiotap_align_size = type { i8 }
%struct.ieee80211_radiotap_header = type { i8, i8, i16, i32, [0 x i32] }
%struct.ieee80211_radiotap_iterator = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_radiotap_vendor_namespaces = type { ptr, i32 }

@radiotap_ns = internal constant { %struct.ieee80211_radiotap_namespace, [16 x i8] } { %struct.ieee80211_radiotap_namespace { ptr @rtap_namespace_sizes, i32 22, i32 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@__kstrtab_ieee80211_radiotap_iterator_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_radiotap_iterator_init = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_radiotap_iterator_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_radiotap_iterator_init to i32), ptr @__kstrtab_ieee80211_radiotap_iterator_init, ptr @__kstrtabns_ieee80211_radiotap_iterator_init }, section "___ksymtab+ieee80211_radiotap_iterator_init", align 4
@__kstrtab_ieee80211_radiotap_iterator_next = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_radiotap_iterator_next = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_radiotap_iterator_next = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_radiotap_iterator_next to i32), ptr @__kstrtab_ieee80211_radiotap_iterator_next, ptr @__kstrtabns_ieee80211_radiotap_iterator_next }, section "___ksymtab+ieee80211_radiotap_iterator_next", align 4
@rtap_namespace_sizes = internal constant { [22 x %struct.radiotap_align_size], [42 x i8] } { [22 x %struct.radiotap_align_size] [%struct.radiotap_align_size { i8 -120 }, %struct.radiotap_align_size { i8 17 }, %struct.radiotap_align_size { i8 17 }, %struct.radiotap_align_size { i8 36 }, %struct.radiotap_align_size { i8 34 }, %struct.radiotap_align_size { i8 17 }, %struct.radiotap_align_size { i8 17 }, %struct.radiotap_align_size { i8 34 }, %struct.radiotap_align_size { i8 34 }, %struct.radiotap_align_size { i8 34 }, %struct.radiotap_align_size { i8 17 }, %struct.radiotap_align_size { i8 17 }, %struct.radiotap_align_size { i8 17 }, %struct.radiotap_align_size { i8 17 }, %struct.radiotap_align_size { i8 34 }, %struct.radiotap_align_size { i8 34 }, %struct.radiotap_align_size { i8 17 }, %struct.radiotap_align_size { i8 17 }, %struct.radiotap_align_size zeroinitializer, %struct.radiotap_align_size { i8 19 }, %struct.radiotap_align_size { i8 72 }, %struct.radiotap_align_size { i8 44 }], [42 x i8] zeroinitializer }, align 32
@switch.table.ieee80211_radiotap_iterator_next = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 2, i32 1], [20 x i8] zeroinitializer }, align 32
@switch.table.ieee80211_radiotap_iterator_next.1 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 6, i32 0], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 29, i64 30, i64 31]
@___asan_gen_.2 = private unnamed_addr constant [12 x i8] c"radiotap_ns\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 52, i32 50 }
@___asan_gen_.5 = private unnamed_addr constant [21 x i8] c"rtap_namespace_sizes\00", align 1
@___asan_gen_.6 = private constant [27 x i8] c"../net/wireless/radiotap.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 25, i32 41 }
@___asan_gen_.8 = private unnamed_addr constant [46 x i8] c"switch.table.ieee80211_radiotap_iterator_next\00", align 1
@___asan_gen_.9 = private unnamed_addr constant [48 x i8] c"switch.table.ieee80211_radiotap_iterator_next.1\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_ieee80211_radiotap_iterator_init, ptr @__ksymtab_ieee80211_radiotap_iterator_next, ptr @radiotap_ns, ptr @rtap_namespace_sizes, ptr @switch.table.ieee80211_radiotap_iterator_next, ptr @switch.table.ieee80211_radiotap_iterator_next.1], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radiotap_ns to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtap_namespace_sizes to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ieee80211_radiotap_iterator_next to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ieee80211_radiotap_iterator_next.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_radiotap_iterator_init(ptr nocapture noundef %iterator, ptr noundef %radiotap_header, i32 noundef %max_length, ptr noundef %vns) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %max_length)
  %cmp = icmp ult i32 %max_length, 8
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %radiotap_header to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %radiotap_header, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end2, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end2:                                          ; preds = %if.end
  %it_len = getelementptr inbounds %struct.ieee80211_radiotap_header, ptr %radiotap_header, i32 0, i32 2
  %2 = ptrtoint ptr %it_len to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %it_len, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3) #2
  %conv = zext i16 %4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %max_length)
  %cmp3 = icmp sgt i32 %conv, %max_length
  br i1 %cmp3, label %if.end2.return_crit_edge, label %if.end6

if.end2.return_crit_edge:                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end6:                                          ; preds = %if.end2
  %5 = ptrtoint ptr %iterator to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %radiotap_header, ptr %iterator, align 4
  %6 = ptrtoint ptr %it_len to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %it_len, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #2
  %conv9 = zext i16 %8 to i32
  %_max_length = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %iterator, i32 0, i32 10
  %9 = ptrtoint ptr %_max_length to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv9, ptr %_max_length, align 4
  %_arg_index = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %iterator, i32 0, i32 11
  %10 = ptrtoint ptr %_arg_index to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %_arg_index, align 4
  %it_present = getelementptr inbounds %struct.ieee80211_radiotap_header, ptr %radiotap_header, i32 0, i32 3
  %11 = ptrtoint ptr %it_present to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %it_present, align 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #2
  %_bitmap_shifter = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %iterator, i32 0, i32 12
  %14 = ptrtoint ptr %_bitmap_shifter to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %_bitmap_shifter, align 4
  %it_optional = getelementptr inbounds %struct.ieee80211_radiotap_header, ptr %radiotap_header, i32 0, i32 4
  %_arg = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %iterator, i32 0, i32 3
  %15 = ptrtoint ptr %_arg to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %it_optional, ptr %_arg, align 4
  %_reset_on_ext = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %iterator, i32 0, i32 13
  %16 = ptrtoint ptr %_reset_on_ext to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %_reset_on_ext, align 4
  %_next_bitmap = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %iterator, i32 0, i32 5
  %17 = ptrtoint ptr %_next_bitmap to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %it_optional, ptr %_next_bitmap, align 4
  %_vns = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %iterator, i32 0, i32 1
  %18 = ptrtoint ptr %_vns to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %vns, ptr %_vns, align 4
  %current_namespace = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %iterator, i32 0, i32 2
  %19 = ptrtoint ptr %current_namespace to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @radiotap_ns, ptr %current_namespace, align 4
  %is_radiotap_ns = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %iterator, i32 0, i32 9
  %20 = ptrtoint ptr %is_radiotap_ns to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %is_radiotap_ns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %tobool14.not = icmp sgt i32 %13, -1
  br i1 %tobool14.not, label %if.end6.if.end39_crit_edge, label %if.then15

if.end6.if.end39_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end39

if.then15:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %8)
  %cmp19 = icmp ult i16 %8, 12
  br i1 %cmp19, label %if.then15.return_crit_edge, label %while.cond.preheader

if.then15.return_crit_edge:                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

while.cond.preheader:                             ; preds = %if.then15
  %21 = ptrtoint ptr %radiotap_header to i32
  %sub30 = sub i32 4, %21
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.cond.preheader
  %22 = ptrtoint ptr %_arg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %_arg, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %23, align 1
  %.mask = and i32 %25, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool26.not = icmp eq i32 %.mask, 0
  %add.ptr38 = getelementptr i8, ptr %23, i32 4
  %26 = ptrtoint ptr %_arg to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr38, ptr %_arg, align 4
  br i1 %tobool26.not, label %while.cond.if.end39_crit_edge, label %while.body

while.cond.if.end39_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end39

while.body:                                       ; preds = %while.cond
  %27 = ptrtoint ptr %add.ptr38 to i32
  %add31 = add i32 %sub30, %27
  %cmp33 = icmp ugt i32 %add31, %conv9
  br i1 %cmp33, label %while.body.return_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.cond

while.body.return_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end39:                                         ; preds = %while.cond.if.end39_crit_edge, %if.end6.if.end39_crit_edge
  %28 = ptrtoint ptr %_arg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %_arg, align 4
  %this_arg = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %iterator, i32 0, i32 6
  %30 = ptrtoint ptr %this_arg to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %this_arg, align 4
  br label %return

return:                                           ; preds = %if.end39, %while.body.return_crit_edge, %if.then15.return_crit_edge, %if.end2.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end39 ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ -22, %if.end2.return_crit_edge ], [ -22, %if.then15.return_crit_edge ], [ -22, %while.body.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_radiotap_iterator_next(ptr noundef %iterator) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %_arg_index = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %iterator, i32 0, i32 11
  %_bitmap_shifter = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %iterator, i32 0, i32 12
  %current_namespace = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %iterator, i32 0, i32 2
  %_arg31 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %iterator, i32 0, i32 3
  %_max_length = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %iterator, i32 0, i32 10
  %_vns.i = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %iterator, i32 0, i32 1
  %_next_ns_data71 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %iterator, i32 0, i32 4
  %this_arg_index = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %iterator, i32 0, i32 7
  %this_arg = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %iterator, i32 0, i32 6
  %this_arg_size = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %iterator, i32 0, i32 8
  %_next_bitmap = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %iterator, i32 0, i32 5
  %_reset_on_ext106 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %iterator, i32 0, i32 13
  %is_radiotap_ns101 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %iterator, i32 0, i32 9
  br label %while.body

while.body:                                       ; preds = %while.body.backedge, %entry
  %0 = ptrtoint ptr %_arg_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %_arg_index, align 4
  %2 = and i32 %1, -2147483617
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %2)
  %cmp = icmp eq i32 %2, 31
  br i1 %cmp, label %land.lhs.true, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

land.lhs.true:                                    ; preds = %while.body
  %3 = ptrtoint ptr %_bitmap_shifter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_bitmap_shifter, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %while.body.if.end_crit_edge
  %5 = ptrtoint ptr %_bitmap_shifter to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %_bitmap_shifter, align 4
  %and2 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.sw.epilog118.thread213_crit_edge, label %if.end5

if.end.sw.epilog118.thread213_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog118.thread213

if.end5:                                          ; preds = %if.end
  %rem7 = srem i32 %1, 32
  %switch.tableidx = add nsw i32 %rem7, -29
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %7 = icmp ult i32 %switch.tableidx, 3
  br i1 %7, label %switch.lookup, label %sw.default

sw.default:                                       ; preds = %if.end5
  %8 = ptrtoint ptr %current_namespace to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %current_namespace, align 4
  %tobool9.not = icmp eq ptr %9, null
  br i1 %tobool9.not, label %sw.default.if.then28_crit_edge, label %lor.lhs.false

sw.default.if.then28_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then28

lor.lhs.false:                                    ; preds = %sw.default
  %n_bits = getelementptr inbounds %struct.ieee80211_radiotap_namespace, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %n_bits to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_bits, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %11)
  %cmp12.not = icmp slt i32 %1, %11
  br i1 %cmp12.not, label %if.end26, label %if.then13

if.then13:                                        ; preds = %lor.lhs.false
  %cmp15 = icmp eq ptr %9, @radiotap_ns
  br i1 %cmp15, label %if.then13.return_crit_edge, label %if.then13.if.then28_crit_edge

if.then13.if.then28_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then28

if.then13.return_crit_edge:                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end26:                                         ; preds = %lor.lhs.false
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %arrayidx = getelementptr %struct.radiotap_align_size, ptr %13, i32 %1
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %arrayidx, align 1
  %bf.lshr = lshr i8 %bf.load, 4
  %conv = zext i8 %bf.lshr to i32
  %bf.clear = and i8 %bf.load, 15
  %conv25 = zext i8 %bf.clear to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %bf.load)
  %tobool27.not = icmp ult i8 %bf.load, 16
  br i1 %tobool27.not, label %if.end26.if.then28_crit_edge, label %if.end26.sw.epilog_crit_edge

if.end26.sw.epilog_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

if.end26.if.then28_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then28

if.then28:                                        ; preds = %if.end26.if.then28_crit_edge, %if.then13.if.then28_crit_edge, %sw.default.if.then28_crit_edge
  %15 = ptrtoint ptr %_next_ns_data71 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %_next_ns_data71, align 4
  %17 = ptrtoint ptr %_arg31 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %_arg31, align 4
  %18 = ptrtoint ptr %current_namespace to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %current_namespace, align 4
  br label %sw.epilog118.thread213

switch.lookup:                                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #4
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.ieee80211_radiotap_iterator_next, i32 0, i32 %switch.tableidx
  %19 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %19)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep234 = getelementptr inbounds [3 x i32], ptr @switch.table.ieee80211_radiotap_iterator_next.1, i32 0, i32 %switch.tableidx
  %20 = ptrtoint ptr %switch.gep234 to i32
  call void @__asan_load4_noabort(i32 %20)
  %switch.load235 = load i32, ptr %switch.gep234, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end26.sw.epilog_crit_edge
  %align.1 = phi i32 [ %conv, %if.end26.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  %size.1 = phi i32 [ %conv25, %if.end26.sw.epilog_crit_edge ], [ %switch.load235, %switch.lookup ]
  %21 = ptrtoint ptr %_arg31 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %_arg31, align 4
  %23 = ptrtoint ptr %22 to i32
  %24 = ptrtoint ptr %iterator to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iterator, align 4
  %26 = ptrtoint ptr %25 to i32
  %sub = sub i32 %23, %26
  %sub32 = add nsw i32 %align.1, -1
  %and33 = and i32 %sub, %sub32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %sw.epilog.if.end38_crit_edge, label %if.then35

sw.epilog.if.end38_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end38

if.then35:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #4
  %sub36 = sub nsw i32 %align.1, %and33
  %add.ptr = getelementptr i8, ptr %22, i32 %sub36
  %27 = ptrtoint ptr %_arg31 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr, ptr %_arg31, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %sw.epilog.if.end38_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %2)
  %cmp41 = icmp eq i32 %2, 30
  br i1 %cmp41, label %if.then43, label %if.end38.if.end77_crit_edge

if.end38.if.end77_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end77

if.then43:                                        ; preds = %if.end38
  %28 = ptrtoint ptr %_arg31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %_arg31, align 4
  %30 = ptrtoint ptr %29 to i32
  %add = sub i32 %size.1, %26
  %sub46 = add i32 %add, %30
  %31 = ptrtoint ptr %_max_length to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %_max_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub46, i32 %32)
  %cmp47 = icmp ugt i32 %sub46, %32
  br i1 %cmp47, label %if.then43.return_crit_edge, label %if.end50

if.then43.return_crit_edge:                       ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end50:                                         ; preds = %if.then43
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %29, align 1
  %conv52 = zext i8 %34 to i32
  %shl = shl nuw nsw i32 %conv52, 16
  %add.ptr54 = getelementptr i8, ptr %29, i32 1
  %35 = ptrtoint ptr %add.ptr54 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %add.ptr54, align 1
  %conv55 = zext i8 %36 to i32
  %shl56 = shl nuw nsw i32 %conv55, 8
  %or = or i32 %shl56, %shl
  %add.ptr58 = getelementptr i8, ptr %29, i32 2
  %37 = ptrtoint ptr %add.ptr58 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %add.ptr58, align 1
  %conv59 = zext i8 %38 to i32
  %or60 = or i32 %or, %conv59
  %add.ptr62 = getelementptr i8, ptr %29, i32 3
  %39 = ptrtoint ptr %add.ptr62 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %add.ptr62, align 1
  %41 = ptrtoint ptr %current_namespace to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %current_namespace, align 4
  %42 = ptrtoint ptr %_vns.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %_vns.i, align 4
  %tobool.not.i = icmp eq ptr %43, null
  br i1 %tobool.not.i, label %if.end50.cleanup_crit_edge, label %for.cond.preheader.i

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end50
  %n_ns.i = getelementptr inbounds %struct.ieee80211_radiotap_vendor_namespaces, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %n_ns.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %n_ns.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp30.i = icmp sgt i32 %45, 0
  br i1 %cmp30.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.cleanup_crit_edge

for.cond.preheader.i.cleanup_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %43, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.031.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %oui3.i = getelementptr %struct.ieee80211_radiotap_namespace, ptr %47, i32 %i.031.i, i32 2
  %48 = ptrtoint ptr %oui3.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %oui3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %or60)
  %cmp4.not.i = icmp eq i32 %49, %or60
  br i1 %cmp4.not.i, label %if.end6.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.i

if.end6.i:                                        ; preds = %for.body.i
  %subns10.i = getelementptr %struct.ieee80211_radiotap_namespace, ptr %47, i32 %i.031.i, i32 3
  %50 = ptrtoint ptr %subns10.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %subns10.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %51, i8 %40)
  %cmp12.not.i = icmp eq i8 %51, %40
  br i1 %cmp12.not.i, label %if.end15.i, label %if.end6.i.for.inc.i_crit_edge

if.end6.i.for.inc.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.i

if.end15.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #4
  %arrayidx.le.i = getelementptr %struct.ieee80211_radiotap_namespace, ptr %47, i32 %i.031.i
  %52 = ptrtoint ptr %current_namespace to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %arrayidx.le.i, ptr %current_namespace, align 4
  br label %cleanup

for.inc.i:                                        ; preds = %if.end6.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.031.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %45
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup:                                          ; preds = %for.inc.i.cleanup_crit_edge, %if.end15.i, %for.cond.preheader.i.cleanup_crit_edge, %if.end50.cleanup_crit_edge
  %add.ptr66 = getelementptr i8, ptr %29, i32 4
  %53 = ptrtoint ptr %add.ptr66 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 2)
  %54 = load i16, ptr %add.ptr66, align 1
  %55 = tail call i16 @llvm.bswap.i16(i16 %54) #2
  %conv67 = zext i16 %55 to i32
  %add.ptr69 = getelementptr i8, ptr %29, i32 %size.1
  %add.ptr70 = getelementptr i8, ptr %add.ptr69, i32 %conv67
  %56 = ptrtoint ptr %_next_ns_data71 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %add.ptr70, ptr %_next_ns_data71, align 4
  %57 = ptrtoint ptr %current_namespace to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %current_namespace, align 4
  %tobool73.not = icmp eq ptr %58, null
  %add75 = select i1 %tobool73.not, i32 %conv67, i32 0
  %spec.select = add nuw nsw i32 %add75, %size.1
  br label %if.end77

if.end77:                                         ; preds = %cleanup, %if.end38.if.end77_crit_edge
  %size.4 = phi i32 [ %spec.select, %cleanup ], [ %size.1, %if.end38.if.end77_crit_edge ]
  %59 = ptrtoint ptr %this_arg_index to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %1, ptr %this_arg_index, align 4
  %60 = ptrtoint ptr %_arg31 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %_arg31, align 4
  %62 = ptrtoint ptr %this_arg to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %61, ptr %this_arg, align 4
  %63 = ptrtoint ptr %this_arg_size to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %size.4, ptr %this_arg_size, align 4
  %add.ptr81 = getelementptr i8, ptr %61, i32 %size.4
  store ptr %add.ptr81, ptr %_arg31, align 4
  %64 = ptrtoint ptr %add.ptr81 to i32
  %sub84 = sub i32 %64, %26
  %65 = ptrtoint ptr %_max_length to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %_max_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub84, i32 %66)
  %cmp86 = icmp ugt i32 %sub84, %66
  br i1 %cmp86, label %if.end77.return_crit_edge, label %if.end89

if.end77.return_crit_edge:                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end89:                                         ; preds = %if.end77
  %67 = zext i32 %rem7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values)
  switch i32 %rem7, label %if.end89.sw.epilog118_crit_edge [
    i32 30, label %sw.bb92
    i32 29, label %sw.bb98
    i32 31, label %sw.bb102
  ]

if.end89.sw.epilog118_crit_edge:                  ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog118

sw.bb92:                                          ; preds = %if.end89
  %68 = ptrtoint ptr %_reset_on_ext106 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1, ptr %_reset_on_ext106, align 4
  %69 = ptrtoint ptr %is_radiotap_ns101 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %is_radiotap_ns101, align 4
  %70 = ptrtoint ptr %this_arg_index to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 30, ptr %this_arg_index, align 4
  %71 = ptrtoint ptr %current_namespace to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %current_namespace, align 4
  %tobool95.not = icmp eq ptr %72, null
  br i1 %tobool95.not, label %sw.bb92.sw.epilog118_crit_edge, label %sw.bb92.sw.epilog118.thread213_crit_edge

sw.bb92.sw.epilog118.thread213_crit_edge:         ; preds = %sw.bb92
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog118.thread213

sw.bb92.sw.epilog118_crit_edge:                   ; preds = %sw.bb92
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog118

sw.bb98:                                          ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #4
  %73 = ptrtoint ptr %_reset_on_ext106 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1, ptr %_reset_on_ext106, align 4
  %74 = ptrtoint ptr %current_namespace to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @radiotap_ns, ptr %current_namespace, align 4
  %75 = ptrtoint ptr %is_radiotap_ns101 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 1, ptr %is_radiotap_ns101, align 4
  br label %sw.epilog118.thread213

sw.bb102:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #4
  %76 = ptrtoint ptr %_next_bitmap to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %_next_bitmap, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %79 = load i32, ptr %77, align 1
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #2
  %81 = ptrtoint ptr %_bitmap_shifter to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %_bitmap_shifter, align 4
  %incdec.ptr = getelementptr i32, ptr %77, i32 1
  %82 = ptrtoint ptr %_next_bitmap to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %incdec.ptr, ptr %_next_bitmap, align 4
  %83 = ptrtoint ptr %_reset_on_ext106 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %_reset_on_ext106, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool107.not = icmp eq i32 %84, 0
  %inc = add i32 %1, 1
  %spec.select220 = select i1 %tobool107.not, i32 %inc, i32 0
  %85 = ptrtoint ptr %_arg_index to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %spec.select220, ptr %_arg_index, align 4
  %86 = ptrtoint ptr %_reset_on_ext106 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %_reset_on_ext106, align 4
  br label %while.body.backedge

sw.epilog118.thread213:                           ; preds = %sw.bb98, %sw.bb92.sw.epilog118.thread213_crit_edge, %if.then28, %if.end.sw.epilog118.thread213_crit_edge
  %shr216 = lshr i32 %6, 1
  %87 = ptrtoint ptr %_bitmap_shifter to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %shr216, ptr %_bitmap_shifter, align 4
  %inc117217 = add i32 %1, 1
  %88 = ptrtoint ptr %_arg_index to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %inc117217, ptr %_arg_index, align 4
  br label %while.body.backedge

while.body.backedge:                              ; preds = %sw.epilog118.thread213, %sw.bb102
  br label %while.body

sw.epilog118:                                     ; preds = %sw.bb92.sw.epilog118_crit_edge, %if.end89.sw.epilog118_crit_edge
  %shr = lshr i32 %6, 1
  %89 = ptrtoint ptr %_bitmap_shifter to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %shr, ptr %_bitmap_shifter, align 4
  %inc117 = add i32 %1, 1
  %90 = ptrtoint ptr %_arg_index to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %inc117, ptr %_arg_index, align 4
  br label %return

return:                                           ; preds = %sw.epilog118, %if.end77.return_crit_edge, %if.then43.return_crit_edge, %if.then13.return_crit_edge, %land.lhs.true.return_crit_edge
  %retval.5.ph = phi i32 [ 0, %sw.epilog118 ], [ -22, %if.end77.return_crit_edge ], [ -2, %if.then13.return_crit_edge ], [ -2, %land.lhs.true.return_crit_edge ], [ -22, %if.then43.return_crit_edge ]
  ret i32 %retval.5.ph
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @__ksymtab_ieee80211_radiotap_iterator_init, !1, !"__ksymtab_ieee80211_radiotap_iterator_init", i1 false, i1 false}
!1 = !{!"../net/wireless/radiotap.c", i32 164, i32 1}
!2 = !{ptr @__ksymtab_ieee80211_radiotap_iterator_next, !3, !"__ksymtab_ieee80211_radiotap_iterator_next", i1 false, i1 false}
!3 = !{!"../net/wireless/radiotap.c", i32 370, i32 1}
!4 = !{ptr @radiotap_ns, !5, !"radiotap_ns", i1 false, i1 false}
!5 = !{!"../net/wireless/radiotap.c", i32 52, i32 50}
!6 = !{ptr @rtap_namespace_sizes, !7, !"rtap_namespace_sizes", i1 false, i1 false}
!7 = !{!"../net/wireless/radiotap.c", i32 25, i32 41}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
