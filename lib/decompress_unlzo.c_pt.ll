; ModuleID = '/llk/IR_all_yes/lib/decompress_unlzo.c_pt.bc'
source_filename = "../lib/decompress_unlzo.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

@lzop_magic = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\89LZO\00\0D\0A\1A\0A", [23 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"NULL output pointer and no flush function provided\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Could not allocate output buffer\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Both input pointer and fill function provided, don't know what to do\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"NULL input pointer and missing fill function\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Could not allocate input buffer\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"invalid header\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"file corrupted\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dest len longer than block size\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Compressed data violation\00", [38 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant [11 x i8] c"lzop_magic\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 33, i32 28 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 113, i32 9 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 118, i32 10 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 124, i32 9 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 129, i32 9 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 134, i32 10 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 155, i32 9 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 178, i32 10 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 193, i32 10 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private constant [26 x i8] c"../lib/decompress_unlzo.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 238, i32 11 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @lzop_magic, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lzop_magic to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold inlinehint nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @parse_header(ptr noundef %input, ptr nocapture noundef writeonly %skip, i32 noundef %in_len) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr i8, ptr %input, i32 %in_len
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %in_len)
  %cmp = icmp slt i32 %in_len, 33
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %uglygep = getelementptr i8, ptr %input, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %parse.072 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %input, %for.body.preheader ]
  %l.071 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %0 = ptrtoint ptr %parse.072 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %parse.072, align 1
  %arrayidx = getelementptr [9 x i8], ptr @lzop_magic, i32 0, i32 %l.071
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp3.not = icmp eq i8 %1, %3
  br i1 %cmp3.not, label %for.inc, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr i8, ptr %parse.072, i32 1
  %inc = add nuw nsw i32 %l.071, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  %4 = ptrtoint ptr %uglygep to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %uglygep, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2367, i16 %5)
  %cmp9 = icmp ugt i16 %5, 2367
  %spec.select.v = select i1 %cmp9, i32 8, i32 7
  %spec.select = getelementptr i8, ptr %uglygep, i32 %spec.select.v
  %6 = ptrtoint ptr %spec.select to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %spec.select, align 1
  %and = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %parse.2.v = select i1 %tobool.not, i32 4, i32 8
  %parse.2 = getelementptr i8, ptr %spec.select, i32 %parse.2.v
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %parse.2 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %sub.ptr.sub)
  %cmp19 = icmp slt i32 %sub.ptr.sub, 13
  br i1 %cmp19, label %for.end.cleanup_crit_edge, label %if.end22

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end22:                                         ; preds = %for.end
  %spec.select69.v = select i1 %cmp9, i32 12, i32 8
  %spec.select69 = getelementptr i8, ptr %parse.2, i32 %spec.select69.v
  %incdec.ptr30 = getelementptr i8, ptr %spec.select69, i32 1
  %8 = ptrtoint ptr %spec.select69 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %spec.select69, align 1
  %conv31 = zext i8 %9 to i32
  %sub.ptr.rhs.cast33 = ptrtoint ptr %incdec.ptr30 to i32
  %sub.ptr.sub34 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast33
  %add = add nuw nsw i32 %conv31, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub34, i32 %add)
  %cmp35 = icmp slt i32 %sub.ptr.sub34, %add
  br i1 %cmp35, label %if.end22.cleanup_crit_edge, label %if.end38

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end38:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr40 = getelementptr i8, ptr %incdec.ptr30, i32 %add
  %sub.ptr.lhs.cast41 = ptrtoint ptr %add.ptr40 to i32
  %sub.ptr.rhs.cast42 = ptrtoint ptr %input to i32
  %sub.ptr.sub43 = sub i32 %sub.ptr.lhs.cast41, %sub.ptr.rhs.cast42
  %10 = ptrtoint ptr %skip to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub.ptr.sub43, ptr %skip, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.end22.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end38 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %if.end22.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @unlzo(ptr noundef %input, i32 noundef %in_len, ptr noundef readonly %fill, ptr noundef readonly %flush, ptr noundef %output, ptr noundef %posp, ptr nocapture noundef readonly %error) local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  %skip = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skip) #8
  %0 = ptrtoint ptr %skip to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %skip, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #8
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %tmp, align 4, !annotation !28
  %tobool.not = icmp eq ptr %output, null
  br i1 %tobool.not, label %if.else, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.else:                                          ; preds = %entry
  %tobool1.not = icmp eq ptr %flush, null
  br i1 %tobool1.not, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %error(ptr noundef nonnull @.str) #8
  br label %exit

if.else3:                                         ; preds = %if.else
  %call1.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 262144, i32 noundef 3264, i32 noundef 6) #9
  %tobool4.not = icmp eq ptr %call1.i.i, null
  br i1 %tobool4.not, label %if.then5, label %if.else3.if.end7_crit_edge

if.else3.if.end7_crit_edge:                       ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then5:                                         ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %error(ptr noundef nonnull @.str.1) #8
  br label %exit

if.end7:                                          ; preds = %if.else3.if.end7_crit_edge, %entry.if.end7_crit_edge
  %out_buf.0 = phi ptr [ %call1.i.i, %if.else3.if.end7_crit_edge ], [ %output, %entry.if.end7_crit_edge ]
  %tobool8.not = icmp eq ptr %input, null
  %tobool9.not = icmp eq ptr %fill, null
  %or.cond = or i1 %tobool8.not, %tobool9.not
  br i1 %or.cond, label %if.else11, label %if.then10

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %error(ptr noundef nonnull @.str.2) #8
  br label %exit_1

if.else11:                                        ; preds = %if.end7
  br i1 %tobool8.not, label %if.else14, label %if.else11.if.end24_crit_edge

if.else11.if.end24_crit_edge:                     ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.else14:                                        ; preds = %if.else11
  br i1 %tobool9.not, label %if.then16, label %if.else17

if.then16:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %error(ptr noundef nonnull @.str.3) #8
  br label %exit_1

if.else17:                                        ; preds = %if.else14
  %call1.i.i269 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 278597, i32 noundef 3264, i32 noundef 7) #9
  %tobool19.not = icmp eq ptr %call1.i.i269, null
  br i1 %tobool19.not, label %if.then20, label %if.else17.if.end24_crit_edge

if.else17.if.end24_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then20:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %error(ptr noundef nonnull @.str.4) #8
  br label %exit_1

if.end24:                                         ; preds = %if.else17.if.end24_crit_edge, %if.else11.if.end24_crit_edge
  %in_buf.0 = phi ptr [ %call1.i.i269, %if.else17.if.end24_crit_edge ], [ %input, %if.else11.if.end24_crit_edge ]
  %tobool25.not = icmp eq ptr %posp, null
  br i1 %tobool25.not, label %if.end24.if.end27_crit_edge, label %if.then26

if.end24.if.end27_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %posp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %posp, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end24.if.end27_crit_edge
  br i1 %tobool9.not, label %if.end27.if.end31_crit_edge, label %if.then29

if.end27.if.end31_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr i8, ptr %in_buf.0, i32 297
  %call30 = tail call i32 %fill(ptr noundef %add.ptr, i32 noundef 297) #8
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end27.if.end31_crit_edge
  %in_len.addr.0 = phi i32 [ %call30, %if.then29 ], [ %in_len, %if.end27.if.end31_crit_edge ]
  %in_buf.1 = phi ptr [ %add.ptr, %if.then29 ], [ %in_buf.0, %if.end27.if.end31_crit_edge ]
  %call32 = call i32 @parse_header(ptr noundef %in_buf.1, ptr noundef nonnull %skip, i32 noundef %in_len.addr.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %error(ptr noundef nonnull @.str.5) #8
  br label %exit_2

if.end35:                                         ; preds = %if.end31
  %3 = ptrtoint ptr %skip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %skip, align 4
  %add.ptr36 = getelementptr i8, ptr %in_buf.1, i32 %4
  %sub = sub i32 %in_len.addr.0, %4
  br i1 %tobool9.not, label %if.end35.if.end39_crit_edge, label %if.then38

if.end35.if.end39_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  %5 = call ptr @memcpy(ptr %in_buf.0, ptr %add.ptr36, i32 %sub)
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end35.if.end39_crit_edge
  %in_buf.2 = phi ptr [ %in_buf.0, %if.then38 ], [ %add.ptr36, %if.end35.if.end39_crit_edge ]
  br i1 %tobool25.not, label %if.end39.if.end42_crit_edge, label %if.then41

if.end39.if.end42_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %posp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %4, ptr %posp, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end39.if.end42_crit_edge
  %tobool28.not.not = xor i1 %tobool9.not, true
  %tobool121.not = icmp eq ptr %flush, null
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %if.end42
  %in_len.addr.1 = phi i32 [ %sub, %if.end42 ], [ %sub138, %for.cond.backedge ]
  %in_buf.3 = phi ptr [ %in_buf.2, %if.end42 ], [ %in_buf.3.be, %for.cond.backedge ]
  %out_buf.1 = phi ptr [ %out_buf.0, %if.end42 ], [ %spec.select268, %for.cond.backedge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %in_len.addr.1)
  %cmp = icmp slt i32 %in_len.addr.1, 4
  %or.cond260 = select i1 %tobool28.not.not, i1 %cmp, i1 false
  br i1 %or.cond260, label %if.then45, label %for.cond.if.end52_crit_edge

for.cond.if.end52_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

if.then45:                                        ; preds = %for.cond
  %add.ptr46 = getelementptr i8, ptr %in_buf.3, i32 %in_len.addr.1
  %sub47 = sub i32 4, %in_len.addr.1
  %call48 = call i32 %fill(ptr noundef %add.ptr46, i32 noundef %sub47) #8
  %7 = ptrtoint ptr %skip to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call48, ptr %skip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp sgt i32 %call48, 0
  %add = add i32 %call48, %in_len.addr.1
  br i1 %cmp49, label %if.then45.if.end52_crit_edge, label %if.then45.if.then54_crit_edge

if.then45.if.then54_crit_edge:                    ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then54

if.then45.if.end52_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

if.end52:                                         ; preds = %if.then45.if.end52_crit_edge, %for.cond.if.end52_crit_edge
  %in_len.addr.2 = phi i32 [ %in_len.addr.1, %for.cond.if.end52_crit_edge ], [ %add, %if.then45.if.end52_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %in_len.addr.2)
  %cmp53 = icmp slt i32 %in_len.addr.2, 4
  br i1 %cmp53, label %if.end52.if.then54_crit_edge, label %if.end55

if.end52.if.then54_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then54

if.then54:                                        ; preds = %if.end52.if.then54_crit_edge, %if.then45.if.then54_crit_edge
  call void %error(ptr noundef nonnull @.str.6) #8
  br label %exit_2

if.end55:                                         ; preds = %if.end52
  %8 = ptrtoint ptr %in_buf.3 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %in_buf.3, align 1
  %add.ptr57 = getelementptr i8, ptr %in_buf.3, i32 4
  %sub58 = add nsw i32 %in_len.addr.2, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp59 = icmp eq i32 %9, 0
  br i1 %cmp59, label %if.then60, label %if.end65

if.then60:                                        ; preds = %if.end55
  br i1 %tobool25.not, label %if.then60.exit_2_crit_edge, label %if.then62

if.then60.exit_2_crit_edge:                       ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_2

if.then62:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %posp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %posp, align 4
  %add63 = add i32 %11, 4
  store i32 %add63, ptr %posp, align 4
  br label %exit_2

if.end65:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %9)
  %cmp66 = icmp ugt i32 %9, 262144
  br i1 %cmp66, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  call void %error(ptr noundef nonnull @.str.7) #8
  br label %exit_2

if.end68:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub58)
  %cmp71 = icmp ult i32 %sub58, 8
  %or.cond262 = select i1 %tobool28.not.not, i1 %cmp71, i1 false
  br i1 %or.cond262, label %if.then72, label %if.end68.if.end80_crit_edge

if.end68.if.end80_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80

if.then72:                                        ; preds = %if.end68
  %add.ptr73 = getelementptr i8, ptr %in_buf.3, i32 %in_len.addr.2
  %sub74 = sub nuw nsw i32 12, %in_len.addr.2
  %call75 = call i32 %fill(ptr noundef %add.ptr73, i32 noundef %sub74) #8
  %12 = ptrtoint ptr %skip to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call75, ptr %skip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76 = icmp sgt i32 %call75, 0
  %add78 = add i32 %call75, %sub58
  br i1 %cmp76, label %if.then72.if.end80_crit_edge, label %if.then72.if.then82_crit_edge

if.then72.if.then82_crit_edge:                    ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then82

if.then72.if.end80_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80

if.end80:                                         ; preds = %if.then72.if.end80_crit_edge, %if.end68.if.end80_crit_edge
  %in_len.addr.3 = phi i32 [ %sub58, %if.end68.if.end80_crit_edge ], [ %add78, %if.then72.if.end80_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %in_len.addr.3)
  %cmp81 = icmp slt i32 %in_len.addr.3, 8
  br i1 %cmp81, label %if.end80.if.then82_crit_edge, label %if.end83

if.end80.if.then82_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then82

if.then82:                                        ; preds = %if.end80.if.then82_crit_edge, %if.then72.if.then82_crit_edge
  call void %error(ptr noundef nonnull @.str.6) #8
  br label %exit_2

if.end83:                                         ; preds = %if.end80
  %13 = ptrtoint ptr %add.ptr57 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %add.ptr57, align 1
  %add.ptr85 = getelementptr i8, ptr %in_buf.3, i32 12
  %sub86 = add nsw i32 %in_len.addr.3, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp87 = icmp eq i32 %14, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %9)
  %cmp88 = icmp ugt i32 %14, %9
  %or.cond264 = select i1 %cmp87, i1 true, i1 %cmp88
  br i1 %or.cond264, label %if.then89, label %if.end90

if.then89:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  call void %error(ptr noundef nonnull @.str.6) #8
  br label %exit_2

if.end90:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %sub86)
  %cmp93 = icmp ugt i32 %14, %sub86
  %or.cond266 = select i1 %tobool28.not.not, i1 %cmp93, i1 false
  br i1 %or.cond266, label %if.then94, label %if.end90.if.end102_crit_edge

if.end90.if.end102_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end102

if.then94:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr95 = getelementptr i8, ptr %add.ptr85, i32 %sub86
  %sub96 = sub i32 %14, %sub86
  %call97 = call i32 %fill(ptr noundef %add.ptr95, i32 noundef %sub96) #8
  %15 = ptrtoint ptr %skip to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call97, ptr %skip, align 4
  %16 = call i32 @llvm.smax.i32(i32 %call97, i32 0)
  %spec.select267 = add nuw i32 %16, %sub86
  br label %if.end102

if.end102:                                        ; preds = %if.then94, %if.end90.if.end102_crit_edge
  %in_len.addr.4 = phi i32 [ %sub86, %if.end90.if.end102_crit_edge ], [ %spec.select267, %if.then94 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %in_len.addr.4, i32 %14)
  %cmp103 = icmp ult i32 %in_len.addr.4, %14
  br i1 %cmp103, label %if.then104, label %if.end105

if.then104:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #7
  call void %error(ptr noundef nonnull @.str.6) #8
  br label %exit_2

if.end105:                                        ; preds = %if.end102
  %17 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %9, ptr %tmp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %14)
  %cmp106 = icmp eq i32 %9, %14
  br i1 %cmp106, label %if.then109, label %if.else110, !prof !29

if.then109:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #7
  %18 = call ptr @memcpy(ptr %out_buf.1, ptr %add.ptr85, i32 %9)
  br label %if.end120

if.else110:                                       ; preds = %if.end105
  %call111 = call i32 @lzo1x_decompress_safe(ptr noundef %add.ptr85, i32 noundef %14, ptr noundef %out_buf.1, ptr noundef nonnull %tmp) #8
  %conv112 = and i32 %call111, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv112)
  %cmp113.not = icmp eq i32 %conv112, 0
  br i1 %cmp113.not, label %lor.lhs.false115, label %if.else110.if.then118_crit_edge

if.else110.if.then118_crit_edge:                  ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then118

lor.lhs.false115:                                 ; preds = %if.else110
  %19 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tmp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %20)
  %cmp116.not = icmp eq i32 %9, %20
  br i1 %cmp116.not, label %lor.lhs.false115.if.end120_crit_edge, label %lor.lhs.false115.if.then118_crit_edge

lor.lhs.false115.if.then118_crit_edge:            ; preds = %lor.lhs.false115
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then118

lor.lhs.false115.if.end120_crit_edge:             ; preds = %lor.lhs.false115
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end120

if.then118:                                       ; preds = %lor.lhs.false115.if.then118_crit_edge, %if.else110.if.then118_crit_edge
  call void %error(ptr noundef nonnull @.str.8) #8
  br label %exit_2

if.end120:                                        ; preds = %lor.lhs.false115.if.end120_crit_edge, %if.then109
  br i1 %tobool121.not, label %if.end120.if.end127_crit_edge, label %land.lhs.true122

if.end120.if.end127_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end127

land.lhs.true122:                                 ; preds = %if.end120
  %call123 = call i32 %flush(ptr noundef %out_buf.1, i32 noundef %9) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call123, i32 %9)
  %cmp124.not = icmp eq i32 %call123, %9
  br i1 %cmp124.not, label %land.lhs.true122.if.end127_crit_edge, label %land.lhs.true122.exit_2_crit_edge

land.lhs.true122.exit_2_crit_edge:                ; preds = %land.lhs.true122
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_2

land.lhs.true122.if.end127_crit_edge:             ; preds = %land.lhs.true122
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end127

if.end127:                                        ; preds = %land.lhs.true122.if.end127_crit_edge, %if.end120.if.end127_crit_edge
  %spec.select268.idx = select i1 %tobool.not, i32 0, i32 %9
  %spec.select268 = getelementptr i8, ptr %out_buf.1, i32 %spec.select268.idx
  br i1 %tobool25.not, label %if.end127.if.end136_crit_edge, label %if.then133

if.end127.if.end136_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end136

if.then133:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #7
  %add134 = add i32 %14, 12
  %21 = ptrtoint ptr %posp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %posp, align 4
  %add135 = add i32 %add134, %22
  store i32 %add135, ptr %posp, align 4
  br label %if.end136

if.end136:                                        ; preds = %if.then133, %if.end127.if.end136_crit_edge
  %add.ptr137 = getelementptr i8, ptr %add.ptr85, i32 %14
  %sub138 = sub i32 %in_len.addr.4, %14
  br i1 %tobool9.not, label %if.end136.for.cond.backedge_crit_edge, label %if.then140

if.end136.for.cond.backedge_crit_edge:            ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.backedge

if.then140:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub138)
  %cmp141 = icmp sgt i32 %sub138, 0
  br i1 %cmp141, label %for.cond144.preheader, label %if.then140.for.cond.backedge_crit_edge

if.then140.for.cond.backedge_crit_edge:           ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %for.body.for.cond.backedge_crit_edge, %if.then140.for.cond.backedge_crit_edge, %if.end136.for.cond.backedge_crit_edge
  %in_buf.3.be = phi ptr [ %in_buf.0, %if.then140.for.cond.backedge_crit_edge ], [ %add.ptr137, %if.end136.for.cond.backedge_crit_edge ], [ %in_buf.0, %for.body.for.cond.backedge_crit_edge ]
  br label %for.cond

for.cond144.preheader:                            ; preds = %if.then140
  %23 = ptrtoint ptr %skip to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %skip, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond144.preheader
  %storemerge283 = phi i32 [ 0, %for.cond144.preheader ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %add.ptr137, i32 %storemerge283
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx, align 1
  %arrayidx147 = getelementptr i8, ptr %in_buf.0, i32 %storemerge283
  %26 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %arrayidx147, align 1
  %inc = add nuw nsw i32 %storemerge283, 1
  %27 = ptrtoint ptr %skip to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %inc, ptr %skip, align 4
  %exitcond.not = icmp eq i32 %inc, %sub138
  br i1 %exitcond.not, label %for.body.for.cond.backedge_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.cond.backedge_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.backedge

exit_2:                                           ; preds = %land.lhs.true122.exit_2_crit_edge, %if.then118, %if.then104, %if.then89, %if.then82, %if.then67, %if.then62, %if.then60.exit_2_crit_edge, %if.then54, %if.then34
  %out_buf.3 = phi ptr [ %out_buf.1, %if.then54 ], [ %out_buf.1, %if.then67 ], [ %out_buf.1, %if.then82 ], [ %out_buf.1, %if.then89 ], [ %out_buf.1, %if.then104 ], [ %out_buf.1, %if.then118 ], [ %out_buf.0, %if.then34 ], [ %out_buf.1, %if.then60.exit_2_crit_edge ], [ %out_buf.1, %if.then62 ], [ %out_buf.1, %land.lhs.true122.exit_2_crit_edge ]
  %ret.0 = phi i32 [ -1, %if.then54 ], [ -1, %if.then67 ], [ -1, %if.then82 ], [ -1, %if.then89 ], [ -1, %if.then104 ], [ -1, %if.then118 ], [ -1, %if.then34 ], [ 0, %if.then60.exit_2_crit_edge ], [ 0, %if.then62 ], [ -1, %land.lhs.true122.exit_2_crit_edge ]
  br i1 %tobool8.not, label %if.then152, label %exit_2.exit_1_crit_edge

exit_2.exit_1_crit_edge:                          ; preds = %exit_2
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_1

if.then152:                                       ; preds = %exit_2
  call void @__sanitizer_cov_trace_pc() #7
  call void @kfree(ptr noundef %in_buf.0) #8
  br label %exit_1

exit_1:                                           ; preds = %if.then152, %exit_2.exit_1_crit_edge, %if.then20, %if.then16, %if.then10
  %out_buf.4 = phi ptr [ %out_buf.0, %if.then10 ], [ %out_buf.3, %exit_2.exit_1_crit_edge ], [ %out_buf.3, %if.then152 ], [ %out_buf.0, %if.then20 ], [ %out_buf.0, %if.then16 ]
  %ret.1 = phi i32 [ -1, %if.then10 ], [ %ret.0, %exit_2.exit_1_crit_edge ], [ %ret.0, %if.then152 ], [ -1, %if.then20 ], [ -1, %if.then16 ]
  br i1 %tobool.not, label %if.then155, label %exit_1.exit_crit_edge

exit_1.exit_crit_edge:                            ; preds = %exit_1
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.then155:                                       ; preds = %exit_1
  call void @__sanitizer_cov_trace_pc() #7
  call void @kfree(ptr noundef %out_buf.4) #8
  br label %exit

exit:                                             ; preds = %if.then155, %exit_1.exit_crit_edge, %if.then5, %if.then2
  %ret.2 = phi i32 [ %ret.1, %exit_1.exit_crit_edge ], [ %ret.1, %if.then155 ], [ -1, %if.then5 ], [ -1, %if.then2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skip) #8
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lzo1x_decompress_safe(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { cold inlinehint nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind uwtable(sync) }
attributes #7 = { nomerge }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../lib/decompress_unlzo.c", i32 113, i32 9}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../lib/decompress_unlzo.c", i32 118, i32 10}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../lib/decompress_unlzo.c", i32 124, i32 9}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../lib/decompress_unlzo.c", i32 129, i32 9}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../lib/decompress_unlzo.c", i32 134, i32 10}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../lib/decompress_unlzo.c", i32 155, i32 9}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../lib/decompress_unlzo.c", i32 178, i32 10}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../lib/decompress_unlzo.c", i32 193, i32 10}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../lib/decompress_unlzo.c", i32 238, i32 11}
!18 = !{ptr @lzop_magic, !19, !"lzop_magic", i1 false, i1 false}
!19 = !{!"../lib/decompress_unlzo.c", i32 33, i32 28}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{!"auto-init"}
!29 = !{!"branch_weights", i32 1, i32 2000}
