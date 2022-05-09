; ModuleID = '/llk/IR_all_yes/fs/ntfs/unistr.c_pt.bc'
source_filename = "../fs/ntfs/unistr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.FILE_NAME_ATTR = type <{ i64, i64, i64, i64, i64, i64, i64, i32, %union.anon, i8, i8, [0 x i16] }>
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { i32 }
%struct.ntfs_volume = type { ptr, i64, i32, %struct.kuid_t, %struct.kgid_t, i16, i16, i8, i8, i16, i8, i32, i32, i8, i32, i32, i8, i32, i32, i8, i64, i64, i64, i64, i32, ptr, i32, ptr, i64, i64, i64, i64, i64, i64, ptr, ptr, %struct.rw_semaphore, ptr, i32, ptr, ptr, %struct.rw_semaphore, ptr, i16, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nls_table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@legal_ansi_char_array = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\00\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\17\07\18\17\17\17\17\17\17\17\18\16\16\17\07\00\17\17\17\17\17\17\17\17\17\17\04\16\18\16\18\18", [32 x i8] zeroinitializer }, align 32
@ntfs_name_cache = external dso_local local_unnamed_addr global ptr, align 4
@__func__.ntfs_nlstoucs = private unnamed_addr constant [14 x i8] c"ntfs_nlstoucs\00", align 1
@.str = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Failed to allocate buffer for converted name from ntfs_name_cache.\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Received NULL pointer.\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"Name using character set %s contains characters that cannot be converted to Unicode.\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"Name is too long (maximum length for a name on NTFS is %d Unicode characters.\00", [50 x i8] zeroinitializer }, align 32
@__func__.ntfs_ucstonls = private unnamed_addr constant [14 x i8] c"ntfs_ucstonls\00", align 1
@.str.4 = internal constant { [136 x i8], [56 x i8] } { [136 x i8] c"Unicode name contains characters that cannot be converted to character set %s.  You might want to try to use the mount option nls=utf8.\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to allocate name!\00", [39 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967260]
@___asan_gen_.6 = private unnamed_addr constant [22 x i8] c"legal_ansi_char_array\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 26, i32 17 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 275, i32 3 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 279, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 284, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 289, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 373, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private constant [20 x i8] c"../fs/ntfs/unistr.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 382, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @legal_ansi_char_array, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @legal_ansi_char_array to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ntfs_are_names_equal(ptr nocapture noundef readonly %s1, i32 noundef %s1_len, ptr nocapture noundef readonly %s2, i32 noundef %s2_len, i32 noundef %ic, ptr nocapture noundef readonly %upcase, i32 noundef %upcase_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %s1_len, i32 %s2_len)
  %cmp.not = icmp eq i32 %s1_len, %s2_len
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ic)
  %cmp1 = icmp eq i32 %ic, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %s1_len)
  %cmp21.not.i = icmp eq i32 %s1_len, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  br i1 %cmp21.not.i, label %if.then2.return_crit_edge, label %if.then2.for.body.i_crit_edge

if.then2.for.body.i_crit_edge:                    ; preds = %if.then2
  br label %for.body.i

if.then2.return_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

for.body.i:                                       ; preds = %if.end10.i.for.body.i_crit_edge, %if.then2.for.body.i_crit_edge
  %i.022.i = phi i32 [ %inc.i, %if.end10.i.for.body.i_crit_edge ], [ 0, %if.then2.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i16, ptr %s1, i32 %i.022.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx.i, align 2
  %arrayidx1.i = getelementptr i16, ptr %s2, i32 %i.022.i
  %2 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx1.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %.not22 = icmp eq i16 %1, %3
  br i1 %.not22, label %if.end10.i, label %for.body.i.return_crit_edge

for.body.i.return_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end10.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not.i = icmp eq i16 %1, 0
  %inc.i = add nuw i32 %i.022.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %s1_len)
  %exitcond.not.i = icmp eq i32 %inc.i, %s1_len
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %if.end10.i.return_crit_edge, label %if.end10.i.for.body.i_crit_edge

if.end10.i.for.body.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end10.i.return_crit_edge:                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end3:                                          ; preds = %if.end
  br i1 %cmp21.not.i, label %if.end3.return_crit_edge, label %if.end3.for.body.i12_crit_edge

if.end3.for.body.i12_crit_edge:                   ; preds = %if.end3
  br label %for.body.i12

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

for.body.i12:                                     ; preds = %if.end23.i.for.body.i12_crit_edge, %if.end3.for.body.i12_crit_edge
  %i.039.i = phi i32 [ %inc.i15, %if.end23.i.for.body.i12_crit_edge ], [ 0, %if.end3.for.body.i12_crit_edge ]
  %arrayidx.i11 = getelementptr i16, ptr %s1, i32 %i.039.i
  %4 = ptrtoint ptr %arrayidx.i11 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i11, align 2
  %6 = tail call i16 @llvm.bswap.i16(i16 %5) #8
  %conv.i = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %upcase_size)
  %cmp1.i = icmp ult i32 %conv.i, %upcase_size
  br i1 %cmp1.i, label %if.then.i, label %for.body.i12.if.end.i13_crit_edge

for.body.i12.if.end.i13_crit_edge:                ; preds = %for.body.i12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i13

if.then.i:                                        ; preds = %for.body.i12
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx3.i = getelementptr i16, ptr %upcase, i32 %conv.i
  %7 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx3.i, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #8
  br label %if.end.i13

if.end.i13:                                       ; preds = %if.then.i, %for.body.i12.if.end.i13_crit_edge
  %c1.0.i = phi i16 [ %9, %if.then.i ], [ %6, %for.body.i12.if.end.i13_crit_edge ]
  %arrayidx4.i = getelementptr i16, ptr %s2, i32 %i.039.i
  %10 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx4.i, align 2
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #8
  %conv5.i = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5.i, i32 %upcase_size)
  %cmp6.i = icmp ult i32 %conv5.i, %upcase_size
  br i1 %cmp6.i, label %if.then8.i, label %if.end.i13.if.end11.i_crit_edge

if.end.i13.if.end11.i_crit_edge:                  ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.then8.i:                                       ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx10.i = getelementptr i16, ptr %upcase, i32 %conv5.i
  %13 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx10.i, align 2
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #8
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then8.i, %if.end.i13.if.end11.i_crit_edge
  %c2.0.i = phi i16 [ %15, %if.then8.i ], [ %12, %if.end.i13.if.end11.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %c1.0.i, i16 %c2.0.i)
  %.not = icmp eq i16 %c1.0.i, %c2.0.i
  br i1 %.not, label %if.end23.i, label %if.end11.i.return_crit_edge

if.end11.i.return_crit_edge:                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end23.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %c1.0.i)
  %tobool.not.i14 = icmp eq i16 %c1.0.i, 0
  %inc.i15 = add nuw i32 %i.039.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i15, i32 %s1_len)
  %exitcond.not.i16 = icmp eq i32 %inc.i15, %s1_len
  %or.cond.i17 = select i1 %tobool.not.i14, i1 true, i1 %exitcond.not.i16
  br i1 %or.cond.i17, label %if.end23.i.return_crit_edge, label %if.end23.i.for.body.i12_crit_edge

if.end23.i.for.body.i12_crit_edge:                ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i12

if.end23.i.return_crit_edge:                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %if.end23.i.return_crit_edge, %if.end11.i.return_crit_edge, %if.end3.return_crit_edge, %if.end10.i.return_crit_edge, %for.body.i.return_crit_edge, %if.then2.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ true, %if.then2.return_crit_edge ], [ true, %if.end3.return_crit_edge ], [ %.not22, %for.body.i.return_crit_edge ], [ %.not22, %if.end10.i.return_crit_edge ], [ %.not, %if.end11.i.return_crit_edge ], [ %.not, %if.end23.i.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_ucsncmp(ptr nocapture noundef readonly %s1, ptr nocapture noundef readonly %s2, i32 noundef %n) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp21.not = icmp eq i32 %n, 0
  br i1 %cmp21.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %if.end10.for.body_crit_edge, %entry.for.body_crit_edge
  %i.022 = phi i32 [ %inc, %if.end10.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %s1, i32 %i.022
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %arrayidx1 = getelementptr i16, ptr %s2, i32 %i.022
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx1, align 2
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  call void @__sanitizer_cov_trace_cmp2(i16 %2, i16 %5)
  %cmp3 = icmp ult i16 %2, %5
  br i1 %cmp3, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp2(i16 %2, i16 %5)
  %cmp7 = icmp ugt i16 %2, %5
  br i1 %cmp7, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  %inc = add nuw i32 %i.022, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %n)
  %exitcond.not = icmp eq i32 %inc, %n
  %or.cond = select i1 %tobool.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %if.end10.cleanup_crit_edge, label %if.end10.for.body_crit_edge

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ -1, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_ucsncasecmp(ptr nocapture noundef readonly %s1, ptr nocapture noundef readonly %s2, i32 noundef %n, ptr nocapture noundef readonly %upcase, i32 noundef %upcase_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp38.not = icmp eq i32 %n, 0
  br i1 %cmp38.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %if.end23.for.body_crit_edge, %entry.for.body_crit_edge
  %i.039 = phi i32 [ %inc, %if.end23.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %s1, i32 %i.039
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv = zext i16 %2 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %upcase_size)
  %cmp1 = icmp ult i32 %conv, %upcase_size
  br i1 %cmp1, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx3 = getelementptr i16, ptr %upcase, i32 %conv
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx3, align 2
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %c1.0 = phi i16 [ %5, %if.then ], [ %2, %for.body.if.end_crit_edge ]
  %arrayidx4 = getelementptr i16, ptr %s2, i32 %i.039
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx4, align 2
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %conv5 = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5, i32 %upcase_size)
  %cmp6 = icmp ult i32 %conv5, %upcase_size
  br i1 %cmp6, label %if.then8, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx10 = getelementptr i16, ptr %upcase, i32 %conv5
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx10, align 2
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end.if.end11_crit_edge
  %c2.0 = phi i16 [ %11, %if.then8 ], [ %8, %if.end.if.end11_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %c1.0, i16 %c2.0)
  %cmp14 = icmp ult i16 %c1.0, %c2.0
  br i1 %cmp14, label %if.end11.cleanup_crit_edge, label %if.end17

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_cmp2(i16 %c1.0, i16 %c2.0)
  %cmp20 = icmp ugt i16 %c1.0, %c2.0
  br i1 %cmp20, label %if.end17.cleanup_crit_edge, label %if.end23

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %c1.0)
  %tobool.not = icmp eq i16 %c1.0, 0
  %inc = add nuw i32 %i.039, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %n)
  %exitcond.not = icmp eq i32 %inc, %n
  %or.cond = select i1 %tobool.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %if.end23.cleanup_crit_edge, label %if.end23.for.body_crit_edge

if.end23.for.body_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end23.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ], [ 1, %if.end17.cleanup_crit_edge ], [ -1, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_collate_names(ptr nocapture noundef readonly %name1, i32 noundef %name1_len, ptr nocapture noundef readonly %name2, i32 noundef %name2_len, i32 noundef %err_val, i32 noundef %ic, ptr nocapture noundef readonly %upcase, i32 noundef %upcase_len) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.umin.i32(i32 %name1_len, i32 %name2_len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp181.not = icmp eq i32 %0, 0
  br i1 %cmp181.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ic)
  %tobool.not = icmp eq i32 %ic, 0
  %1 = shl i32 %0, 1
  %uglygep = getelementptr i8, ptr %name1, i32 %1
  br label %for.body

for.cond:                                         ; preds = %if.end30
  %inc = add nuw i32 %cnt.084, 1
  %exitcond.not = icmp eq i32 %inc, %0
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %cnt.084 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %name1.addr.083 = phi ptr [ %name1, %for.body.lr.ph ], [ %incdec.ptr, %for.cond.for.body_crit_edge ]
  %name2.addr.082 = phi ptr [ %name2, %for.body.lr.ph ], [ %incdec.ptr2, %for.cond.for.body_crit_edge ]
  %incdec.ptr = getelementptr i16, ptr %name1.addr.083, i32 1
  %2 = ptrtoint ptr %name1.addr.083 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %name1.addr.083, align 2
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %incdec.ptr2 = getelementptr i16, ptr %name2.addr.082, i32 1
  %5 = ptrtoint ptr %name2.addr.082 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %name2.addr.082, align 2
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  br i1 %tobool.not, label %for.body.if.end15_crit_edge, label %if.then3

for.body.if.end15_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then3:                                         ; preds = %for.body
  %conv = zext i16 %4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %upcase_len)
  %cmp4 = icmp ult i32 %conv, %upcase_len
  br i1 %cmp4, label %if.then6, label %if.then3.if.end7_crit_edge

if.then3.if.end7_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr i16, ptr %upcase, i32 %conv
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.then3.if.end7_crit_edge
  %c1.0 = phi i16 [ %10, %if.then6 ], [ %4, %if.then3.if.end7_crit_edge ]
  %conv8 = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv8, i32 %upcase_len)
  %cmp9 = icmp ult i32 %conv8, %upcase_len
  br i1 %cmp9, label %if.then11, label %if.end7.if.end15_crit_edge

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx13 = getelementptr i16, ptr %upcase, i32 %conv8
  %11 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx13, align 2
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end7.if.end15_crit_edge, %for.body.if.end15_crit_edge
  %c1.1 = phi i16 [ %c1.0, %if.then11 ], [ %c1.0, %if.end7.if.end15_crit_edge ], [ %4, %for.body.if.end15_crit_edge ]
  %c2.0 = phi i16 [ %13, %if.then11 ], [ %7, %if.end7.if.end15_crit_edge ], [ %7, %for.body.if.end15_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %c1.1)
  %cmp17 = icmp ult i16 %c1.1, 64
  br i1 %cmp17, label %land.lhs.true, label %if.end15.if.end24_crit_edge

if.end15.if.end24_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end15
  %conv16 = zext i16 %c1.1 to i32
  %arrayidx20 = getelementptr [64 x i8], ptr @legal_ansi_char_array, i32 0, i32 %conv16
  %14 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx20, align 1
  %16 = and i8 %15, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool22.not = icmp eq i8 %16, 0
  br i1 %tobool22.not, label %land.lhs.true.if.end24_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.end24:                                         ; preds = %land.lhs.true.if.end24_crit_edge, %if.end15.if.end24_crit_edge
  call void @__sanitizer_cov_trace_cmp2(i16 %c1.1, i16 %c2.0)
  %cmp27 = icmp ult i16 %c1.1, %c2.0
  br i1 %cmp27, label %if.end24.cleanup_crit_edge, label %if.end30

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_cmp2(i16 %c1.1, i16 %c2.0)
  %cmp33 = icmp ugt i16 %c1.1, %c2.0
  br i1 %cmp33, label %if.end30.cleanup_crit_edge, label %for.cond

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %name1.addr.0.lcssa = phi ptr [ %name1, %entry.for.end_crit_edge ], [ %uglygep, %for.cond.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %name1_len, i32 %name2_len)
  %cmp37 = icmp ult i32 %name1_len, %name2_len
  br i1 %cmp37, label %for.end.cleanup_crit_edge, label %if.end40

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end40:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_cmp4(i32 %name1_len, i32 %name2_len)
  %cmp41 = icmp eq i32 %name1_len, %name2_len
  br i1 %cmp41, label %if.end40.cleanup_crit_edge, label %if.end44

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end44:                                         ; preds = %if.end40
  %17 = ptrtoint ptr %name1.addr.0.lcssa to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %name1.addr.0.lcssa, align 2
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %19)
  %cmp46 = icmp ult i16 %19, 64
  br i1 %cmp46, label %land.lhs.true48, label %if.end44.if.end55_crit_edge

if.end44.if.end55_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

land.lhs.true48:                                  ; preds = %if.end44
  %conv45 = zext i16 %19 to i32
  %arrayidx50 = getelementptr [64 x i8], ptr @legal_ansi_char_array, i32 0, i32 %conv45
  %20 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx50, align 1
  %22 = and i8 %21, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool53.not = icmp eq i8 %22, 0
  br i1 %tobool53.not, label %land.lhs.true48.if.end55_crit_edge, label %land.lhs.true48.cleanup_crit_edge

land.lhs.true48.cleanup_crit_edge:                ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true48.if.end55_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.end55:                                         ; preds = %land.lhs.true48.if.end55_crit_edge, %if.end44.if.end55_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %land.lhs.true48.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end55 ], [ -1, %for.end.cleanup_crit_edge ], [ 0, %if.end40.cleanup_crit_edge ], [ %err_val, %land.lhs.true48.cleanup_crit_edge ], [ 1, %if.end30.cleanup_crit_edge ], [ -1, %if.end24.cleanup_crit_edge ], [ %err_val, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ntfs_upcase_name(ptr nocapture noundef %name, i32 noundef %name_len, ptr nocapture noundef readonly %upcase, i32 noundef %upcase_len) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %name_len)
  %cmp9.not = icmp eq i32 %name_len, 0
  br i1 %cmp9.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.010 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %name, i32 %i.010
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv = zext i16 %2 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %upcase_len)
  %cmp1 = icmp ult i32 %conv, %upcase_len
  br i1 %cmp1, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx3 = getelementptr i16, ptr %upcase, i32 %conv
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx3, align 2
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %arrayidx, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, %name_len
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ntfs_file_upcase_value(ptr nocapture noundef %file_name_attr, ptr nocapture noundef readonly %upcase, i32 noundef %upcase_len) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %file_name = getelementptr inbounds %struct.FILE_NAME_ATTR, ptr %file_name_attr, i32 0, i32 11
  %file_name_length = getelementptr inbounds %struct.FILE_NAME_ATTR, ptr %file_name_attr, i32 0, i32 9
  %0 = ptrtoint ptr %file_name_length to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %file_name_length, align 1
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp9.not.i = icmp eq i8 %1, 0
  br i1 %cmp9.not.i, label %entry.ntfs_upcase_name.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.ntfs_upcase_name.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ntfs_upcase_name.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.010.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i16, ptr %file_name, i32 %i.010.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx.i, align 2
  %4 = tail call i16 @llvm.bswap.i16(i16 %3) #8
  %conv.i = zext i16 %4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %upcase_len)
  %cmp1.i = icmp ult i32 %conv.i, %upcase_len
  br i1 %cmp1.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx3.i = getelementptr i16, ptr %upcase, i32 %conv.i
  %5 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx3.i, align 2
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %arrayidx.i, align 2
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv
  br i1 %exitcond.not.i, label %for.inc.i.ntfs_upcase_name.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.ntfs_upcase_name.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ntfs_upcase_name.exit

ntfs_upcase_name.exit:                            ; preds = %for.inc.i.ntfs_upcase_name.exit_crit_edge, %entry.ntfs_upcase_name.exit_crit_edge
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_file_compare_values(ptr nocapture noundef readonly %file_name_attr1, ptr nocapture noundef readonly %file_name_attr2, i32 noundef %err_val, i32 noundef %ic, ptr nocapture noundef readonly %upcase, i32 noundef %upcase_len) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %file_name = getelementptr inbounds %struct.FILE_NAME_ATTR, ptr %file_name_attr1, i32 0, i32 11
  %file_name_length = getelementptr inbounds %struct.FILE_NAME_ATTR, ptr %file_name_attr1, i32 0, i32 9
  %0 = ptrtoint ptr %file_name_length to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %file_name_length, align 1
  %file_name_length2 = getelementptr inbounds %struct.FILE_NAME_ATTR, ptr %file_name_attr2, i32 0, i32 9
  %2 = ptrtoint ptr %file_name_length2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %file_name_length2, align 1
  %4 = tail call i8 @llvm.umin.i8(i8 %1, i8 %3)
  %5 = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp181.not.i = icmp eq i8 %4, 0
  br i1 %cmp181.not.i, label %entry.for.end.i_crit_edge, label %for.body.lr.ph.i

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %entry
  %file_name1 = getelementptr inbounds %struct.FILE_NAME_ATTR, ptr %file_name_attr2, i32 0, i32 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ic)
  %tobool.not.i = icmp eq i32 %ic, 0
  %6 = shl nuw nsw i32 %5, 1
  %uglygep.i = getelementptr i8, ptr %file_name, i32 %6
  br label %for.body.i

for.cond.i:                                       ; preds = %if.end30.i
  %inc.i = add nuw nsw i32 %cnt.084.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %cnt.084.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %name1.addr.083.i = phi ptr [ %file_name, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.cond.i.for.body.i_crit_edge ]
  %name2.addr.082.i = phi ptr [ %file_name1, %for.body.lr.ph.i ], [ %incdec.ptr2.i, %for.cond.i.for.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr i16, ptr %name1.addr.083.i, i32 1
  %7 = ptrtoint ptr %name1.addr.083.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %name1.addr.083.i, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #8
  %incdec.ptr2.i = getelementptr i16, ptr %name2.addr.082.i, i32 1
  %10 = ptrtoint ptr %name2.addr.082.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %name2.addr.082.i, align 2
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #8
  br i1 %tobool.not.i, label %for.body.i.if.end15.i_crit_edge, label %if.then3.i

for.body.i.if.end15.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.then3.i:                                       ; preds = %for.body.i
  %conv.i = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %upcase_len)
  %cmp4.i = icmp ult i32 %conv.i, %upcase_len
  br i1 %cmp4.i, label %if.then6.i, label %if.then3.i.if.end7.i_crit_edge

if.then3.i.if.end7.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.then6.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr i16, ptr %upcase, i32 %conv.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx.i, align 2
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #8
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %if.then3.i.if.end7.i_crit_edge
  %c1.0.i = phi i16 [ %15, %if.then6.i ], [ %9, %if.then3.i.if.end7.i_crit_edge ]
  %conv8.i = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv8.i, i32 %upcase_len)
  %cmp9.i = icmp ult i32 %conv8.i, %upcase_len
  br i1 %cmp9.i, label %if.then11.i, label %if.end7.i.if.end15.i_crit_edge

if.end7.i.if.end15.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.then11.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx13.i = getelementptr i16, ptr %upcase, i32 %conv8.i
  %16 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx13.i, align 2
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #8
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then11.i, %if.end7.i.if.end15.i_crit_edge, %for.body.i.if.end15.i_crit_edge
  %c1.1.i = phi i16 [ %c1.0.i, %if.then11.i ], [ %c1.0.i, %if.end7.i.if.end15.i_crit_edge ], [ %9, %for.body.i.if.end15.i_crit_edge ]
  %c2.0.i = phi i16 [ %18, %if.then11.i ], [ %12, %if.end7.i.if.end15.i_crit_edge ], [ %12, %for.body.i.if.end15.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %c1.1.i)
  %cmp17.i = icmp ult i16 %c1.1.i, 64
  br i1 %cmp17.i, label %land.lhs.true.i, label %if.end15.i.if.end24.i_crit_edge

if.end15.i.if.end24.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

land.lhs.true.i:                                  ; preds = %if.end15.i
  %conv16.i = zext i16 %c1.1.i to i32
  %arrayidx20.i = getelementptr [64 x i8], ptr @legal_ansi_char_array, i32 0, i32 %conv16.i
  %19 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx20.i, align 1
  %21 = and i8 %20, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool22.not.i = icmp eq i8 %21, 0
  br i1 %tobool22.not.i, label %land.lhs.true.i.if.end24.i_crit_edge, label %land.lhs.true.i.ntfs_collate_names.exit_crit_edge

land.lhs.true.i.ntfs_collate_names.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ntfs_collate_names.exit

land.lhs.true.i.if.end24.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

if.end24.i:                                       ; preds = %land.lhs.true.i.if.end24.i_crit_edge, %if.end15.i.if.end24.i_crit_edge
  call void @__sanitizer_cov_trace_cmp2(i16 %c1.1.i, i16 %c2.0.i)
  %cmp27.i = icmp ult i16 %c1.1.i, %c2.0.i
  br i1 %cmp27.i, label %if.end24.i.ntfs_collate_names.exit_crit_edge, label %if.end30.i

if.end24.i.ntfs_collate_names.exit_crit_edge:     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ntfs_collate_names.exit

if.end30.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_cmp2(i16 %c1.1.i, i16 %c2.0.i)
  %cmp33.i = icmp ugt i16 %c1.1.i, %c2.0.i
  br i1 %cmp33.i, label %if.end30.i.ntfs_collate_names.exit_crit_edge, label %for.cond.i

if.end30.i.ntfs_collate_names.exit_crit_edge:     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ntfs_collate_names.exit

for.end.i:                                        ; preds = %for.cond.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %name1.addr.0.lcssa.i = phi ptr [ %file_name, %entry.for.end.i_crit_edge ], [ %uglygep.i, %for.cond.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp37.i = icmp ult i8 %1, %3
  br i1 %cmp37.i, label %for.end.i.ntfs_collate_names.exit_crit_edge, label %if.end40.i

for.end.i.ntfs_collate_names.exit_crit_edge:      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ntfs_collate_names.exit

if.end40.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp41.i = icmp eq i8 %1, %3
  br i1 %cmp41.i, label %if.end40.i.ntfs_collate_names.exit_crit_edge, label %if.end44.i

if.end40.i.ntfs_collate_names.exit_crit_edge:     ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ntfs_collate_names.exit

if.end44.i:                                       ; preds = %if.end40.i
  %22 = ptrtoint ptr %name1.addr.0.lcssa.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %name1.addr.0.lcssa.i, align 2
  %24 = tail call i16 @llvm.bswap.i16(i16 %23) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %24)
  %cmp46.i = icmp ult i16 %24, 64
  br i1 %cmp46.i, label %land.lhs.true48.i, label %if.end44.i.if.end55.i_crit_edge

if.end44.i.if.end55.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.i

land.lhs.true48.i:                                ; preds = %if.end44.i
  %conv45.i = zext i16 %24 to i32
  %arrayidx50.i = getelementptr [64 x i8], ptr @legal_ansi_char_array, i32 0, i32 %conv45.i
  %25 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx50.i, align 1
  %27 = and i8 %26, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool53.not.i = icmp eq i8 %27, 0
  br i1 %tobool53.not.i, label %land.lhs.true48.i.if.end55.i_crit_edge, label %land.lhs.true48.i.ntfs_collate_names.exit_crit_edge

land.lhs.true48.i.ntfs_collate_names.exit_crit_edge: ; preds = %land.lhs.true48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ntfs_collate_names.exit

land.lhs.true48.i.if.end55.i_crit_edge:           ; preds = %land.lhs.true48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.i

if.end55.i:                                       ; preds = %land.lhs.true48.i.if.end55.i_crit_edge, %if.end44.i.if.end55.i_crit_edge
  br label %ntfs_collate_names.exit

ntfs_collate_names.exit:                          ; preds = %if.end55.i, %land.lhs.true48.i.ntfs_collate_names.exit_crit_edge, %if.end40.i.ntfs_collate_names.exit_crit_edge, %for.end.i.ntfs_collate_names.exit_crit_edge, %if.end30.i.ntfs_collate_names.exit_crit_edge, %if.end24.i.ntfs_collate_names.exit_crit_edge, %land.lhs.true.i.ntfs_collate_names.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.end55.i ], [ -1, %for.end.i.ntfs_collate_names.exit_crit_edge ], [ 0, %if.end40.i.ntfs_collate_names.exit_crit_edge ], [ %err_val, %land.lhs.true48.i.ntfs_collate_names.exit_crit_edge ], [ %err_val, %land.lhs.true.i.ntfs_collate_names.exit_crit_edge ], [ -1, %if.end24.i.ntfs_collate_names.exit_crit_edge ], [ 1, %if.end30.i.ntfs_collate_names.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_nlstoucs(ptr nocapture noundef readonly %vol, ptr noundef %ins, i32 noundef %ins_len, ptr nocapture noundef writeonly %outs) local_unnamed_addr #5 align 64 {
entry:
  %wc = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nls_map = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 54
  %0 = ptrtoint ptr %nls_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nls_map, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wc) #8
  %2 = ptrtoint ptr %wc to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %wc, align 2, !annotation !26
  %tobool.not = icmp eq ptr %ins, null
  br i1 %tobool.not, label %if.end32, label %if.then, !prof !27

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ntfs_name_cache to i32))
  %3 = load ptr, ptr @ntfs_name_cache, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %3, i32 noundef 3136) #8
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.end31, label %for.cond.preheader, !prof !27

for.cond.preheader:                               ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ins_len)
  %cmp65 = icmp sgt i32 %ins_len, 0
  br i1 %cmp65, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %char2uni = getelementptr inbounds %struct.nls_table, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.then28.for.body_crit_edge, %for.body.lr.ph
  %o.067 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.then28.for.body_crit_edge ]
  %i.066 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %if.then28.for.body_crit_edge ]
  %4 = ptrtoint ptr %char2uni to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %char2uni, align 4
  %add.ptr = getelementptr i8, ptr %ins, i32 %i.066
  %sub = sub i32 %ins_len, %i.066
  %call11 = call i32 %5(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull %wc) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call11)
  %cmp12 = icmp sgt i32 %call11, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %o.067)
  %cmp13 = icmp ult i32 %o.067, 255
  %spec.select = select i1 %cmp12, i1 %cmp13, i1 false, !prof !28
  br i1 %spec.select, label %if.then20, label %name_err, !prof !28

if.then20:                                        ; preds = %for.body
  %6 = ptrtoint ptr %wc to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %wc, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool21.not = icmp eq i16 %7, 0
  br i1 %tobool21.not, label %if.then20.for.end_crit_edge, label %if.then28, !prof !27

if.then20.for.end_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then28:                                        ; preds = %if.then20
  %8 = call i16 @llvm.bswap.i16(i16 %7)
  %inc = add nuw nsw i32 %o.067, 1
  %arrayidx = getelementptr i16, ptr %call, i32 %o.067
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %arrayidx, align 2
  %add = add i32 %call11, %i.066
  %cmp = icmp slt i32 %add, %ins_len
  br i1 %cmp, label %if.then28.for.body_crit_edge, label %if.then28.for.end_crit_edge

if.then28.for.end_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then28.for.body_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.then28.for.end_crit_edge, %if.then20.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %o.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %o.067, %if.then20.for.end_crit_edge ], [ %inc, %if.then28.for.end_crit_edge ]
  %arrayidx30 = getelementptr i16, ptr %call, i32 %o.0.lcssa
  %10 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %arrayidx30, align 2
  %11 = ptrtoint ptr %outs to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call, ptr %outs, align 4
  br label %cleanup

if.end31:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_nlstoucs, ptr noundef %13, ptr noundef nonnull @.str) #8
  br label %cleanup

if.end32:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_nlstoucs, ptr noundef %15, ptr noundef nonnull @.str.1) #8
  br label %cleanup

name_err:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ntfs_name_cache to i32))
  %16 = load ptr, ptr @ntfs_name_cache, align 4
  call void @kmem_cache_free(ptr noundef %16, ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp34 = icmp slt i32 %call11, 0
  %17 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vol, align 8
  br i1 %cmp34, label %if.then35, label %if.else

if.then35:                                        ; preds = %name_err
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_nlstoucs, ptr noundef %18, ptr noundef nonnull @.str.2, ptr noundef %20) #8
  br label %cleanup

if.else:                                          ; preds = %name_err
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_nlstoucs, ptr noundef %18, ptr noundef nonnull @.str.3, i32 noundef 255) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then35, %if.end32, %if.end31, %for.end
  %retval.0 = phi i32 [ %o.0.lcssa, %for.end ], [ -12, %if.end31 ], [ -22, %if.end32 ], [ -84, %if.then35 ], [ -36, %if.else ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wc) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_ucstonls(ptr nocapture noundef readonly %vol, ptr noundef readonly %ins, i32 noundef %ins_len, ptr nocapture noundef %outs, i32 noundef %outs_len) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nls_map = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 54
  %0 = ptrtoint ptr %nls_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nls_map, align 8
  %tobool.not = icmp eq ptr %ins, null
  br i1 %tobool.not, label %if.end33, label %if.then

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %outs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %outs, align 4
  %tobool1.not = icmp eq ptr %3, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %outs_len)
  %tobool2.not = icmp ne i32 %outs_len, 0
  %4 = or i1 %tobool2.not, %tobool1.not
  br i1 %4, label %if.end, label %if.then.conversion_err_crit_edge

if.then.conversion_err_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %conversion_err

if.end:                                           ; preds = %if.then
  br i1 %tobool1.not, label %if.then5, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then5:                                         ; preds = %if.end
  %mul = mul i32 %ins_len, 6
  %add = or i32 %mul, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3136) #11
  %tobool6.not = icmp eq ptr %call9.i, null
  br i1 %tobool6.not, label %mem_err_out, label %if.then5.if.end9_crit_edge

if.then5.if.end9_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.end9:                                          ; preds = %if.then5.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %ns.0 = phi ptr [ %3, %if.end.if.end9_crit_edge ], [ %call9.i, %if.then5.if.end9_crit_edge ]
  %ns_len.0 = phi i32 [ %outs_len, %if.end.if.end9_crit_edge ], [ %mul, %if.then5.if.end9_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ins_len)
  %cmp141 = icmp sgt i32 %ins_len, 0
  br i1 %cmp141, label %retry.preheader.lr.ph, label %if.end9.for.end_crit_edge

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

retry.preheader.lr.ph:                            ; preds = %if.end9
  %uni2char = getelementptr inbounds %struct.nls_table, ptr %1, i32 0, i32 2
  br label %retry.preheader

retry.preheader:                                  ; preds = %if.then12.retry.preheader_crit_edge, %retry.preheader.lr.ph
  %ns_len.1146 = phi i32 [ %ns_len.0, %retry.preheader.lr.ph ], [ %ns_len.2.lcssa, %if.then12.retry.preheader_crit_edge ]
  %o.0144 = phi i32 [ 0, %retry.preheader.lr.ph ], [ %add13, %if.then12.retry.preheader_crit_edge ]
  %i.0143 = phi i32 [ 0, %retry.preheader.lr.ph ], [ %inc, %if.then12.retry.preheader_crit_edge ]
  %ns.1142 = phi ptr [ %ns.0, %retry.preheader.lr.ph ], [ %ns.2.lcssa, %if.then12.retry.preheader_crit_edge ]
  %arrayidx = getelementptr i16, ptr %ins, i32 %i.0143
  %5 = ptrtoint ptr %uni2char to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %uni2char, align 4
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %add.ptr131 = getelementptr i8, ptr %ns.1142, i32 %o.0144
  %sub132 = sub i32 %ns_len.1146, %o.0144
  %call10133 = tail call i32 %6(i16 noundef zeroext %9, ptr noundef %add.ptr131, i32 noundef %sub132) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10133)
  %cmp11134 = icmp sgt i32 %call10133, 0
  br i1 %cmp11134, label %retry.preheader.if.then12_crit_edge, label %retry.preheader.if.else_crit_edge

retry.preheader.if.else_crit_edge:                ; preds = %retry.preheader
  br label %if.else

retry.preheader.if.then12_crit_edge:              ; preds = %retry.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.then12:                                        ; preds = %cleanup.if.then12_crit_edge, %retry.preheader.if.then12_crit_edge
  %ns.2.lcssa = phi ptr [ %ns.1142, %retry.preheader.if.then12_crit_edge ], [ %call9.i108, %cleanup.if.then12_crit_edge ]
  %ns_len.2.lcssa = phi i32 [ %ns_len.1146, %retry.preheader.if.then12_crit_edge ], [ %sub27, %cleanup.if.then12_crit_edge ]
  %call10.lcssa = phi i32 [ %call10133, %retry.preheader.if.then12_crit_edge ], [ %call10, %cleanup.if.then12_crit_edge ]
  %add13 = add i32 %call10.lcssa, %o.0144
  %inc = add nuw nsw i32 %i.0143, 1
  %exitcond.not = icmp eq i32 %inc, %ins_len
  br i1 %exitcond.not, label %if.then12.for.end_crit_edge, label %if.then12.retry.preheader_crit_edge

if.then12.retry.preheader_crit_edge:              ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %retry.preheader

if.then12.for.end_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.else:                                          ; preds = %cleanup.if.else_crit_edge, %retry.preheader.if.else_crit_edge
  %call10138 = phi i32 [ %call10, %cleanup.if.else_crit_edge ], [ %call10133, %retry.preheader.if.else_crit_edge ]
  %ns_len.2137 = phi i32 [ %sub27, %cleanup.if.else_crit_edge ], [ %ns_len.1146, %retry.preheader.if.else_crit_edge ]
  %ns.2135 = phi ptr [ %call9.i108, %cleanup.if.else_crit_edge ], [ %ns.1142, %retry.preheader.if.else_crit_edge ]
  %10 = zext i32 %call10138 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call10138, label %if.else.conversion_err_crit_edge [
    i32 0, label %if.else.for.end_crit_edge
    i32 -36, label %land.lhs.true18
  ]

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.else.conversion_err_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %conversion_err

land.lhs.true18:                                  ; preds = %if.else
  %11 = ptrtoint ptr %outs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %outs, align 4
  %cmp19.not = icmp eq ptr %ns.2135, %12
  br i1 %cmp19.not, label %land.lhs.true18.conversion_err_crit_edge, label %if.then20

land.lhs.true18.conversion_err_crit_edge:         ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #10
  br label %conversion_err

if.then20:                                        ; preds = %land.lhs.true18
  %add21 = add i32 %ns_len.2137, 64
  %and = and i32 %add21, -64
  %call9.i108 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %and, i32 noundef 3136) #11
  %tobool23.not = icmp eq ptr %call9.i108, null
  br i1 %tobool23.not, label %if.then20.conversion_err_crit_edge, label %cleanup

if.then20.conversion_err_crit_edge:               ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %conversion_err

cleanup:                                          ; preds = %if.then20
  %13 = call ptr @memcpy(ptr %call9.i108, ptr %ns.2135, i32 %ns_len.2137)
  %sub27 = add i32 %and, -1
  tail call void @kfree(ptr noundef %ns.2135) #8
  %14 = ptrtoint ptr %uni2char to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %uni2char, align 4
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx, align 2
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %add.ptr = getelementptr i8, ptr %call9.i108, i32 %o.0144
  %sub = sub i32 %sub27, %o.0144
  %call10 = tail call i32 %15(i16 noundef zeroext %18, ptr noundef %add.ptr, i32 noundef %sub) #8
  %cmp11 = icmp sgt i32 %call10, 0
  br i1 %cmp11, label %cleanup.if.then12_crit_edge, label %cleanup.if.else_crit_edge

cleanup.if.else_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

cleanup.if.then12_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

for.end:                                          ; preds = %if.else.for.end_crit_edge, %if.then12.for.end_crit_edge, %if.end9.for.end_crit_edge
  %o.0128 = phi i32 [ 0, %if.end9.for.end_crit_edge ], [ %o.0144, %if.else.for.end_crit_edge ], [ %add13, %if.then12.for.end_crit_edge ]
  %ns.4 = phi ptr [ %ns.0, %if.end9.for.end_crit_edge ], [ %ns.2135, %if.else.for.end_crit_edge ], [ %ns.2.lcssa, %if.then12.for.end_crit_edge ]
  %arrayidx32 = getelementptr i8, ptr %ns.4, i32 %o.0128
  %19 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %arrayidx32, align 1
  %20 = ptrtoint ptr %outs to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %ns.4, ptr %outs, align 4
  br label %cleanup42

if.end33:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_ucstonls, ptr noundef %22, ptr noundef nonnull @.str.1) #8
  br label %cleanup42

conversion_err:                                   ; preds = %if.then20.conversion_err_crit_edge, %land.lhs.true18.conversion_err_crit_edge, %if.else.conversion_err_crit_edge, %if.then.conversion_err_crit_edge
  %ns.5 = phi ptr [ %3, %if.then.conversion_err_crit_edge ], [ %ns.2135, %land.lhs.true18.conversion_err_crit_edge ], [ %ns.2135, %if.else.conversion_err_crit_edge ], [ %ns.2135, %if.then20.conversion_err_crit_edge ]
  %wc.0 = phi i32 [ -36, %if.then.conversion_err_crit_edge ], [ -36, %if.then20.conversion_err_crit_edge ], [ %call10138, %if.else.conversion_err_crit_edge ], [ -36, %land.lhs.true18.conversion_err_crit_edge ]
  %23 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vol, align 8
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_ucstonls, ptr noundef %24, ptr noundef nonnull @.str.4, ptr noundef %26) #8
  %27 = ptrtoint ptr %outs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %outs, align 4
  %cmp35.not = icmp eq ptr %ns.5, %28
  br i1 %cmp35.not, label %conversion_err.if.end37_crit_edge, label %if.then36

conversion_err.if.end37_crit_edge:                ; preds = %conversion_err
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then36:                                        ; preds = %conversion_err
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef %ns.5) #8
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %conversion_err.if.end37_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -36, i32 %wc.0)
  %cmp38.not = icmp eq i32 %wc.0, -36
  %spec.store.select = select i1 %cmp38.not, i32 -36, i32 -84
  br label %cleanup42

mem_err_out:                                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_ucstonls, ptr noundef %30, ptr noundef nonnull @.str.5) #8
  br label %cleanup42

cleanup42:                                        ; preds = %mem_err_out, %if.end37, %if.end33, %for.end
  %retval.0 = phi i32 [ %spec.store.select, %if.end37 ], [ %o.0128, %for.end ], [ -12, %mem_err_out ], [ -22, %if.end33 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { argmemonly nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @__func__.ntfs_nlstoucs, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ntfs/unistr.c", i32 275, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/ntfs/unistr.c", i32 279, i32 2}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/ntfs/unistr.c", i32 284, i32 3}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/ntfs/unistr.c", i32 289, i32 3}
!9 = !{ptr @__func__.ntfs_ucstonls, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/ntfs/unistr.c", i32 370, i32 2}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/ntfs/unistr.c", i32 373, i32 2}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/ntfs/unistr.c", i32 382, i32 2}
!15 = !{ptr @legal_ansi_char_array, !16, !"legal_ansi_char_array", i1 false, i1 false}
!16 = !{!"../fs/ntfs/unistr.c", i32 26, i32 17}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{!"auto-init"}
!27 = !{!"branch_weights", i32 1, i32 2000}
!28 = !{!"branch_weights", i32 2000, i32 1}
