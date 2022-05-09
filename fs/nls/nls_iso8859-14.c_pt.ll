; ModuleID = '/llk/IR_all_yes/fs/nls/nls_iso8859-14.c_pt.bc'
source_filename = "../fs/nls/nls_iso8859-14.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nls_table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@table = internal global { %struct.nls_table, [32 x i8] } { %struct.nls_table { ptr @.str, ptr null, ptr @uni2char, ptr @char2uni, ptr @charset2lower, ptr @charset2upper, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_nls_iso8859_14__106_338_init_nls_iso8859_146 = internal global ptr @init_nls_iso8859_14, section ".initcall6.init", align 4
@__exitcall_exit_nls_iso8859_14 = internal global ptr @exit_nls_iso8859_14, section ".exitcall.exit", align 4
@__UNIQUE_ID_file107 = internal constant [42 x i8] c"nls_iso8859_14.file=fs/nls/nls_iso8859-14\00", section ".modinfo", align 1
@__UNIQUE_ID_license108 = internal constant [36 x i8] c"nls_iso8859_14.license=Dual BSD/GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"iso8859-14\00", [21 x i8] zeroinitializer }, align 32
@charset2lower = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyz[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\7F\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F\A0\A2\A2\A3\AB\AB\AB\A7\B8\A9\BA\AB\BC\AD\AE\FF\B1\B1\B3\B3\B5\B5\B6\B9\B8\B9\BA\BF\BC\BE\BE\BF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", [64 x i8] zeroinitializer }, align 32
@charset2upper = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`ABCDEFGHIJKLMNOPQRSTUVWXYZ{|}~\7F\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F\A0\A1\A1\A3\A6\A6\A6\A7\A8\A9\AA\A6\AC\AD\AE\AF\B0\B0\B2\B2\B4\B4\B6\B7\A8\B7\AA\BB\AC\BD\BD\BB\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\AF", [64 x i8] zeroinitializer }, align 32
@page00 = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\7F\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F\A0\00\00\A3\00\00\00\A7\00\A9\00\00\00\AD\AE\00\00\00\00\00\00\00\B6\00\00\00\00\00\00\00\00\00\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\00\D1\D2\D3\D4\D5\D6\00\D8\D9\DA\DB\DC\DD\00\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\00\F1\F2\F3\F4\F5\F6\00\F8\F9\FA\FB\FC\FD\00\FF", [64 x i8] zeroinitializer }, align 32
@page_uni2charset = internal constant { <{ [31 x ptr], [225 x ptr] }>, [256 x i8] } { <{ [31 x ptr], [225 x ptr] }> <{ [31 x ptr] [ptr @page00, ptr @page01, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @page1e], [225 x ptr] zeroinitializer }>, [256 x i8] zeroinitializer }, align 32
@page01 = internal constant { <{ [244 x i8], [12 x i8] }>, [64 x i8] } { <{ [244 x i8], [12 x i8] }> <{ [244 x i8] c"\00\00\A1\A2\00\00\00\00\00\00\A6\AB\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\B0\B1\B2\B3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\B4\B5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\B7\B9\00\00\00\00\00\00\00\00\BB\BF\00\00\00\00\00\00\00\00\D7\F7\00\00\00\00\00\00\00\00\D0\F0\DE\FE\AF\00\00\00\00\00\00\00\A8\B8\AA\BA\BD\BE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\AC\BC", [12 x i8] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@page1e = internal constant { <{ [244 x i8], [12 x i8] }>, [64 x i8] } { <{ [244 x i8], [12 x i8] }> <{ [244 x i8] c"\00\00\A1\A2\00\00\00\00\00\00\A6\AB\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\B0\B1\B2\B3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\B4\B5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\B7\B9\00\00\00\00\00\00\00\00\BB\BF\00\00\00\00\00\00\00\00\D7\F7\00\00\00\00\00\00\00\00\D0\F0\DE\FE\AF\00\00\00\00\00\00\00\A8\B8\AA\BA\BD\BE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\AC\BC", [12 x i8] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@charset2uni = internal constant { [256 x i16], [128 x i8] } { [256 x i16] [i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63, i16 64, i16 65, i16 66, i16 67, i16 68, i16 69, i16 70, i16 71, i16 72, i16 73, i16 74, i16 75, i16 76, i16 77, i16 78, i16 79, i16 80, i16 81, i16 82, i16 83, i16 84, i16 85, i16 86, i16 87, i16 88, i16 89, i16 90, i16 91, i16 92, i16 93, i16 94, i16 95, i16 96, i16 97, i16 98, i16 99, i16 100, i16 101, i16 102, i16 103, i16 104, i16 105, i16 106, i16 107, i16 108, i16 109, i16 110, i16 111, i16 112, i16 113, i16 114, i16 115, i16 116, i16 117, i16 118, i16 119, i16 120, i16 121, i16 122, i16 123, i16 124, i16 125, i16 126, i16 127, i16 128, i16 129, i16 130, i16 131, i16 132, i16 133, i16 134, i16 135, i16 136, i16 137, i16 138, i16 139, i16 140, i16 141, i16 142, i16 143, i16 144, i16 145, i16 146, i16 147, i16 148, i16 149, i16 150, i16 151, i16 152, i16 153, i16 154, i16 155, i16 156, i16 157, i16 158, i16 159, i16 160, i16 7682, i16 7683, i16 163, i16 266, i16 267, i16 7690, i16 167, i16 7808, i16 169, i16 7810, i16 7691, i16 7922, i16 173, i16 174, i16 376, i16 7710, i16 7711, i16 288, i16 289, i16 7744, i16 7745, i16 182, i16 7766, i16 7809, i16 7767, i16 7811, i16 7776, i16 7923, i16 7812, i16 7813, i16 7777, i16 192, i16 193, i16 194, i16 195, i16 196, i16 197, i16 198, i16 199, i16 200, i16 201, i16 202, i16 203, i16 204, i16 205, i16 206, i16 207, i16 372, i16 209, i16 210, i16 211, i16 212, i16 213, i16 214, i16 7786, i16 216, i16 217, i16 218, i16 219, i16 220, i16 221, i16 374, i16 223, i16 224, i16 225, i16 226, i16 227, i16 228, i16 229, i16 230, i16 231, i16 232, i16 233, i16 234, i16 235, i16 236, i16 237, i16 238, i16 239, i16 373, i16 241, i16 242, i16 243, i16 244, i16 245, i16 246, i16 7787, i16 248, i16 249, i16 250, i16 251, i16 252, i16 253, i16 375, i16 255], [128 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 320, i32 25 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 321, i32 13 }
@___asan_gen_.10 = private unnamed_addr constant [14 x i8] c"charset2lower\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 223, i32 28 }
@___asan_gen_.13 = private unnamed_addr constant [14 x i8] c"charset2upper\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 259, i32 28 }
@___asan_gen_.16 = private unnamed_addr constant [7 x i8] c"page00\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 104, i32 28 }
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"page_uni2charset\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 212, i32 35 }
@___asan_gen_.22 = private unnamed_addr constant [7 x i8] c"page01\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 140, i32 28 }
@___asan_gen_.25 = private unnamed_addr constant [7 x i8] c"page1e\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 176, i32 28 }
@___asan_gen_.28 = private unnamed_addr constant [12 x i8] c"charset2uni\00", align 1
@___asan_gen_.29 = private constant [27 x i8] c"../fs/nls/nls_iso8859-14.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 21, i32 22 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_file107, ptr @__UNIQUE_ID_license108, ptr @__exitcall_exit_nls_iso8859_14, ptr @__initcall__kmod_nls_iso8859_14__106_338_init_nls_iso8859_146, ptr @exit_nls_iso8859_14, ptr @table, ptr @.str, ptr @charset2lower, ptr @charset2upper, ptr @page00, ptr @page_uni2charset, ptr @page01, ptr @page1e, ptr @charset2uni], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charset2lower to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charset2upper to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page00 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page_uni2charset to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page01 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page1e to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charset2uni to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_nls_iso8859_14() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @unregister_nls(ptr noundef nonnull @table) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_nls(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_nls_iso8859_14() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__register_nls(ptr noundef nonnull @table, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @uni2char(i16 noundef zeroext %uni, ptr nocapture noundef writeonly %out, i32 noundef %boundlen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %boundlen)
  %cmp = icmp slt i32 %boundlen, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = lshr i16 %uni, 8
  %conv4 = zext i16 %0 to i32
  %arrayidx = getelementptr [256 x ptr], ptr @page_uni2charset, i32 0, i32 %conv4
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %3 = and i16 %uni, 255
  %idxprom6 = zext i16 %3 to i32
  %arrayidx7 = getelementptr i8, ptr %2, i32 %idxprom6
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool9.not = icmp eq i8 %5, 0
  br i1 %tobool9.not, label %land.lhs.true.cleanup_crit_edge, label %if.then10

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %out to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %out, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then10 ], [ -36, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @char2uni(ptr nocapture noundef readonly %rawstring, i32 noundef %boundlen, ptr nocapture noundef writeonly %uni) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rawstring to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rawstring, align 1
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr [256 x i16], ptr @charset2uni, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %4 = ptrtoint ptr %uni to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %uni, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  %. = select i1 %cmp, i32 -22, i32 1
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_nls(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @__initcall__kmod_nls_iso8859_14__106_338_init_nls_iso8859_146, !1, !"__initcall__kmod_nls_iso8859_14__106_338_init_nls_iso8859_146", i1 false, i1 false}
!1 = !{!"../fs/nls/nls_iso8859-14.c", i32 338, i32 1}
!2 = !{ptr @__exitcall_exit_nls_iso8859_14, !3, !"__exitcall_exit_nls_iso8859_14", i1 false, i1 false}
!3 = !{!"../fs/nls/nls_iso8859-14.c", i32 339, i32 1}
!4 = !{ptr @__UNIQUE_ID_file107, !5, !"__UNIQUE_ID_file107", i1 false, i1 false}
!5 = !{!"../fs/nls/nls_iso8859-14.c", i32 341, i32 1}
!6 = !{ptr @__UNIQUE_ID_license108, !5, !"__UNIQUE_ID_license108", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/nls/nls_iso8859-14.c", i32 321, i32 13}
!9 = !{ptr @table, !10, !"table", i1 false, i1 false}
!10 = !{!"../fs/nls/nls_iso8859-14.c", i32 320, i32 25}
!11 = !{ptr @page_uni2charset, !12, !"page_uni2charset", i1 false, i1 false}
!12 = !{!"../fs/nls/nls_iso8859-14.c", i32 212, i32 35}
!13 = !{ptr @page00, !14, !"page00", i1 false, i1 false}
!14 = !{!"../fs/nls/nls_iso8859-14.c", i32 104, i32 28}
!15 = !{ptr @page01, !16, !"page01", i1 false, i1 false}
!16 = !{!"../fs/nls/nls_iso8859-14.c", i32 140, i32 28}
!17 = !{ptr @page1e, !18, !"page1e", i1 false, i1 false}
!18 = !{!"../fs/nls/nls_iso8859-14.c", i32 176, i32 28}
!19 = !{ptr @charset2uni, !20, !"charset2uni", i1 false, i1 false}
!20 = !{!"../fs/nls/nls_iso8859-14.c", i32 21, i32 22}
!21 = !{ptr @charset2lower, !22, !"charset2lower", i1 false, i1 false}
!22 = !{!"../fs/nls/nls_iso8859-14.c", i32 223, i32 28}
!23 = !{ptr @charset2upper, !24, !"charset2upper", i1 false, i1 false}
!24 = !{!"../fs/nls/nls_iso8859-14.c", i32 259, i32 28}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
