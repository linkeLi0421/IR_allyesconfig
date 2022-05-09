; ModuleID = '/llk/IR_all_yes/lib/zlib_deflate/deftree.c_pt.bc'
source_filename = "../lib/zlib_deflate/deftree.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_tree_desc_s = type { ptr, ptr, i32, i32, i32 }
%struct.ct_data_s = type { %union.anon, %union.anon.0 }
%union.anon = type { i16 }
%union.anon.0 = type { i16 }
%struct.deflate_state = type { ptr, i32, ptr, i32, ptr, i32, i32, i8, i8, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [573 x %struct.ct_data_s], [61 x %struct.ct_data_s], [39 x %struct.ct_data_s], %struct.tree_desc_s, %struct.tree_desc_s, %struct.tree_desc_s, [16 x i16], [573 x i32], i32, i32, [573 x i8], ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i16, i32 }
%struct.tree_desc_s = type { ptr, i32, ptr }

@static_l_desc = internal global { %struct.static_tree_desc_s, [44 x i8] } { %struct.static_tree_desc_s { ptr @static_ltree, ptr @extra_lbits, i32 257, i32 286, i32 15 }, [44 x i8] zeroinitializer }, align 32
@static_d_desc = internal global { %struct.static_tree_desc_s, [44 x i8] } { %struct.static_tree_desc_s { ptr @static_dtree, ptr @extra_dbits, i32 0, i32 30, i32 15 }, [44 x i8] zeroinitializer }, align 32
@static_bl_desc = internal global { %struct.static_tree_desc_s, [44 x i8] } { %struct.static_tree_desc_s { ptr null, ptr @extra_blbits, i32 0, i32 19, i32 7 }, [44 x i8] zeroinitializer }, align 32
@static_ltree = internal global { [288 x %struct.ct_data_s], [288 x i8] } zeroinitializer, align 32
@static_dtree = internal global { [30 x %struct.ct_data_s], [40 x i8] } zeroinitializer, align 32
@length_code = internal global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@dist_code = internal global { [512 x i8], [128 x i8] } zeroinitializer, align 32
@extra_dbits = internal constant { [30 x i32], [40 x i8] } { [30 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8, i32 9, i32 9, i32 10, i32 10, i32 11, i32 11, i32 12, i32 12, i32 13, i32 13], [40 x i8] zeroinitializer }, align 32
@tr_static_init.static_init_done = internal global { i1, [31 x i8] } zeroinitializer, align 32
@base_length = internal global { [29 x i32], [44 x i8] } zeroinitializer, align 32
@extra_lbits = internal constant { [29 x i32], [44 x i8] } { [29 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 0], [44 x i8] zeroinitializer }, align 32
@base_dist = internal global { [30 x i32], [40 x i8] } zeroinitializer, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@extra_blbits = internal constant { [19 x i32], [52 x i8] } { [19 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 3, i32 7], [52 x i8] zeroinitializer }, align 32
@bl_order = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\10\11\12\00\08\07\09\06\0A\05\0B\04\0C\03\0D\02\0E\01\0F", [45 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [14 x i8] c"static_l_desc\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 118, i32 26 }
@___asan_gen_.4 = private unnamed_addr constant [14 x i8] c"static_d_desc\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 121, i32 26 }
@___asan_gen_.7 = private unnamed_addr constant [15 x i8] c"static_bl_desc\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 124, i32 26 }
@___asan_gen_.10 = private unnamed_addr constant [13 x i8] c"static_ltree\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 83, i32 16 }
@___asan_gen_.13 = private unnamed_addr constant [13 x i8] c"static_dtree\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 90, i32 16 }
@___asan_gen_.16 = private unnamed_addr constant [12 x i8] c"length_code\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 101, i32 12 }
@___asan_gen_.19 = private unnamed_addr constant [10 x i8] c"dist_code\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 95, i32 12 }
@___asan_gen_.22 = private unnamed_addr constant [12 x i8] c"extra_dbits\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 67, i32 18 }
@___asan_gen_.25 = private unnamed_addr constant [32 x i8] c"tr_static_init.static_init_done\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [12 x i8] c"base_length\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 104, i32 12 }
@___asan_gen_.29 = private unnamed_addr constant [12 x i8] c"extra_lbits\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 64, i32 18 }
@___asan_gen_.32 = private unnamed_addr constant [10 x i8] c"base_dist\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 107, i32 12 }
@___asan_gen_.35 = private unnamed_addr constant [13 x i8] c"extra_blbits\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 70, i32 18 }
@___asan_gen_.38 = private unnamed_addr constant [9 x i8] c"bl_order\00", align 1
@___asan_gen_.39 = private constant [30 x i8] c"../lib/zlib_deflate/deftree.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 73, i32 18 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @static_l_desc, ptr @static_d_desc, ptr @static_bl_desc, ptr @static_ltree, ptr @static_dtree, ptr @length_code, ptr @dist_code, ptr @extra_dbits, ptr @tr_static_init.static_init_done, ptr @base_length, ptr @extra_lbits, ptr @base_dist, ptr @extra_blbits, ptr @bl_order], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @static_l_desc to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @static_d_desc to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @static_bl_desc to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @static_ltree to i32), i32 1152, i32 1440, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @static_dtree to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @length_code to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dist_code to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @extra_dbits to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tr_static_init.static_init_done to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @base_length to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @extra_lbits to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @base_dist to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @extra_blbits to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bl_order to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @zlib_tr_init(ptr noundef %s) local_unnamed_addr #0 align 64 {
entry:
  %bl_count.i = alloca [16 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %bl_count.i) #8
  %0 = getelementptr inbounds [16 x i16], ptr %bl_count.i, i32 0, i32 7
  %1 = getelementptr inbounds [16 x i16], ptr %bl_count.i, i32 0, i32 8
  %2 = getelementptr inbounds [16 x i16], ptr %bl_count.i, i32 0, i32 9
  %.b.i = load i1, ptr @tr_static_init.static_init_done, align 4
  br i1 %.b.i, label %entry.tr_static_init.exit_crit_edge, label %entry.for.inc7.i_crit_edge

entry.for.inc7.i_crit_edge:                       ; preds = %entry
  br label %for.inc7.i

entry.tr_static_init.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %tr_static_init.exit

for.inc7.i:                                       ; preds = %for.inc7.i.for.inc7.i_crit_edge, %entry.for.inc7.i_crit_edge
  %length.0195.i = phi i32 [ %8, %for.inc7.i.for.inc7.i_crit_edge ], [ 0, %entry.for.inc7.i_crit_edge ]
  %code.0193.i = phi i32 [ %inc8.i, %for.inc7.i.for.inc7.i_crit_edge ], [ 0, %entry.for.inc7.i_crit_edge ]
  %arrayidx.i = getelementptr [29 x i32], ptr @base_length, i32 0, i32 %code.0193.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %length.0195.i, ptr %arrayidx.i, align 4
  %arrayidx2.i = getelementptr [29 x i32], ptr @extra_lbits, i32 0, i32 %code.0193.i
  %4 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2.i, align 4
  %shl.i = shl nuw i32 1, %5
  %conv.i = trunc i32 %code.0193.i to i8
  %uglygep.i = getelementptr i8, ptr @length_code, i32 %length.0195.i
  %smax.i = tail call i32 @llvm.smax.i32(i32 %shl.i, i32 1) #8
  %6 = zext i8 %conv.i to i32
  %7 = call ptr @memset(ptr %uglygep.i, i32 %6, i32 %smax.i)
  %8 = add i32 %smax.i, %length.0195.i
  %inc8.i = add nuw nsw i32 %code.0193.i, 1
  %exitcond.not.i = icmp eq i32 %inc8.i, 28
  br i1 %exitcond.not.i, label %for.end9.i, label %for.inc7.i.for.inc7.i_crit_edge

for.inc7.i.for.inc7.i_crit_edge:                  ; preds = %for.inc7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc7.i

for.end9.i:                                       ; preds = %for.inc7.i
  store i8 28, ptr getelementptr inbounds ([256 x i8], ptr @length_code, i32 0, i32 255), align 1
  br label %for.inc29.i

for.inc29.i:                                      ; preds = %for.inc29.i.for.inc29.i_crit_edge, %for.end9.i
  %dist.0202.i = phi i32 [ 0, %for.end9.i ], [ %14, %for.inc29.i.for.inc29.i_crit_edge ]
  %code.1200.i = phi i32 [ 0, %for.end9.i ], [ %inc30.i, %for.inc29.i.for.inc29.i_crit_edge ]
  %arrayidx16.i = getelementptr [30 x i32], ptr @base_dist, i32 0, i32 %code.1200.i
  %9 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %dist.0202.i, ptr %arrayidx16.i, align 4
  %arrayidx18.i = getelementptr [30 x i32], ptr @extra_dbits, i32 0, i32 %code.1200.i
  %10 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx18.i, align 4
  %shl19.i = shl nuw i32 1, %11
  %conv23.i = trunc i32 %code.1200.i to i8
  %uglygep233.i = getelementptr i8, ptr @dist_code, i32 %dist.0202.i
  %smax234.i = tail call i32 @llvm.smax.i32(i32 %shl19.i, i32 1) #8
  %12 = zext i8 %conv23.i to i32
  %13 = call ptr @memset(ptr %uglygep233.i, i32 %12, i32 %smax234.i)
  %14 = add i32 %smax234.i, %dist.0202.i
  %inc30.i = add nuw nsw i32 %code.1200.i, 1
  %exitcond236.not.i = icmp eq i32 %inc30.i, 16
  br i1 %exitcond236.not.i, label %for.inc29.i.for.body35.i_crit_edge, label %for.inc29.i.for.inc29.i_crit_edge

for.inc29.i.for.inc29.i_crit_edge:                ; preds = %for.inc29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc29.i

for.inc29.i.for.body35.i_crit_edge:               ; preds = %for.inc29.i
  br label %for.body35.i

for.cond54.preheader.i:                           ; preds = %for.inc51.i
  %15 = call ptr @memset(ptr %bl_count.i, i32 0, i32 32)
  br label %while.body.i

for.body35.i:                                     ; preds = %for.inc51.i.for.body35.i_crit_edge, %for.inc29.i.for.body35.i_crit_edge
  %dist.2210.i = phi i32 [ %dist.3.lcssa.i, %for.inc51.i.for.body35.i_crit_edge ], [ 2, %for.inc29.i.for.body35.i_crit_edge ]
  %code.2208.i = phi i32 [ %inc52.i, %for.inc51.i.for.body35.i_crit_edge ], [ 16, %for.inc29.i.for.body35.i_crit_edge ]
  %shl36.i = shl i32 %dist.2210.i, 7
  %arrayidx37.i = getelementptr [30 x i32], ptr @base_dist, i32 0, i32 %code.2208.i
  %16 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %shl36.i, ptr %arrayidx37.i, align 4
  %arrayidx39.i = getelementptr [30 x i32], ptr @extra_dbits, i32 0, i32 %code.2208.i
  %17 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx39.i, align 4
  %sub40.i = add i32 %18, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %sub40.i)
  %cmp42203.not.i = icmp eq i32 %sub40.i, 31
  br i1 %cmp42203.not.i, label %for.body35.i.for.inc51.i_crit_edge, label %for.body44.lr.ph.i

for.body35.i.for.inc51.i_crit_edge:               ; preds = %for.body35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc51.i

for.body44.lr.ph.i:                               ; preds = %for.body35.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl41.i = shl nuw nsw i32 1, %sub40.i
  %conv45.i = trunc i32 %code.2208.i to i8
  %uglygep237.i = getelementptr i8, ptr getelementptr inbounds ([512 x i8], ptr @dist_code, i32 0, i32 256), i32 %dist.2210.i
  %smax238.i = tail call i32 @llvm.smax.i32(i32 %shl41.i, i32 1) #8
  %19 = zext i8 %conv45.i to i32
  %20 = call ptr @memset(ptr %uglygep237.i, i32 %19, i32 %smax238.i)
  %21 = add i32 %smax238.i, %dist.2210.i
  br label %for.inc51.i

for.inc51.i:                                      ; preds = %for.body44.lr.ph.i, %for.body35.i.for.inc51.i_crit_edge
  %dist.3.lcssa.i = phi i32 [ %dist.2210.i, %for.body35.i.for.inc51.i_crit_edge ], [ %21, %for.body44.lr.ph.i ]
  %inc52.i = add nuw nsw i32 %code.2208.i, 1
  %exitcond240.not.i = icmp eq i32 %inc52.i, 30
  br i1 %exitcond240.not.i, label %for.cond54.preheader.i, label %for.inc51.i.for.body35.i_crit_edge

for.inc51.i.for.body35.i_crit_edge:               ; preds = %for.inc51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body35.i

while.body71.preheader.i:                         ; preds = %while.body.i
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %22)
  %.promoted213.i = load i16, ptr %2, align 2
  br label %while.body71.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %for.cond54.preheader.i
  %n.3212.i = phi i32 [ 0, %for.cond54.preheader.i ], [ %inc64.i, %while.body.i.while.body.i_crit_edge ]
  %inc64.i = add nuw nsw i32 %n.3212.i, 1
  %dl.i = getelementptr [288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 %n.3212.i, i32 1
  %23 = ptrtoint ptr %dl.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 8, ptr %dl.i, align 2
  %exitcond241.not.i = icmp eq i32 %inc64.i, 144
  br i1 %exitcond241.not.i, label %while.body71.preheader.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body71.i:                                   ; preds = %while.body71.i.while.body71.i_crit_edge, %while.body71.preheader.i
  %n.4216.i = phi i32 [ %inc72.i, %while.body71.i.while.body71.i_crit_edge ], [ 144, %while.body71.preheader.i ]
  %inc72.i = add nuw nsw i32 %n.4216.i, 1
  %dl74.i = getelementptr [288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 %n.4216.i, i32 1
  %24 = ptrtoint ptr %dl74.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 9, ptr %dl74.i, align 2
  %exitcond242.not.i = icmp eq i32 %inc72.i, 256
  br i1 %exitcond242.not.i, label %while.end97.i, label %while.body71.i.while.body71.i_crit_edge

while.body71.i.while.body71.i_crit_edge:          ; preds = %while.body71.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body71.i

while.end97.i:                                    ; preds = %while.body71.i
  %25 = add i16 %.promoted213.i, 112
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %2, align 2
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %27)
  %.promoted219.i = load i16, ptr %0, align 2
  store i16 7, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 256, i32 1), align 2
  store i16 7, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 257, i32 1), align 2
  store i16 7, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 258, i32 1), align 2
  store i16 7, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 259, i32 1), align 2
  store i16 7, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 260, i32 1), align 2
  store i16 7, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 261, i32 1), align 2
  store i16 7, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 262, i32 1), align 2
  store i16 7, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 263, i32 1), align 2
  store i16 7, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 264, i32 1), align 2
  store i16 7, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 265, i32 1), align 2
  store i16 7, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 266, i32 1), align 2
  store i16 7, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 267, i32 1), align 2
  store i16 7, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 268, i32 1), align 2
  store i16 7, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 269, i32 1), align 2
  store i16 7, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 270, i32 1), align 2
  store i16 7, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 271, i32 1), align 2
  store i16 7, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 272, i32 1), align 2
  store i16 7, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 273, i32 1), align 2
  store i16 7, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 274, i32 1), align 2
  store i16 7, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 275, i32 1), align 2
  store i16 7, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 276, i32 1), align 2
  store i16 7, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 277, i32 1), align 2
  store i16 7, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 278, i32 1), align 2
  store i16 7, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 279, i32 1), align 2
  %28 = add i16 %.promoted219.i, 24
  store i16 %28, ptr %0, align 2
  store i16 8, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 280, i32 1), align 2
  store i16 8, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 281, i32 1), align 2
  store i16 8, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 282, i32 1), align 2
  store i16 8, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 283, i32 1), align 2
  store i16 8, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 284, i32 1), align 2
  store i16 8, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 285, i32 1), align 2
  store i16 8, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 286, i32 1), align 2
  store i16 8, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 287, i32 1), align 2
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 152, ptr %1, align 2
  call fastcc void @gen_codes(ptr noundef nonnull @static_ltree, i32 noundef 287, ptr noundef nonnull %bl_count.i) #8
  br label %for.body101.i

for.body101.i:                                    ; preds = %for.body101.i.for.body101.i_crit_edge, %while.end97.i
  %n.7230.i = phi i32 [ 0, %while.end97.i ], [ %inc130.i, %for.body101.i.for.body101.i_crit_edge ]
  %arrayidx102.i = getelementptr [30 x %struct.ct_data_s], ptr @static_dtree, i32 0, i32 %n.7230.i
  %dl103.i = getelementptr [30 x %struct.ct_data_s], ptr @static_dtree, i32 0, i32 %n.7230.i, i32 1
  %30 = ptrtoint ptr %dl103.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 5, ptr %dl103.i, align 2
  %arrayidx.i.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %n.7230.i
  %31 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %33 = lshr i8 %32, 3
  %conv127.i = zext i8 %33 to i16
  %34 = ptrtoint ptr %arrayidx102.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv127.i, ptr %arrayidx102.i, align 2
  %inc130.i = add nuw nsw i32 %n.7230.i, 1
  %exitcond245.not.i = icmp eq i32 %inc130.i, 30
  br i1 %exitcond245.not.i, label %for.end131.i, label %for.body101.i.for.body101.i_crit_edge

for.body101.i.for.body101.i_crit_edge:            ; preds = %for.body101.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body101.i

for.end131.i:                                     ; preds = %for.body101.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @tr_static_init.static_init_done, align 4
  br label %tr_static_init.exit

tr_static_init.exit:                              ; preds = %for.end131.i, %entry.tr_static_init.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %bl_count.i) #8
  %compressed_len = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 53
  %35 = ptrtoint ptr %compressed_len to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %compressed_len, align 4
  %dyn_ltree = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 36
  %l_desc = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 39
  %36 = ptrtoint ptr %l_desc to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %dyn_ltree, ptr %l_desc, align 4
  %stat_desc = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 39, i32 2
  %37 = ptrtoint ptr %stat_desc to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @static_l_desc, ptr %stat_desc, align 4
  %dyn_dtree = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 37
  %d_desc = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 40
  %38 = ptrtoint ptr %d_desc to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %dyn_dtree, ptr %d_desc, align 4
  %stat_desc5 = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 40, i32 2
  %39 = ptrtoint ptr %stat_desc5 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @static_d_desc, ptr %stat_desc5, align 4
  %bl_tree = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 38
  %bl_desc = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 41
  %40 = ptrtoint ptr %bl_desc to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %bl_tree, ptr %bl_desc, align 4
  %stat_desc9 = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 41, i32 2
  %41 = ptrtoint ptr %stat_desc9 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @static_bl_desc, ptr %stat_desc9, align 4
  %bi_buf = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 56
  %42 = ptrtoint ptr %bi_buf to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %bi_buf, align 4
  %bi_valid = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 57
  %43 = ptrtoint ptr %bi_valid to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %bi_valid, align 4
  %last_eob_len = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 55
  %44 = ptrtoint ptr %last_eob_len to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 8, ptr %last_eob_len, align 4
  tail call fastcc void @init_block(ptr noundef %s)
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define internal fastcc void @init_block(ptr nocapture noundef writeonly %s) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %n.035 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 36, i32 %n.035
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %n.035, 1
  %exitcond.not = icmp eq i32 %inc, 286
  br i1 %exitcond.not, label %for.body3.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body3.preheader:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx4 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 37, i32 0
  %1 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %arrayidx4, align 4
  %arrayidx4.1 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 37, i32 1
  %2 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %arrayidx4.1, align 4
  %arrayidx4.2 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 37, i32 2
  %3 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %arrayidx4.2, align 4
  %arrayidx4.3 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 37, i32 3
  %4 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %arrayidx4.3, align 4
  %arrayidx4.4 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 37, i32 4
  %5 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %arrayidx4.4, align 4
  %arrayidx4.5 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 37, i32 5
  %6 = ptrtoint ptr %arrayidx4.5 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %arrayidx4.5, align 4
  %arrayidx4.6 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 37, i32 6
  %7 = ptrtoint ptr %arrayidx4.6 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %arrayidx4.6, align 4
  %arrayidx4.7 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 37, i32 7
  %8 = ptrtoint ptr %arrayidx4.7 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %arrayidx4.7, align 4
  %arrayidx4.8 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 37, i32 8
  %9 = ptrtoint ptr %arrayidx4.8 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %arrayidx4.8, align 4
  %arrayidx4.9 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 37, i32 9
  %10 = ptrtoint ptr %arrayidx4.9 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %arrayidx4.9, align 4
  %arrayidx4.10 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 37, i32 10
  %11 = ptrtoint ptr %arrayidx4.10 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %arrayidx4.10, align 4
  %arrayidx4.11 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 37, i32 11
  %12 = ptrtoint ptr %arrayidx4.11 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %arrayidx4.11, align 4
  %arrayidx4.12 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 37, i32 12
  %13 = ptrtoint ptr %arrayidx4.12 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %arrayidx4.12, align 4
  %arrayidx4.13 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 37, i32 13
  %14 = ptrtoint ptr %arrayidx4.13 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %arrayidx4.13, align 4
  %arrayidx4.14 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 37, i32 14
  %15 = ptrtoint ptr %arrayidx4.14 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %arrayidx4.14, align 4
  %arrayidx4.15 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 37, i32 15
  %16 = ptrtoint ptr %arrayidx4.15 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %arrayidx4.15, align 4
  %arrayidx4.16 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 37, i32 16
  %17 = ptrtoint ptr %arrayidx4.16 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %arrayidx4.16, align 4
  %arrayidx4.17 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 37, i32 17
  %18 = ptrtoint ptr %arrayidx4.17 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %arrayidx4.17, align 4
  %arrayidx4.18 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 37, i32 18
  %19 = ptrtoint ptr %arrayidx4.18 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %arrayidx4.18, align 4
  %arrayidx4.19 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 37, i32 19
  %20 = ptrtoint ptr %arrayidx4.19 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %arrayidx4.19, align 4
  %arrayidx4.20 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 37, i32 20
  %21 = ptrtoint ptr %arrayidx4.20 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %arrayidx4.20, align 4
  %arrayidx4.21 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 37, i32 21
  %22 = ptrtoint ptr %arrayidx4.21 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %arrayidx4.21, align 4
  %arrayidx4.22 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 37, i32 22
  %23 = ptrtoint ptr %arrayidx4.22 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %arrayidx4.22, align 4
  %arrayidx4.23 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 37, i32 23
  %24 = ptrtoint ptr %arrayidx4.23 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %arrayidx4.23, align 4
  %arrayidx4.24 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 37, i32 24
  %25 = ptrtoint ptr %arrayidx4.24 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %arrayidx4.24, align 4
  %arrayidx4.25 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 37, i32 25
  %26 = ptrtoint ptr %arrayidx4.25 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %arrayidx4.25, align 4
  %arrayidx4.26 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 37, i32 26
  %27 = ptrtoint ptr %arrayidx4.26 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %arrayidx4.26, align 4
  %arrayidx4.27 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 37, i32 27
  %28 = ptrtoint ptr %arrayidx4.27 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %arrayidx4.27, align 4
  %arrayidx4.28 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 37, i32 28
  %29 = ptrtoint ptr %arrayidx4.28 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %arrayidx4.28, align 4
  %arrayidx4.29 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 37, i32 29
  %30 = ptrtoint ptr %arrayidx4.29 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %arrayidx4.29, align 4
  %arrayidx12 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 0
  %31 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %arrayidx12, align 4
  %arrayidx12.1 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 1
  %32 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %arrayidx12.1, align 4
  %arrayidx12.2 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 2
  %33 = ptrtoint ptr %arrayidx12.2 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %arrayidx12.2, align 4
  %arrayidx12.3 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 3
  %34 = ptrtoint ptr %arrayidx12.3 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %arrayidx12.3, align 4
  %arrayidx12.4 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 4
  %35 = ptrtoint ptr %arrayidx12.4 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %arrayidx12.4, align 4
  %arrayidx12.5 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 5
  %36 = ptrtoint ptr %arrayidx12.5 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %arrayidx12.5, align 4
  %arrayidx12.6 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 6
  %37 = ptrtoint ptr %arrayidx12.6 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %arrayidx12.6, align 4
  %arrayidx12.7 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 7
  %38 = ptrtoint ptr %arrayidx12.7 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %arrayidx12.7, align 4
  %arrayidx12.8 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 8
  %39 = ptrtoint ptr %arrayidx12.8 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %arrayidx12.8, align 4
  %arrayidx12.9 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 9
  %40 = ptrtoint ptr %arrayidx12.9 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %arrayidx12.9, align 4
  %arrayidx12.10 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 10
  %41 = ptrtoint ptr %arrayidx12.10 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %arrayidx12.10, align 4
  %arrayidx12.11 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 11
  %42 = ptrtoint ptr %arrayidx12.11 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %arrayidx12.11, align 4
  %arrayidx12.12 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 12
  %43 = ptrtoint ptr %arrayidx12.12 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %arrayidx12.12, align 4
  %arrayidx12.13 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 13
  %44 = ptrtoint ptr %arrayidx12.13 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %arrayidx12.13, align 4
  %arrayidx12.14 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 14
  %45 = ptrtoint ptr %arrayidx12.14 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %arrayidx12.14, align 4
  %arrayidx12.15 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 15
  %46 = ptrtoint ptr %arrayidx12.15 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %arrayidx12.15, align 4
  %arrayidx12.16 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 16
  %47 = ptrtoint ptr %arrayidx12.16 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %arrayidx12.16, align 4
  %arrayidx12.17 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 17
  %48 = ptrtoint ptr %arrayidx12.17 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %arrayidx12.17, align 4
  %arrayidx12.18 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 18
  %49 = ptrtoint ptr %arrayidx12.18 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %arrayidx12.18, align 4
  %arrayidx18 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 36, i32 256
  %50 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 1, ptr %arrayidx18, align 4
  %static_len = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 52
  %51 = ptrtoint ptr %static_len to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %static_len, align 4
  %opt_len = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 51
  %52 = ptrtoint ptr %opt_len to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %opt_len, align 4
  %matches = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 54
  %53 = ptrtoint ptr %matches to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %matches, align 4
  %last_lit = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 49
  %54 = ptrtoint ptr %last_lit to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %last_lit, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @zlib_tr_stored_block(ptr nocapture noundef %s, ptr nocapture noundef readonly %buf, i32 noundef %stored_len, i32 noundef %eof) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_valid = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 57
  %0 = ptrtoint ptr %bi_valid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bi_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %1)
  %cmp = icmp sgt i32 %1, 13
  %shl = shl i32 %eof, %1
  %bi_buf = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 56
  %2 = ptrtoint ptr %bi_buf to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %bi_buf, align 4
  %4 = trunc i32 %shl to i16
  %conv2 = or i16 %3, %4
  store i16 %conv2, ptr %bi_buf, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv5 = trunc i16 %conv2 to i8
  %pending_buf = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 2
  %5 = ptrtoint ptr %pending_buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pending_buf, align 4
  %pending = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 5
  %7 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pending, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %pending, align 4
  %arrayidx = getelementptr i8, ptr %6, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv5, ptr %arrayidx, align 1
  %10 = ptrtoint ptr %bi_buf to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %bi_buf, align 4
  %12 = lshr i16 %11, 8
  %conv8 = trunc i16 %12 to i8
  %13 = load ptr, ptr %pending_buf, align 4
  %14 = load i32, ptr %pending, align 4
  %inc11 = add i32 %14, 1
  store i32 %inc11, ptr %pending, align 4
  %arrayidx12 = getelementptr i8, ptr %13, i32 %14
  %15 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv8, ptr %arrayidx12, align 1
  %conv14 = and i32 %eof, 65535
  %16 = ptrtoint ptr %bi_valid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bi_valid, align 4
  %sub16 = sub i32 16, %17
  %shr17 = lshr i32 %conv14, %sub16
  %conv18 = trunc i32 %shr17 to i16
  store i16 %conv18, ptr %bi_buf, align 4
  %add22 = add i32 %17, -13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add31 = add nsw i32 %1, 3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %add31, %if.else ], [ %add22, %if.then ]
  %compressed_len = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 53
  %18 = ptrtoint ptr %compressed_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %compressed_len, align 4
  %add33 = add i32 %19, 10
  %and34 = and i32 %add33, -8
  %add36 = shl i32 %stored_len, 3
  %shl37 = add i32 %add36, 32
  %add39 = add i32 %shl37, %and34
  store i32 %add39, ptr %compressed_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %storemerge)
  %cmp.i.i = icmp sgt i32 %storemerge, 8
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %bi_buf.i.i = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 56
  %20 = ptrtoint ptr %bi_buf.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %bi_buf.i.i, align 4
  %conv1.i.i = trunc i16 %21 to i8
  %pending_buf.i.i = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 2
  %22 = ptrtoint ptr %pending_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pending_buf.i.i, align 4
  %pending.i.i = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 5
  %24 = ptrtoint ptr %pending.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pending.i.i, align 4
  %inc.i.i = add i32 %25, 1
  store i32 %inc.i.i, ptr %pending.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %23, i32 %25
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv1.i.i, ptr %arrayidx.i.i, align 1
  %27 = load i16, ptr %bi_buf.i.i, align 4
  %28 = lshr i16 %27, 8
  %conv4.i.i = trunc i16 %28 to i8
  %29 = load ptr, ptr %pending_buf.i.i, align 4
  %30 = load i32, ptr %pending.i.i, align 4
  %inc7.i.i = add i32 %30, 1
  store i32 %inc7.i.i, ptr %pending.i.i, align 4
  %arrayidx8.i.i = getelementptr i8, ptr %29, i32 %30
  %31 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv4.i.i, ptr %arrayidx8.i.i, align 1
  br label %copy_block.exit

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %storemerge)
  %cmp10.i.i = icmp sgt i32 %storemerge, 0
  br i1 %cmp10.i.i, label %if.then12.i.i, label %if.else.i.i.copy_block.exit_crit_edge

if.else.i.i.copy_block.exit_crit_edge:            ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_block.exit

if.then12.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %bi_buf13.i.i = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 56
  %32 = ptrtoint ptr %bi_buf13.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %bi_buf13.i.i, align 4
  %conv14.i.i = trunc i16 %33 to i8
  %pending_buf15.i.i = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 2
  %34 = ptrtoint ptr %pending_buf15.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pending_buf15.i.i, align 4
  %pending16.i.i = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 5
  %36 = ptrtoint ptr %pending16.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pending16.i.i, align 4
  %inc17.i.i = add i32 %37, 1
  store i32 %inc17.i.i, ptr %pending16.i.i, align 4
  %arrayidx18.i.i = getelementptr i8, ptr %35, i32 %37
  %38 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv14.i.i, ptr %arrayidx18.i.i, align 1
  br label %copy_block.exit

copy_block.exit:                                  ; preds = %if.then12.i.i, %if.else.i.i.copy_block.exit_crit_edge, %if.then.i.i
  %bi_buf20.i.i = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 56
  %39 = ptrtoint ptr %bi_buf20.i.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %bi_buf20.i.i, align 4
  %40 = ptrtoint ptr %bi_valid to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %bi_valid, align 4
  %last_eob_len.i = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 55
  %41 = ptrtoint ptr %last_eob_len.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 8, ptr %last_eob_len.i, align 4
  %conv2.i = trunc i32 %stored_len to i8
  %pending_buf.i = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 2
  %42 = ptrtoint ptr %pending_buf.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pending_buf.i, align 4
  %pending.i = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 5
  %44 = ptrtoint ptr %pending.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pending.i, align 4
  %inc.i = add i32 %45, 1
  store i32 %inc.i, ptr %pending.i, align 4
  %arrayidx.i = getelementptr i8, ptr %43, i32 %45
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv2.i, ptr %arrayidx.i, align 1
  %conv1.i = lshr i32 %stored_len, 8
  %conv5.i = trunc i32 %conv1.i to i8
  %47 = load ptr, ptr %pending_buf.i, align 4
  %48 = load i32, ptr %pending.i, align 4
  %inc8.i = add i32 %48, 1
  store i32 %inc8.i, ptr %pending.i, align 4
  %arrayidx9.i = getelementptr i8, ptr %47, i32 %48
  %49 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv5.i, ptr %arrayidx9.i, align 1
  %conv10.i = and i32 %stored_len, 65535
  %conv11.i = xor i32 %conv10.i, 65535
  %conv13.i = trunc i32 %conv11.i to i8
  %50 = load ptr, ptr %pending_buf.i, align 4
  %51 = load i32, ptr %pending.i, align 4
  %inc16.i = add i32 %51, 1
  store i32 %inc16.i, ptr %pending.i, align 4
  %arrayidx17.i = getelementptr i8, ptr %50, i32 %51
  %52 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv13.i, ptr %arrayidx17.i, align 1
  %53 = lshr i32 %conv11.i, 8
  %conv22.i = trunc i32 %53 to i8
  %54 = load ptr, ptr %pending_buf.i, align 4
  %55 = load i32, ptr %pending.i, align 4
  %inc25.i = add i32 %55, 1
  store i32 %inc25.i, ptr %pending.i, align 4
  %arrayidx26.i = getelementptr i8, ptr %54, i32 %55
  %56 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv22.i, ptr %arrayidx26.i, align 1
  %57 = load ptr, ptr %pending_buf.i, align 4
  %58 = load i32, ptr %pending.i, align 4
  %arrayidx29.i = getelementptr i8, ptr %57, i32 %58
  %59 = call ptr @memcpy(ptr %arrayidx29.i, ptr %buf, i32 %stored_len)
  %60 = load i32, ptr %pending.i, align 4
  %add.i = add i32 %60, %stored_len
  store i32 %add.i, ptr %pending.i, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @zlib_tr_stored_type_only(ptr nocapture noundef %s) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_valid = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 57
  %0 = ptrtoint ptr %bi_valid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bi_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %1)
  %cmp = icmp sgt i32 %1, 13
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bi_buf = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 56
  %2 = ptrtoint ptr %bi_buf to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %bi_buf, align 4
  %conv5 = trunc i16 %3 to i8
  %pending_buf = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 2
  %4 = ptrtoint ptr %pending_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pending_buf, align 4
  %pending = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 5
  %6 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pending, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %pending, align 4
  %arrayidx = getelementptr i8, ptr %5, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv5, ptr %arrayidx, align 1
  %9 = load i16, ptr %bi_buf, align 4
  %10 = lshr i16 %9, 8
  %conv8 = trunc i16 %10 to i8
  %11 = load ptr, ptr %pending_buf, align 4
  %12 = load i32, ptr %pending, align 4
  %inc11 = add i32 %12, 1
  store i32 %inc11, ptr %pending, align 4
  %arrayidx12 = getelementptr i8, ptr %11, i32 %12
  %13 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv8, ptr %arrayidx12, align 1
  store i16 0, ptr %bi_buf, align 4
  %14 = ptrtoint ptr %bi_valid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bi_valid, align 4
  %add = add i32 %15, -13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add29 = add nsw i32 %1, 3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %add29, %if.else ], [ %add, %if.then ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %storemerge)
  %cmp.i = icmp sgt i32 %storemerge, 8
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %bi_buf.i = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 56
  %16 = ptrtoint ptr %bi_buf.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %bi_buf.i, align 4
  %conv1.i = trunc i16 %17 to i8
  %pending_buf.i = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 2
  %18 = ptrtoint ptr %pending_buf.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pending_buf.i, align 4
  %pending.i = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 5
  %20 = ptrtoint ptr %pending.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pending.i, align 4
  %inc.i = add i32 %21, 1
  store i32 %inc.i, ptr %pending.i, align 4
  %arrayidx.i = getelementptr i8, ptr %19, i32 %21
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv1.i, ptr %arrayidx.i, align 1
  %23 = load i16, ptr %bi_buf.i, align 4
  %24 = lshr i16 %23, 8
  %conv4.i = trunc i16 %24 to i8
  %25 = load ptr, ptr %pending_buf.i, align 4
  %26 = load i32, ptr %pending.i, align 4
  %inc7.i = add i32 %26, 1
  store i32 %inc7.i, ptr %pending.i, align 4
  %arrayidx8.i = getelementptr i8, ptr %25, i32 %26
  %27 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv4.i, ptr %arrayidx8.i, align 1
  br label %bi_windup.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %storemerge)
  %cmp10.i = icmp sgt i32 %storemerge, 0
  br i1 %cmp10.i, label %if.then12.i, label %if.else.i.bi_windup.exit_crit_edge

if.else.i.bi_windup.exit_crit_edge:               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bi_windup.exit

if.then12.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %bi_buf13.i = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 56
  %28 = ptrtoint ptr %bi_buf13.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %bi_buf13.i, align 4
  %conv14.i = trunc i16 %29 to i8
  %pending_buf15.i = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 2
  %30 = ptrtoint ptr %pending_buf15.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pending_buf15.i, align 4
  %pending16.i = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 5
  %32 = ptrtoint ptr %pending16.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pending16.i, align 4
  %inc17.i = add i32 %33, 1
  store i32 %inc17.i, ptr %pending16.i, align 4
  %arrayidx18.i = getelementptr i8, ptr %31, i32 %33
  %34 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv14.i, ptr %arrayidx18.i, align 1
  br label %bi_windup.exit

bi_windup.exit:                                   ; preds = %if.then12.i, %if.else.i.bi_windup.exit_crit_edge, %if.then.i
  %bi_buf20.i = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 56
  %35 = ptrtoint ptr %bi_buf20.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %bi_buf20.i, align 4
  %36 = ptrtoint ptr %bi_valid to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %bi_valid, align 4
  %compressed_len = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 53
  %37 = ptrtoint ptr %compressed_len to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %compressed_len, align 4
  %add30 = add i32 %38, 3
  %and31 = and i32 %add30, -8
  store i32 %and31, ptr %compressed_len, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @zlib_tr_align(ptr noundef %s) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_valid = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 57
  %0 = ptrtoint ptr %bi_valid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bi_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %1)
  %cmp = icmp sgt i32 %1, 13
  %shl = shl i32 2, %1
  %bi_buf = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 56
  %2 = ptrtoint ptr %bi_buf to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %bi_buf, align 4
  %4 = trunc i32 %shl to i16
  %conv2 = or i16 %3, %4
  store i16 %conv2, ptr %bi_buf, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv5 = trunc i16 %conv2 to i8
  %pending_buf = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 2
  %5 = ptrtoint ptr %pending_buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pending_buf, align 4
  %pending = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 5
  %7 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pending, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %pending, align 4
  %arrayidx = getelementptr i8, ptr %6, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv5, ptr %arrayidx, align 1
  %10 = ptrtoint ptr %bi_buf to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %bi_buf, align 4
  %12 = lshr i16 %11, 8
  %conv8 = trunc i16 %12 to i8
  %13 = load ptr, ptr %pending_buf, align 4
  %14 = load i32, ptr %pending, align 4
  %inc11 = add i32 %14, 1
  store i32 %inc11, ptr %pending, align 4
  %arrayidx12 = getelementptr i8, ptr %13, i32 %14
  %15 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv8, ptr %arrayidx12, align 1
  %16 = ptrtoint ptr %bi_valid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bi_valid, align 4
  %sub16 = sub i32 16, %17
  %shr17 = lshr i32 2, %sub16
  %conv18 = trunc i32 %shr17 to i16
  store i16 %conv18, ptr %bi_buf, align 4
  %add = add i32 %17, -13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add29 = add nsw i32 %1, 3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %add29, %if.else ], [ %add, %if.then ]
  %18 = ptrtoint ptr %bi_valid to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %storemerge, ptr %bi_valid, align 4
  %19 = load i16, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 256, i32 1), align 2
  %conv31 = zext i16 %19 to i32
  %sub33 = sub nsw i32 16, %conv31
  call void @__sanitizer_cov_trace_cmp4(i32 %storemerge, i32 %sub33)
  %cmp34 = icmp sgt i32 %storemerge, %sub33
  %20 = load i16, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 256), align 2
  %conv38 = zext i16 %20 to i32
  %shl40 = shl i32 %conv38, %storemerge
  %bi_buf41 = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 56
  %21 = ptrtoint ptr %bi_buf41 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %bi_buf41, align 4
  %23 = trunc i32 %shl40 to i16
  %conv44 = or i16 %22, %23
  store i16 %conv44, ptr %bi_buf41, align 4
  br i1 %cmp34, label %if.then36, label %if.else71

if.then36:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv48 = trunc i16 %conv44 to i8
  %pending_buf49 = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 2
  %24 = ptrtoint ptr %pending_buf49 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pending_buf49, align 4
  %pending50 = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 5
  %26 = ptrtoint ptr %pending50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pending50, align 4
  %inc51 = add i32 %27, 1
  store i32 %inc51, ptr %pending50, align 4
  %arrayidx52 = getelementptr i8, ptr %25, i32 %27
  %28 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv48, ptr %arrayidx52, align 1
  %29 = ptrtoint ptr %bi_buf41 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %bi_buf41, align 4
  %31 = lshr i16 %30, 8
  %conv56 = trunc i16 %31 to i8
  %32 = load ptr, ptr %pending_buf49, align 4
  %33 = load i32, ptr %pending50, align 4
  %inc59 = add i32 %33, 1
  store i32 %inc59, ptr %pending50, align 4
  %arrayidx60 = getelementptr i8, ptr %32, i32 %33
  %34 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv56, ptr %arrayidx60, align 1
  %35 = ptrtoint ptr %bi_valid to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bi_valid, align 4
  %sub64 = sub i32 16, %36
  %shr65 = lshr i32 %conv38, %sub64
  %conv66 = trunc i32 %shr65 to i16
  store i16 %conv66, ptr %bi_buf41, align 4
  %sub68 = add nsw i32 %conv31, -16
  %add70 = add i32 %sub68, %36
  br label %if.end81

if.else71:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add80 = add i32 %storemerge, %conv31
  br label %if.end81

if.end81:                                         ; preds = %if.else71, %if.then36
  %storemerge279 = phi i32 [ %add80, %if.else71 ], [ %add70, %if.then36 ]
  %37 = ptrtoint ptr %bi_valid to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %storemerge279, ptr %bi_valid, align 4
  %compressed_len = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 53
  %38 = ptrtoint ptr %compressed_len to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %compressed_len, align 4
  %add82 = add i32 %39, 10
  store i32 %add82, ptr %compressed_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %storemerge279)
  %cmp.i = icmp eq i32 %storemerge279, 16
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  %bi_buf.i = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 56
  %40 = ptrtoint ptr %bi_buf.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %bi_buf.i, align 4
  %conv1.i = trunc i16 %41 to i8
  %pending_buf.i = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 2
  %42 = ptrtoint ptr %pending_buf.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pending_buf.i, align 4
  %pending.i = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 5
  %44 = ptrtoint ptr %pending.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pending.i, align 4
  %inc.i = add i32 %45, 1
  store i32 %inc.i, ptr %pending.i, align 4
  %arrayidx.i = getelementptr i8, ptr %43, i32 %45
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv1.i, ptr %arrayidx.i, align 1
  %47 = load i16, ptr %bi_buf.i, align 4
  %48 = lshr i16 %47, 8
  %conv4.i = trunc i16 %48 to i8
  %49 = load ptr, ptr %pending_buf.i, align 4
  %50 = load i32, ptr %pending.i, align 4
  %inc7.i = add i32 %50, 1
  store i32 %inc7.i, ptr %pending.i, align 4
  %arrayidx8.i = getelementptr i8, ptr %49, i32 %50
  %51 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv4.i, ptr %arrayidx8.i, align 1
  store i16 0, ptr %bi_buf.i, align 4
  br label %if.end26.sink.split.i

if.else.i:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %storemerge279)
  %cmp12.i = icmp sgt i32 %storemerge279, 7
  br i1 %cmp12.i, label %if.then14.i, label %bi_flush.exitthread-pre-split

if.then14.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %bi_buf15.i = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 56
  %52 = ptrtoint ptr %bi_buf15.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %bi_buf15.i, align 4
  %conv16.i = trunc i16 %53 to i8
  %pending_buf17.i = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 2
  %54 = ptrtoint ptr %pending_buf17.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pending_buf17.i, align 4
  %pending18.i = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 5
  %56 = ptrtoint ptr %pending18.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pending18.i, align 4
  %inc19.i = add i32 %57, 1
  store i32 %inc19.i, ptr %pending18.i, align 4
  %arrayidx20.i = getelementptr i8, ptr %55, i32 %57
  %58 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv16.i, ptr %arrayidx20.i, align 1
  %59 = load i16, ptr %bi_buf15.i, align 4
  %60 = lshr i16 %59, 8
  store i16 %60, ptr %bi_buf15.i, align 4
  %61 = ptrtoint ptr %bi_valid to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %bi_valid, align 4
  %sub.i = add i32 %62, -8
  br label %if.end26.sink.split.i

if.end26.sink.split.i:                            ; preds = %if.then14.i, %if.then.i
  %sub.sink.i = phi i32 [ %sub.i, %if.then14.i ], [ 0, %if.then.i ]
  %63 = ptrtoint ptr %bi_valid to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %sub.sink.i, ptr %bi_valid, align 4
  br label %bi_flush.exit

bi_flush.exitthread-pre-split:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %bi_valid to i32
  call void @__asan_load4_noabort(i32 %64)
  %.pr = load i32, ptr %bi_valid, align 4
  br label %bi_flush.exit

bi_flush.exit:                                    ; preds = %bi_flush.exitthread-pre-split, %if.end26.sink.split.i
  %65 = phi i32 [ %.pr, %bi_flush.exitthread-pre-split ], [ %sub.sink.i, %if.end26.sink.split.i ]
  %last_eob_len = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 55
  %66 = ptrtoint ptr %last_eob_len to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %last_eob_len, align 4
  %add84 = sub i32 11, %65
  %sub86 = add i32 %add84, %67
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %sub86)
  %cmp87 = icmp slt i32 %sub86, 9
  br i1 %cmp87, label %if.then89, label %bi_flush.exit.if.end193_crit_edge

bi_flush.exit.if.end193_crit_edge:                ; preds = %bi_flush.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end193

if.then89:                                        ; preds = %bi_flush.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %65)
  %cmp93 = icmp sgt i32 %65, 13
  %shl98 = shl i32 2, %65
  %bi_buf99 = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 56
  %68 = ptrtoint ptr %bi_buf99 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %bi_buf99, align 4
  %70 = trunc i32 %shl98 to i16
  %conv102 = or i16 %69, %70
  store i16 %conv102, ptr %bi_buf99, align 4
  br i1 %cmp93, label %if.then95, label %if.else129

if.then95:                                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #10
  %conv106 = trunc i16 %conv102 to i8
  %pending_buf107 = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 2
  %71 = ptrtoint ptr %pending_buf107 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pending_buf107, align 4
  %pending108 = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 5
  %73 = ptrtoint ptr %pending108 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %pending108, align 4
  %inc109 = add i32 %74, 1
  store i32 %inc109, ptr %pending108, align 4
  %arrayidx110 = getelementptr i8, ptr %72, i32 %74
  %75 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv106, ptr %arrayidx110, align 1
  %76 = ptrtoint ptr %bi_buf99 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %bi_buf99, align 4
  %78 = lshr i16 %77, 8
  %conv114 = trunc i16 %78 to i8
  %79 = load ptr, ptr %pending_buf107, align 4
  %80 = load i32, ptr %pending108, align 4
  %inc117 = add i32 %80, 1
  store i32 %inc117, ptr %pending108, align 4
  %arrayidx118 = getelementptr i8, ptr %79, i32 %80
  %81 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv114, ptr %arrayidx118, align 1
  %82 = ptrtoint ptr %bi_valid to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %bi_valid, align 4
  %sub122 = sub i32 16, %83
  %shr123 = lshr i32 2, %sub122
  %conv124 = trunc i32 %shr123 to i16
  store i16 %conv124, ptr %bi_buf99, align 4
  %add128 = add i32 %83, -13
  br label %if.end138

if.else129:                                       ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #10
  %add137 = add nsw i32 %65, 3
  br label %if.end138

if.end138:                                        ; preds = %if.else129, %if.then95
  %storemerge280 = phi i32 [ %add137, %if.else129 ], [ %add128, %if.then95 ]
  %84 = ptrtoint ptr %bi_valid to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %storemerge280, ptr %bi_valid, align 4
  %85 = load i16, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 256, i32 1), align 2
  %conv140 = zext i16 %85 to i32
  %sub142 = sub nsw i32 16, %conv140
  call void @__sanitizer_cov_trace_cmp4(i32 %storemerge280, i32 %sub142)
  %cmp143 = icmp sgt i32 %storemerge280, %sub142
  %86 = load i16, ptr getelementptr inbounds ([288 x %struct.ct_data_s], ptr @static_ltree, i32 0, i32 256), align 2
  %conv147 = zext i16 %86 to i32
  %shl149 = shl i32 %conv147, %storemerge280
  %bi_buf150 = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 56
  %87 = ptrtoint ptr %bi_buf150 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %bi_buf150, align 4
  %89 = trunc i32 %shl149 to i16
  %conv153 = or i16 %88, %89
  store i16 %conv153, ptr %bi_buf150, align 4
  br i1 %cmp143, label %if.then145, label %if.else180

if.then145:                                       ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #10
  %conv157 = trunc i16 %conv153 to i8
  %pending_buf158 = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 2
  %90 = ptrtoint ptr %pending_buf158 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pending_buf158, align 4
  %pending159 = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 5
  %92 = ptrtoint ptr %pending159 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %pending159, align 4
  %inc160 = add i32 %93, 1
  store i32 %inc160, ptr %pending159, align 4
  %arrayidx161 = getelementptr i8, ptr %91, i32 %93
  %94 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv157, ptr %arrayidx161, align 1
  %95 = ptrtoint ptr %bi_buf150 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %bi_buf150, align 4
  %97 = lshr i16 %96, 8
  %conv165 = trunc i16 %97 to i8
  %98 = load ptr, ptr %pending_buf158, align 4
  %99 = load i32, ptr %pending159, align 4
  %inc168 = add i32 %99, 1
  store i32 %inc168, ptr %pending159, align 4
  %arrayidx169 = getelementptr i8, ptr %98, i32 %99
  %100 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %conv165, ptr %arrayidx169, align 1
  %101 = ptrtoint ptr %bi_valid to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %bi_valid, align 4
  %sub173 = sub i32 16, %102
  %shr174 = lshr i32 %conv147, %sub173
  %conv175 = trunc i32 %shr174 to i16
  store i16 %conv175, ptr %bi_buf150, align 4
  %sub177 = add nsw i32 %conv140, -16
  %add179 = add i32 %sub177, %102
  br label %if.end190

if.else180:                                       ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #10
  %add189 = add i32 %storemerge280, %conv140
  br label %if.end190

if.end190:                                        ; preds = %if.else180, %if.then145
  %storemerge281 = phi i32 [ %add189, %if.else180 ], [ %add179, %if.then145 ]
  %103 = ptrtoint ptr %bi_valid to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %storemerge281, ptr %bi_valid, align 4
  %104 = ptrtoint ptr %compressed_len to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %compressed_len, align 4
  %add192 = add i32 %105, 10
  store i32 %add192, ptr %compressed_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %storemerge281)
  %cmp.i283 = icmp eq i32 %storemerge281, 16
  br i1 %cmp.i283, label %if.then.i293, label %if.else.i295

if.then.i293:                                     ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #10
  %bi_buf.i284 = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 56
  %106 = ptrtoint ptr %bi_buf.i284 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %bi_buf.i284, align 4
  %conv1.i285 = trunc i16 %107 to i8
  %pending_buf.i286 = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 2
  %108 = ptrtoint ptr %pending_buf.i286 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pending_buf.i286, align 4
  %pending.i287 = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 5
  %110 = ptrtoint ptr %pending.i287 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %pending.i287, align 4
  %inc.i288 = add i32 %111, 1
  store i32 %inc.i288, ptr %pending.i287, align 4
  %arrayidx.i289 = getelementptr i8, ptr %109, i32 %111
  %112 = ptrtoint ptr %arrayidx.i289 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %conv1.i285, ptr %arrayidx.i289, align 1
  %113 = load i16, ptr %bi_buf.i284, align 4
  %114 = lshr i16 %113, 8
  %conv4.i290 = trunc i16 %114 to i8
  %115 = load ptr, ptr %pending_buf.i286, align 4
  %116 = load i32, ptr %pending.i287, align 4
  %inc7.i291 = add i32 %116, 1
  store i32 %inc7.i291, ptr %pending.i287, align 4
  %arrayidx8.i292 = getelementptr i8, ptr %115, i32 %116
  %117 = ptrtoint ptr %arrayidx8.i292 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %conv4.i290, ptr %arrayidx8.i292, align 1
  store i16 0, ptr %bi_buf.i284, align 4
  br label %if.end26.sink.split.i305

if.else.i295:                                     ; preds = %if.end190
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %storemerge281)
  %cmp12.i294 = icmp sgt i32 %storemerge281, 7
  br i1 %cmp12.i294, label %if.then14.i303, label %if.else.i295.if.end193_crit_edge

if.else.i295.if.end193_crit_edge:                 ; preds = %if.else.i295
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end193

if.then14.i303:                                   ; preds = %if.else.i295
  call void @__sanitizer_cov_trace_pc() #10
  %bi_buf15.i296 = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 56
  %118 = ptrtoint ptr %bi_buf15.i296 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %bi_buf15.i296, align 4
  %conv16.i297 = trunc i16 %119 to i8
  %pending_buf17.i298 = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 2
  %120 = ptrtoint ptr %pending_buf17.i298 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %pending_buf17.i298, align 4
  %pending18.i299 = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 5
  %122 = ptrtoint ptr %pending18.i299 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %pending18.i299, align 4
  %inc19.i300 = add i32 %123, 1
  store i32 %inc19.i300, ptr %pending18.i299, align 4
  %arrayidx20.i301 = getelementptr i8, ptr %121, i32 %123
  %124 = ptrtoint ptr %arrayidx20.i301 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv16.i297, ptr %arrayidx20.i301, align 1
  %125 = load i16, ptr %bi_buf15.i296, align 4
  %126 = lshr i16 %125, 8
  store i16 %126, ptr %bi_buf15.i296, align 4
  %127 = ptrtoint ptr %bi_valid to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %bi_valid, align 4
  %sub.i302 = add i32 %128, -8
  br label %if.end26.sink.split.i305

if.end26.sink.split.i305:                         ; preds = %if.then14.i303, %if.then.i293
  %sub.sink.i304 = phi i32 [ %sub.i302, %if.then14.i303 ], [ 0, %if.then.i293 ]
  %129 = ptrtoint ptr %bi_valid to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %sub.sink.i304, ptr %bi_valid, align 4
  br label %if.end193

if.end193:                                        ; preds = %if.end26.sink.split.i305, %if.else.i295.if.end193_crit_edge, %bi_flush.exit.if.end193_crit_edge
  %130 = ptrtoint ptr %last_eob_len to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 7, ptr %last_eob_len, align 4
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zlib_tr_flush_block(ptr noundef %s, ptr noundef readonly %buf, i32 noundef %stored_len, i32 noundef %eof) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %level = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 32
  %0 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %data_type = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 7
  %2 = ptrtoint ptr %data_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp1 = icmp eq i8 %3, 2
  br i1 %cmp1, label %if.then3, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then3:                                         ; preds = %if.then
  %arrayidx.i = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 36, i32 0
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i, align 4
  %arrayidx.1.i = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 36, i32 1
  %6 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.1.i, align 4
  %conv.1.i = zext i16 %7 to i32
  %arrayidx.2.i = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 36, i32 2
  %8 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx.2.i, align 4
  %conv.2.i = zext i16 %9 to i32
  %arrayidx.3.i = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 36, i32 3
  %10 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx.3.i, align 4
  %conv.3.i = zext i16 %11 to i32
  %arrayidx.4.i = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 36, i32 4
  %12 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.4.i, align 4
  %conv.4.i = zext i16 %13 to i32
  %arrayidx.5.i = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 36, i32 5
  %14 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx.5.i, align 4
  %conv.5.i = zext i16 %15 to i32
  %arrayidx.6.i = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 36, i32 6
  %16 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx.6.i, align 4
  %conv.6.i = zext i16 %17 to i32
  br label %while.body4.i

while.body4.i:                                    ; preds = %while.body4.i.while.body4.i_crit_edge, %if.then3
  %ascii_freq.041.i = phi i32 [ %add10.i, %while.body4.i.while.body4.i_crit_edge ], [ 0, %if.then3 ]
  %n.140.i = phi i32 [ %inc6.i, %while.body4.i.while.body4.i_crit_edge ], [ 7, %if.then3 ]
  %inc6.i = add nuw nsw i32 %n.140.i, 1
  %arrayidx7.i = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 36, i32 %n.140.i
  %18 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx7.i, align 4
  %conv9.i = zext i16 %19 to i32
  %add10.i = add i32 %ascii_freq.041.i, %conv9.i
  %exitcond.not.i = icmp eq i32 %inc6.i, 128
  br i1 %exitcond.not.i, label %while.body15.i.preheader, label %while.body4.i.while.body4.i_crit_edge

while.body4.i.while.body4.i_crit_edge:            ; preds = %while.body4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body4.i

while.body15.i.preheader:                         ; preds = %while.body4.i
  %conv.i = zext i16 %5 to i32
  %add.1.i = add nuw nsw i32 %conv.1.i, %conv.i
  %add.2.i = add nuw nsw i32 %add.1.i, %conv.2.i
  %add.3.i = add nuw nsw i32 %add.2.i, %conv.3.i
  %add.4.i = add nuw nsw i32 %add.3.i, %conv.4.i
  %add.5.i = add nuw nsw i32 %add.4.i, %conv.5.i
  %add.6.i = add nuw nsw i32 %add.5.i, %conv.6.i
  br label %while.body15.i

while.body15.i:                                   ; preds = %while.body15.i.while.body15.i_crit_edge, %while.body15.i.preheader
  %bin_freq.145.i = phi i32 [ %add21.i, %while.body15.i.while.body15.i_crit_edge ], [ %add.6.i, %while.body15.i.preheader ]
  %n.244.i = phi i32 [ %inc17.i, %while.body15.i.while.body15.i_crit_edge ], [ 128, %while.body15.i.preheader ]
  %inc17.i = add nuw nsw i32 %n.244.i, 1
  %arrayidx18.i = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 36, i32 %n.244.i
  %20 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx18.i, align 4
  %conv20.i = zext i16 %21 to i32
  %add21.i = add i32 %bin_freq.145.i, %conv20.i
  %exitcond47.not.i = icmp eq i32 %inc17.i, 256
  br i1 %exitcond47.not.i, label %set_data_type.exit, label %while.body15.i.while.body15.i_crit_edge

while.body15.i.while.body15.i_crit_edge:          ; preds = %while.body15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body15.i

set_data_type.exit:                               ; preds = %while.body15.i
  call void @__sanitizer_cov_trace_pc() #10
  %phi.bo.i = lshr i32 %add10.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add21.i, i32 %phi.bo.i)
  %cmp23.i = icmp ule i32 %add21.i, %phi.bo.i
  %conv25.i = zext i1 %cmp23.i to i8
  %22 = ptrtoint ptr %data_type to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv25.i, ptr %data_type, align 4
  br label %if.end

if.end:                                           ; preds = %set_data_type.exit, %if.then.if.end_crit_edge
  %l_desc = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 39
  tail call fastcc void @build_tree(ptr noundef %s, ptr noundef %l_desc)
  %d_desc = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 40
  tail call fastcc void @build_tree(ptr noundef %s, ptr noundef %d_desc)
  %dyn_ltree.i = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 36
  %max_code.i = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 39, i32 1
  %23 = ptrtoint ptr %max_code.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_code.i, align 4
  %dl.i.i = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 36, i32 0, i32 1
  %25 = ptrtoint ptr %dl.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %dl.i.i, align 2
  %add.i.i = add i32 %24, 1
  %dl3.i.i = getelementptr %struct.ct_data_s, ptr %dyn_ltree.i, i32 %add.i.i, i32 1
  %27 = ptrtoint ptr %dl3.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 -1, ptr %dl3.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp4.not90.i.i = icmp slt i32 %24, 0
  br i1 %cmp4.not90.i.i, label %if.end.scan_tree.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.end.scan_tree.exit.i_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %scan_tree.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %cmp.i.i = icmp eq i16 %26, 0
  %spec.select88.i.i = select i1 %cmp.i.i, i32 3, i32 4
  %spec.select.i.i = select i1 %cmp.i.i, i32 138, i32 7
  %conv.i.i = zext i16 %26 to i32
  %arrayidx35.i.i = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 16
  %arrayidx48.i.i = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 18
  %arrayidx43.i.i = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 17
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %min_count.196.i.i = phi i32 [ %spec.select88.i.i, %for.body.lr.ph.i.i ], [ %min_count.2.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %max_count.195.i.i = phi i32 [ %spec.select.i.i, %for.body.lr.ph.i.i ], [ %max_count.2.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %count.094.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %count.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %nextlen.093.i.i = phi i32 [ %conv.i.i, %for.body.lr.ph.i.i ], [ %conv9.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %prevlen.092.i.i = phi i32 [ -1, %for.body.lr.ph.i.i ], [ %prevlen.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %n.091.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %add6.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %add6.i.i = add i32 %n.091.i.i, 1
  %dl8.i.i = getelementptr %struct.ct_data_s, ptr %dyn_ltree.i, i32 %add6.i.i, i32 1
  %28 = ptrtoint ptr %dl8.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %dl8.i.i, align 2
  %conv9.i.i = zext i16 %29 to i32
  %inc.i.i = add nsw i32 %count.094.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %max_count.195.i.i)
  %cmp10.i.i = icmp slt i32 %inc.i.i, %max_count.195.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %nextlen.093.i.i, i32 %conv9.i.i)
  %cmp12.i.i = icmp eq i32 %nextlen.093.i.i, %conv9.i.i
  %or.cond.i.i = select i1 %cmp10.i.i, i1 %cmp12.i.i, i1 false
  br i1 %or.cond.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.else.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.else.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %min_count.196.i.i)
  %cmp15.i.i = icmp slt i32 %inc.i.i, %min_count.196.i.i
  br i1 %cmp15.i.i, label %if.then17.i.i, label %if.else22.i.i

if.then17.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx18.i.i = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 %nextlen.093.i.i
  %30 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx18.i.i, align 4
  %32 = trunc i32 %inc.i.i to i16
  %conv21.i.i = add i16 %31, %32
  store i16 %conv21.i.i, ptr %arrayidx18.i.i, align 4
  br label %if.end54.i.i

if.else22.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nextlen.093.i.i)
  %cmp23.not.i.i = icmp eq i32 %nextlen.093.i.i, 0
  br i1 %cmp23.not.i.i, label %if.else38.i.i, label %if.then25.i.i

if.then25.i.i:                                    ; preds = %if.else22.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %nextlen.093.i.i, i32 %prevlen.092.i.i)
  %cmp26.not.i.i = icmp eq i32 %nextlen.093.i.i, %prevlen.092.i.i
  br i1 %cmp26.not.i.i, label %if.then25.i.i.if.end33.i.i_crit_edge, label %if.then28.i.i

if.then25.i.i.if.end33.i.i_crit_edge:             ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i.i

if.then28.i.i:                                    ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx30.i.i = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 %nextlen.093.i.i
  %33 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx30.i.i, align 4
  %inc32.i.i = add i16 %34, 1
  store i16 %inc32.i.i, ptr %arrayidx30.i.i, align 4
  br label %if.end33.i.i

if.end33.i.i:                                     ; preds = %if.then28.i.i, %if.then25.i.i.if.end33.i.i_crit_edge
  %35 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx35.i.i, align 4
  %inc37.i.i = add i16 %36, 1
  store i16 %inc37.i.i, ptr %arrayidx35.i.i, align 4
  br label %if.end54.i.i

if.else38.i.i:                                    ; preds = %if.else22.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %count.094.i.i)
  %cmp39.i.i = icmp slt i32 %count.094.i.i, 10
  br i1 %cmp39.i.i, label %if.then41.i.i, label %if.else46.i.i

if.then41.i.i:                                    ; preds = %if.else38.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %arrayidx43.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx43.i.i, align 4
  %inc45.i.i = add i16 %38, 1
  store i16 %inc45.i.i, ptr %arrayidx43.i.i, align 4
  br label %if.end54.i.i

if.else46.i.i:                                    ; preds = %if.else38.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %arrayidx48.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx48.i.i, align 4
  %inc50.i.i = add i16 %40, 1
  store i16 %inc50.i.i, ptr %arrayidx48.i.i, align 4
  br label %if.end54.i.i

if.end54.i.i:                                     ; preds = %if.else46.i.i, %if.then41.i.i, %if.end33.i.i, %if.then17.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp55.i.i = icmp eq i16 %29, 0
  br i1 %cmp55.i.i, label %if.end54.i.i.for.inc.i.i_crit_edge, label %if.else58.i.i

if.end54.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.else58.i.i:                                    ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %..i.i = select i1 %cmp12.i.i, i32 6, i32 7
  %.89.i.i = select i1 %cmp12.i.i, i32 3, i32 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.else58.i.i, %if.end54.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %prevlen.1.i.i = phi i32 [ %prevlen.092.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %nextlen.093.i.i, %if.end54.i.i.for.inc.i.i_crit_edge ], [ %nextlen.093.i.i, %if.else58.i.i ]
  %count.1.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ 0, %if.end54.i.i.for.inc.i.i_crit_edge ], [ 0, %if.else58.i.i ]
  %max_count.2.i.i = phi i32 [ %max_count.195.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ 138, %if.end54.i.i.for.inc.i.i_crit_edge ], [ %..i.i, %if.else58.i.i ]
  %min_count.2.i.i = phi i32 [ %min_count.196.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ 3, %if.end54.i.i.for.inc.i.i_crit_edge ], [ %.89.i.i, %if.else58.i.i ]
  %cmp4.not.i.i = icmp sgt i32 %add6.i.i, %24
  br i1 %cmp4.not.i.i, label %for.inc.i.i.scan_tree.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.scan_tree.exit.i_crit_edge:           ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %scan_tree.exit.i

scan_tree.exit.i:                                 ; preds = %for.inc.i.i.scan_tree.exit.i_crit_edge, %if.end.scan_tree.exit.i_crit_edge
  %dyn_dtree.i = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 37
  %max_code2.i = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 40, i32 1
  %41 = ptrtoint ptr %max_code2.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %max_code2.i, align 4
  %dl.i23.i = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 37, i32 0, i32 1
  %43 = ptrtoint ptr %dl.i23.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %dl.i23.i, align 2
  %add.i24.i = add i32 %42, 1
  %dl3.i25.i = getelementptr %struct.ct_data_s, ptr %dyn_dtree.i, i32 %add.i24.i, i32 1
  %45 = ptrtoint ptr %dl3.i25.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 -1, ptr %dl3.i25.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp4.not90.i26.i = icmp slt i32 %42, 0
  br i1 %cmp4.not90.i26.i, label %scan_tree.exit.i.scan_tree.exit80.i_crit_edge, label %for.body.lr.ph.i34.i

scan_tree.exit.i.scan_tree.exit80.i_crit_edge:    ; preds = %scan_tree.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %scan_tree.exit80.i

for.body.lr.ph.i34.i:                             ; preds = %scan_tree.exit.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %cmp.i27.i = icmp eq i16 %44, 0
  %spec.select88.i28.i = select i1 %cmp.i27.i, i32 3, i32 4
  %spec.select.i29.i = select i1 %cmp.i27.i, i32 138, i32 7
  %conv.i30.i = zext i16 %44 to i32
  %arrayidx35.i31.i = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 16
  %arrayidx48.i32.i = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 18
  %arrayidx43.i33.i = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 17
  br label %for.body.i48.i

for.body.i48.i:                                   ; preds = %for.inc.i79.i.for.body.i48.i_crit_edge, %for.body.lr.ph.i34.i
  %min_count.196.i35.i = phi i32 [ %spec.select88.i28.i, %for.body.lr.ph.i34.i ], [ %min_count.2.i77.i, %for.inc.i79.i.for.body.i48.i_crit_edge ]
  %max_count.195.i36.i = phi i32 [ %spec.select.i29.i, %for.body.lr.ph.i34.i ], [ %max_count.2.i76.i, %for.inc.i79.i.for.body.i48.i_crit_edge ]
  %count.094.i37.i = phi i32 [ 0, %for.body.lr.ph.i34.i ], [ %count.1.i75.i, %for.inc.i79.i.for.body.i48.i_crit_edge ]
  %nextlen.093.i38.i = phi i32 [ %conv.i30.i, %for.body.lr.ph.i34.i ], [ %conv9.i43.i, %for.inc.i79.i.for.body.i48.i_crit_edge ]
  %prevlen.092.i39.i = phi i32 [ -1, %for.body.lr.ph.i34.i ], [ %prevlen.1.i74.i, %for.inc.i79.i.for.body.i48.i_crit_edge ]
  %n.091.i40.i = phi i32 [ 0, %for.body.lr.ph.i34.i ], [ %add6.i41.i, %for.inc.i79.i.for.body.i48.i_crit_edge ]
  %add6.i41.i = add i32 %n.091.i40.i, 1
  %dl8.i42.i = getelementptr %struct.ct_data_s, ptr %dyn_dtree.i, i32 %add6.i41.i, i32 1
  %46 = ptrtoint ptr %dl8.i42.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %dl8.i42.i, align 2
  %conv9.i43.i = zext i16 %47 to i32
  %inc.i44.i = add nsw i32 %count.094.i37.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i44.i, i32 %max_count.195.i36.i)
  %cmp10.i45.i = icmp slt i32 %inc.i44.i, %max_count.195.i36.i
  call void @__sanitizer_cov_trace_cmp4(i32 %nextlen.093.i38.i, i32 %conv9.i43.i)
  %cmp12.i46.i = icmp eq i32 %nextlen.093.i38.i, %conv9.i43.i
  %or.cond.i47.i = select i1 %cmp10.i45.i, i1 %cmp12.i46.i, i1 false
  br i1 %or.cond.i47.i, label %for.body.i48.i.for.inc.i79.i_crit_edge, label %if.else.i50.i

for.body.i48.i.for.inc.i79.i_crit_edge:           ; preds = %for.body.i48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i79.i

if.else.i50.i:                                    ; preds = %for.body.i48.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i44.i, i32 %min_count.196.i35.i)
  %cmp15.i49.i = icmp slt i32 %inc.i44.i, %min_count.196.i35.i
  br i1 %cmp15.i49.i, label %if.then17.i53.i, label %if.else22.i55.i

if.then17.i53.i:                                  ; preds = %if.else.i50.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx18.i51.i = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 %nextlen.093.i38.i
  %48 = ptrtoint ptr %arrayidx18.i51.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx18.i51.i, align 4
  %50 = trunc i32 %inc.i44.i to i16
  %conv21.i52.i = add i16 %49, %50
  store i16 %conv21.i52.i, ptr %arrayidx18.i51.i, align 4
  br label %if.end54.i70.i

if.else22.i55.i:                                  ; preds = %if.else.i50.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nextlen.093.i38.i)
  %cmp23.not.i54.i = icmp eq i32 %nextlen.093.i38.i, 0
  br i1 %cmp23.not.i54.i, label %if.else38.i64.i, label %if.then25.i57.i

if.then25.i57.i:                                  ; preds = %if.else22.i55.i
  call void @__sanitizer_cov_trace_cmp4(i32 %nextlen.093.i38.i, i32 %prevlen.092.i39.i)
  %cmp26.not.i56.i = icmp eq i32 %nextlen.093.i38.i, %prevlen.092.i39.i
  br i1 %cmp26.not.i56.i, label %if.then25.i57.i.if.end33.i62.i_crit_edge, label %if.then28.i60.i

if.then25.i57.i.if.end33.i62.i_crit_edge:         ; preds = %if.then25.i57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i62.i

if.then28.i60.i:                                  ; preds = %if.then25.i57.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx30.i58.i = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 %nextlen.093.i38.i
  %51 = ptrtoint ptr %arrayidx30.i58.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx30.i58.i, align 4
  %inc32.i59.i = add i16 %52, 1
  store i16 %inc32.i59.i, ptr %arrayidx30.i58.i, align 4
  br label %if.end33.i62.i

if.end33.i62.i:                                   ; preds = %if.then28.i60.i, %if.then25.i57.i.if.end33.i62.i_crit_edge
  %53 = ptrtoint ptr %arrayidx35.i31.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx35.i31.i, align 4
  %inc37.i61.i = add i16 %54, 1
  store i16 %inc37.i61.i, ptr %arrayidx35.i31.i, align 4
  br label %if.end54.i70.i

if.else38.i64.i:                                  ; preds = %if.else22.i55.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %count.094.i37.i)
  %cmp39.i63.i = icmp slt i32 %count.094.i37.i, 10
  br i1 %cmp39.i63.i, label %if.then41.i66.i, label %if.else46.i68.i

if.then41.i66.i:                                  ; preds = %if.else38.i64.i
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %arrayidx43.i33.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arrayidx43.i33.i, align 4
  %inc45.i65.i = add i16 %56, 1
  store i16 %inc45.i65.i, ptr %arrayidx43.i33.i, align 4
  br label %if.end54.i70.i

if.else46.i68.i:                                  ; preds = %if.else38.i64.i
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %arrayidx48.i32.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx48.i32.i, align 4
  %inc50.i67.i = add i16 %58, 1
  store i16 %inc50.i67.i, ptr %arrayidx48.i32.i, align 4
  br label %if.end54.i70.i

if.end54.i70.i:                                   ; preds = %if.else46.i68.i, %if.then41.i66.i, %if.end33.i62.i, %if.then17.i53.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %cmp55.i69.i = icmp eq i16 %47, 0
  br i1 %cmp55.i69.i, label %if.end54.i70.i.for.inc.i79.i_crit_edge, label %if.else58.i73.i

if.end54.i70.i.for.inc.i79.i_crit_edge:           ; preds = %if.end54.i70.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i79.i

if.else58.i73.i:                                  ; preds = %if.end54.i70.i
  call void @__sanitizer_cov_trace_pc() #10
  %..i71.i = select i1 %cmp12.i46.i, i32 6, i32 7
  %.89.i72.i = select i1 %cmp12.i46.i, i32 3, i32 4
  br label %for.inc.i79.i

for.inc.i79.i:                                    ; preds = %if.else58.i73.i, %if.end54.i70.i.for.inc.i79.i_crit_edge, %for.body.i48.i.for.inc.i79.i_crit_edge
  %prevlen.1.i74.i = phi i32 [ %prevlen.092.i39.i, %for.body.i48.i.for.inc.i79.i_crit_edge ], [ %nextlen.093.i38.i, %if.end54.i70.i.for.inc.i79.i_crit_edge ], [ %nextlen.093.i38.i, %if.else58.i73.i ]
  %count.1.i75.i = phi i32 [ %inc.i44.i, %for.body.i48.i.for.inc.i79.i_crit_edge ], [ 0, %if.end54.i70.i.for.inc.i79.i_crit_edge ], [ 0, %if.else58.i73.i ]
  %max_count.2.i76.i = phi i32 [ %max_count.195.i36.i, %for.body.i48.i.for.inc.i79.i_crit_edge ], [ 138, %if.end54.i70.i.for.inc.i79.i_crit_edge ], [ %..i71.i, %if.else58.i73.i ]
  %min_count.2.i77.i = phi i32 [ %min_count.196.i35.i, %for.body.i48.i.for.inc.i79.i_crit_edge ], [ 3, %if.end54.i70.i.for.inc.i79.i_crit_edge ], [ %.89.i72.i, %if.else58.i73.i ]
  %cmp4.not.i78.i = icmp sgt i32 %add6.i41.i, %42
  br i1 %cmp4.not.i78.i, label %for.inc.i79.i.scan_tree.exit80.i_crit_edge, label %for.inc.i79.i.for.body.i48.i_crit_edge

for.inc.i79.i.for.body.i48.i_crit_edge:           ; preds = %for.inc.i79.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i48.i

for.inc.i79.i.scan_tree.exit80.i_crit_edge:       ; preds = %for.inc.i79.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %scan_tree.exit80.i

scan_tree.exit80.i:                               ; preds = %for.inc.i79.i.scan_tree.exit80.i_crit_edge, %scan_tree.exit.i.scan_tree.exit80.i_crit_edge
  %bl_desc.i = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 41
  tail call fastcc void @build_tree(ptr noundef %s, ptr noundef %bl_desc.i) #8
  %dl.i = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 15, i32 1
  %59 = ptrtoint ptr %dl.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %dl.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %cmp4.not.i = icmp eq i16 %60, 0
  br i1 %cmp4.not.i, label %for.inc.i, label %scan_tree.exit80.i.build_bl_tree.exit_crit_edge

scan_tree.exit80.i.build_bl_tree.exit_crit_edge:  ; preds = %scan_tree.exit80.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %build_bl_tree.exit

for.inc.i:                                        ; preds = %scan_tree.exit80.i
  %dl.1.i = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 1, i32 1
  %61 = ptrtoint ptr %dl.1.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %dl.1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %cmp4.not.1.i = icmp eq i16 %62, 0
  br i1 %cmp4.not.1.i, label %for.inc.1.i, label %for.inc.i.build_bl_tree.exit_crit_edge

for.inc.i.build_bl_tree.exit_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %build_bl_tree.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %dl.2.i = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 14, i32 1
  %63 = ptrtoint ptr %dl.2.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %dl.2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %cmp4.not.2.i = icmp eq i16 %64, 0
  br i1 %cmp4.not.2.i, label %for.inc.2.i, label %for.inc.1.i.build_bl_tree.exit_crit_edge

for.inc.1.i.build_bl_tree.exit_crit_edge:         ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %build_bl_tree.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %dl.3.i = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 2, i32 1
  %65 = ptrtoint ptr %dl.3.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %dl.3.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %cmp4.not.3.i = icmp eq i16 %66, 0
  br i1 %cmp4.not.3.i, label %for.inc.3.i, label %for.inc.2.i.build_bl_tree.exit_crit_edge

for.inc.2.i.build_bl_tree.exit_crit_edge:         ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %build_bl_tree.exit

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %dl.4.i = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 13, i32 1
  %67 = ptrtoint ptr %dl.4.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %dl.4.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %cmp4.not.4.i = icmp eq i16 %68, 0
  br i1 %cmp4.not.4.i, label %for.inc.4.i, label %for.inc.3.i.build_bl_tree.exit_crit_edge

for.inc.3.i.build_bl_tree.exit_crit_edge:         ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %build_bl_tree.exit

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %dl.5.i = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 3, i32 1
  %69 = ptrtoint ptr %dl.5.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %dl.5.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %cmp4.not.5.i = icmp eq i16 %70, 0
  br i1 %cmp4.not.5.i, label %for.inc.5.i, label %for.inc.4.i.build_bl_tree.exit_crit_edge

for.inc.4.i.build_bl_tree.exit_crit_edge:         ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %build_bl_tree.exit

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %dl.6.i = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 12, i32 1
  %71 = ptrtoint ptr %dl.6.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %dl.6.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %cmp4.not.6.i = icmp eq i16 %72, 0
  br i1 %cmp4.not.6.i, label %for.inc.6.i, label %for.inc.5.i.build_bl_tree.exit_crit_edge

for.inc.5.i.build_bl_tree.exit_crit_edge:         ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %build_bl_tree.exit

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %dl.7.i = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 4, i32 1
  %73 = ptrtoint ptr %dl.7.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %dl.7.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %74)
  %cmp4.not.7.i = icmp eq i16 %74, 0
  br i1 %cmp4.not.7.i, label %for.inc.7.i, label %for.inc.6.i.build_bl_tree.exit_crit_edge

for.inc.6.i.build_bl_tree.exit_crit_edge:         ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %build_bl_tree.exit

for.inc.7.i:                                      ; preds = %for.inc.6.i
  %dl.8.i = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 11, i32 1
  %75 = ptrtoint ptr %dl.8.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %dl.8.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %cmp4.not.8.i = icmp eq i16 %76, 0
  br i1 %cmp4.not.8.i, label %for.inc.8.i, label %for.inc.7.i.build_bl_tree.exit_crit_edge

for.inc.7.i.build_bl_tree.exit_crit_edge:         ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %build_bl_tree.exit

for.inc.8.i:                                      ; preds = %for.inc.7.i
  %dl.9.i = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 5, i32 1
  %77 = ptrtoint ptr %dl.9.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %dl.9.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %cmp4.not.9.i = icmp eq i16 %78, 0
  br i1 %cmp4.not.9.i, label %for.inc.9.i, label %for.inc.8.i.build_bl_tree.exit_crit_edge

for.inc.8.i.build_bl_tree.exit_crit_edge:         ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %build_bl_tree.exit

for.inc.9.i:                                      ; preds = %for.inc.8.i
  %dl.10.i = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 10, i32 1
  %79 = ptrtoint ptr %dl.10.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %dl.10.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %cmp4.not.10.i = icmp eq i16 %80, 0
  br i1 %cmp4.not.10.i, label %for.inc.10.i, label %for.inc.9.i.build_bl_tree.exit_crit_edge

for.inc.9.i.build_bl_tree.exit_crit_edge:         ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %build_bl_tree.exit

for.inc.10.i:                                     ; preds = %for.inc.9.i
  %dl.11.i = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 6, i32 1
  %81 = ptrtoint ptr %dl.11.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %dl.11.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %82)
  %cmp4.not.11.i = icmp eq i16 %82, 0
  br i1 %cmp4.not.11.i, label %for.inc.11.i, label %for.inc.10.i.build_bl_tree.exit_crit_edge

for.inc.10.i.build_bl_tree.exit_crit_edge:        ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %build_bl_tree.exit

for.inc.11.i:                                     ; preds = %for.inc.10.i
  %dl.12.i = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 9, i32 1
  %83 = ptrtoint ptr %dl.12.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %dl.12.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %84)
  %cmp4.not.12.i = icmp eq i16 %84, 0
  br i1 %cmp4.not.12.i, label %for.inc.12.i, label %for.inc.11.i.build_bl_tree.exit_crit_edge

for.inc.11.i.build_bl_tree.exit_crit_edge:        ; preds = %for.inc.11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %build_bl_tree.exit

for.inc.12.i:                                     ; preds = %for.inc.11.i
  %dl.13.i = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 7, i32 1
  %85 = ptrtoint ptr %dl.13.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %dl.13.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %86)
  %cmp4.not.13.i = icmp eq i16 %86, 0
  br i1 %cmp4.not.13.i, label %for.inc.13.i, label %for.inc.12.i.build_bl_tree.exit_crit_edge

for.inc.12.i.build_bl_tree.exit_crit_edge:        ; preds = %for.inc.12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %build_bl_tree.exit

for.inc.13.i:                                     ; preds = %for.inc.12.i
  %dl.14.i = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 8, i32 1
  %87 = ptrtoint ptr %dl.14.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %dl.14.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %88)
  %cmp4.not.14.i = icmp eq i16 %88, 0
  br i1 %cmp4.not.14.i, label %for.inc.14.i, label %for.inc.13.i.build_bl_tree.exit_crit_edge

for.inc.13.i.build_bl_tree.exit_crit_edge:        ; preds = %for.inc.13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %build_bl_tree.exit

for.inc.14.i:                                     ; preds = %for.inc.13.i
  call void @__sanitizer_cov_trace_pc() #10
  %dl.15.i = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 0, i32 1
  %89 = ptrtoint ptr %dl.15.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %dl.15.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %90)
  %cmp4.not.15.i = icmp eq i16 %90, 0
  %spec.select.i = select i1 %cmp4.not.15.i, i32 2, i32 3
  br label %build_bl_tree.exit

build_bl_tree.exit:                               ; preds = %for.inc.14.i, %for.inc.13.i.build_bl_tree.exit_crit_edge, %for.inc.12.i.build_bl_tree.exit_crit_edge, %for.inc.11.i.build_bl_tree.exit_crit_edge, %for.inc.10.i.build_bl_tree.exit_crit_edge, %for.inc.9.i.build_bl_tree.exit_crit_edge, %for.inc.8.i.build_bl_tree.exit_crit_edge, %for.inc.7.i.build_bl_tree.exit_crit_edge, %for.inc.6.i.build_bl_tree.exit_crit_edge, %for.inc.5.i.build_bl_tree.exit_crit_edge, %for.inc.4.i.build_bl_tree.exit_crit_edge, %for.inc.3.i.build_bl_tree.exit_crit_edge, %for.inc.2.i.build_bl_tree.exit_crit_edge, %for.inc.1.i.build_bl_tree.exit_crit_edge, %for.inc.i.build_bl_tree.exit_crit_edge, %scan_tree.exit80.i.build_bl_tree.exit_crit_edge
  %max_blindex.0.lcssa.i = phi i32 [ 18, %scan_tree.exit80.i.build_bl_tree.exit_crit_edge ], [ 17, %for.inc.i.build_bl_tree.exit_crit_edge ], [ 16, %for.inc.1.i.build_bl_tree.exit_crit_edge ], [ 15, %for.inc.2.i.build_bl_tree.exit_crit_edge ], [ 14, %for.inc.3.i.build_bl_tree.exit_crit_edge ], [ 13, %for.inc.4.i.build_bl_tree.exit_crit_edge ], [ 12, %for.inc.5.i.build_bl_tree.exit_crit_edge ], [ 11, %for.inc.6.i.build_bl_tree.exit_crit_edge ], [ 10, %for.inc.7.i.build_bl_tree.exit_crit_edge ], [ 9, %for.inc.8.i.build_bl_tree.exit_crit_edge ], [ 8, %for.inc.9.i.build_bl_tree.exit_crit_edge ], [ 7, %for.inc.10.i.build_bl_tree.exit_crit_edge ], [ 6, %for.inc.11.i.build_bl_tree.exit_crit_edge ], [ 5, %for.inc.12.i.build_bl_tree.exit_crit_edge ], [ 4, %for.inc.13.i.build_bl_tree.exit_crit_edge ], [ %spec.select.i, %for.inc.14.i ]
  %91 = mul nuw nsw i32 %max_blindex.0.lcssa.i, 3
  %add8.i = add nuw nsw i32 %91, 17
  %opt_len.i = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 51
  %92 = ptrtoint ptr %opt_len.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %opt_len.i, align 4
  %add9.i = add i32 %add8.i, %93
  store i32 %add9.i, ptr %opt_len.i, align 4
  %add4 = add i32 %add9.i, 10
  %shr = lshr i32 %add4, 3
  %static_len = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 52
  %94 = ptrtoint ptr %static_len to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %static_len, align 4
  %add6 = add i32 %95, 10
  %shr7 = lshr i32 %add6, 3
  %96 = tail call i32 @llvm.umin.i32(i32 %shr7, i32 %shr)
  br label %if.end13

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add12 = add i32 %stored_len, 5
  br label %if.end13

if.end13:                                         ; preds = %if.else, %build_bl_tree.exit
  %max_blindex.0 = phi i32 [ 0, %if.else ], [ %max_blindex.0.lcssa.i, %build_bl_tree.exit ]
  %static_lenb.0 = phi i32 [ %add12, %if.else ], [ %shr7, %build_bl_tree.exit ]
  %opt_lenb.0 = phi i32 [ %add12, %if.else ], [ %96, %build_bl_tree.exit ]
  %add14 = add i32 %stored_len, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add14, i32 %opt_lenb.0)
  %cmp15.not = icmp ugt i32 %add14, %opt_lenb.0
  %cmp17.not = icmp eq ptr %buf, null
  %or.cond = or i1 %cmp17.not, %cmp15.not
  br i1 %or.cond, label %if.else20, label %if.then19

if.then19:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @zlib_tr_stored_block(ptr noundef %s, ptr noundef nonnull %buf, i32 noundef %stored_len, i32 noundef %eof)
  br label %if.end130

if.else20:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_cmp4(i32 %static_lenb.0, i32 %opt_lenb.0)
  %cmp21 = icmp eq i32 %static_lenb.0, %opt_lenb.0
  %bi_valid = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 57
  %97 = ptrtoint ptr %bi_valid to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %bi_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %98)
  %cmp24 = icmp sgt i32 %98, 13
  br i1 %cmp21, label %if.then23, label %if.else66

if.then23:                                        ; preds = %if.else20
  %add27 = add i32 %eof, 2
  %shl = shl i32 %add27, %98
  %bi_buf = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 56
  %99 = ptrtoint ptr %bi_buf to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %bi_buf, align 4
  %101 = trunc i32 %shl to i16
  %conv30 = or i16 %100, %101
  store i16 %conv30, ptr %bi_buf, align 4
  br i1 %cmp24, label %if.then26, label %if.else52

if.then26:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  %conv33 = trunc i16 %conv30 to i8
  %pending_buf = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 2
  %102 = ptrtoint ptr %pending_buf to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pending_buf, align 4
  %pending = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 5
  %104 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %pending, align 4
  %inc = add i32 %105, 1
  store i32 %inc, ptr %pending, align 4
  %arrayidx = getelementptr i8, ptr %103, i32 %105
  %106 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %conv33, ptr %arrayidx, align 1
  %107 = ptrtoint ptr %bi_buf to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %bi_buf, align 4
  %109 = lshr i16 %108, 8
  %conv37 = trunc i16 %109 to i8
  %110 = load ptr, ptr %pending_buf, align 4
  %111 = load i32, ptr %pending, align 4
  %inc40 = add i32 %111, 1
  store i32 %inc40, ptr %pending, align 4
  %arrayidx41 = getelementptr i8, ptr %110, i32 %111
  %112 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %conv37, ptr %arrayidx41, align 1
  %conv43 = and i32 %add27, 65535
  %113 = ptrtoint ptr %bi_valid to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %bi_valid, align 4
  %sub45 = sub i32 16, %114
  %shr46 = lshr i32 %conv43, %sub45
  %conv47 = trunc i32 %shr46 to i16
  store i16 %conv47, ptr %bi_buf, align 4
  %add51 = add i32 %114, -13
  br label %if.end62

if.else52:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  %add61 = add nsw i32 %98, 3
  br label %if.end62

if.end62:                                         ; preds = %if.else52, %if.then26
  %storemerge212 = phi i32 [ %add61, %if.else52 ], [ %add51, %if.then26 ]
  %115 = ptrtoint ptr %bi_valid to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %storemerge212, ptr %bi_valid, align 4
  tail call fastcc void @compress_block(ptr noundef %s, ptr noundef nonnull @static_ltree, ptr noundef nonnull @static_dtree)
  %static_len63 = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 52
  %116 = ptrtoint ptr %static_len63 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %static_len63, align 4
  %add64 = add i32 %117, 3
  %compressed_len = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 53
  %118 = ptrtoint ptr %compressed_len to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %compressed_len, align 4
  %add65 = add i32 %add64, %119
  store i32 %add65, ptr %compressed_len, align 4
  br label %if.end130

if.else66:                                        ; preds = %if.else20
  %add74 = add i32 %eof, 4
  %shl76 = shl i32 %add74, %98
  %bi_buf77 = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 56
  %120 = ptrtoint ptr %bi_buf77 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %bi_buf77, align 4
  %122 = trunc i32 %shl76 to i16
  %conv80 = or i16 %121, %122
  store i16 %conv80, ptr %bi_buf77, align 4
  br i1 %cmp24, label %if.then72, label %if.else107

if.then72:                                        ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #10
  %conv84 = trunc i16 %conv80 to i8
  %pending_buf85 = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 2
  %123 = ptrtoint ptr %pending_buf85 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %pending_buf85, align 4
  %pending86 = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 5
  %125 = ptrtoint ptr %pending86 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %pending86, align 4
  %inc87 = add i32 %126, 1
  store i32 %inc87, ptr %pending86, align 4
  %arrayidx88 = getelementptr i8, ptr %124, i32 %126
  %127 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %conv84, ptr %arrayidx88, align 1
  %128 = ptrtoint ptr %bi_buf77 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %bi_buf77, align 4
  %130 = lshr i16 %129, 8
  %conv92 = trunc i16 %130 to i8
  %131 = load ptr, ptr %pending_buf85, align 4
  %132 = load i32, ptr %pending86, align 4
  %inc95 = add i32 %132, 1
  store i32 %inc95, ptr %pending86, align 4
  %arrayidx96 = getelementptr i8, ptr %131, i32 %132
  %133 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %conv92, ptr %arrayidx96, align 1
  %conv98 = and i32 %add74, 65535
  %134 = ptrtoint ptr %bi_valid to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %bi_valid, align 4
  %sub100 = sub i32 16, %135
  %shr101 = lshr i32 %conv98, %sub100
  %conv102 = trunc i32 %shr101 to i16
  store i16 %conv102, ptr %bi_buf77, align 4
  %add106 = add i32 %135, -13
  br label %if.end117

if.else107:                                       ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #10
  %add116 = add nsw i32 %98, 3
  br label %if.end117

if.end117:                                        ; preds = %if.else107, %if.then72
  %storemerge = phi i32 [ %add116, %if.else107 ], [ %add106, %if.then72 ]
  %136 = ptrtoint ptr %bi_valid to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %storemerge, ptr %bi_valid, align 4
  %max_code = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 39, i32 1
  %137 = ptrtoint ptr %max_code to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %max_code, align 4
  %max_code121 = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 40, i32 1
  %139 = ptrtoint ptr %max_code121 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %max_code121, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %storemerge)
  %cmp.i = icmp sgt i32 %storemerge, 11
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #10
  %sub1.i = add i32 %138, -256
  %shl.i = shl i32 %sub1.i, %storemerge
  %bi_buf.i = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 56
  %141 = ptrtoint ptr %bi_buf.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %bi_buf.i, align 4
  %143 = trunc i32 %shl.i to i16
  %conv3.i = or i16 %142, %143
  store i16 %conv3.i, ptr %bi_buf.i, align 4
  %conv6.i = trunc i16 %conv3.i to i8
  %pending_buf.i = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 2
  %144 = ptrtoint ptr %pending_buf.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %pending_buf.i, align 4
  %pending.i = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 5
  %146 = ptrtoint ptr %pending.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %pending.i, align 4
  %inc.i = add i32 %147, 1
  store i32 %inc.i, ptr %pending.i, align 4
  %arrayidx.i213 = getelementptr i8, ptr %145, i32 %147
  %148 = ptrtoint ptr %arrayidx.i213 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %conv6.i, ptr %arrayidx.i213, align 1
  %149 = load i16, ptr %bi_buf.i, align 4
  %150 = lshr i16 %149, 8
  %conv9.i214 = trunc i16 %150 to i8
  %151 = load ptr, ptr %pending_buf.i, align 4
  %152 = load i32, ptr %pending.i, align 4
  %inc12.i = add i32 %152, 1
  store i32 %inc12.i, ptr %pending.i, align 4
  %arrayidx13.i = getelementptr i8, ptr %151, i32 %152
  %153 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %conv9.i214, ptr %arrayidx13.i, align 1
  %conv15.i = and i32 %sub1.i, 65535
  %154 = ptrtoint ptr %bi_valid to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %bi_valid, align 4
  %sub17.i = sub i32 16, %155
  %shr18.i = lshr i32 %conv15.i, %sub17.i
  %conv19.i = trunc i32 %shr18.i to i16
  store i16 %conv19.i, ptr %bi_buf.i, align 4
  %add.i = add i32 %155, -11
  br label %if.end.i

if.else.i:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #10
  %sub23.i = add i32 %138, 65280
  %shl25.i = shl i32 %sub23.i, %storemerge
  %bi_buf26.i = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 56
  %156 = ptrtoint ptr %bi_buf26.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %bi_buf26.i, align 4
  %158 = trunc i32 %shl25.i to i16
  %conv29.i = or i16 %157, %158
  store i16 %conv29.i, ptr %bi_buf26.i, align 4
  %add31.i = add nsw i32 %storemerge, 5
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %storemerge.i = phi i32 [ %add31.i, %if.else.i ], [ %add.i, %if.then.i ]
  %159 = ptrtoint ptr %bi_valid to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %storemerge.i, ptr %bi_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %storemerge.i)
  %cmp35.i = icmp sgt i32 %storemerge.i, 11
  %shl41.i = shl i32 %140, %storemerge.i
  %bi_buf42.i = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 56
  %160 = ptrtoint ptr %bi_buf42.i to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %bi_buf42.i, align 4
  %162 = trunc i32 %shl41.i to i16
  %conv45.i = or i16 %161, %162
  store i16 %conv45.i, ptr %bi_buf42.i, align 4
  br i1 %cmp35.i, label %if.then37.i, label %if.else72.i

if.then37.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv49.i = trunc i16 %conv45.i to i8
  %pending_buf50.i = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 2
  %163 = ptrtoint ptr %pending_buf50.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %pending_buf50.i, align 4
  %pending51.i = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 5
  %165 = ptrtoint ptr %pending51.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %pending51.i, align 4
  %inc52.i = add i32 %166, 1
  store i32 %inc52.i, ptr %pending51.i, align 4
  %arrayidx53.i = getelementptr i8, ptr %164, i32 %166
  %167 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %conv49.i, ptr %arrayidx53.i, align 1
  %168 = ptrtoint ptr %bi_buf42.i to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %bi_buf42.i, align 4
  %170 = lshr i16 %169, 8
  %conv57.i = trunc i16 %170 to i8
  %171 = load ptr, ptr %pending_buf50.i, align 4
  %172 = load i32, ptr %pending51.i, align 4
  %inc60.i = add i32 %172, 1
  store i32 %inc60.i, ptr %pending51.i, align 4
  %arrayidx61.i = getelementptr i8, ptr %171, i32 %172
  %173 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 %conv57.i, ptr %arrayidx61.i, align 1
  %conv63.i = and i32 %140, 65535
  %174 = ptrtoint ptr %bi_valid to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %bi_valid, align 4
  %sub65.i = sub i32 16, %175
  %shr66.i = lshr i32 %conv63.i, %sub65.i
  %conv67.i = trunc i32 %shr66.i to i16
  store i16 %conv67.i, ptr %bi_buf42.i, align 4
  %add71.i = add i32 %175, -11
  br label %if.end82.i

if.else72.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %add81.i = add nsw i32 %storemerge.i, 5
  br label %if.end82.i

if.end82.i:                                       ; preds = %if.else72.i, %if.then37.i
  %storemerge290.i = phi i32 [ %add81.i, %if.else72.i ], [ %add71.i, %if.then37.i ]
  %176 = ptrtoint ptr %bi_valid to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %storemerge290.i, ptr %bi_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %storemerge290.i)
  %cmp86.i = icmp sgt i32 %storemerge290.i, 12
  br i1 %cmp86.i, label %if.then88.i, label %if.else123.i

if.then88.i:                                      ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub90.i = add nsw i32 %max_blindex.0, -3
  %shl92.i = shl i32 %sub90.i, %storemerge290.i
  %bi_buf93.i = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 56
  %177 = ptrtoint ptr %bi_buf93.i to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %bi_buf93.i, align 4
  %179 = trunc i32 %shl92.i to i16
  %conv96.i = or i16 %178, %179
  store i16 %conv96.i, ptr %bi_buf93.i, align 4
  %conv100.i = trunc i16 %conv96.i to i8
  %pending_buf101.i = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 2
  %180 = ptrtoint ptr %pending_buf101.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %pending_buf101.i, align 4
  %pending102.i = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 5
  %182 = ptrtoint ptr %pending102.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %pending102.i, align 4
  %inc103.i = add i32 %183, 1
  store i32 %inc103.i, ptr %pending102.i, align 4
  %arrayidx104.i = getelementptr i8, ptr %181, i32 %183
  %184 = ptrtoint ptr %arrayidx104.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 %conv100.i, ptr %arrayidx104.i, align 1
  %185 = load i16, ptr %bi_buf93.i, align 4
  %186 = lshr i16 %185, 8
  %conv108.i = trunc i16 %186 to i8
  %187 = load ptr, ptr %pending_buf101.i, align 4
  %188 = load i32, ptr %pending102.i, align 4
  %inc111.i = add i32 %188, 1
  store i32 %inc111.i, ptr %pending102.i, align 4
  %arrayidx112.i = getelementptr i8, ptr %187, i32 %188
  %189 = ptrtoint ptr %arrayidx112.i to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 %conv108.i, ptr %arrayidx112.i, align 1
  %conv114.i = and i32 %sub90.i, 65535
  %190 = ptrtoint ptr %bi_valid to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %bi_valid, align 4
  %sub116.i = sub i32 16, %191
  %shr117.i = lshr i32 %conv114.i, %sub116.i
  %conv118.i = trunc i32 %shr117.i to i16
  store i16 %conv118.i, ptr %bi_buf93.i, align 4
  %add122.i = add i32 %191, -12
  br label %for.body.lr.ph.i

if.else123.i:                                     ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub124.i = add nuw nsw i32 %max_blindex.0, 65533
  %shl126.i = shl nuw nsw i32 %sub124.i, %storemerge290.i
  %bi_buf127.i = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 56
  %192 = ptrtoint ptr %bi_buf127.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %bi_buf127.i, align 4
  %194 = trunc i32 %shl126.i to i16
  %conv130.i = or i16 %193, %194
  store i16 %conv130.i, ptr %bi_buf127.i, align 4
  %add132.i = add nsw i32 %storemerge290.i, 4
  br label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.else123.i, %if.then88.i
  %storemerge291.i = phi i32 [ %add132.i, %if.else123.i ], [ %add122.i, %if.then88.i ]
  %195 = ptrtoint ptr %bi_valid to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %storemerge291.i, ptr %bi_valid, align 4
  %bi_buf187.i = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 56
  %pending_buf156.i = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 2
  %pending157.i = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %if.end193.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %196 = phi i32 [ %storemerge291.i, %for.body.lr.ph.i ], [ %storemerge292.i, %if.end193.i.for.body.i_crit_edge ]
  %rank.0294.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc194.i, %if.end193.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %196)
  %cmp139.i = icmp sgt i32 %196, 13
  %arrayidx143.i = getelementptr [19 x i8], ptr @bl_order, i32 0, i32 %rank.0294.i
  %197 = ptrtoint ptr %arrayidx143.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %arrayidx143.i, align 1
  %idxprom.i = zext i8 %198 to i32
  %dl.i215 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 %idxprom.i, i32 1
  %199 = ptrtoint ptr %dl.i215 to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %dl.i215, align 2
  %conv145.i = zext i16 %200 to i32
  %shl147.i = shl i32 %conv145.i, %196
  %201 = ptrtoint ptr %bi_buf187.i to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %bi_buf187.i, align 4
  %203 = trunc i32 %shl147.i to i16
  %conv151.i = or i16 %202, %203
  store i16 %conv151.i, ptr %bi_buf187.i, align 4
  br i1 %cmp139.i, label %if.then141.i, label %if.else178.i

if.then141.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv155.i = trunc i16 %conv151.i to i8
  %204 = ptrtoint ptr %pending_buf156.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %pending_buf156.i, align 4
  %206 = ptrtoint ptr %pending157.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %pending157.i, align 4
  %inc158.i = add i32 %207, 1
  store i32 %inc158.i, ptr %pending157.i, align 4
  %arrayidx159.i = getelementptr i8, ptr %205, i32 %207
  %208 = ptrtoint ptr %arrayidx159.i to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 %conv155.i, ptr %arrayidx159.i, align 1
  %209 = ptrtoint ptr %bi_buf187.i to i32
  call void @__asan_load2_noabort(i32 %209)
  %210 = load i16, ptr %bi_buf187.i, align 4
  %211 = lshr i16 %210, 8
  %conv163.i = trunc i16 %211 to i8
  %212 = load ptr, ptr %pending_buf156.i, align 4
  %213 = load i32, ptr %pending157.i, align 4
  %inc166.i = add i32 %213, 1
  store i32 %inc166.i, ptr %pending157.i, align 4
  %arrayidx167.i = getelementptr i8, ptr %212, i32 %213
  %214 = ptrtoint ptr %arrayidx167.i to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 %conv163.i, ptr %arrayidx167.i, align 1
  %215 = ptrtoint ptr %bi_valid to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %bi_valid, align 4
  %sub171.i = sub i32 16, %216
  %shr172.i = lshr i32 %conv145.i, %sub171.i
  %conv173.i = trunc i32 %shr172.i to i16
  store i16 %conv173.i, ptr %bi_buf187.i, align 4
  %add177.i = add i32 %216, -13
  br label %if.end193.i

if.else178.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %add192.i = add nsw i32 %196, 3
  br label %if.end193.i

if.end193.i:                                      ; preds = %if.else178.i, %if.then141.i
  %storemerge292.i = phi i32 [ %add192.i, %if.else178.i ], [ %add177.i, %if.then141.i ]
  %217 = ptrtoint ptr %bi_valid to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %storemerge292.i, ptr %bi_valid, align 4
  %inc194.i = add nuw nsw i32 %rank.0294.i, 1
  %exitcond.not.i216 = icmp eq i32 %rank.0294.i, %max_blindex.0
  br i1 %exitcond.not.i216, label %send_all_trees.exit, label %if.end193.i.for.body.i_crit_edge

if.end193.i.for.body.i_crit_edge:                 ; preds = %if.end193.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

send_all_trees.exit:                              ; preds = %if.end193.i
  call void @__sanitizer_cov_trace_pc() #10
  %dyn_ltree.i217 = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 36
  tail call fastcc void @send_tree(ptr noundef %s, ptr noundef %dyn_ltree.i217, i32 noundef %138) #8
  %dyn_dtree.i218 = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 37
  tail call fastcc void @send_tree(ptr noundef %s, ptr noundef %dyn_dtree.i218, i32 noundef %140) #8
  tail call fastcc void @compress_block(ptr noundef %s, ptr noundef %dyn_ltree.i217, ptr noundef %dyn_dtree.i218)
  %opt_len125 = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 51
  %218 = ptrtoint ptr %opt_len125 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %opt_len125, align 4
  %add126 = add i32 %219, 3
  %compressed_len127 = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 53
  %220 = ptrtoint ptr %compressed_len127 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %compressed_len127, align 4
  %add128 = add i32 %add126, %221
  store i32 %add128, ptr %compressed_len127, align 4
  br label %if.end130

if.end130:                                        ; preds = %send_all_trees.exit, %if.end62, %if.then19
  tail call fastcc void @init_block(ptr noundef %s)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %eof)
  %tobool.not = icmp eq i32 %eof, 0
  br i1 %tobool.not, label %if.end130.if.end134_crit_edge, label %if.then131

if.end130.if.end134_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end134

if.then131:                                       ; preds = %if.end130
  %bi_valid.i219 = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 57
  %222 = ptrtoint ptr %bi_valid.i219 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %bi_valid.i219, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %223)
  %cmp.i220 = icmp sgt i32 %223, 8
  br i1 %cmp.i220, label %if.then.i226, label %if.else.i227

if.then.i226:                                     ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #10
  %bi_buf.i221 = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 56
  %224 = ptrtoint ptr %bi_buf.i221 to i32
  call void @__asan_load2_noabort(i32 %224)
  %225 = load i16, ptr %bi_buf.i221, align 4
  %conv1.i = trunc i16 %225 to i8
  %pending_buf.i222 = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 2
  %226 = ptrtoint ptr %pending_buf.i222 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %pending_buf.i222, align 4
  %pending.i223 = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 5
  %228 = ptrtoint ptr %pending.i223 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %pending.i223, align 4
  %inc.i224 = add i32 %229, 1
  store i32 %inc.i224, ptr %pending.i223, align 4
  %arrayidx.i225 = getelementptr i8, ptr %227, i32 %229
  %230 = ptrtoint ptr %arrayidx.i225 to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 %conv1.i, ptr %arrayidx.i225, align 1
  %231 = load i16, ptr %bi_buf.i221, align 4
  %232 = lshr i16 %231, 8
  %conv4.i = trunc i16 %232 to i8
  %233 = load ptr, ptr %pending_buf.i222, align 4
  %234 = load i32, ptr %pending.i223, align 4
  %inc7.i = add i32 %234, 1
  store i32 %inc7.i, ptr %pending.i223, align 4
  %arrayidx8.i = getelementptr i8, ptr %233, i32 %234
  %235 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 %conv4.i, ptr %arrayidx8.i, align 1
  br label %bi_windup.exit

if.else.i227:                                     ; preds = %if.then131
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %223)
  %cmp10.i = icmp sgt i32 %223, 0
  br i1 %cmp10.i, label %if.then12.i, label %if.else.i227.bi_windup.exit_crit_edge

if.else.i227.bi_windup.exit_crit_edge:            ; preds = %if.else.i227
  call void @__sanitizer_cov_trace_pc() #10
  br label %bi_windup.exit

if.then12.i:                                      ; preds = %if.else.i227
  call void @__sanitizer_cov_trace_pc() #10
  %bi_buf13.i = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 56
  %236 = ptrtoint ptr %bi_buf13.i to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %bi_buf13.i, align 4
  %conv14.i = trunc i16 %237 to i8
  %pending_buf15.i = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 2
  %238 = ptrtoint ptr %pending_buf15.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %pending_buf15.i, align 4
  %pending16.i = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 5
  %240 = ptrtoint ptr %pending16.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %pending16.i, align 4
  %inc17.i228 = add i32 %241, 1
  store i32 %inc17.i228, ptr %pending16.i, align 4
  %arrayidx18.i229 = getelementptr i8, ptr %239, i32 %241
  %242 = ptrtoint ptr %arrayidx18.i229 to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 %conv14.i, ptr %arrayidx18.i229, align 1
  br label %bi_windup.exit

bi_windup.exit:                                   ; preds = %if.then12.i, %if.else.i227.bi_windup.exit_crit_edge, %if.then.i226
  %bi_buf20.i = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 56
  %243 = ptrtoint ptr %bi_buf20.i to i32
  call void @__asan_store2_noabort(i32 %243)
  store i16 0, ptr %bi_buf20.i, align 4
  %244 = ptrtoint ptr %bi_valid.i219 to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 0, ptr %bi_valid.i219, align 4
  %compressed_len132 = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 53
  %245 = ptrtoint ptr %compressed_len132 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %compressed_len132, align 4
  %add133 = add i32 %246, 7
  store i32 %add133, ptr %compressed_len132, align 4
  br label %if.end134

if.end134:                                        ; preds = %bi_windup.exit, %if.end130.if.end134_crit_edge
  %compressed_len135 = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 53
  %247 = ptrtoint ptr %compressed_len135 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %compressed_len135, align 4
  %shr136 = lshr i32 %248, 3
  ret i32 %shr136
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @build_tree(ptr noundef %s, ptr nocapture noundef %desc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %stat_desc = getelementptr inbounds %struct.tree_desc_s, ptr %desc, i32 0, i32 2
  %2 = ptrtoint ptr %stat_desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stat_desc, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %elems2 = getelementptr inbounds %struct.static_tree_desc_s, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %elems2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %elems2, align 4
  %heap_len = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 44
  %8 = ptrtoint ptr %heap_len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %heap_len, align 4
  %heap_max = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 45
  %9 = ptrtoint ptr %heap_max to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 573, ptr %heap_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp262 = icmp sgt i32 %7, 0
  br i1 %cmp262, label %entry.for.body_crit_edge, label %entry.while.body.lr.ph_crit_edge

entry.while.body.lr.ph_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.lr.ph

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

while.cond.preheader:                             ; preds = %for.inc
  %10 = ptrtoint ptr %heap_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %heap_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp11266 = icmp slt i32 %.pr, 2
  br i1 %cmp11266, label %while.cond.preheader.while.body.lr.ph_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.cond.preheader.while.body.lr.ph_crit_edge:  ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader.while.body.lr.ph_crit_edge, %entry.while.body.lr.ph_crit_edge
  %max_code.0.lcssa279 = phi i32 [ %max_code.1, %while.cond.preheader.while.body.lr.ph_crit_edge ], [ -1, %entry.while.body.lr.ph_crit_edge ]
  %11 = phi i32 [ %.pr, %while.cond.preheader.while.body.lr.ph_crit_edge ], [ 0, %entry.while.body.lr.ph_crit_edge ]
  %opt_len = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 51
  %tobool.not = icmp eq ptr %5, null
  %static_len = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 52
  br label %while.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %max_code.0265 = phi i32 [ %max_code.1, %for.inc.for.body_crit_edge ], [ -1, %entry.for.body_crit_edge ]
  %n.0263 = phi i32 [ %inc9, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ct_data_s, ptr %1, i32 %n.0263
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp3.not = icmp eq i16 %13, 0
  br i1 %cmp3.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %heap_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %heap_len, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %heap_len, align 4
  %arrayidx6 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 43, i32 %inc
  %16 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %n.0263, ptr %arrayidx6, align 4
  %arrayidx7 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 46, i32 %n.0263
  %17 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %arrayidx7, align 1
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %dl = getelementptr %struct.ct_data_s, ptr %1, i32 %n.0263, i32 1
  %18 = ptrtoint ptr %dl to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %dl, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then
  %max_code.1 = phi i32 [ %n.0263, %if.then ], [ %max_code.0265, %if.else ]
  %inc9 = add nuw nsw i32 %n.0263, 1
  %exitcond.not = icmp eq i32 %inc9, %7
  br i1 %exitcond.not, label %while.cond.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

while.body:                                       ; preds = %if.end28.while.body_crit_edge, %while.body.lr.ph
  %19 = phi i32 [ %11, %while.body.lr.ph ], [ %31, %if.end28.while.body_crit_edge ]
  %max_code.2267 = phi i32 [ %max_code.0.lcssa279, %while.body.lr.ph ], [ %spec.select, %if.end28.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %max_code.2267)
  %cmp13 = icmp slt i32 %max_code.2267, 2
  %inc15 = add i32 %max_code.2267, 1
  %spec.select = select i1 %cmp13, i32 %inc15, i32 %max_code.2267
  %spec.select176 = select i1 %cmp13, i32 %inc15, i32 0
  %inc18 = add nsw i32 %19, 1
  %20 = ptrtoint ptr %heap_len to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %inc18, ptr %heap_len, align 4
  %arrayidx19 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 43, i32 %inc18
  %21 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %spec.select176, ptr %arrayidx19, align 4
  %arrayidx20 = getelementptr %struct.ct_data_s, ptr %1, i32 %spec.select176
  %22 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %arrayidx20, align 2
  %arrayidx23 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 46, i32 %spec.select176
  %23 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx23, align 1
  %24 = ptrtoint ptr %opt_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %opt_len, align 4
  %dec = add i32 %25, -1
  store i32 %dec, ptr %opt_len, align 4
  br i1 %tobool.not, label %while.body.if.end28_crit_edge, label %if.then24

while.body.if.end28_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then24:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %dl26 = getelementptr %struct.ct_data_s, ptr %5, i32 %spec.select176, i32 1
  %26 = ptrtoint ptr %dl26 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %dl26, align 2
  %conv27 = zext i16 %27 to i32
  %28 = ptrtoint ptr %static_len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %static_len, align 4
  %sub = sub i32 %29, %conv27
  store i32 %sub, ptr %static_len, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %while.body.if.end28_crit_edge
  %30 = ptrtoint ptr %heap_len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %heap_len, align 4
  %cmp11 = icmp slt i32 %31, 2
  br i1 %cmp11, label %if.end28.while.body_crit_edge, label %if.end28.while.end_crit_edge

if.end28.while.end_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end28.while.body_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %if.end28.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %max_code.2.lcssa = phi i32 [ %max_code.1, %while.cond.preheader.while.end_crit_edge ], [ %spec.select, %if.end28.while.end_crit_edge ]
  %max_code29 = getelementptr inbounds %struct.tree_desc_s, ptr %desc, i32 0, i32 1
  %32 = ptrtoint ptr %max_code29 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %max_code.2.lcssa, ptr %max_code29, align 4
  %33 = ptrtoint ptr %heap_len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %heap_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp32269 = icmp sgt i32 %34, 1
  br i1 %cmp32269, label %for.body34.preheader, label %while.end.do.body.preheader_crit_edge

while.end.do.body.preheader_crit_edge:            ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.preheader

for.body34.preheader:                             ; preds = %while.end
  %div280282 = lshr i32 %34, 1
  br label %for.body34

do.body.preheader:                                ; preds = %pqdownheap.exit.do.body.preheader_crit_edge, %while.end.do.body.preheader_crit_edge
  %arrayidx39 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 43, i32 1
  br label %do.body

for.body34:                                       ; preds = %pqdownheap.exit.for.body34_crit_edge, %for.body34.preheader
  %n.1270 = phi i32 [ %dec36, %pqdownheap.exit.for.body34_crit_edge ], [ %div280282, %for.body34.preheader ]
  %arrayidx.i = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 43, i32 %n.1270
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i, align 4
  %arrayidx62.i = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 46, i32 %36
  %j.0125.i = shl nuw i32 %n.1270, 1
  %37 = ptrtoint ptr %heap_len to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %heap_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0125.i, i32 %38)
  %cmp.not126.i = icmp sgt i32 %j.0125.i, %38
  br i1 %cmp.not126.i, label %for.body34.pqdownheap.exit_crit_edge, label %while.body.lr.ph.i

for.body34.pqdownheap.exit_crit_edge:             ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #10
  br label %pqdownheap.exit

while.body.lr.ph.i:                               ; preds = %for.body34
  %arrayidx39.i = getelementptr %struct.ct_data_s, ptr %1, i32 %36
  br label %while.body.i

while.body.i:                                     ; preds = %if.end72.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %39 = phi i32 [ %38, %while.body.lr.ph.i ], [ %64, %if.end72.i.while.body.i_crit_edge ]
  %j.0129.i = phi i32 [ %j.0125.i, %while.body.lr.ph.i ], [ %j.0.i, %if.end72.i.while.body.i_crit_edge ]
  %k.addr.0127.i = phi i32 [ %n.1270, %while.body.lr.ph.i ], [ %j.1.i, %if.end72.i.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0129.i, i32 %39)
  %cmp2.i = icmp slt i32 %j.0129.i, %39
  br i1 %cmp2.i, label %land.lhs.true.i, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %add.i = or i32 %j.0129.i, 1
  %arrayidx4.i = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 43, i32 %add.i
  %40 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx4.i, align 4
  %arrayidx5.i = getelementptr %struct.ct_data_s, ptr %1, i32 %41
  %42 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx5.i, align 2
  %arrayidx7.i = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 43, i32 %j.0129.i
  %44 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx7.i, align 4
  %arrayidx8.i = getelementptr %struct.ct_data_s, ptr %1, i32 %45
  %46 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx8.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %43, i16 %47)
  %cmp11.i = icmp ult i16 %43, %47
  br i1 %cmp11.i, label %land.lhs.true.i.if.then.i_crit_edge, label %lor.lhs.false.i

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_cmp2(i16 %43, i16 %47)
  %cmp24.i = icmp eq i16 %43, %47
  br i1 %cmp24.i, label %land.lhs.true26.i, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true26.i:                                ; preds = %lor.lhs.false.i
  %arrayidx30.i = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 46, i32 %41
  %48 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx30.i, align 1
  %arrayidx35.i = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 46, i32 %45
  %50 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx35.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %51)
  %cmp37.not.i = icmp ugt i8 %49, %51
  br i1 %cmp37.not.i, label %land.lhs.true26.i.if.end.i_crit_edge, label %land.lhs.true26.i.if.then.i_crit_edge

land.lhs.true26.i.if.then.i_crit_edge:            ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

land.lhs.true26.i.if.end.i_crit_edge:             ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true26.i.if.then.i_crit_edge, %land.lhs.true.i.if.then.i_crit_edge
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true26.i.if.end.i_crit_edge, %lor.lhs.false.i.if.end.i_crit_edge, %while.body.i.if.end.i_crit_edge
  %j.1.i = phi i32 [ %add.i, %if.then.i ], [ %j.0129.i, %land.lhs.true26.i.if.end.i_crit_edge ], [ %j.0129.i, %lor.lhs.false.i.if.end.i_crit_edge ], [ %j.0129.i, %while.body.i.if.end.i_crit_edge ]
  %52 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx39.i, align 2
  %arrayidx43.i = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 43, i32 %j.1.i
  %54 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx43.i, align 4
  %arrayidx44.i = getelementptr %struct.ct_data_s, ptr %1, i32 %55
  %56 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %arrayidx44.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %53, i16 %57)
  %cmp47.i = icmp ult i16 %53, %57
  br i1 %cmp47.i, label %if.end.i.pqdownheap.exit_crit_edge, label %lor.lhs.false49.i

if.end.i.pqdownheap.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pqdownheap.exit

lor.lhs.false49.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp2(i16 %53, i16 %57)
  %cmp58.i = icmp eq i16 %53, %57
  br i1 %cmp58.i, label %land.lhs.true60.i, label %lor.lhs.false49.i.if.end72.i_crit_edge

lor.lhs.false49.i.if.end72.i_crit_edge:           ; preds = %lor.lhs.false49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.i

land.lhs.true60.i:                                ; preds = %lor.lhs.false49.i
  %58 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx62.i, align 1
  %arrayidx67.i = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 46, i32 %55
  %60 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx67.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %59, i8 %61)
  %cmp69.not.i = icmp ugt i8 %59, %61
  br i1 %cmp69.not.i, label %land.lhs.true60.i.if.end72.i_crit_edge, label %land.lhs.true60.i.pqdownheap.exit_crit_edge

land.lhs.true60.i.pqdownheap.exit_crit_edge:      ; preds = %land.lhs.true60.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pqdownheap.exit

land.lhs.true60.i.if.end72.i_crit_edge:           ; preds = %land.lhs.true60.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.i

if.end72.i:                                       ; preds = %land.lhs.true60.i.if.end72.i_crit_edge, %lor.lhs.false49.i.if.end72.i_crit_edge
  %arrayidx76.i = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 43, i32 %k.addr.0127.i
  %62 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %55, ptr %arrayidx76.i, align 4
  %j.0.i = shl i32 %j.1.i, 1
  %63 = ptrtoint ptr %heap_len to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %heap_len, align 4
  %cmp.not.i = icmp sgt i32 %j.0.i, %64
  br i1 %cmp.not.i, label %if.end72.i.pqdownheap.exit_crit_edge, label %if.end72.i.while.body.i_crit_edge

if.end72.i.while.body.i_crit_edge:                ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.end72.i.pqdownheap.exit_crit_edge:             ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pqdownheap.exit

pqdownheap.exit:                                  ; preds = %if.end72.i.pqdownheap.exit_crit_edge, %land.lhs.true60.i.pqdownheap.exit_crit_edge, %if.end.i.pqdownheap.exit_crit_edge, %for.body34.pqdownheap.exit_crit_edge
  %k.addr.0.lcssa.i = phi i32 [ %n.1270, %for.body34.pqdownheap.exit_crit_edge ], [ %j.1.i, %if.end72.i.pqdownheap.exit_crit_edge ], [ %k.addr.0127.i, %land.lhs.true60.i.pqdownheap.exit_crit_edge ], [ %k.addr.0127.i, %if.end.i.pqdownheap.exit_crit_edge ]
  %arrayidx79.i = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 43, i32 %k.addr.0.lcssa.i
  %65 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %36, ptr %arrayidx79.i, align 4
  %dec36 = add nsw i32 %n.1270, -1
  %cmp32 = icmp sgt i32 %n.1270, 1
  br i1 %cmp32, label %pqdownheap.exit.for.body34_crit_edge, label %pqdownheap.exit.do.body.preheader_crit_edge

pqdownheap.exit.do.body.preheader_crit_edge:      ; preds = %pqdownheap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.preheader

pqdownheap.exit.for.body34_crit_edge:             ; preds = %pqdownheap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body34

do.body:                                          ; preds = %pqdownheap.exit258.do.body_crit_edge, %do.body.preheader
  %node.0 = phi i32 [ %inc88, %pqdownheap.exit258.do.body_crit_edge ], [ %7, %do.body.preheader ]
  %66 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx39, align 4
  %68 = ptrtoint ptr %heap_len to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %heap_len, align 4
  %dec42 = add i32 %69, -1
  store i32 %dec42, ptr %heap_len, align 4
  %arrayidx43 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 43, i32 %69
  %70 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx43, align 4
  store i32 %71, ptr %arrayidx39, align 4
  %arrayidx62.i178 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 46, i32 %71
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dec42)
  %cmp.not126.i180 = icmp slt i32 %dec42, 2
  br i1 %cmp.not126.i180, label %do.body.pqdownheap.exit217_crit_edge, label %while.body.lr.ph.i182

do.body.pqdownheap.exit217_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %pqdownheap.exit217

while.body.lr.ph.i182:                            ; preds = %do.body
  %arrayidx39.i181 = getelementptr %struct.ct_data_s, ptr %1, i32 %71
  br label %while.body.i186

while.body.i186:                                  ; preds = %if.end72.i214.while.body.i186_crit_edge, %while.body.lr.ph.i182
  %72 = phi i32 [ %dec42, %while.body.lr.ph.i182 ], [ %97, %if.end72.i214.while.body.i186_crit_edge ]
  %j.0129.i183 = phi i32 [ 2, %while.body.lr.ph.i182 ], [ %j.0.i212, %if.end72.i214.while.body.i186_crit_edge ]
  %k.addr.0127.i184 = phi i32 [ 1, %while.body.lr.ph.i182 ], [ %j.1.i201, %if.end72.i214.while.body.i186_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0129.i183, i32 %72)
  %cmp2.i185 = icmp slt i32 %j.0129.i183, %72
  br i1 %cmp2.i185, label %land.lhs.true.i193, label %while.body.i186.if.end.i205_crit_edge

while.body.i186.if.end.i205_crit_edge:            ; preds = %while.body.i186
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i205

land.lhs.true.i193:                               ; preds = %while.body.i186
  %add.i187 = or i32 %j.0129.i183, 1
  %arrayidx4.i188 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 43, i32 %add.i187
  %73 = ptrtoint ptr %arrayidx4.i188 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx4.i188, align 4
  %arrayidx5.i189 = getelementptr %struct.ct_data_s, ptr %1, i32 %74
  %75 = ptrtoint ptr %arrayidx5.i189 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %arrayidx5.i189, align 2
  %arrayidx7.i190 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 43, i32 %j.0129.i183
  %77 = ptrtoint ptr %arrayidx7.i190 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx7.i190, align 4
  %arrayidx8.i191 = getelementptr %struct.ct_data_s, ptr %1, i32 %78
  %79 = ptrtoint ptr %arrayidx8.i191 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %arrayidx8.i191, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %76, i16 %80)
  %cmp11.i192 = icmp ult i16 %76, %80
  br i1 %cmp11.i192, label %land.lhs.true.i193.if.then.i200_crit_edge, label %lor.lhs.false.i195

land.lhs.true.i193.if.then.i200_crit_edge:        ; preds = %land.lhs.true.i193
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i200

lor.lhs.false.i195:                               ; preds = %land.lhs.true.i193
  call void @__sanitizer_cov_trace_cmp2(i16 %76, i16 %80)
  %cmp24.i194 = icmp eq i16 %76, %80
  br i1 %cmp24.i194, label %land.lhs.true26.i199, label %lor.lhs.false.i195.if.end.i205_crit_edge

lor.lhs.false.i195.if.end.i205_crit_edge:         ; preds = %lor.lhs.false.i195
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i205

land.lhs.true26.i199:                             ; preds = %lor.lhs.false.i195
  %arrayidx30.i196 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 46, i32 %74
  %81 = ptrtoint ptr %arrayidx30.i196 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx30.i196, align 1
  %arrayidx35.i197 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 46, i32 %78
  %83 = ptrtoint ptr %arrayidx35.i197 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx35.i197, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %82, i8 %84)
  %cmp37.not.i198 = icmp ugt i8 %82, %84
  br i1 %cmp37.not.i198, label %land.lhs.true26.i199.if.end.i205_crit_edge, label %land.lhs.true26.i199.if.then.i200_crit_edge

land.lhs.true26.i199.if.then.i200_crit_edge:      ; preds = %land.lhs.true26.i199
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i200

land.lhs.true26.i199.if.end.i205_crit_edge:       ; preds = %land.lhs.true26.i199
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i205

if.then.i200:                                     ; preds = %land.lhs.true26.i199.if.then.i200_crit_edge, %land.lhs.true.i193.if.then.i200_crit_edge
  br label %if.end.i205

if.end.i205:                                      ; preds = %if.then.i200, %land.lhs.true26.i199.if.end.i205_crit_edge, %lor.lhs.false.i195.if.end.i205_crit_edge, %while.body.i186.if.end.i205_crit_edge
  %j.1.i201 = phi i32 [ %add.i187, %if.then.i200 ], [ %j.0129.i183, %land.lhs.true26.i199.if.end.i205_crit_edge ], [ %j.0129.i183, %lor.lhs.false.i195.if.end.i205_crit_edge ], [ %j.0129.i183, %while.body.i186.if.end.i205_crit_edge ]
  %85 = ptrtoint ptr %arrayidx39.i181 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %arrayidx39.i181, align 2
  %arrayidx43.i202 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 43, i32 %j.1.i201
  %87 = ptrtoint ptr %arrayidx43.i202 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx43.i202, align 4
  %arrayidx44.i203 = getelementptr %struct.ct_data_s, ptr %1, i32 %88
  %89 = ptrtoint ptr %arrayidx44.i203 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %arrayidx44.i203, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %86, i16 %90)
  %cmp47.i204 = icmp ult i16 %86, %90
  br i1 %cmp47.i204, label %if.end.i205.pqdownheap.exit217_crit_edge, label %lor.lhs.false49.i207

if.end.i205.pqdownheap.exit217_crit_edge:         ; preds = %if.end.i205
  call void @__sanitizer_cov_trace_pc() #10
  br label %pqdownheap.exit217

lor.lhs.false49.i207:                             ; preds = %if.end.i205
  call void @__sanitizer_cov_trace_cmp2(i16 %86, i16 %90)
  %cmp58.i206 = icmp eq i16 %86, %90
  br i1 %cmp58.i206, label %land.lhs.true60.i210, label %lor.lhs.false49.i207.if.end72.i214_crit_edge

lor.lhs.false49.i207.if.end72.i214_crit_edge:     ; preds = %lor.lhs.false49.i207
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.i214

land.lhs.true60.i210:                             ; preds = %lor.lhs.false49.i207
  %91 = ptrtoint ptr %arrayidx62.i178 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx62.i178, align 1
  %arrayidx67.i208 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 46, i32 %88
  %93 = ptrtoint ptr %arrayidx67.i208 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx67.i208, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %92, i8 %94)
  %cmp69.not.i209 = icmp ugt i8 %92, %94
  br i1 %cmp69.not.i209, label %land.lhs.true60.i210.if.end72.i214_crit_edge, label %land.lhs.true60.i210.pqdownheap.exit217_crit_edge

land.lhs.true60.i210.pqdownheap.exit217_crit_edge: ; preds = %land.lhs.true60.i210
  call void @__sanitizer_cov_trace_pc() #10
  br label %pqdownheap.exit217

land.lhs.true60.i210.if.end72.i214_crit_edge:     ; preds = %land.lhs.true60.i210
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.i214

if.end72.i214:                                    ; preds = %land.lhs.true60.i210.if.end72.i214_crit_edge, %lor.lhs.false49.i207.if.end72.i214_crit_edge
  %arrayidx76.i211 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 43, i32 %k.addr.0127.i184
  %95 = ptrtoint ptr %arrayidx76.i211 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %88, ptr %arrayidx76.i211, align 4
  %j.0.i212 = shl i32 %j.1.i201, 1
  %96 = ptrtoint ptr %heap_len to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %heap_len, align 4
  %cmp.not.i213 = icmp sgt i32 %j.0.i212, %97
  br i1 %cmp.not.i213, label %if.end72.i214.pqdownheap.exit217_crit_edge, label %if.end72.i214.while.body.i186_crit_edge

if.end72.i214.while.body.i186_crit_edge:          ; preds = %if.end72.i214
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i186

if.end72.i214.pqdownheap.exit217_crit_edge:       ; preds = %if.end72.i214
  call void @__sanitizer_cov_trace_pc() #10
  br label %pqdownheap.exit217

pqdownheap.exit217:                               ; preds = %if.end72.i214.pqdownheap.exit217_crit_edge, %land.lhs.true60.i210.pqdownheap.exit217_crit_edge, %if.end.i205.pqdownheap.exit217_crit_edge, %do.body.pqdownheap.exit217_crit_edge
  %k.addr.0.lcssa.i215 = phi i32 [ 1, %do.body.pqdownheap.exit217_crit_edge ], [ %j.1.i201, %if.end72.i214.pqdownheap.exit217_crit_edge ], [ %k.addr.0127.i184, %land.lhs.true60.i210.pqdownheap.exit217_crit_edge ], [ %k.addr.0127.i184, %if.end.i205.pqdownheap.exit217_crit_edge ]
  %arrayidx79.i216 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 43, i32 %k.addr.0.lcssa.i215
  %98 = ptrtoint ptr %arrayidx79.i216 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %71, ptr %arrayidx79.i216, align 4
  %99 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx39, align 4
  %101 = ptrtoint ptr %heap_max to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %heap_max, align 4
  %dec50 = add i32 %102, -1
  store i32 %dec50, ptr %heap_max, align 4
  %arrayidx51 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 43, i32 %dec50
  %103 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %67, ptr %arrayidx51, align 4
  %104 = load i32, ptr %heap_max, align 4
  %dec54 = add i32 %104, -1
  store i32 %dec54, ptr %heap_max, align 4
  %arrayidx55 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 43, i32 %dec54
  %105 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %100, ptr %arrayidx55, align 4
  %arrayidx56 = getelementptr %struct.ct_data_s, ptr %1, i32 %67
  %106 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %arrayidx56, align 2
  %arrayidx59 = getelementptr %struct.ct_data_s, ptr %1, i32 %100
  %108 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %arrayidx59, align 2
  %add = add i16 %109, %107
  %arrayidx63 = getelementptr %struct.ct_data_s, ptr %1, i32 %node.0
  %110 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %add, ptr %arrayidx63, align 2
  %arrayidx66 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 46, i32 %67
  %111 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx66, align 1
  %arrayidx68 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 46, i32 %100
  %113 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx68, align 1
  %115 = tail call i8 @llvm.umax.i8(i8 %112, i8 %114)
  %add79 = add i8 %115, 1
  %arrayidx82 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 46, i32 %node.0
  %116 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %add79, ptr %arrayidx82, align 1
  %conv83 = trunc i32 %node.0 to i16
  %dl85 = getelementptr %struct.ct_data_s, ptr %1, i32 %100, i32 1
  %117 = ptrtoint ptr %dl85 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %conv83, ptr %dl85, align 2
  %dl87 = getelementptr %struct.ct_data_s, ptr %1, i32 %67, i32 1
  %118 = ptrtoint ptr %dl87 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %conv83, ptr %dl87, align 2
  %inc88 = add i32 %node.0, 1
  %119 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %node.0, ptr %arrayidx39, align 4
  %120 = ptrtoint ptr %heap_len to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %heap_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %121)
  %cmp.not126.i221 = icmp slt i32 %121, 2
  br i1 %cmp.not126.i221, label %pqdownheap.exit217.pqdownheap.exit258_crit_edge, label %pqdownheap.exit217.while.body.i227_crit_edge

pqdownheap.exit217.while.body.i227_crit_edge:     ; preds = %pqdownheap.exit217
  br label %while.body.i227

pqdownheap.exit217.pqdownheap.exit258_crit_edge:  ; preds = %pqdownheap.exit217
  call void @__sanitizer_cov_trace_pc() #10
  br label %pqdownheap.exit258

while.body.i227:                                  ; preds = %if.end72.i255.while.body.i227_crit_edge, %pqdownheap.exit217.while.body.i227_crit_edge
  %122 = phi i32 [ %147, %if.end72.i255.while.body.i227_crit_edge ], [ %121, %pqdownheap.exit217.while.body.i227_crit_edge ]
  %j.0129.i224 = phi i32 [ %j.0.i253, %if.end72.i255.while.body.i227_crit_edge ], [ 2, %pqdownheap.exit217.while.body.i227_crit_edge ]
  %k.addr.0127.i225 = phi i32 [ %j.1.i242, %if.end72.i255.while.body.i227_crit_edge ], [ 1, %pqdownheap.exit217.while.body.i227_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0129.i224, i32 %122)
  %cmp2.i226 = icmp slt i32 %j.0129.i224, %122
  br i1 %cmp2.i226, label %land.lhs.true.i234, label %while.body.i227.if.end.i246_crit_edge

while.body.i227.if.end.i246_crit_edge:            ; preds = %while.body.i227
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i246

land.lhs.true.i234:                               ; preds = %while.body.i227
  %add.i228 = or i32 %j.0129.i224, 1
  %arrayidx4.i229 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 43, i32 %add.i228
  %123 = ptrtoint ptr %arrayidx4.i229 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx4.i229, align 4
  %arrayidx5.i230 = getelementptr %struct.ct_data_s, ptr %1, i32 %124
  %125 = ptrtoint ptr %arrayidx5.i230 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %arrayidx5.i230, align 2
  %arrayidx7.i231 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 43, i32 %j.0129.i224
  %127 = ptrtoint ptr %arrayidx7.i231 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx7.i231, align 4
  %arrayidx8.i232 = getelementptr %struct.ct_data_s, ptr %1, i32 %128
  %129 = ptrtoint ptr %arrayidx8.i232 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %arrayidx8.i232, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %126, i16 %130)
  %cmp11.i233 = icmp ult i16 %126, %130
  br i1 %cmp11.i233, label %land.lhs.true.i234.if.then.i241_crit_edge, label %lor.lhs.false.i236

land.lhs.true.i234.if.then.i241_crit_edge:        ; preds = %land.lhs.true.i234
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i241

lor.lhs.false.i236:                               ; preds = %land.lhs.true.i234
  call void @__sanitizer_cov_trace_cmp2(i16 %126, i16 %130)
  %cmp24.i235 = icmp eq i16 %126, %130
  br i1 %cmp24.i235, label %land.lhs.true26.i240, label %lor.lhs.false.i236.if.end.i246_crit_edge

lor.lhs.false.i236.if.end.i246_crit_edge:         ; preds = %lor.lhs.false.i236
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i246

land.lhs.true26.i240:                             ; preds = %lor.lhs.false.i236
  %arrayidx30.i237 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 46, i32 %124
  %131 = ptrtoint ptr %arrayidx30.i237 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx30.i237, align 1
  %arrayidx35.i238 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 46, i32 %128
  %133 = ptrtoint ptr %arrayidx35.i238 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx35.i238, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %132, i8 %134)
  %cmp37.not.i239 = icmp ugt i8 %132, %134
  br i1 %cmp37.not.i239, label %land.lhs.true26.i240.if.end.i246_crit_edge, label %land.lhs.true26.i240.if.then.i241_crit_edge

land.lhs.true26.i240.if.then.i241_crit_edge:      ; preds = %land.lhs.true26.i240
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i241

land.lhs.true26.i240.if.end.i246_crit_edge:       ; preds = %land.lhs.true26.i240
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i246

if.then.i241:                                     ; preds = %land.lhs.true26.i240.if.then.i241_crit_edge, %land.lhs.true.i234.if.then.i241_crit_edge
  br label %if.end.i246

if.end.i246:                                      ; preds = %if.then.i241, %land.lhs.true26.i240.if.end.i246_crit_edge, %lor.lhs.false.i236.if.end.i246_crit_edge, %while.body.i227.if.end.i246_crit_edge
  %j.1.i242 = phi i32 [ %add.i228, %if.then.i241 ], [ %j.0129.i224, %land.lhs.true26.i240.if.end.i246_crit_edge ], [ %j.0129.i224, %lor.lhs.false.i236.if.end.i246_crit_edge ], [ %j.0129.i224, %while.body.i227.if.end.i246_crit_edge ]
  %135 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %arrayidx63, align 2
  %arrayidx43.i243 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 43, i32 %j.1.i242
  %137 = ptrtoint ptr %arrayidx43.i243 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx43.i243, align 4
  %arrayidx44.i244 = getelementptr %struct.ct_data_s, ptr %1, i32 %138
  %139 = ptrtoint ptr %arrayidx44.i244 to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %arrayidx44.i244, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %136, i16 %140)
  %cmp47.i245 = icmp ult i16 %136, %140
  br i1 %cmp47.i245, label %if.end.i246.pqdownheap.exit258_crit_edge, label %lor.lhs.false49.i248

if.end.i246.pqdownheap.exit258_crit_edge:         ; preds = %if.end.i246
  call void @__sanitizer_cov_trace_pc() #10
  br label %pqdownheap.exit258

lor.lhs.false49.i248:                             ; preds = %if.end.i246
  call void @__sanitizer_cov_trace_cmp2(i16 %136, i16 %140)
  %cmp58.i247 = icmp eq i16 %136, %140
  br i1 %cmp58.i247, label %land.lhs.true60.i251, label %lor.lhs.false49.i248.if.end72.i255_crit_edge

lor.lhs.false49.i248.if.end72.i255_crit_edge:     ; preds = %lor.lhs.false49.i248
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.i255

land.lhs.true60.i251:                             ; preds = %lor.lhs.false49.i248
  %141 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx82, align 1
  %arrayidx67.i249 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 46, i32 %138
  %143 = ptrtoint ptr %arrayidx67.i249 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx67.i249, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %142, i8 %144)
  %cmp69.not.i250 = icmp ugt i8 %142, %144
  br i1 %cmp69.not.i250, label %land.lhs.true60.i251.if.end72.i255_crit_edge, label %land.lhs.true60.i251.pqdownheap.exit258_crit_edge

land.lhs.true60.i251.pqdownheap.exit258_crit_edge: ; preds = %land.lhs.true60.i251
  call void @__sanitizer_cov_trace_pc() #10
  br label %pqdownheap.exit258

land.lhs.true60.i251.if.end72.i255_crit_edge:     ; preds = %land.lhs.true60.i251
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.i255

if.end72.i255:                                    ; preds = %land.lhs.true60.i251.if.end72.i255_crit_edge, %lor.lhs.false49.i248.if.end72.i255_crit_edge
  %arrayidx76.i252 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 43, i32 %k.addr.0127.i225
  %145 = ptrtoint ptr %arrayidx76.i252 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %138, ptr %arrayidx76.i252, align 4
  %j.0.i253 = shl i32 %j.1.i242, 1
  %146 = ptrtoint ptr %heap_len to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %heap_len, align 4
  %cmp.not.i254 = icmp sgt i32 %j.0.i253, %147
  br i1 %cmp.not.i254, label %if.end72.i255.pqdownheap.exit258_crit_edge, label %if.end72.i255.while.body.i227_crit_edge

if.end72.i255.while.body.i227_crit_edge:          ; preds = %if.end72.i255
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i227

if.end72.i255.pqdownheap.exit258_crit_edge:       ; preds = %if.end72.i255
  call void @__sanitizer_cov_trace_pc() #10
  br label %pqdownheap.exit258

pqdownheap.exit258:                               ; preds = %if.end72.i255.pqdownheap.exit258_crit_edge, %land.lhs.true60.i251.pqdownheap.exit258_crit_edge, %if.end.i246.pqdownheap.exit258_crit_edge, %pqdownheap.exit217.pqdownheap.exit258_crit_edge
  %k.addr.0.lcssa.i256 = phi i32 [ 1, %pqdownheap.exit217.pqdownheap.exit258_crit_edge ], [ %j.1.i242, %if.end72.i255.pqdownheap.exit258_crit_edge ], [ %k.addr.0127.i225, %land.lhs.true60.i251.pqdownheap.exit258_crit_edge ], [ %k.addr.0127.i225, %if.end.i246.pqdownheap.exit258_crit_edge ]
  %arrayidx79.i257 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 43, i32 %k.addr.0.lcssa.i256
  %148 = ptrtoint ptr %arrayidx79.i257 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %node.0, ptr %arrayidx79.i257, align 4
  %149 = ptrtoint ptr %heap_len to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %heap_len, align 4
  %cmp92 = icmp sgt i32 %150, 1
  br i1 %cmp92, label %pqdownheap.exit258.do.body_crit_edge, label %do.end

pqdownheap.exit258.do.body_crit_edge:             ; preds = %pqdownheap.exit258
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %pqdownheap.exit258
  %151 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %arrayidx39, align 4
  %153 = ptrtoint ptr %heap_max to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %heap_max, align 4
  %dec98 = add i32 %154, -1
  store i32 %dec98, ptr %heap_max, align 4
  %arrayidx99 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 43, i32 %dec98
  %155 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %152, ptr %arrayidx99, align 4
  %156 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %desc, align 4
  %158 = ptrtoint ptr %max_code29 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %max_code29, align 4
  %160 = ptrtoint ptr %stat_desc to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %stat_desc, align 4
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %161, align 4
  %extra_bits.i = getelementptr inbounds %struct.static_tree_desc_s, ptr %161, i32 0, i32 1
  %164 = ptrtoint ptr %extra_bits.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %extra_bits.i, align 4
  %extra_base.i = getelementptr inbounds %struct.static_tree_desc_s, ptr %161, i32 0, i32 2
  %166 = ptrtoint ptr %extra_base.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %extra_base.i, align 4
  %max_length5.i = getelementptr inbounds %struct.static_tree_desc_s, ptr %161, i32 0, i32 4
  %168 = ptrtoint ptr %max_length5.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %max_length5.i, align 4
  %uglygep.i = getelementptr i8, ptr %s, i32 2868
  %170 = call ptr @memset(ptr %uglygep.i, i32 0, i32 32)
  %171 = load i32, ptr %heap_max, align 4
  %arrayidx6.i = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 43, i32 %171
  %172 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %arrayidx6.i, align 4
  %dl.i = getelementptr %struct.ct_data_s, ptr %157, i32 %173, i32 1
  %174 = ptrtoint ptr %dl.i to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 0, ptr %dl.i, align 2
  %175 = load i32, ptr %heap_max, align 4
  %h.0211.i = add i32 %175, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 573, i32 %h.0211.i)
  %cmp10212.i = icmp slt i32 %h.0211.i, 573
  br i1 %cmp10212.i, label %for.body11.lr.ph.i, label %do.end.gen_bitlen.exit_crit_edge

do.end.gen_bitlen.exit_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %gen_bitlen.exit

for.body11.lr.ph.i:                               ; preds = %do.end
  %opt_len.i = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 51
  %tobool.not.i = icmp eq ptr %163, null
  %static_len.i = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 52
  br label %for.body11.i

for.body11.i:                                     ; preds = %for.inc50.i.for.body11.i_crit_edge, %for.body11.lr.ph.i
  %h.0214.i = phi i32 [ %h.0211.i, %for.body11.lr.ph.i ], [ %h.0.i, %for.inc50.i.for.body11.i_crit_edge ]
  %overflow.0213.i = phi i32 [ 0, %for.body11.lr.ph.i ], [ %spec.select207.i, %for.inc50.i.for.body11.i_crit_edge ]
  %arrayidx13.i = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 43, i32 %h.0214.i
  %176 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx13.i, align 4
  %arrayidx14.i = getelementptr %struct.ct_data_s, ptr %157, i32 %177
  %dl15.i = getelementptr %struct.ct_data_s, ptr %157, i32 %177, i32 1
  %178 = ptrtoint ptr %dl15.i to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %dl15.i, align 2
  %idxprom.i = zext i16 %179 to i32
  %dl17.i = getelementptr %struct.ct_data_s, ptr %157, i32 %idxprom.i, i32 1
  %180 = ptrtoint ptr %dl17.i to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %dl17.i, align 2
  %conv.i = zext i16 %181 to i32
  %add18.i = add nuw nsw i32 %conv.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %169, i32 %conv.i)
  %cmp19.not.i = icmp sgt i32 %169, %conv.i
  %spec.select.i = select i1 %cmp19.not.i, i32 %add18.i, i32 %169
  %not.cmp19.not.i = xor i1 %cmp19.not.i, true
  %inc21.i = zext i1 %not.cmp19.not.i to i32
  %spec.select207.i = add i32 %overflow.0213.i, %inc21.i
  %conv22.i = trunc i32 %spec.select.i to i16
  %182 = ptrtoint ptr %dl15.i to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 %conv22.i, ptr %dl15.i, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %177, i32 %159)
  %cmp25.i = icmp sgt i32 %177, %159
  br i1 %cmp25.i, label %for.body11.i.for.inc50.i_crit_edge, label %if.end28.i

for.body11.i.for.inc50.i_crit_edge:               ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc50.i

if.end28.i:                                       ; preds = %for.body11.i
  %arrayidx30.i259 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 42, i32 %spec.select.i
  %183 = ptrtoint ptr %arrayidx30.i259 to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %arrayidx30.i259, align 2
  %inc31.i = add i16 %184, 1
  store i16 %inc31.i, ptr %arrayidx30.i259, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %177, i32 %167)
  %cmp32.not.i = icmp slt i32 %177, %167
  br i1 %cmp32.not.i, label %if.end28.i.if.end36.i_crit_edge, label %if.then34.i

if.end28.i.if.end36.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36.i

if.then34.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = sub i32 %177, %167
  %arrayidx35.i260 = getelementptr i32, ptr %165, i32 %sub.i
  %185 = ptrtoint ptr %arrayidx35.i260 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %arrayidx35.i260, align 4
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then34.i, %if.end28.i.if.end36.i_crit_edge
  %xbits.0.i = phi i32 [ %186, %if.then34.i ], [ 0, %if.end28.i.if.end36.i_crit_edge ]
  %187 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %arrayidx14.i, align 2
  %conv38.i = zext i16 %188 to i32
  %add39.i = add i32 %xbits.0.i, %spec.select.i
  %mul.i = mul i32 %add39.i, %conv38.i
  %189 = ptrtoint ptr %opt_len.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %opt_len.i, align 4
  %add40.i = add i32 %mul.i, %190
  store i32 %add40.i, ptr %opt_len.i, align 4
  br i1 %tobool.not.i, label %if.end36.i.for.inc50.i_crit_edge, label %if.then41.i

if.end36.i.for.inc50.i_crit_edge:                 ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc50.i

if.then41.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  %dl44.i = getelementptr %struct.ct_data_s, ptr %163, i32 %177, i32 1
  %191 = ptrtoint ptr %dl44.i to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %dl44.i, align 2
  %conv45.i = zext i16 %192 to i32
  %add46.i = add i32 %xbits.0.i, %conv45.i
  %mul47.i = mul i32 %add46.i, %conv38.i
  %193 = ptrtoint ptr %static_len.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %static_len.i, align 4
  %add48.i = add i32 %mul47.i, %194
  store i32 %add48.i, ptr %static_len.i, align 4
  br label %for.inc50.i

for.inc50.i:                                      ; preds = %if.then41.i, %if.end36.i.for.inc50.i_crit_edge, %for.body11.i.for.inc50.i_crit_edge
  %h.0.i = add i32 %h.0214.i, 1
  %exitcond.not.i = icmp eq i32 %h.0.i, 573
  br i1 %exitcond.not.i, label %for.end52.i, label %for.inc50.i.for.body11.i_crit_edge

for.inc50.i.for.body11.i_crit_edge:               ; preds = %for.inc50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body11.i

for.end52.i:                                      ; preds = %for.inc50.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select207.i)
  %cmp53.i = icmp eq i32 %spec.select207.i, 0
  br i1 %cmp53.i, label %for.end52.i.gen_bitlen.exit_crit_edge, label %do.body.preheader.i

for.end52.i.gen_bitlen.exit_crit_edge:            ; preds = %for.end52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gen_bitlen.exit

do.body.preheader.i:                              ; preds = %for.end52.i
  %arrayidx73.i = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 42, i32 %169
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %do.body.preheader.i
  %overflow.2.i = phi i32 [ %sub75.i, %while.end.i.do.body.i_crit_edge ], [ %spec.select207.i, %do.body.preheader.i ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %do.body.i
  %bits.2.in.i = phi i32 [ %169, %do.body.i ], [ %bits.2.i, %while.cond.i.while.cond.i_crit_edge ]
  %bits.2.i = add i32 %bits.2.in.i, -1
  %arrayidx59.i = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 42, i32 %bits.2.i
  %195 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %arrayidx59.i, align 2
  %cmp61.i = icmp eq i16 %196, 0
  br i1 %cmp61.i, label %while.cond.i.while.cond.i_crit_edge, label %while.end.i

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  %dec65.i = add i16 %196, -1
  %197 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 %dec65.i, ptr %arrayidx59.i, align 2
  %arrayidx68.i = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 42, i32 %bits.2.in.i
  %198 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %arrayidx68.i, align 2
  %add70.i = add i16 %199, 2
  store i16 %add70.i, ptr %arrayidx68.i, align 2
  %200 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %arrayidx73.i, align 2
  %dec74.i = add i16 %201, -1
  store i16 %dec74.i, ptr %arrayidx73.i, align 2
  %sub75.i = add i32 %overflow.2.i, -2
  %cmp76.i = icmp sgt i32 %sub75.i, 0
  br i1 %cmp76.i, label %while.end.i.do.body.i_crit_edge, label %for.cond78.preheader.i

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

for.cond78.preheader.i:                           ; preds = %while.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %cmp79.not216.i = icmp eq i32 %169, 0
  br i1 %cmp79.not216.i, label %for.cond78.preheader.i.gen_bitlen.exit_crit_edge, label %for.cond78.preheader.i.for.body81.i_crit_edge

for.cond78.preheader.i.for.body81.i_crit_edge:    ; preds = %for.cond78.preheader.i
  br label %for.body81.i

for.cond78.preheader.i.gen_bitlen.exit_crit_edge: ; preds = %for.cond78.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gen_bitlen.exit

for.body81.i:                                     ; preds = %for.inc118.i.for.body81.i_crit_edge, %for.cond78.preheader.i.for.body81.i_crit_edge
  %bits.3218.i = phi i32 [ %dec119.i, %for.inc118.i.for.body81.i_crit_edge ], [ %169, %for.cond78.preheader.i.for.body81.i_crit_edge ]
  %h.1217.i = phi i32 [ %h.2.ph.i.lcssa, %for.inc118.i.for.body81.i_crit_edge ], [ 573, %for.cond78.preheader.i.for.body81.i_crit_edge ]
  %arrayidx83.i = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 42, i32 %bits.3218.i
  %202 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_load2_noabort(i32 %202)
  %203 = load i16, ptr %arrayidx83.i, align 2
  %conv112.i = trunc i32 %bits.3218.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %203)
  %cmp86.not.i272 = icmp eq i16 %203, 0
  br i1 %cmp86.not.i272, label %for.body81.i.for.inc118.i_crit_edge, label %while.cond85.outer.i.split.preheader

for.body81.i.for.inc118.i_crit_edge:              ; preds = %for.body81.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc118.i

while.cond85.outer.i.split.preheader:             ; preds = %for.body81.i
  %conv84.i = zext i16 %203 to i32
  br label %while.cond85.outer.i.split

while.cond85.outer.i.split:                       ; preds = %if.end115.i.while.cond85.outer.i.split_crit_edge, %while.cond85.outer.i.split.preheader
  %n.0.ph.i274 = phi i32 [ %dec116.i, %if.end115.i.while.cond85.outer.i.split_crit_edge ], [ %conv84.i, %while.cond85.outer.i.split.preheader ]
  %h.2.ph.i273 = phi i32 [ %dec90.i, %if.end115.i.while.cond85.outer.i.split_crit_edge ], [ %h.1217.i, %while.cond85.outer.i.split.preheader ]
  br label %while.cond85.i

while.cond85.i:                                   ; preds = %while.cond85.i.while.cond85.i_crit_edge, %while.cond85.outer.i.split
  %h.2.i = phi i32 [ %dec90.i, %while.cond85.i.while.cond85.i_crit_edge ], [ %h.2.ph.i273, %while.cond85.outer.i.split ]
  %dec90.i = add i32 %h.2.i, -1
  %arrayidx91.i = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 43, i32 %dec90.i
  %204 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %arrayidx91.i, align 4
  %cmp92.i = icmp sgt i32 %205, %159
  br i1 %cmp92.i, label %while.cond85.i.while.cond85.i_crit_edge, label %if.end95.i

while.cond85.i.while.cond85.i_crit_edge:          ; preds = %while.cond85.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond85.i

if.end95.i:                                       ; preds = %while.cond85.i
  %dl97.i = getelementptr %struct.ct_data_s, ptr %157, i32 %205, i32 1
  %206 = ptrtoint ptr %dl97.i to i32
  call void @__asan_load2_noabort(i32 %206)
  %207 = load i16, ptr %dl97.i, align 2
  %conv98.i = zext i16 %207 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %bits.3218.i, i32 %conv98.i)
  %cmp99.not.i = icmp eq i32 %bits.3218.i, %conv98.i
  br i1 %cmp99.not.i, label %if.end95.i.if.end115.i_crit_edge, label %if.then101.i

if.end95.i.if.end115.i_crit_edge:                 ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end115.i

if.then101.i:                                     ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx96.i = getelementptr %struct.ct_data_s, ptr %157, i32 %205
  %sub105.i = sub i32 %bits.3218.i, %conv98.i
  %208 = ptrtoint ptr %arrayidx96.i to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %arrayidx96.i, align 2
  %conv108.i = zext i16 %209 to i32
  %mul109.i = mul i32 %sub105.i, %conv108.i
  %210 = ptrtoint ptr %opt_len.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %opt_len.i, align 4
  %add111.i = add i32 %mul109.i, %211
  store i32 %add111.i, ptr %opt_len.i, align 4
  %212 = ptrtoint ptr %dl97.i to i32
  call void @__asan_store2_noabort(i32 %212)
  store i16 %conv112.i, ptr %dl97.i, align 2
  br label %if.end115.i

if.end115.i:                                      ; preds = %if.then101.i, %if.end95.i.if.end115.i_crit_edge
  %dec116.i = add nsw i32 %n.0.ph.i274, -1
  %cmp86.not.i = icmp eq i32 %dec116.i, 0
  br i1 %cmp86.not.i, label %if.end115.i.for.inc118.i_crit_edge, label %if.end115.i.while.cond85.outer.i.split_crit_edge

if.end115.i.while.cond85.outer.i.split_crit_edge: ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond85.outer.i.split

if.end115.i.for.inc118.i_crit_edge:               ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc118.i

for.inc118.i:                                     ; preds = %if.end115.i.for.inc118.i_crit_edge, %for.body81.i.for.inc118.i_crit_edge
  %h.2.ph.i.lcssa = phi i32 [ %h.1217.i, %for.body81.i.for.inc118.i_crit_edge ], [ %dec90.i, %if.end115.i.for.inc118.i_crit_edge ]
  %dec119.i = add i32 %bits.3218.i, -1
  %cmp79.not.i = icmp eq i32 %dec119.i, 0
  br i1 %cmp79.not.i, label %for.inc118.i.gen_bitlen.exit_crit_edge, label %for.inc118.i.for.body81.i_crit_edge

for.inc118.i.for.body81.i_crit_edge:              ; preds = %for.inc118.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body81.i

for.inc118.i.gen_bitlen.exit_crit_edge:           ; preds = %for.inc118.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gen_bitlen.exit

gen_bitlen.exit:                                  ; preds = %for.inc118.i.gen_bitlen.exit_crit_edge, %for.cond78.preheader.i.gen_bitlen.exit_crit_edge, %for.end52.i.gen_bitlen.exit_crit_edge, %do.end.gen_bitlen.exit_crit_edge
  tail call fastcc void @gen_codes(ptr noundef %1, i32 noundef %max_code.2.lcssa, ptr noundef %uglygep.i)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @compress_block(ptr noundef %s, ptr nocapture noundef readonly %ltree, ptr nocapture noundef readonly %dtree) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %last_lit = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 49
  %0 = ptrtoint ptr %last_lit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %last_lit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end297_crit_edge, label %do.body.preheader

entry.if.end297_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end297

do.body.preheader:                                ; preds = %entry
  %d_buf = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 50
  %l_buf = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 47
  %bi_valid57 = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 57
  %bi_buf108 = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 56
  %pending_buf78 = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 2
  %pending79 = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 5
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %do.body.preheader
  %lx.0 = phi i32 [ %inc, %do.cond.do.body_crit_edge ], [ 0, %do.body.preheader ]
  %2 = ptrtoint ptr %d_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_buf, align 4
  %arrayidx = getelementptr i16, ptr %3, i32 %lx.0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %5 to i32
  %6 = ptrtoint ptr %l_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %l_buf, align 4
  %inc = add nuw i32 %lx.0, 1
  %arrayidx1 = getelementptr i8, ptr %7, i32 %lx.0
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp3 = icmp eq i16 %5, 0
  br i1 %cmp3, label %if.then5, label %if.else48

if.then5:                                         ; preds = %do.body
  %arrayidx6 = getelementptr %struct.ct_data_s, ptr %ltree, i32 %conv2
  %dl = getelementptr %struct.ct_data_s, ptr %ltree, i32 %conv2, i32 1
  %10 = ptrtoint ptr %dl to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %dl, align 2
  %conv7 = zext i16 %11 to i32
  %12 = ptrtoint ptr %bi_valid57 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bi_valid57, align 4
  %sub = sub nsw i32 16, %conv7
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %sub)
  %cmp8 = icmp sgt i32 %13, %sub
  %14 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx6, align 2
  %conv12 = zext i16 %15 to i32
  %shl = shl i32 %conv12, %13
  %16 = ptrtoint ptr %bi_buf108 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %bi_buf108, align 4
  %18 = trunc i32 %shl to i16
  %conv15 = or i16 %17, %18
  store i16 %conv15, ptr %bi_buf108, align 4
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %conv18 = trunc i16 %conv15 to i8
  %19 = ptrtoint ptr %pending_buf78 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pending_buf78, align 4
  %21 = ptrtoint ptr %pending79 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pending79, align 4
  %inc19 = add i32 %22, 1
  store i32 %inc19, ptr %pending79, align 4
  %arrayidx20 = getelementptr i8, ptr %20, i32 %22
  %23 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv18, ptr %arrayidx20, align 1
  %24 = ptrtoint ptr %bi_buf108 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %bi_buf108, align 4
  %26 = lshr i16 %25, 8
  %conv23 = trunc i16 %26 to i8
  %27 = load ptr, ptr %pending_buf78, align 4
  %28 = load i32, ptr %pending79, align 4
  %inc26 = add i32 %28, 1
  store i32 %inc26, ptr %pending79, align 4
  %arrayidx27 = getelementptr i8, ptr %27, i32 %28
  %29 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv23, ptr %arrayidx27, align 1
  %30 = ptrtoint ptr %bi_valid57 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bi_valid57, align 4
  %sub31 = sub i32 16, %31
  %shr32 = lshr i32 %conv12, %sub31
  %conv33 = trunc i32 %shr32 to i16
  store i16 %conv33, ptr %bi_buf108, align 4
  %sub35 = add nsw i32 %conv7, -16
  %add = add i32 %sub35, %31
  br label %do.cond.sink.split

if.else:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %add47 = add i32 %13, %conv7
  br label %do.cond.sink.split

if.else48:                                        ; preds = %do.body
  %arrayidx49 = getelementptr [256 x i8], ptr @length_code, i32 0, i32 %conv2
  %32 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx49, align 1
  %conv50 = zext i8 %33 to i32
  %add53 = add nuw nsw i32 %conv50, 257
  %arrayidx54 = getelementptr %struct.ct_data_s, ptr %ltree, i32 %add53
  %dl55 = getelementptr %struct.ct_data_s, ptr %ltree, i32 %add53, i32 1
  %34 = ptrtoint ptr %dl55 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %dl55, align 2
  %conv56 = zext i16 %35 to i32
  %36 = ptrtoint ptr %bi_valid57 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bi_valid57, align 4
  %sub58 = sub nsw i32 16, %conv56
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %sub58)
  %cmp59 = icmp sgt i32 %37, %sub58
  %38 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx54, align 2
  %conv67 = zext i16 %39 to i32
  %shl69 = shl i32 %conv67, %37
  %40 = ptrtoint ptr %bi_buf108 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %bi_buf108, align 4
  %42 = trunc i32 %shl69 to i16
  %conv73 = or i16 %41, %42
  store i16 %conv73, ptr %bi_buf108, align 4
  br i1 %cmp59, label %if.then61, label %if.else100

if.then61:                                        ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #10
  %conv77 = trunc i16 %conv73 to i8
  %43 = ptrtoint ptr %pending_buf78 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pending_buf78, align 4
  %45 = ptrtoint ptr %pending79 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pending79, align 4
  %inc80 = add i32 %46, 1
  store i32 %inc80, ptr %pending79, align 4
  %arrayidx81 = getelementptr i8, ptr %44, i32 %46
  %47 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv77, ptr %arrayidx81, align 1
  %48 = ptrtoint ptr %bi_buf108 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %bi_buf108, align 4
  %50 = lshr i16 %49, 8
  %conv85 = trunc i16 %50 to i8
  %51 = load ptr, ptr %pending_buf78, align 4
  %52 = load i32, ptr %pending79, align 4
  %inc88 = add i32 %52, 1
  store i32 %inc88, ptr %pending79, align 4
  %arrayidx89 = getelementptr i8, ptr %51, i32 %52
  %53 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv85, ptr %arrayidx89, align 1
  %54 = ptrtoint ptr %bi_valid57 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bi_valid57, align 4
  %sub93 = sub i32 16, %55
  %shr94 = lshr i32 %conv67, %sub93
  %conv95 = trunc i32 %shr94 to i16
  store i16 %conv95, ptr %bi_buf108, align 4
  %sub97 = add nsw i32 %conv56, -16
  %add99 = add i32 %sub97, %55
  br label %if.end114

if.else100:                                       ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #10
  %add113 = add i32 %37, %conv56
  br label %if.end114

if.end114:                                        ; preds = %if.else100, %if.then61
  %storemerge521 = phi i32 [ %add113, %if.else100 ], [ %add99, %if.then61 ]
  %56 = ptrtoint ptr %bi_valid57 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %storemerge521, ptr %bi_valid57, align 4
  %arrayidx115 = getelementptr [29 x i32], ptr @extra_lbits, i32 0, i32 %conv50
  %57 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx115, align 4
  %59 = add nsw i32 %conv50, -28
  call void @__sanitizer_cov_trace_const_cmp4(i32 -20, i32 %59)
  %cmp116.not = icmp ult i32 %59, -20
  br i1 %cmp116.not, label %if.end114.if.end170_crit_edge, label %if.then118

if.end114.if.end170_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end170

if.then118:                                       ; preds = %if.end114
  %arrayidx119 = getelementptr [29 x i32], ptr @base_length, i32 0, i32 %conv50
  %60 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx119, align 4
  %sub120 = sub i32 %conv2, %61
  %sub123 = sub i32 16, %58
  call void @__sanitizer_cov_trace_cmp4(i32 %storemerge521, i32 %sub123)
  %cmp124 = icmp sgt i32 %storemerge521, %sub123
  %shl129 = shl i32 %sub120, %storemerge521
  %62 = ptrtoint ptr %bi_buf108 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %bi_buf108, align 4
  %64 = trunc i32 %shl129 to i16
  %conv133 = or i16 %63, %64
  store i16 %conv133, ptr %bi_buf108, align 4
  br i1 %cmp124, label %if.then126, label %if.else160

if.then126:                                       ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #10
  %conv137 = trunc i16 %conv133 to i8
  %65 = ptrtoint ptr %pending_buf78 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pending_buf78, align 4
  %67 = ptrtoint ptr %pending79 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %pending79, align 4
  %inc140 = add i32 %68, 1
  store i32 %inc140, ptr %pending79, align 4
  %arrayidx141 = getelementptr i8, ptr %66, i32 %68
  %69 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv137, ptr %arrayidx141, align 1
  %70 = ptrtoint ptr %bi_buf108 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %bi_buf108, align 4
  %72 = lshr i16 %71, 8
  %conv145 = trunc i16 %72 to i8
  %73 = load ptr, ptr %pending_buf78, align 4
  %74 = load i32, ptr %pending79, align 4
  %inc148 = add i32 %74, 1
  store i32 %inc148, ptr %pending79, align 4
  %arrayidx149 = getelementptr i8, ptr %73, i32 %74
  %75 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv145, ptr %arrayidx149, align 1
  %conv151 = and i32 %sub120, 65535
  %76 = ptrtoint ptr %bi_valid57 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %bi_valid57, align 4
  %sub153 = sub i32 16, %77
  %shr154 = lshr i32 %conv151, %sub153
  %conv155 = trunc i32 %shr154 to i16
  store i16 %conv155, ptr %bi_buf108, align 4
  %sub157 = add i32 %58, -16
  %add159 = add i32 %sub157, %77
  br label %if.end169

if.else160:                                       ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #10
  %add168 = add i32 %58, %storemerge521
  br label %if.end169

if.end169:                                        ; preds = %if.else160, %if.then126
  %storemerge524 = phi i32 [ %add168, %if.else160 ], [ %add159, %if.then126 ]
  %78 = ptrtoint ptr %bi_valid57 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %storemerge524, ptr %bi_valid57, align 4
  br label %if.end170

if.end170:                                        ; preds = %if.end169, %if.end114.if.end170_crit_edge
  %dec = add nsw i32 %conv, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %dec)
  %cmp171 = icmp ult i32 %dec, 256
  %shr175 = lshr i32 %dec, 7
  %add176 = add nuw nsw i32 %shr175, 256
  %dec.pn = select i1 %cmp171, i32 %dec, i32 %add176
  %cond.in.in = getelementptr [512 x i8], ptr @dist_code, i32 0, i32 %dec.pn
  %79 = ptrtoint ptr %cond.in.in to i32
  call void @__asan_load1_noabort(i32 %79)
  %cond.in = load i8, ptr %cond.in.in, align 1
  %cond = zext i8 %cond.in to i32
  %arrayidx180 = getelementptr %struct.ct_data_s, ptr %dtree, i32 %cond
  %dl181 = getelementptr %struct.ct_data_s, ptr %dtree, i32 %cond, i32 1
  %80 = ptrtoint ptr %dl181 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %dl181, align 2
  %conv182 = zext i16 %81 to i32
  %82 = ptrtoint ptr %bi_valid57 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %bi_valid57, align 4
  %sub184 = sub nsw i32 16, %conv182
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %sub184)
  %cmp185 = icmp sgt i32 %83, %sub184
  %84 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %arrayidx180, align 2
  %conv191 = zext i16 %85 to i32
  %shl193 = shl i32 %conv191, %83
  %86 = ptrtoint ptr %bi_buf108 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %bi_buf108, align 4
  %88 = trunc i32 %shl193 to i16
  %conv197 = or i16 %87, %88
  store i16 %conv197, ptr %bi_buf108, align 4
  br i1 %cmp185, label %if.then187, label %if.else224

if.then187:                                       ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #10
  %conv201 = trunc i16 %conv197 to i8
  %89 = ptrtoint ptr %pending_buf78 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pending_buf78, align 4
  %91 = ptrtoint ptr %pending79 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %pending79, align 4
  %inc204 = add i32 %92, 1
  store i32 %inc204, ptr %pending79, align 4
  %arrayidx205 = getelementptr i8, ptr %90, i32 %92
  %93 = ptrtoint ptr %arrayidx205 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv201, ptr %arrayidx205, align 1
  %94 = ptrtoint ptr %bi_buf108 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %bi_buf108, align 4
  %96 = lshr i16 %95, 8
  %conv209 = trunc i16 %96 to i8
  %97 = load ptr, ptr %pending_buf78, align 4
  %98 = load i32, ptr %pending79, align 4
  %inc212 = add i32 %98, 1
  store i32 %inc212, ptr %pending79, align 4
  %arrayidx213 = getelementptr i8, ptr %97, i32 %98
  %99 = ptrtoint ptr %arrayidx213 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %conv209, ptr %arrayidx213, align 1
  %100 = ptrtoint ptr %bi_valid57 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %bi_valid57, align 4
  %sub217 = sub i32 16, %101
  %shr218 = lshr i32 %conv191, %sub217
  %conv219 = trunc i32 %shr218 to i16
  store i16 %conv219, ptr %bi_buf108, align 4
  %sub221 = add nsw i32 %conv182, -16
  %add223 = add i32 %sub221, %101
  br label %if.end236

if.else224:                                       ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #10
  %add235 = add i32 %83, %conv182
  br label %if.end236

if.end236:                                        ; preds = %if.else224, %if.then187
  %storemerge522 = phi i32 [ %add235, %if.else224 ], [ %add223, %if.then187 ]
  %102 = ptrtoint ptr %bi_valid57 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %storemerge522, ptr %bi_valid57, align 4
  %arrayidx237 = getelementptr [30 x i32], ptr @extra_dbits, i32 0, i32 %cond
  %103 = ptrtoint ptr %arrayidx237 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx237, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %cond.in)
  %cmp238.not = icmp ult i8 %cond.in, 4
  br i1 %cmp238.not, label %if.end236.do.cond_crit_edge, label %if.then240

if.end236.do.cond_crit_edge:                      ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond

if.then240:                                       ; preds = %if.end236
  %arrayidx241 = getelementptr [30 x i32], ptr @base_dist, i32 0, i32 %cond
  %105 = ptrtoint ptr %arrayidx241 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx241, align 4
  %sub242 = sub i32 %dec, %106
  %sub245 = sub i32 16, %104
  call void @__sanitizer_cov_trace_cmp4(i32 %storemerge522, i32 %sub245)
  %cmp246 = icmp sgt i32 %storemerge522, %sub245
  %shl251 = shl i32 %sub242, %storemerge522
  %107 = ptrtoint ptr %bi_buf108 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %bi_buf108, align 4
  %109 = trunc i32 %shl251 to i16
  %conv255 = or i16 %108, %109
  store i16 %conv255, ptr %bi_buf108, align 4
  br i1 %cmp246, label %if.then248, label %if.else282

if.then248:                                       ; preds = %if.then240
  call void @__sanitizer_cov_trace_pc() #10
  %conv259 = trunc i16 %conv255 to i8
  %110 = ptrtoint ptr %pending_buf78 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pending_buf78, align 4
  %112 = ptrtoint ptr %pending79 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %pending79, align 4
  %inc262 = add i32 %113, 1
  store i32 %inc262, ptr %pending79, align 4
  %arrayidx263 = getelementptr i8, ptr %111, i32 %113
  %114 = ptrtoint ptr %arrayidx263 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %conv259, ptr %arrayidx263, align 1
  %115 = ptrtoint ptr %bi_buf108 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %bi_buf108, align 4
  %117 = lshr i16 %116, 8
  %conv267 = trunc i16 %117 to i8
  %118 = load ptr, ptr %pending_buf78, align 4
  %119 = load i32, ptr %pending79, align 4
  %inc270 = add i32 %119, 1
  store i32 %inc270, ptr %pending79, align 4
  %arrayidx271 = getelementptr i8, ptr %118, i32 %119
  %120 = ptrtoint ptr %arrayidx271 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %conv267, ptr %arrayidx271, align 1
  %conv273 = and i32 %sub242, 65535
  %121 = ptrtoint ptr %bi_valid57 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %bi_valid57, align 4
  %sub275 = sub i32 16, %122
  %shr276 = lshr i32 %conv273, %sub275
  %conv277 = trunc i32 %shr276 to i16
  store i16 %conv277, ptr %bi_buf108, align 4
  %sub279 = add i32 %104, -16
  %add281 = add i32 %sub279, %122
  br label %do.cond.sink.split

if.else282:                                       ; preds = %if.then240
  call void @__sanitizer_cov_trace_pc() #10
  %add290 = add i32 %104, %storemerge522
  br label %do.cond.sink.split

do.cond.sink.split:                               ; preds = %if.else282, %if.then248, %if.else, %if.then10
  %storemerge525.sink = phi i32 [ %add47, %if.else ], [ %add, %if.then10 ], [ %add290, %if.else282 ], [ %add281, %if.then248 ]
  %123 = ptrtoint ptr %bi_valid57 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %storemerge525.sink, ptr %bi_valid57, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.cond.sink.split, %if.end236.do.cond_crit_edge
  %124 = ptrtoint ptr %last_lit to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %last_lit, align 4
  %cmp295 = icmp ult i32 %inc, %125
  br i1 %cmp295, label %do.cond.do.body_crit_edge, label %do.cond.if.end297_crit_edge

do.cond.if.end297_crit_edge:                      ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end297

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end297:                                        ; preds = %do.cond.if.end297_crit_edge, %entry.if.end297_crit_edge
  %arrayidx299 = getelementptr %struct.ct_data_s, ptr %ltree, i32 256
  %dl300 = getelementptr %struct.ct_data_s, ptr %ltree, i32 256, i32 1
  %126 = ptrtoint ptr %dl300 to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %dl300, align 2
  %conv301 = zext i16 %127 to i32
  %bi_valid302 = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 57
  %128 = ptrtoint ptr %bi_valid302 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %bi_valid302, align 4
  %sub303 = sub nsw i32 16, %conv301
  call void @__sanitizer_cov_trace_cmp4(i32 %129, i32 %sub303)
  %cmp304 = icmp sgt i32 %129, %sub303
  %130 = ptrtoint ptr %arrayidx299 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %arrayidx299, align 2
  %conv310 = zext i16 %131 to i32
  %shl312 = shl i32 %conv310, %129
  %bi_buf313 = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 56
  %132 = ptrtoint ptr %bi_buf313 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %bi_buf313, align 4
  %134 = trunc i32 %shl312 to i16
  %conv316 = or i16 %133, %134
  store i16 %conv316, ptr %bi_buf313, align 4
  br i1 %cmp304, label %if.then306, label %if.else343

if.then306:                                       ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #10
  %conv320 = trunc i16 %conv316 to i8
  %pending_buf321 = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 2
  %135 = ptrtoint ptr %pending_buf321 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %pending_buf321, align 4
  %pending322 = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 5
  %137 = ptrtoint ptr %pending322 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %pending322, align 4
  %inc323 = add i32 %138, 1
  store i32 %inc323, ptr %pending322, align 4
  %arrayidx324 = getelementptr i8, ptr %136, i32 %138
  %139 = ptrtoint ptr %arrayidx324 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %conv320, ptr %arrayidx324, align 1
  %140 = ptrtoint ptr %bi_buf313 to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %bi_buf313, align 4
  %142 = lshr i16 %141, 8
  %conv328 = trunc i16 %142 to i8
  %143 = load ptr, ptr %pending_buf321, align 4
  %144 = load i32, ptr %pending322, align 4
  %inc331 = add i32 %144, 1
  store i32 %inc331, ptr %pending322, align 4
  %arrayidx332 = getelementptr i8, ptr %143, i32 %144
  %145 = ptrtoint ptr %arrayidx332 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %conv328, ptr %arrayidx332, align 1
  %146 = ptrtoint ptr %bi_valid302 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %bi_valid302, align 4
  %sub336 = sub i32 16, %147
  %shr337 = lshr i32 %conv310, %sub336
  %conv338 = trunc i32 %shr337 to i16
  store i16 %conv338, ptr %bi_buf313, align 4
  %sub340 = add nsw i32 %conv301, -16
  %add342 = add i32 %sub340, %147
  br label %if.end355

if.else343:                                       ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #10
  %add354 = add i32 %129, %conv301
  br label %if.end355

if.end355:                                        ; preds = %if.else343, %if.then306
  %storemerge = phi i32 [ %add354, %if.else343 ], [ %add342, %if.then306 ]
  %148 = ptrtoint ptr %bi_valid302 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %storemerge, ptr %bi_valid302, align 4
  %149 = ptrtoint ptr %dl300 to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %dl300, align 2
  %conv358 = zext i16 %150 to i32
  %last_eob_len = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 55
  %151 = ptrtoint ptr %last_eob_len to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %conv358, ptr %last_eob_len, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zlib_tr_tally(ptr nocapture noundef %s, i32 noundef %dist, i32 noundef %lc) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %dist to i16
  %d_buf = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 50
  %0 = ptrtoint ptr %d_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_buf, align 4
  %last_lit = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 49
  %2 = ptrtoint ptr %last_lit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_lit, align 4
  %arrayidx = getelementptr i16, ptr %1, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %arrayidx, align 2
  %conv1 = trunc i32 %lc to i8
  %l_buf = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 47
  %5 = ptrtoint ptr %l_buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %l_buf, align 4
  %7 = load i32, ptr %last_lit, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %last_lit, align 4
  %arrayidx3 = getelementptr i8, ptr %6, i32 %7
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv1, ptr %arrayidx3, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dist)
  %cmp = icmp eq i32 %dist, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx5 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 36, i32 %lc
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %matches = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 54
  %9 = ptrtoint ptr %matches to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %matches, align 4
  %inc7 = add i32 %10, 1
  store i32 %inc7, ptr %matches, align 4
  %dec = add i32 %dist, -1
  %arrayidx9 = getelementptr [256 x i8], ptr @length_code, i32 0, i32 %lc
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %12 to i32
  %add11 = add nuw nsw i32 %conv10, 257
  %arrayidx12 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 36, i32 %add11
  %13 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx12, align 4
  %inc14 = add i16 %14, 1
  store i16 %inc14, ptr %arrayidx12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %dec)
  %cmp15 = icmp ult i32 %dec, 256
  %shr = lshr i32 %dec, 7
  %add19 = add nuw nsw i32 %shr, 256
  %dec.pn = select i1 %cmp15, i32 %dec, i32 %add19
  %cond.in.in = getelementptr [512 x i8], ptr @dist_code, i32 0, i32 %dec.pn
  %15 = ptrtoint ptr %cond.in.in to i32
  call void @__asan_load1_noabort(i32 %15)
  %cond.in = load i8, ptr %cond.in.in, align 1
  %cond = zext i8 %cond.in to i32
  %arrayidx22 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 37, i32 %cond
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arrayidx22.sink94 = phi ptr [ %arrayidx22, %if.else ], [ %arrayidx5, %if.then ]
  %16 = ptrtoint ptr %arrayidx22.sink94 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx22.sink94, align 4
  %inc24 = add i16 %17, 1
  store i16 %inc24, ptr %arrayidx22.sink94, align 4
  %18 = ptrtoint ptr %last_lit to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %last_lit, align 4
  %and = and i32 %19, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp26 = icmp eq i32 %and, 0
  br i1 %cmp26, label %land.lhs.true, label %if.end.if.end56_crit_edge

if.end.if.end56_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

land.lhs.true:                                    ; preds = %if.end
  %level = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 32
  %20 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp28 = icmp sgt i32 %21, 2
  br i1 %cmp28, label %if.then30, label %land.lhs.true.if.end56_crit_edge

land.lhs.true.if.end56_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then30:                                        ; preds = %land.lhs.true
  %mul = shl i32 %19, 3
  %strstart = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 26
  %22 = ptrtoint ptr %strstart to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %strstart, align 4
  %block_start = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 22
  %24 = ptrtoint ptr %block_start to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %block_start, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then30
  %dcode.093 = phi i32 [ 0, %if.then30 ], [ %inc42, %for.body.for.body_crit_edge ]
  %out_length.092 = phi i32 [ %mul, %if.then30 ], [ %add41, %for.body.for.body_crit_edge ]
  %arrayidx35 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 37, i32 %dcode.093
  %26 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx35, align 4
  %conv37 = zext i16 %27 to i32
  %arrayidx38 = getelementptr [30 x i32], ptr @extra_dbits, i32 0, i32 %dcode.093
  %28 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx38, align 4
  %add39 = add i32 %29, 5
  %mul40 = mul i32 %add39, %conv37
  %add41 = add i32 %mul40, %out_length.092
  %inc42 = add nuw nsw i32 %dcode.093, 1
  %exitcond.not = icmp eq i32 %inc42, 30
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  %sub = sub i32 %23, %25
  %matches44 = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 54
  %30 = ptrtoint ptr %matches44 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %matches44, align 4
  %div90 = lshr i32 %19, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %div90)
  %cmp46 = icmp uge i32 %31, %div90
  %shr43 = lshr i32 %add41, 3
  %div4991 = lshr i32 %sub, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr43, i32 %div4991)
  %cmp50 = icmp uge i32 %shr43, %div4991
  %or.cond = select i1 %cmp46, i1 true, i1 %cmp50
  br i1 %or.cond, label %for.end.if.end56_crit_edge, label %for.end.return_crit_edge

for.end.return_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

for.end.if.end56_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.end56:                                         ; preds = %for.end.if.end56_crit_edge, %land.lhs.true.if.end56_crit_edge, %if.end.if.end56_crit_edge
  %lit_bufsize = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 48
  %32 = ptrtoint ptr %lit_bufsize to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %lit_bufsize, align 4
  %sub58 = add i32 %33, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %sub58)
  %cmp59 = icmp eq i32 %19, %sub58
  %conv60 = zext i1 %cmp59 to i32
  br label %return

return:                                           ; preds = %if.end56, %for.end.return_crit_edge
  %retval.1 = phi i32 [ 1, %for.end.return_crit_edge ], [ %conv60, %if.end56 ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gen_codes(ptr nocapture noundef %tree, i32 noundef %max_code, ptr nocapture noundef readonly %bl_count) unnamed_addr #6 align 64 {
entry:
  %next_code = alloca [16 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %next_code) #8
  %0 = getelementptr inbounds [16 x i16], ptr %next_code, i32 0, i32 1
  %1 = getelementptr inbounds [16 x i16], ptr %next_code, i32 0, i32 2
  %2 = getelementptr inbounds [16 x i16], ptr %next_code, i32 0, i32 3
  %3 = getelementptr inbounds [16 x i16], ptr %next_code, i32 0, i32 4
  %4 = getelementptr inbounds [16 x i16], ptr %next_code, i32 0, i32 5
  %5 = getelementptr inbounds [16 x i16], ptr %next_code, i32 0, i32 6
  %6 = getelementptr inbounds [16 x i16], ptr %next_code, i32 0, i32 7
  %7 = getelementptr inbounds [16 x i16], ptr %next_code, i32 0, i32 8
  %8 = getelementptr inbounds [16 x i16], ptr %next_code, i32 0, i32 9
  %9 = getelementptr inbounds [16 x i16], ptr %next_code, i32 0, i32 10
  %10 = getelementptr inbounds [16 x i16], ptr %next_code, i32 0, i32 11
  %11 = getelementptr inbounds [16 x i16], ptr %next_code, i32 0, i32 12
  %12 = getelementptr inbounds [16 x i16], ptr %next_code, i32 0, i32 13
  %13 = getelementptr inbounds [16 x i16], ptr %next_code, i32 0, i32 14
  %14 = getelementptr inbounds [16 x i16], ptr %next_code, i32 0, i32 15
  %15 = ptrtoint ptr %next_code to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -1, ptr %next_code, align 2
  %16 = ptrtoint ptr %bl_count to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %bl_count, align 2
  %conv1 = zext i16 %17 to i32
  %shl = shl nuw nsw i32 %conv1, 1
  %conv2 = trunc i32 %shl to i16
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv2, ptr %0, align 2
  %conv.1 = and i32 %shl, 65534
  %arrayidx.1 = getelementptr i16, ptr %bl_count, i32 1
  %19 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx.1, align 2
  %conv1.1 = zext i16 %20 to i32
  %add.1 = add nuw nsw i32 %conv.1, %conv1.1
  %shl.1 = shl nuw nsw i32 %add.1, 1
  %conv2.1 = trunc i32 %shl.1 to i16
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv2.1, ptr %1, align 2
  %conv.2 = and i32 %shl.1, 65534
  %arrayidx.2 = getelementptr i16, ptr %bl_count, i32 2
  %22 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx.2, align 2
  %conv1.2 = zext i16 %23 to i32
  %add.2 = add nuw nsw i32 %conv.2, %conv1.2
  %shl.2 = shl nuw nsw i32 %add.2, 1
  %conv2.2 = trunc i32 %shl.2 to i16
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv2.2, ptr %2, align 2
  %conv.3 = and i32 %shl.2, 65534
  %arrayidx.3 = getelementptr i16, ptr %bl_count, i32 3
  %25 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx.3, align 2
  %conv1.3 = zext i16 %26 to i32
  %add.3 = add nuw nsw i32 %conv.3, %conv1.3
  %shl.3 = shl nuw nsw i32 %add.3, 1
  %conv2.3 = trunc i32 %shl.3 to i16
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv2.3, ptr %3, align 2
  %conv.4 = and i32 %shl.3, 65534
  %arrayidx.4 = getelementptr i16, ptr %bl_count, i32 4
  %28 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx.4, align 2
  %conv1.4 = zext i16 %29 to i32
  %add.4 = add nuw nsw i32 %conv.4, %conv1.4
  %shl.4 = shl nuw nsw i32 %add.4, 1
  %conv2.4 = trunc i32 %shl.4 to i16
  %30 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv2.4, ptr %4, align 2
  %conv.5 = and i32 %shl.4, 65534
  %arrayidx.5 = getelementptr i16, ptr %bl_count, i32 5
  %31 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx.5, align 2
  %conv1.5 = zext i16 %32 to i32
  %add.5 = add nuw nsw i32 %conv.5, %conv1.5
  %shl.5 = shl nuw nsw i32 %add.5, 1
  %conv2.5 = trunc i32 %shl.5 to i16
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv2.5, ptr %5, align 2
  %conv.6 = and i32 %shl.5, 65534
  %arrayidx.6 = getelementptr i16, ptr %bl_count, i32 6
  %34 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx.6, align 2
  %conv1.6 = zext i16 %35 to i32
  %add.6 = add nuw nsw i32 %conv.6, %conv1.6
  %shl.6 = shl nuw nsw i32 %add.6, 1
  %conv2.6 = trunc i32 %shl.6 to i16
  %36 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv2.6, ptr %6, align 2
  %conv.7 = and i32 %shl.6, 65534
  %arrayidx.7 = getelementptr i16, ptr %bl_count, i32 7
  %37 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx.7, align 2
  %conv1.7 = zext i16 %38 to i32
  %add.7 = add nuw nsw i32 %conv.7, %conv1.7
  %shl.7 = shl nuw nsw i32 %add.7, 1
  %conv2.7 = trunc i32 %shl.7 to i16
  %39 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv2.7, ptr %7, align 2
  %conv.8 = and i32 %shl.7, 65534
  %arrayidx.8 = getelementptr i16, ptr %bl_count, i32 8
  %40 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx.8, align 2
  %conv1.8 = zext i16 %41 to i32
  %add.8 = add nuw nsw i32 %conv.8, %conv1.8
  %shl.8 = shl nuw nsw i32 %add.8, 1
  %conv2.8 = trunc i32 %shl.8 to i16
  %42 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv2.8, ptr %8, align 2
  %conv.9 = and i32 %shl.8, 65534
  %arrayidx.9 = getelementptr i16, ptr %bl_count, i32 9
  %43 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx.9, align 2
  %conv1.9 = zext i16 %44 to i32
  %add.9 = add nuw nsw i32 %conv.9, %conv1.9
  %shl.9 = shl nuw nsw i32 %add.9, 1
  %conv2.9 = trunc i32 %shl.9 to i16
  %45 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv2.9, ptr %9, align 2
  %conv.10 = and i32 %shl.9, 65534
  %arrayidx.10 = getelementptr i16, ptr %bl_count, i32 10
  %46 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx.10, align 2
  %conv1.10 = zext i16 %47 to i32
  %add.10 = add nuw nsw i32 %conv.10, %conv1.10
  %shl.10 = shl nuw nsw i32 %add.10, 1
  %conv2.10 = trunc i32 %shl.10 to i16
  %48 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv2.10, ptr %10, align 2
  %conv.11 = and i32 %shl.10, 65534
  %arrayidx.11 = getelementptr i16, ptr %bl_count, i32 11
  %49 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx.11, align 2
  %conv1.11 = zext i16 %50 to i32
  %add.11 = add nuw nsw i32 %conv.11, %conv1.11
  %shl.11 = shl nuw nsw i32 %add.11, 1
  %conv2.11 = trunc i32 %shl.11 to i16
  %51 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv2.11, ptr %11, align 2
  %conv.12 = and i32 %shl.11, 65534
  %arrayidx.12 = getelementptr i16, ptr %bl_count, i32 12
  %52 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx.12, align 2
  %conv1.12 = zext i16 %53 to i32
  %add.12 = add nuw nsw i32 %conv.12, %conv1.12
  %shl.12 = shl nuw nsw i32 %add.12, 1
  %conv2.12 = trunc i32 %shl.12 to i16
  %54 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv2.12, ptr %12, align 2
  %conv.13 = and i32 %shl.12, 65534
  %arrayidx.13 = getelementptr i16, ptr %bl_count, i32 13
  %55 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arrayidx.13, align 2
  %conv1.13 = zext i16 %56 to i32
  %add.13 = add nuw nsw i32 %conv.13, %conv1.13
  %shl.13 = shl nuw nsw i32 %add.13, 1
  %conv2.13 = trunc i32 %shl.13 to i16
  %57 = ptrtoint ptr %13 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv2.13, ptr %13, align 2
  %arrayidx.14 = getelementptr i16, ptr %bl_count, i32 14
  %58 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx.14, align 2
  %60 = trunc i32 %shl.13 to i16
  %add.14.tr = add i16 %59, %60
  %conv2.14 = shl i16 %add.14.tr, 1
  %61 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv2.14, ptr %14, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_code)
  %cmp5.not68 = icmp slt i32 %max_code, 0
  br i1 %cmp5.not68, label %entry.for.end42_crit_edge, label %entry.for.body7_crit_edge

entry.for.body7_crit_edge:                        ; preds = %entry
  br label %for.body7

entry.for.end42_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end42

for.body7:                                        ; preds = %cleanup.for.body7_crit_edge, %entry.for.body7_crit_edge
  %n.069 = phi i32 [ %inc41, %cleanup.for.body7_crit_edge ], [ 0, %entry.for.body7_crit_edge ]
  %dl = getelementptr %struct.ct_data_s, ptr %tree, i32 %n.069, i32 1
  %62 = ptrtoint ptr %dl to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %dl, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %cmp10 = icmp eq i16 %63, 0
  br i1 %cmp10, label %for.body7.cleanup_crit_edge, label %if.end

for.body7.cleanup_crit_edge:                      ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #10
  %conv9 = zext i16 %63 to i32
  %arrayidx8 = getelementptr %struct.ct_data_s, ptr %tree, i32 %n.069
  %arrayidx12 = getelementptr [16 x i16], ptr %next_code, i32 0, i32 %conv9
  %64 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx12, align 2
  %inc13 = add i16 %65, 1
  store i16 %inc13, ptr %arrayidx12, align 2
  %conv14 = zext i16 %65 to i32
  %66 = lshr i32 %conv14, 8
  %arrayidx.i10.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %66
  %67 = ptrtoint ptr %arrayidx.i10.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx.i10.i.i, align 1
  %conv6.i.i = zext i8 %68 to i32
  %69 = shl nuw nsw i32 %conv6.i.i, 16
  %70 = and i32 %conv14, 255
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %70
  %71 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv2.i.i = zext i8 %72 to i32
  %73 = shl nuw i32 %conv2.i.i, 24
  %or.i13.i = or i32 %69, %73
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @byte_rev_table to i32))
  %74 = load i8, ptr @byte_rev_table, align 1
  %conv2.i8.i = zext i8 %74 to i32
  %shl.i = or i32 %or.i13.i, %conv2.i8.i
  %shl.i9.i = shl nuw nsw i32 %conv2.i8.i, 8
  %or.i = or i32 %shl.i, %shl.i9.i
  %sub36 = sub nsw i32 32, %conv9
  %shr37 = lshr i32 %or.i, %sub36
  %conv38 = trunc i32 %shr37 to i16
  %75 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv38, ptr %arrayidx8, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.body7.cleanup_crit_edge
  %inc41 = add i32 %n.069, 1
  %cmp5.not = icmp sgt i32 %inc41, %max_code
  br i1 %cmp5.not, label %cleanup.for.end42_crit_edge, label %cleanup.for.body7_crit_edge

cleanup.for.body7_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body7

cleanup.for.end42_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end42

for.end42:                                        ; preds = %cleanup.for.end42_crit_edge, %entry.for.end42_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %next_code) #8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @send_tree(ptr noundef %s, ptr nocapture noundef readonly %tree, i32 noundef %max_code) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_code)
  %cmp2.not699 = icmp slt i32 %max_code, 0
  br i1 %cmp2.not699, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dl = getelementptr inbounds %struct.ct_data_s, ptr %tree, i32 0, i32 1
  %0 = ptrtoint ptr %dl to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %dl, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  %spec.select697 = select i1 %cmp, i32 138, i32 7
  %spec.select = select i1 %cmp, i32 3, i32 4
  %conv = zext i16 %1 to i32
  %bi_valid77 = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 57
  %bi_buf126 = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 56
  %pending_buf97 = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 2
  %pending98 = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 5
  %arrayidx137 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 16
  %dl138 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 16, i32 1
  %arrayidx366 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 18
  %dl367 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 18, i32 1
  %arrayidx253 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 17
  %dl254 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 17, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %n.0705 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %prevlen.0704 = phi i32 [ -1, %for.body.lr.ph ], [ %prevlen.1, %for.inc.for.body_crit_edge ]
  %nextlen.0703 = phi i32 [ %conv, %for.body.lr.ph ], [ %conv6, %for.inc.for.body_crit_edge ]
  %count.0702 = phi i32 [ 0, %for.body.lr.ph ], [ %count.3, %for.inc.for.body_crit_edge ]
  %max_count.1701 = phi i32 [ %spec.select697, %for.body.lr.ph ], [ %max_count.2, %for.inc.for.body_crit_edge ]
  %min_count.1700 = phi i32 [ %spec.select, %for.body.lr.ph ], [ %min_count.2, %for.inc.for.body_crit_edge ]
  %add = add i32 %n.0705, 1
  %dl5 = getelementptr %struct.ct_data_s, ptr %tree, i32 %add, i32 1
  %2 = ptrtoint ptr %dl5 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %dl5, align 2
  %conv6 = zext i16 %3 to i32
  %inc = add nsw i32 %count.0702, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %max_count.1701)
  %cmp7 = icmp slt i32 %inc, %max_count.1701
  call void @__sanitizer_cov_trace_cmp4(i32 %nextlen.0703, i32 %conv6)
  %cmp9 = icmp eq i32 %nextlen.0703, %conv6
  %or.cond = select i1 %cmp7, i1 %cmp9, i1 false
  br i1 %or.cond, label %for.body.for.inc_crit_edge, label %if.else

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %min_count.1700)
  %cmp12 = icmp slt i32 %inc, %min_count.1700
  br i1 %cmp12, label %do.body.preheader, label %if.else65

do.body.preheader:                                ; preds = %if.else
  %arrayidx15 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 %nextlen.0703
  %dl16 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 %nextlen.0703, i32 1
  br label %do.body

do.body:                                          ; preds = %if.end62.do.body_crit_edge, %do.body.preheader
  %count.1 = phi i32 [ %dec, %if.end62.do.body_crit_edge ], [ %inc, %do.body.preheader ]
  %4 = ptrtoint ptr %dl16 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dl16, align 2
  %conv17 = zext i16 %5 to i32
  %6 = ptrtoint ptr %bi_valid77 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bi_valid77, align 4
  %sub = sub nsw i32 16, %conv17
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %sub)
  %cmp18 = icmp sgt i32 %7, %sub
  %8 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx15, align 4
  %conv23 = zext i16 %9 to i32
  %shl = shl i32 %conv23, %7
  %10 = ptrtoint ptr %bi_buf126 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %bi_buf126, align 4
  %12 = trunc i32 %shl to i16
  %conv26 = or i16 %11, %12
  store i16 %conv26, ptr %bi_buf126, align 4
  br i1 %cmp18, label %if.then20, label %if.else49

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv29 = trunc i16 %conv26 to i8
  %13 = ptrtoint ptr %pending_buf97 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pending_buf97, align 4
  %15 = ptrtoint ptr %pending98 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pending98, align 4
  %inc30 = add i32 %16, 1
  store i32 %inc30, ptr %pending98, align 4
  %arrayidx31 = getelementptr i8, ptr %14, i32 %16
  %17 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv29, ptr %arrayidx31, align 1
  %18 = ptrtoint ptr %bi_buf126 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %bi_buf126, align 4
  %20 = lshr i16 %19, 8
  %conv34 = trunc i16 %20 to i8
  %21 = load ptr, ptr %pending_buf97, align 4
  %22 = load i32, ptr %pending98, align 4
  %inc37 = add i32 %22, 1
  store i32 %inc37, ptr %pending98, align 4
  %arrayidx38 = getelementptr i8, ptr %21, i32 %22
  %23 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv34, ptr %arrayidx38, align 1
  %24 = ptrtoint ptr %bi_valid77 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bi_valid77, align 4
  %sub42 = sub i32 16, %25
  %shr43 = lshr i32 %conv23, %sub42
  %conv44 = trunc i32 %shr43 to i16
  store i16 %conv44, ptr %bi_buf126, align 4
  %sub46 = add nsw i32 %conv17, -16
  %add48 = add i32 %sub46, %25
  br label %if.end62

if.else49:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %add61 = add i32 %7, %conv17
  br label %if.end62

if.end62:                                         ; preds = %if.else49, %if.then20
  %storemerge696 = phi i32 [ %add61, %if.else49 ], [ %add48, %if.then20 ]
  %26 = ptrtoint ptr %bi_valid77 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %storemerge696, ptr %bi_valid77, align 4
  %dec = add i32 %count.1, -1
  %cmp63.not = icmp eq i32 %dec, 0
  br i1 %cmp63.not, label %if.end62.if.end479_crit_edge, label %if.end62.do.body_crit_edge

if.end62.do.body_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end62.if.end479_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end479

if.else65:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nextlen.0703)
  %cmp66.not = icmp eq i32 %nextlen.0703, 0
  br i1 %cmp66.not, label %if.else247, label %if.then68

if.then68:                                        ; preds = %if.else65
  call void @__sanitizer_cov_trace_cmp4(i32 %nextlen.0703, i32 %prevlen.0704)
  %cmp69.not = icmp eq i32 %nextlen.0703, %prevlen.0704
  br i1 %cmp69.not, label %if.then68.if.end134_crit_edge, label %if.then71

if.then68.if.end134_crit_edge:                    ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end134

if.then71:                                        ; preds = %if.then68
  %arrayidx74 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 %nextlen.0703
  %dl75 = getelementptr %struct.deflate_state, ptr %s, i32 0, i32 38, i32 %nextlen.0703, i32 1
  %27 = ptrtoint ptr %dl75 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %dl75, align 2
  %conv76 = zext i16 %28 to i32
  %29 = ptrtoint ptr %bi_valid77 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bi_valid77, align 4
  %sub78 = sub nsw i32 16, %conv76
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %sub78)
  %cmp79 = icmp sgt i32 %30, %sub78
  %31 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx74, align 4
  %conv86 = zext i16 %32 to i32
  %shl88 = shl i32 %conv86, %30
  %33 = ptrtoint ptr %bi_buf126 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %bi_buf126, align 4
  %35 = trunc i32 %shl88 to i16
  %conv92 = or i16 %34, %35
  store i16 %conv92, ptr %bi_buf126, align 4
  br i1 %cmp79, label %if.then81, label %if.else119

if.then81:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  %conv96 = trunc i16 %conv92 to i8
  %36 = ptrtoint ptr %pending_buf97 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pending_buf97, align 4
  %38 = ptrtoint ptr %pending98 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pending98, align 4
  %inc99 = add i32 %39, 1
  store i32 %inc99, ptr %pending98, align 4
  %arrayidx100 = getelementptr i8, ptr %37, i32 %39
  %40 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv96, ptr %arrayidx100, align 1
  %41 = ptrtoint ptr %bi_buf126 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %bi_buf126, align 4
  %43 = lshr i16 %42, 8
  %conv104 = trunc i16 %43 to i8
  %44 = load ptr, ptr %pending_buf97, align 4
  %45 = load i32, ptr %pending98, align 4
  %inc107 = add i32 %45, 1
  store i32 %inc107, ptr %pending98, align 4
  %arrayidx108 = getelementptr i8, ptr %44, i32 %45
  %46 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv104, ptr %arrayidx108, align 1
  %47 = ptrtoint ptr %bi_valid77 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bi_valid77, align 4
  %sub112 = sub i32 16, %48
  %shr113 = lshr i32 %conv86, %sub112
  %conv114 = trunc i32 %shr113 to i16
  store i16 %conv114, ptr %bi_buf126, align 4
  %sub116 = add nsw i32 %conv76, -16
  %add118 = add i32 %sub116, %48
  br label %if.end132

if.else119:                                       ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  %add131 = add i32 %30, %conv76
  br label %if.end132

if.end132:                                        ; preds = %if.else119, %if.then81
  %storemerge695 = phi i32 [ %add131, %if.else119 ], [ %add118, %if.then81 ]
  %49 = ptrtoint ptr %bi_valid77 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %storemerge695, ptr %bi_valid77, align 4
  br label %if.end134

if.end134:                                        ; preds = %if.end132, %if.then68.if.end134_crit_edge
  %count.2 = phi i32 [ %count.0702, %if.end132 ], [ %inc, %if.then68.if.end134_crit_edge ]
  %50 = ptrtoint ptr %dl138 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %dl138, align 2
  %conv139 = zext i16 %51 to i32
  %52 = ptrtoint ptr %bi_valid77 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bi_valid77, align 4
  %sub141 = sub nsw i32 16, %conv139
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %sub141)
  %cmp142 = icmp sgt i32 %53, %sub141
  %54 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx137, align 4
  %conv149 = zext i16 %55 to i32
  %shl151 = shl i32 %conv149, %53
  %56 = ptrtoint ptr %bi_buf126 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %bi_buf126, align 4
  %58 = trunc i32 %shl151 to i16
  %conv155 = or i16 %57, %58
  store i16 %conv155, ptr %bi_buf126, align 4
  br i1 %cmp142, label %if.then144, label %if.else182

if.then144:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #10
  %conv159 = trunc i16 %conv155 to i8
  %59 = ptrtoint ptr %pending_buf97 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pending_buf97, align 4
  %61 = ptrtoint ptr %pending98 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %pending98, align 4
  %inc162 = add i32 %62, 1
  store i32 %inc162, ptr %pending98, align 4
  %arrayidx163 = getelementptr i8, ptr %60, i32 %62
  %63 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv159, ptr %arrayidx163, align 1
  %64 = ptrtoint ptr %bi_buf126 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %bi_buf126, align 4
  %66 = lshr i16 %65, 8
  %conv167 = trunc i16 %66 to i8
  %67 = load ptr, ptr %pending_buf97, align 4
  %68 = load i32, ptr %pending98, align 4
  %inc170 = add i32 %68, 1
  store i32 %inc170, ptr %pending98, align 4
  %arrayidx171 = getelementptr i8, ptr %67, i32 %68
  %69 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv167, ptr %arrayidx171, align 1
  %70 = ptrtoint ptr %bi_valid77 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %bi_valid77, align 4
  %sub175 = sub i32 16, %71
  %shr176 = lshr i32 %conv149, %sub175
  %conv177 = trunc i32 %shr176 to i16
  store i16 %conv177, ptr %bi_buf126, align 4
  %sub179 = add nsw i32 %conv139, -16
  %add181 = add i32 %sub179, %71
  br label %if.end195

if.else182:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #10
  %add194 = add i32 %53, %conv139
  br label %if.end195

if.end195:                                        ; preds = %if.else182, %if.then144
  %storemerge693 = phi i32 [ %add194, %if.else182 ], [ %add181, %if.then144 ]
  %72 = ptrtoint ptr %bi_valid77 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %storemerge693, ptr %bi_valid77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %storemerge693)
  %cmp199 = icmp sgt i32 %storemerge693, 14
  br i1 %cmp199, label %if.then201, label %if.else236

if.then201:                                       ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #10
  %sub203 = add i32 %count.2, -3
  %shl205 = shl i32 %sub203, %storemerge693
  %73 = ptrtoint ptr %bi_buf126 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %bi_buf126, align 4
  %75 = trunc i32 %shl205 to i16
  %conv209 = or i16 %74, %75
  store i16 %conv209, ptr %bi_buf126, align 4
  %conv213 = trunc i16 %conv209 to i8
  %76 = ptrtoint ptr %pending_buf97 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pending_buf97, align 4
  %78 = ptrtoint ptr %pending98 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %pending98, align 4
  %inc216 = add i32 %79, 1
  store i32 %inc216, ptr %pending98, align 4
  %arrayidx217 = getelementptr i8, ptr %77, i32 %79
  %80 = ptrtoint ptr %arrayidx217 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv213, ptr %arrayidx217, align 1
  %81 = load i16, ptr %bi_buf126, align 4
  %82 = lshr i16 %81, 8
  %conv221 = trunc i16 %82 to i8
  %83 = load ptr, ptr %pending_buf97, align 4
  %84 = load i32, ptr %pending98, align 4
  %inc224 = add i32 %84, 1
  store i32 %inc224, ptr %pending98, align 4
  %arrayidx225 = getelementptr i8, ptr %83, i32 %84
  %85 = ptrtoint ptr %arrayidx225 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv221, ptr %arrayidx225, align 1
  %conv227 = and i32 %sub203, 65535
  %86 = ptrtoint ptr %bi_valid77 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %bi_valid77, align 4
  %sub229 = sub i32 16, %87
  %shr230 = lshr i32 %conv227, %sub229
  %conv231 = trunc i32 %shr230 to i16
  store i16 %conv231, ptr %bi_buf126, align 4
  %add235 = add i32 %87, -14
  br label %if.end479.sink.split

if.else236:                                       ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #10
  %sub237 = add i32 %count.2, 65533
  %shl239 = shl i32 %sub237, %storemerge693
  %88 = ptrtoint ptr %bi_buf126 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %bi_buf126, align 4
  %90 = trunc i32 %shl239 to i16
  %conv243 = or i16 %89, %90
  store i16 %conv243, ptr %bi_buf126, align 4
  %add245 = add nsw i32 %storemerge693, 2
  br label %if.end479.sink.split

if.else247:                                       ; preds = %if.else65
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %count.0702)
  %cmp248 = icmp slt i32 %count.0702, 10
  br i1 %cmp248, label %if.then250, label %if.else363

if.then250:                                       ; preds = %if.else247
  %91 = ptrtoint ptr %dl254 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %dl254, align 2
  %conv255 = zext i16 %92 to i32
  %93 = ptrtoint ptr %bi_valid77 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %bi_valid77, align 4
  %sub257 = sub nsw i32 16, %conv255
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %sub257)
  %cmp258 = icmp sgt i32 %94, %sub257
  %95 = ptrtoint ptr %arrayidx253 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %arrayidx253, align 4
  %conv265 = zext i16 %96 to i32
  %shl267 = shl i32 %conv265, %94
  %97 = ptrtoint ptr %bi_buf126 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %bi_buf126, align 4
  %99 = trunc i32 %shl267 to i16
  %conv271 = or i16 %98, %99
  store i16 %conv271, ptr %bi_buf126, align 4
  br i1 %cmp258, label %if.then260, label %if.else298

if.then260:                                       ; preds = %if.then250
  call void @__sanitizer_cov_trace_pc() #10
  %conv275 = trunc i16 %conv271 to i8
  %100 = ptrtoint ptr %pending_buf97 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pending_buf97, align 4
  %102 = ptrtoint ptr %pending98 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %pending98, align 4
  %inc278 = add i32 %103, 1
  store i32 %inc278, ptr %pending98, align 4
  %arrayidx279 = getelementptr i8, ptr %101, i32 %103
  %104 = ptrtoint ptr %arrayidx279 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %conv275, ptr %arrayidx279, align 1
  %105 = ptrtoint ptr %bi_buf126 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %bi_buf126, align 4
  %107 = lshr i16 %106, 8
  %conv283 = trunc i16 %107 to i8
  %108 = load ptr, ptr %pending_buf97, align 4
  %109 = load i32, ptr %pending98, align 4
  %inc286 = add i32 %109, 1
  store i32 %inc286, ptr %pending98, align 4
  %arrayidx287 = getelementptr i8, ptr %108, i32 %109
  %110 = ptrtoint ptr %arrayidx287 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %conv283, ptr %arrayidx287, align 1
  %111 = ptrtoint ptr %bi_valid77 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %bi_valid77, align 4
  %sub291 = sub i32 16, %112
  %shr292 = lshr i32 %conv265, %sub291
  %conv293 = trunc i32 %shr292 to i16
  store i16 %conv293, ptr %bi_buf126, align 4
  %sub295 = add nsw i32 %conv255, -16
  %add297 = add i32 %sub295, %112
  br label %if.end311

if.else298:                                       ; preds = %if.then250
  call void @__sanitizer_cov_trace_pc() #10
  %add310 = add i32 %94, %conv255
  br label %if.end311

if.end311:                                        ; preds = %if.else298, %if.then260
  %storemerge691 = phi i32 [ %add310, %if.else298 ], [ %add297, %if.then260 ]
  %113 = ptrtoint ptr %bi_valid77 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %storemerge691, ptr %bi_valid77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %storemerge691)
  %cmp315 = icmp sgt i32 %storemerge691, 13
  br i1 %cmp315, label %if.then317, label %if.else352

if.then317:                                       ; preds = %if.end311
  call void @__sanitizer_cov_trace_pc() #10
  %sub319 = add i32 %count.0702, -2
  %shl321 = shl i32 %sub319, %storemerge691
  %114 = ptrtoint ptr %bi_buf126 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %bi_buf126, align 4
  %116 = trunc i32 %shl321 to i16
  %conv325 = or i16 %115, %116
  store i16 %conv325, ptr %bi_buf126, align 4
  %conv329 = trunc i16 %conv325 to i8
  %117 = ptrtoint ptr %pending_buf97 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %pending_buf97, align 4
  %119 = ptrtoint ptr %pending98 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %pending98, align 4
  %inc332 = add i32 %120, 1
  store i32 %inc332, ptr %pending98, align 4
  %arrayidx333 = getelementptr i8, ptr %118, i32 %120
  %121 = ptrtoint ptr %arrayidx333 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %conv329, ptr %arrayidx333, align 1
  %122 = load i16, ptr %bi_buf126, align 4
  %123 = lshr i16 %122, 8
  %conv337 = trunc i16 %123 to i8
  %124 = load ptr, ptr %pending_buf97, align 4
  %125 = load i32, ptr %pending98, align 4
  %inc340 = add i32 %125, 1
  store i32 %inc340, ptr %pending98, align 4
  %arrayidx341 = getelementptr i8, ptr %124, i32 %125
  %126 = ptrtoint ptr %arrayidx341 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %conv337, ptr %arrayidx341, align 1
  %conv343 = and i32 %sub319, 65535
  %127 = ptrtoint ptr %bi_valid77 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %bi_valid77, align 4
  %sub345 = sub i32 16, %128
  %shr346 = lshr i32 %conv343, %sub345
  %conv347 = trunc i32 %shr346 to i16
  store i16 %conv347, ptr %bi_buf126, align 4
  %add351 = add i32 %128, -13
  br label %if.end479.sink.split

if.else352:                                       ; preds = %if.end311
  call void @__sanitizer_cov_trace_pc() #10
  %sub353 = add nsw i32 %count.0702, 65534
  %shl355 = shl i32 %sub353, %storemerge691
  %129 = ptrtoint ptr %bi_buf126 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %bi_buf126, align 4
  %131 = trunc i32 %shl355 to i16
  %conv359 = or i16 %130, %131
  store i16 %conv359, ptr %bi_buf126, align 4
  %add361 = add nsw i32 %storemerge691, 3
  br label %if.end479.sink.split

if.else363:                                       ; preds = %if.else247
  %132 = ptrtoint ptr %dl367 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %dl367, align 2
  %conv368 = zext i16 %133 to i32
  %134 = ptrtoint ptr %bi_valid77 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %bi_valid77, align 4
  %sub370 = sub nsw i32 16, %conv368
  call void @__sanitizer_cov_trace_cmp4(i32 %135, i32 %sub370)
  %cmp371 = icmp sgt i32 %135, %sub370
  %136 = ptrtoint ptr %arrayidx366 to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %arrayidx366, align 4
  %conv378 = zext i16 %137 to i32
  %shl380 = shl i32 %conv378, %135
  %138 = ptrtoint ptr %bi_buf126 to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %bi_buf126, align 4
  %140 = trunc i32 %shl380 to i16
  %conv384 = or i16 %139, %140
  store i16 %conv384, ptr %bi_buf126, align 4
  br i1 %cmp371, label %if.then373, label %if.else411

if.then373:                                       ; preds = %if.else363
  call void @__sanitizer_cov_trace_pc() #10
  %conv388 = trunc i16 %conv384 to i8
  %141 = ptrtoint ptr %pending_buf97 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %pending_buf97, align 4
  %143 = ptrtoint ptr %pending98 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %pending98, align 4
  %inc391 = add i32 %144, 1
  store i32 %inc391, ptr %pending98, align 4
  %arrayidx392 = getelementptr i8, ptr %142, i32 %144
  %145 = ptrtoint ptr %arrayidx392 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %conv388, ptr %arrayidx392, align 1
  %146 = ptrtoint ptr %bi_buf126 to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %bi_buf126, align 4
  %148 = lshr i16 %147, 8
  %conv396 = trunc i16 %148 to i8
  %149 = load ptr, ptr %pending_buf97, align 4
  %150 = load i32, ptr %pending98, align 4
  %inc399 = add i32 %150, 1
  store i32 %inc399, ptr %pending98, align 4
  %arrayidx400 = getelementptr i8, ptr %149, i32 %150
  %151 = ptrtoint ptr %arrayidx400 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %conv396, ptr %arrayidx400, align 1
  %152 = ptrtoint ptr %bi_valid77 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %bi_valid77, align 4
  %sub404 = sub i32 16, %153
  %shr405 = lshr i32 %conv378, %sub404
  %conv406 = trunc i32 %shr405 to i16
  store i16 %conv406, ptr %bi_buf126, align 4
  %sub408 = add nsw i32 %conv368, -16
  %add410 = add i32 %sub408, %153
  br label %if.end424

if.else411:                                       ; preds = %if.else363
  call void @__sanitizer_cov_trace_pc() #10
  %add423 = add i32 %135, %conv368
  br label %if.end424

if.end424:                                        ; preds = %if.else411, %if.then373
  %storemerge = phi i32 [ %add423, %if.else411 ], [ %add410, %if.then373 ]
  %154 = ptrtoint ptr %bi_valid77 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %storemerge, ptr %bi_valid77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %storemerge)
  %cmp428 = icmp sgt i32 %storemerge, 9
  br i1 %cmp428, label %if.then430, label %if.else465

if.then430:                                       ; preds = %if.end424
  call void @__sanitizer_cov_trace_pc() #10
  %sub432 = add nsw i32 %count.0702, -10
  %shl434 = shl i32 %sub432, %storemerge
  %155 = ptrtoint ptr %bi_buf126 to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %bi_buf126, align 4
  %157 = trunc i32 %shl434 to i16
  %conv438 = or i16 %156, %157
  store i16 %conv438, ptr %bi_buf126, align 4
  %conv442 = trunc i16 %conv438 to i8
  %158 = ptrtoint ptr %pending_buf97 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %pending_buf97, align 4
  %160 = ptrtoint ptr %pending98 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %pending98, align 4
  %inc445 = add i32 %161, 1
  store i32 %inc445, ptr %pending98, align 4
  %arrayidx446 = getelementptr i8, ptr %159, i32 %161
  %162 = ptrtoint ptr %arrayidx446 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %conv442, ptr %arrayidx446, align 1
  %163 = load i16, ptr %bi_buf126, align 4
  %164 = lshr i16 %163, 8
  %conv450 = trunc i16 %164 to i8
  %165 = load ptr, ptr %pending_buf97, align 4
  %166 = load i32, ptr %pending98, align 4
  %inc453 = add i32 %166, 1
  store i32 %inc453, ptr %pending98, align 4
  %arrayidx454 = getelementptr i8, ptr %165, i32 %166
  %167 = ptrtoint ptr %arrayidx454 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %conv450, ptr %arrayidx454, align 1
  %conv456 = and i32 %sub432, 65535
  %168 = ptrtoint ptr %bi_valid77 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %bi_valid77, align 4
  %sub458 = sub i32 16, %169
  %shr459 = lshr i32 %conv456, %sub458
  %conv460 = trunc i32 %shr459 to i16
  store i16 %conv460, ptr %bi_buf126, align 4
  %add464 = add i32 %169, -9
  br label %if.end479.sink.split

if.else465:                                       ; preds = %if.end424
  call void @__sanitizer_cov_trace_pc() #10
  %sub466 = add nuw i32 %count.0702, 65526
  %shl468 = shl i32 %sub466, %storemerge
  %170 = ptrtoint ptr %bi_buf126 to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %bi_buf126, align 4
  %172 = trunc i32 %shl468 to i16
  %conv472 = or i16 %171, %172
  store i16 %conv472, ptr %bi_buf126, align 4
  %add474 = add nsw i32 %storemerge, 7
  br label %if.end479.sink.split

if.end479.sink.split:                             ; preds = %if.else465, %if.then430, %if.else352, %if.then317, %if.else236, %if.then201
  %storemerge692.sink = phi i32 [ %add245, %if.else236 ], [ %add235, %if.then201 ], [ %add361, %if.else352 ], [ %add351, %if.then317 ], [ %add474, %if.else465 ], [ %add464, %if.then430 ]
  %173 = ptrtoint ptr %bi_valid77 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %storemerge692.sink, ptr %bi_valid77, align 4
  br label %if.end479

if.end479:                                        ; preds = %if.end479.sink.split, %if.end62.if.end479_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp480 = icmp eq i16 %3, 0
  br i1 %cmp480, label %if.end479.for.inc_crit_edge, label %if.else483

if.end479.for.inc_crit_edge:                      ; preds = %if.end479
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.else483:                                       ; preds = %if.end479
  call void @__sanitizer_cov_trace_pc() #10
  %. = select i1 %cmp9, i32 3, i32 4
  %.698 = select i1 %cmp9, i32 6, i32 7
  br label %for.inc

for.inc:                                          ; preds = %if.else483, %if.end479.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %min_count.2 = phi i32 [ %min_count.1700, %for.body.for.inc_crit_edge ], [ 3, %if.end479.for.inc_crit_edge ], [ %., %if.else483 ]
  %max_count.2 = phi i32 [ %max_count.1701, %for.body.for.inc_crit_edge ], [ 138, %if.end479.for.inc_crit_edge ], [ %.698, %if.else483 ]
  %count.3 = phi i32 [ %inc, %for.body.for.inc_crit_edge ], [ 0, %if.end479.for.inc_crit_edge ], [ 0, %if.else483 ]
  %prevlen.1 = phi i32 [ %prevlen.0704, %for.body.for.inc_crit_edge ], [ %nextlen.0703, %if.end479.for.inc_crit_edge ], [ %nextlen.0703, %if.else483 ]
  %cmp2.not = icmp sgt i32 %add, %max_code
  br i1 %cmp2.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @static_ltree, !1, !"static_ltree", i1 false, i1 false}
!1 = !{!"../lib/zlib_deflate/deftree.c", i32 83, i32 16}
!2 = !{ptr @static_dtree, !3, !"static_dtree", i1 false, i1 false}
!3 = !{!"../lib/zlib_deflate/deftree.c", i32 90, i32 16}
!4 = !{ptr @dist_code, !5, !"dist_code", i1 false, i1 false}
!5 = !{!"../lib/zlib_deflate/deftree.c", i32 95, i32 12}
!6 = !{ptr @length_code, !7, !"length_code", i1 false, i1 false}
!7 = !{!"../lib/zlib_deflate/deftree.c", i32 101, i32 12}
!8 = distinct !{null, !9, !"static_init_done", i1 false, i1 false}
!9 = !{!"../lib/zlib_deflate/deftree.c", i32 173, i32 16}
!10 = !{ptr @base_length, !11, !"base_length", i1 false, i1 false}
!11 = !{!"../lib/zlib_deflate/deftree.c", i32 104, i32 12}
!12 = !{ptr @extra_lbits, !13, !"extra_lbits", i1 false, i1 false}
!13 = !{!"../lib/zlib_deflate/deftree.c", i32 64, i32 18}
!14 = !{ptr @base_dist, !15, !"base_dist", i1 false, i1 false}
!15 = !{!"../lib/zlib_deflate/deftree.c", i32 107, i32 12}
!16 = !{ptr @static_l_desc, !17, !"static_l_desc", i1 false, i1 false}
!17 = !{!"../lib/zlib_deflate/deftree.c", i32 118, i32 26}
!18 = !{ptr @static_d_desc, !19, !"static_d_desc", i1 false, i1 false}
!19 = !{!"../lib/zlib_deflate/deftree.c", i32 121, i32 26}
!20 = !{ptr @static_bl_desc, !21, !"static_bl_desc", i1 false, i1 false}
!21 = !{!"../lib/zlib_deflate/deftree.c", i32 124, i32 26}
!22 = !{ptr @extra_blbits, !23, !"extra_blbits", i1 false, i1 false}
!23 = !{!"../lib/zlib_deflate/deftree.c", i32 70, i32 18}
!24 = !{ptr @bl_order, !25, !"bl_order", i1 false, i1 false}
!25 = !{!"../lib/zlib_deflate/deftree.c", i32 73, i32 18}
!26 = !{ptr @extra_dbits, !27, !"extra_dbits", i1 false, i1 false}
!27 = !{!"../lib/zlib_deflate/deftree.c", i32 67, i32 18}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
