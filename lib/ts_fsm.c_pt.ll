; ModuleID = '/llk/IR_all_yes/lib/ts_fsm.c_pt.bc'
source_filename = "../lib/ts_fsm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ts_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.ts_fsm_token = type { i16, i8, i8 }
%struct.ts_config = type { ptr, i32, ptr, ptr }
%struct.ts_fsm = type { i32, [0 x %struct.ts_fsm_token] }

@fsm_ops = internal global { %struct.ts_ops, [60 x i8] } { %struct.ts_ops { ptr @.str, ptr @fsm_init, ptr @fsm_find, ptr null, ptr @fsm_get_pattern, ptr @fsm_get_pattern_len, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @fsm_ops, i64 28), ptr getelementptr (i8, ptr @fsm_ops, i64 28) } }, [60 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_file173 = internal constant [23 x i8] c"ts_fsm.file=lib/ts_fsm\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [19 x i8] c"ts_fsm.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_ts_fsm__175_336_init_fsm6 = internal global ptr @init_fsm, section ".initcall6.init", align 4
@__exitcall_exit_fsm = internal global ptr @exit_fsm, section ".exitcall.exit", align 4
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fsm\00", [28 x i8] zeroinitializer }, align 32
@token_map = internal constant { [14 x i16], [36 x i8] } { [14 x i16] [i16 0, i16 512, i16 4, i16 68, i16 151, i16 3, i16 7, i16 256, i16 8, i16 23, i16 2, i16 1, i16 16, i16 32], [36 x i8] zeroinitializer }, align 32
@token_lookup_tbl = internal constant { [256 x i16], [128 x i8] } { [256 x i16] [i16 776, i16 776, i16 776, i16 776, i16 776, i16 776, i16 776, i16 776, i16 776, i16 808, i16 808, i16 808, i16 808, i16 808, i16 776, i16 776, i16 776, i16 776, i16 776, i16 776, i16 776, i16 776, i16 776, i16 776, i16 776, i16 776, i16 776, i16 776, i16 776, i16 776, i16 776, i16 776, i16 928, i16 784, i16 784, i16 784, i16 784, i16 784, i16 784, i16 784, i16 784, i16 784, i16 784, i16 784, i16 784, i16 784, i16 784, i16 784, i16 772, i16 772, i16 772, i16 772, i16 772, i16 772, i16 772, i16 772, i16 772, i16 772, i16 784, i16 784, i16 784, i16 784, i16 784, i16 784, i16 784, i16 833, i16 833, i16 833, i16 833, i16 833, i16 833, i16 769, i16 769, i16 769, i16 769, i16 769, i16 769, i16 769, i16 769, i16 769, i16 769, i16 769, i16 769, i16 769, i16 769, i16 769, i16 769, i16 769, i16 769, i16 769, i16 769, i16 784, i16 784, i16 784, i16 784, i16 784, i16 784, i16 834, i16 834, i16 834, i16 834, i16 834, i16 834, i16 770, i16 770, i16 770, i16 770, i16 770, i16 770, i16 770, i16 770, i16 770, i16 770, i16 770, i16 770, i16 770, i16 770, i16 770, i16 770, i16 770, i16 770, i16 770, i16 770, i16 784, i16 784, i16 784, i16 784, i16 776, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 672, i16 528, i16 528, i16 528, i16 528, i16 528, i16 528, i16 528, i16 528, i16 528, i16 528, i16 528, i16 528, i16 528, i16 528, i16 528, i16 528, i16 528, i16 528, i16 528, i16 528, i16 528, i16 528, i16 528, i16 528, i16 528, i16 528, i16 528, i16 528, i16 528, i16 528, i16 528, i16 513, i16 513, i16 513, i16 513, i16 513, i16 513, i16 513, i16 513, i16 513, i16 513, i16 513, i16 513, i16 513, i16 513, i16 513, i16 513, i16 513, i16 513, i16 513, i16 513, i16 513, i16 513, i16 513, i16 528, i16 513, i16 513, i16 513, i16 513, i16 513, i16 513, i16 513, i16 514, i16 514, i16 514, i16 514, i16 514, i16 514, i16 514, i16 514, i16 514, i16 514, i16 514, i16 514, i16 514, i16 514, i16 514, i16 514, i16 514, i16 514, i16 514, i16 514, i16 514, i16 514, i16 514, i16 514, i16 528, i16 514, i16 514, i16 514, i16 514, i16 514, i16 514, i16 514, i16 514], [128 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.1 = private unnamed_addr constant [8 x i8] c"fsm_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 314, i32 22 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 315, i32 13 }
@___asan_gen_.7 = private unnamed_addr constant [10 x i8] c"token_map\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 43, i32 18 }
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"token_lookup_tbl\00", align 1
@___asan_gen_.11 = private constant [16 x i8] c"../lib/ts_fsm.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 60, i32 18 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_exit_fsm, ptr @__initcall__kmod_ts_fsm__175_336_init_fsm6, ptr @exit_fsm, ptr @fsm_ops, ptr @.str, ptr @token_map, ptr @token_lookup_tbl], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsm_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @token_map to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @token_lookup_tbl to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_fsm() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @textsearch_unregister(ptr noundef nonnull @fsm_ops) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @textsearch_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_fsm() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @textsearch_register(ptr noundef nonnull @fsm_ops) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @fsm_init(ptr nocapture noundef readonly %pattern, i32 noundef %len, i32 noundef %gfp_mask, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %div78 = lshr i32 %len, 2
  %rem = and i32 %len, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %len)
  %cmp = icmp ugt i32 %len, 3
  %and = and i32 %flags, 2
  %0 = or i32 %and, %rem
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %1 = icmp eq i32 %0, 0
  %2 = and i1 %cmp, %1
  br i1 %2, label %for.body.lr.ph, label %entry.cleanup46_crit_edge

entry.cleanup46_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup46

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div78)
  %cmp20 = icmp eq i32 %div78, 1
  %umax = call i32 @llvm.umax.i32(i32 %div78, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.093 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ts_fsm_token, ptr %pattern, i32 %i.093
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %4)
  %cmp5 = icmp ugt i16 %4, 13
  br i1 %cmp5, label %for.body.cleanup46_crit_edge, label %lor.lhs.false7

for.body.cleanup46_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup46

lor.lhs.false7:                                   ; preds = %for.body
  %recur = getelementptr %struct.ts_fsm_token, ptr %pattern, i32 %i.093, i32 1
  %5 = ptrtoint ptr %recur to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %recur, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %6)
  %cmp9 = icmp ugt i8 %6, 4
  br i1 %cmp9, label %lor.lhs.false7.cleanup46_crit_edge, label %if.end12

lor.lhs.false7.cleanup46_crit_edge:               ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup46

if.end12:                                         ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %6)
  %cmp15 = icmp eq i8 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.093)
  %cmp17.not = icmp ne i32 %i.093, 0
  %or.cond80 = or i1 %cmp20, %cmp17.not
  %or.cond = select i1 %cmp15, i1 %or.cond80, i1 false
  br i1 %or.cond, label %if.end12.cleanup46_crit_edge, label %for.inc

if.end12.cleanup46_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup46

for.inc:                                          ; preds = %if.end12
  %inc = add nuw nsw i32 %i.093, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %if.end8.i.i.i, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end8.i.i.i:                                    ; preds = %for.inc
  %or.i.i = or i32 %gfp_mask, 256
  %add.i = add i32 %len, 20
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef %or.i.i) #11
  %cmp.i = icmp eq ptr %call9.i.i.i, null
  br i1 %cmp.i, label %if.end8.i.i.i.cleanup46_crit_edge, label %alloc_ts_config.exit

if.end8.i.i.i.cleanup46_crit_edge:                ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup46

alloc_ts_config.exit:                             ; preds = %if.end8.i.i.i
  %cmp.i82 = icmp ugt ptr %call9.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i82, label %alloc_ts_config.exit.cleanup46_crit_edge, label %if.end26

alloc_ts_config.exit.cleanup46_crit_edge:         ; preds = %alloc_ts_config.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup46

if.end26:                                         ; preds = %alloc_ts_config.exit
  %flags27 = getelementptr inbounds %struct.ts_config, ptr %call9.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %flags27 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %flags, ptr %flags27, align 4
  %add.ptr.i = getelementptr i8, ptr %call9.i.i.i, i32 16
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div78, ptr %add.ptr.i, align 16
  %tokens30 = getelementptr i8, ptr %call9.i.i.i, i32 20
  %9 = call ptr @memcpy(ptr %tokens30, ptr %pattern, i32 %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp3394.not = icmp ult i32 %len, 4
  br i1 %cmp3394.not, label %if.end26.cleanup46_crit_edge, label %if.end26.for.body35_crit_edge

if.end26.for.body35_crit_edge:                    ; preds = %if.end26
  br label %for.body35

if.end26.cleanup46_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup46

for.body35:                                       ; preds = %for.body35.for.body35_crit_edge, %if.end26.for.body35_crit_edge
  %i.195 = phi i32 [ %inc43, %for.body35.for.body35_crit_edge ], [ 0, %if.end26.for.body35_crit_edge ]
  %arrayidx38 = getelementptr %struct.ts_fsm, ptr %add.ptr.i, i32 0, i32 1, i32 %i.195
  %10 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx38, align 4
  %idxprom = zext i16 %11 to i32
  %arrayidx40 = getelementptr [14 x i16], ptr @token_map, i32 0, i32 %idxprom
  %12 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx40, align 2
  store i16 %13, ptr %arrayidx38, align 4
  %inc43 = add nuw i32 %i.195, 1
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i, align 16
  %cmp33 = icmp ult i32 %inc43, %15
  br i1 %cmp33, label %for.body35.for.body35_crit_edge, label %for.body35.cleanup46_crit_edge

for.body35.cleanup46_crit_edge:                   ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup46

for.body35.for.body35_crit_edge:                  ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body35

cleanup46:                                        ; preds = %for.body35.cleanup46_crit_edge, %if.end26.cleanup46_crit_edge, %alloc_ts_config.exit.cleanup46_crit_edge, %if.end8.i.i.i.cleanup46_crit_edge, %if.end12.cleanup46_crit_edge, %lor.lhs.false7.cleanup46_crit_edge, %for.body.cleanup46_crit_edge, %entry.cleanup46_crit_edge
  %retval.0 = phi ptr [ %call9.i.i.i, %alloc_ts_config.exit.cleanup46_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup46_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.i.i.i.cleanup46_crit_edge ], [ %call9.i.i.i, %if.end26.cleanup46_crit_edge ], [ %call9.i.i.i, %for.body35.cleanup46_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end12.cleanup46_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false7.cleanup46_crit_edge ], [ inttoptr (i32 -22 to ptr), %for.body.cleanup46_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsm_find(ptr noundef %conf, ptr noundef %state) #2 align 64 {
entry:
  %data = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %conf, i32 16
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #10
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %data, align 4, !annotation !23
  %get_next_block = getelementptr inbounds %struct.ts_config, ptr %conf, i32 0, i32 2
  %3 = ptrtoint ptr %get_next_block to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_next_block, align 4
  %call1 = call i32 %4(i32 noundef %1, ptr noundef nonnull %data, ptr noundef %conf, ptr noundef %state) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !24

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %recur = getelementptr i8, ptr %conf, i32 22
  %5 = ptrtoint ptr %recur to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %recur, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %6)
  %cmp5.not = icmp eq i8 %6, 4
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp8516530.not = icmp eq i32 %8, 0
  br i1 %cmp8516530.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.backedge, %if.end.for.body_crit_edge
  %9 = phi i32 [ %.be, %for.body.backedge ], [ %8, %if.end.for.body_crit_edge ]
  %match_start.0521 = phi i32 [ %match_start.0521.be, %for.body.backedge ], [ %1, %if.end.for.body_crit_edge ]
  %block_idx.2520 = phi i32 [ %block_idx.2520.be, %for.body.backedge ], [ 0, %if.end.for.body_crit_edge ]
  %tok_idx.0519 = phi i32 [ %tok_idx.0519.be, %for.body.backedge ], [ 0, %if.end.for.body_crit_edge ]
  %block_len.2518 = phi i32 [ %block_len.2518.be, %for.body.backedge ], [ %call1, %if.end.for.body_crit_edge ]
  %consumed.2517 = phi i32 [ %consumed.2517.be, %for.body.backedge ], [ %1, %if.end.for.body_crit_edge ]
  %arrayidx11 = getelementptr %struct.ts_fsm, ptr %add.ptr.i, i32 0, i32 1, i32 %tok_idx.0519
  %sub = add i32 %9, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %tok_idx.0519, i32 %sub)
  %cmp13 = icmp ult i32 %tok_idx.0519, %sub
  %add23 = add nuw i32 %tok_idx.0519, 1
  %arrayidx24 = getelementptr %struct.ts_fsm, ptr %add.ptr.i, i32 0, i32 1, i32 %add23
  %next.0 = select i1 %cmp13, ptr %arrayidx24, ptr null, !prof !25
  %recur26 = getelementptr %struct.ts_fsm, ptr %add.ptr.i, i32 0, i32 1, i32 %tok_idx.0519, i32 1
  %10 = ptrtoint ptr %recur26 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %recur26, align 2
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i8 %11, label %for.body.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb55
    i8 3, label %sw.bb78
    i8 2, label %for.body.sw.bb111_crit_edge
    i8 4, label %sw.bb172
  ]

for.body.sw.bb111_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb111

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %block_idx.2520, i32 %block_len.2518)
  %cmp28.not = icmp ult i32 %block_idx.2520, %block_len.2518
  br i1 %cmp28.not, label %sw.bb.if.end46_crit_edge, label %land.end38

sw.bb.if.end46_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

land.end38:                                       ; preds = %sw.bb
  %add31 = add i32 %block_idx.2520, %consumed.2517
  %13 = ptrtoint ptr %get_next_block to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %get_next_block, align 4
  %call34 = call i32 %14(i32 noundef %add31, ptr noundef nonnull %data, ptr noundef %conf, ptr noundef %state) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %land.end38.cleanup_crit_edge, label %land.end38.if.end46_crit_edge, !prof !24

land.end38.if.end46_crit_edge:                    ; preds = %land.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

land.end38.cleanup_crit_edge:                     ; preds = %land.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end46:                                         ; preds = %land.end38.if.end46_crit_edge, %sw.bb.if.end46_crit_edge
  %block_idx.3442 = phi i32 [ 0, %land.end38.if.end46_crit_edge ], [ %block_idx.2520, %sw.bb.if.end46_crit_edge ]
  %block_len.3441 = phi i32 [ %call34, %land.end38.if.end46_crit_edge ], [ %block_len.2518, %sw.bb.if.end46_crit_edge ]
  %consumed.3440 = phi i32 [ %add31, %land.end38.if.end46_crit_edge ], [ %consumed.2517, %sw.bb.if.end46_crit_edge ]
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %arrayidx47 = getelementptr i8, ptr %16, i32 %block_idx.3442
  %17 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx47, align 1
  %19 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx11, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool.not.i = icmp eq i16 %20, 0
  br i1 %tobool.not.i, label %match_token.exit, label %if.then.i

if.then.i:                                        ; preds = %if.end46
  %idxprom.i = zext i8 %18 to i32
  %arrayidx.i = getelementptr [256 x i16], ptr @token_lookup_tbl, i32 0, i32 %idxprom.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx.i, align 2
  %and11.i = and i16 %22, %20
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and11.i)
  %cmp.i.not = icmp eq i16 %and11.i, 0
  br i1 %cmp.i.not, label %if.then.i.do.body_crit_edge, label %if.then.i.sw.epilog_crit_edge

if.then.i.sw.epilog_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i.do.body_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

match_token.exit:                                 ; preds = %if.end46
  %value.i = getelementptr inbounds %struct.ts_fsm_token, ptr %arrayidx11, i32 0, i32 2
  %23 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %value.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %18)
  %cmp6.i = icmp eq i8 %24, %18
  br i1 %cmp6.i, label %match_token.exit.sw.epilog_crit_edge, label %match_token.exit.do.body_crit_edge

match_token.exit.do.body_crit_edge:               ; preds = %match_token.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

match_token.exit.sw.epilog_crit_edge:             ; preds = %match_token.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body:                                          ; preds = %match_token.exit.do.body_crit_edge, %if.then.i.do.body_crit_edge
  br i1 %cmp5.not, label %do.body.startover.backedge_crit_edge, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body.startover.backedge_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %startover.backedge

startover.backedge:                               ; preds = %do.body144.startover.backedge_crit_edge, %do.body102.startover.backedge_crit_edge, %do.body.startover.backedge_crit_edge
  %consumed.1.be = phi i32 [ %consumed.3440, %do.body.startover.backedge_crit_edge ], [ %consumed.5452, %do.body102.startover.backedge_crit_edge ], [ %consumed.8.ph457, %do.body144.startover.backedge_crit_edge ]
  %block_len.1.be = phi i32 [ %block_len.3441, %do.body.startover.backedge_crit_edge ], [ %block_len.5453, %do.body102.startover.backedge_crit_edge ], [ %block_len.8.ph458, %do.body144.startover.backedge_crit_edge ]
  %block_idx.1.be.in = phi i32 [ %block_idx.3442, %do.body.startover.backedge_crit_edge ], [ %block_idx.5454, %do.body102.startover.backedge_crit_edge ], [ %block_idx.8, %do.body144.startover.backedge_crit_edge ]
  %block_idx.1.be = add nuw i32 %block_idx.1.be.in, 1
  %add7 = add i32 %block_idx.1.be, %consumed.1.be
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp8516.not = icmp eq i32 %26, 0
  br i1 %cmp8516.not, label %startover.backedge.for.end_crit_edge, label %startover.backedge.for.body.backedge_crit_edge

startover.backedge.for.body.backedge_crit_edge:   ; preds = %startover.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.backedge

startover.backedge.for.end_crit_edge:             ; preds = %startover.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

sw.bb55:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %block_idx.2520, i32 %block_len.2518)
  %cmp56.not = icmp ult i32 %block_idx.2520, %block_len.2518
  br i1 %cmp56.not, label %sw.bb55.lor.lhs.false_crit_edge, label %land.end66

sw.bb55.lor.lhs.false_crit_edge:                  ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

land.end66:                                       ; preds = %sw.bb55
  %add59 = add i32 %block_idx.2520, %consumed.2517
  %27 = ptrtoint ptr %get_next_block to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %get_next_block, align 4
  %call62 = call i32 %28(i32 noundef %add59, ptr noundef nonnull %data, ptr noundef %conf, ptr noundef %state) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %land.end66.for.inc_crit_edge, label %land.end66.lor.lhs.false_crit_edge, !prof !24

land.end66.lor.lhs.false_crit_edge:               ; preds = %land.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

land.end66.for.inc_crit_edge:                     ; preds = %land.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.lhs.false:                                    ; preds = %land.end66.lor.lhs.false_crit_edge, %sw.bb55.lor.lhs.false_crit_edge
  %block_idx.4448 = phi i32 [ 0, %land.end66.lor.lhs.false_crit_edge ], [ %block_idx.2520, %sw.bb55.lor.lhs.false_crit_edge ]
  %block_len.4447 = phi i32 [ %call62, %land.end66.lor.lhs.false_crit_edge ], [ %block_len.2518, %sw.bb55.lor.lhs.false_crit_edge ]
  %consumed.4446 = phi i32 [ %add59, %land.end66.lor.lhs.false_crit_edge ], [ %consumed.2517, %sw.bb55.lor.lhs.false_crit_edge ]
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data, align 4
  %arrayidx73 = getelementptr i8, ptr %30, i32 %block_idx.4448
  %31 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx73, align 1
  %33 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx11, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool.not.i365 = icmp eq i16 %34, 0
  br i1 %tobool.not.i365, label %match_token.exit376, label %if.then.i370

if.then.i370:                                     ; preds = %lor.lhs.false
  %idxprom.i366 = zext i8 %32 to i32
  %arrayidx.i367 = getelementptr [256 x i16], ptr @token_lookup_tbl, i32 0, i32 %idxprom.i366
  %35 = ptrtoint ptr %arrayidx.i367 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx.i367, align 2
  %and11.i368 = and i16 %36, %34
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and11.i368)
  %cmp.i369.not = icmp eq i16 %and11.i368, 0
  br i1 %cmp.i369.not, label %if.then.i370.for.inc_crit_edge, label %if.then.i370.sw.epilog_crit_edge

if.then.i370.sw.epilog_crit_edge:                 ; preds = %if.then.i370
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i370.for.inc_crit_edge:                   ; preds = %if.then.i370
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

match_token.exit376:                              ; preds = %lor.lhs.false
  %value.i371 = getelementptr inbounds %struct.ts_fsm_token, ptr %arrayidx11, i32 0, i32 2
  %37 = ptrtoint ptr %value.i371 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %value.i371, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %38, i8 %32)
  %cmp6.i372 = icmp eq i8 %38, %32
  br i1 %cmp6.i372, label %match_token.exit376.sw.epilog_crit_edge, label %match_token.exit376.for.inc_crit_edge

match_token.exit376.for.inc_crit_edge:            ; preds = %match_token.exit376
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

match_token.exit376.sw.epilog_crit_edge:          ; preds = %match_token.exit376
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb78:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %block_idx.2520, i32 %block_len.2518)
  %cmp79.not = icmp ult i32 %block_idx.2520, %block_len.2518
  br i1 %cmp79.not, label %sw.bb78.if.end97_crit_edge, label %land.end89

sw.bb78.if.end97_crit_edge:                       ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97

land.end89:                                       ; preds = %sw.bb78
  %add82 = add i32 %block_idx.2520, %consumed.2517
  %39 = ptrtoint ptr %get_next_block to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %get_next_block, align 4
  %call85 = call i32 %40(i32 noundef %add82, ptr noundef nonnull %data, ptr noundef %conf, ptr noundef %state) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %land.end89.cleanup_crit_edge, label %land.end89.if.end97_crit_edge, !prof !24

land.end89.if.end97_crit_edge:                    ; preds = %land.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97

land.end89.cleanup_crit_edge:                     ; preds = %land.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end97:                                         ; preds = %land.end89.if.end97_crit_edge, %sw.bb78.if.end97_crit_edge
  %block_idx.5454 = phi i32 [ 0, %land.end89.if.end97_crit_edge ], [ %block_idx.2520, %sw.bb78.if.end97_crit_edge ]
  %block_len.5453 = phi i32 [ %call85, %land.end89.if.end97_crit_edge ], [ %block_len.2518, %sw.bb78.if.end97_crit_edge ]
  %consumed.5452 = phi i32 [ %add82, %land.end89.if.end97_crit_edge ], [ %consumed.2517, %sw.bb78.if.end97_crit_edge ]
  %41 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data, align 4
  %arrayidx98 = getelementptr i8, ptr %42, i32 %block_idx.5454
  %43 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx98, align 1
  %45 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx11, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool.not.i377 = icmp eq i16 %46, 0
  br i1 %tobool.not.i377, label %match_token.exit388, label %if.then.i382

if.then.i382:                                     ; preds = %if.end97
  %idxprom.i378 = zext i8 %44 to i32
  %arrayidx.i379 = getelementptr [256 x i16], ptr @token_lookup_tbl, i32 0, i32 %idxprom.i378
  %47 = ptrtoint ptr %arrayidx.i379 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx.i379, align 2
  %and11.i380 = and i16 %48, %46
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and11.i380)
  %cmp.i381.not = icmp eq i16 %and11.i380, 0
  br i1 %cmp.i381.not, label %if.then.i382.do.body102_crit_edge, label %if.then.i382.if.end109_crit_edge

if.then.i382.if.end109_crit_edge:                 ; preds = %if.then.i382
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109

if.then.i382.do.body102_crit_edge:                ; preds = %if.then.i382
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body102

match_token.exit388:                              ; preds = %if.end97
  %value.i383 = getelementptr inbounds %struct.ts_fsm_token, ptr %arrayidx11, i32 0, i32 2
  %49 = ptrtoint ptr %value.i383 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %value.i383, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %50, i8 %44)
  %cmp6.i384 = icmp eq i8 %50, %44
  br i1 %cmp6.i384, label %match_token.exit388.if.end109_crit_edge, label %match_token.exit388.do.body102_crit_edge

match_token.exit388.do.body102_crit_edge:         ; preds = %match_token.exit388
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body102

match_token.exit388.if.end109_crit_edge:          ; preds = %match_token.exit388
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109

do.body102:                                       ; preds = %match_token.exit388.do.body102_crit_edge, %if.then.i382.do.body102_crit_edge
  br i1 %cmp5.not, label %do.body102.startover.backedge_crit_edge, label %do.body102.cleanup_crit_edge

do.body102.cleanup_crit_edge:                     ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body102.startover.backedge_crit_edge:          ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #9
  br label %startover.backedge

if.end109:                                        ; preds = %match_token.exit388.if.end109_crit_edge, %if.then.i382.if.end109_crit_edge
  %inc110 = add nuw i32 %block_idx.5454, 1
  br label %sw.bb111

sw.bb111:                                         ; preds = %if.end109, %for.body.sw.bb111_crit_edge
  %consumed.6 = phi i32 [ %consumed.2517, %for.body.sw.bb111_crit_edge ], [ %consumed.5452, %if.end109 ]
  %block_len.6 = phi i32 [ %block_len.2518, %for.body.sw.bb111_crit_edge ], [ %block_len.5453, %if.end109 ]
  %block_idx.6 = phi i32 [ %block_idx.2520, %for.body.sw.bb111_crit_edge ], [ %inc110, %if.end109 ]
  %cmp112 = icmp eq ptr %next.0, null
  br i1 %cmp112, label %sw.bb111.found_match_crit_edge, label %if.end115

sw.bb111.found_match_crit_edge:                   ; preds = %sw.bb111
  call void @__sanitizer_cov_trace_pc() #9
  br label %found_match

if.end115:                                        ; preds = %sw.bb111
  call void @__sanitizer_cov_trace_cmp4(i32 %block_idx.6, i32 %block_len.6)
  %cmp116.not = icmp ult i32 %block_idx.6, %block_len.6
  br i1 %cmp116.not, label %if.end115.while.cond.preheader_crit_edge, label %land.rhs118

if.end115.while.cond.preheader_crit_edge:         ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.preheader

land.rhs118:                                      ; preds = %if.end115
  %add119 = add i32 %block_idx.6, %consumed.6
  %51 = ptrtoint ptr %get_next_block to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %get_next_block, align 4
  %call122 = call i32 %52(i32 noundef %add119, ptr noundef nonnull %data, ptr noundef %conf, ptr noundef %state) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %land.rhs118.for.inc_crit_edge, label %land.rhs118.while.cond.preheader_crit_edge, !prof !24

land.rhs118.while.cond.preheader_crit_edge:       ; preds = %land.rhs118
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.preheader

land.rhs118.for.inc_crit_edge:                    ; preds = %land.rhs118
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

while.cond.preheader:                             ; preds = %land.rhs118.while.cond.preheader_crit_edge, %if.end115.while.cond.preheader_crit_edge
  %consumed.8.ph = phi i32 [ %consumed.6, %if.end115.while.cond.preheader_crit_edge ], [ %add119, %land.rhs118.while.cond.preheader_crit_edge ]
  %block_len.8.ph = phi i32 [ %block_len.6, %if.end115.while.cond.preheader_crit_edge ], [ %call122, %land.rhs118.while.cond.preheader_crit_edge ]
  %block_idx.8.ph = phi i32 [ %block_idx.6, %if.end115.while.cond.preheader_crit_edge ], [ 0, %land.rhs118.while.cond.preheader_crit_edge ]
  %value.i395 = getelementptr inbounds %struct.ts_fsm_token, ptr %next.0, i32 0, i32 2
  %value.i407 = getelementptr inbounds %struct.ts_fsm_token, ptr %arrayidx11, i32 0, i32 2
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %land.rhs155.while.cond.outer_crit_edge, %while.cond.preheader
  %consumed.8.ph457 = phi i32 [ %consumed.8.ph, %while.cond.preheader ], [ %add156, %land.rhs155.while.cond.outer_crit_edge ]
  %block_len.8.ph458 = phi i32 [ %block_len.8.ph, %while.cond.preheader ], [ %call159, %land.rhs155.while.cond.outer_crit_edge ]
  %block_idx.8.ph459 = phi i32 [ %block_idx.8.ph, %while.cond.preheader ], [ 0, %land.rhs155.while.cond.outer_crit_edge ]
  %53 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data, align 4
  %55 = ptrtoint ptr %next.0 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %next.0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool.not.i389 = icmp eq i16 %56, 0
  %57 = add nuw i32 %block_idx.8.ph459, 1
  %umax568 = call i32 @llvm.umax.i32(i32 %block_len.8.ph458, i32 %57)
  br label %while.cond

while.cond:                                       ; preds = %if.end151.while.cond_crit_edge, %while.cond.outer
  %block_idx.8 = phi i32 [ %inc152, %if.end151.while.cond_crit_edge ], [ %block_idx.8.ph459, %while.cond.outer ]
  %arrayidx135 = getelementptr i8, ptr %54, i32 %block_idx.8
  %58 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx135, align 1
  br i1 %tobool.not.i389, label %match_token.exit400, label %if.then.i394

if.then.i394:                                     ; preds = %while.cond
  %idxprom.i390 = zext i8 %59 to i32
  %arrayidx.i391 = getelementptr [256 x i16], ptr @token_lookup_tbl, i32 0, i32 %idxprom.i390
  %60 = ptrtoint ptr %arrayidx.i391 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx.i391, align 2
  %and11.i392 = and i16 %61, %56
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and11.i392)
  %cmp.i393.not = icmp eq i16 %and11.i392, 0
  br i1 %cmp.i393.not, label %if.then.i394.while.body_crit_edge, label %if.then.i394.for.inc_crit_edge

if.then.i394.for.inc_crit_edge:                   ; preds = %if.then.i394
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then.i394.while.body_crit_edge:                ; preds = %if.then.i394
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

match_token.exit400:                              ; preds = %while.cond
  %62 = ptrtoint ptr %value.i395 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %value.i395, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %63, i8 %59)
  %cmp6.i396 = icmp eq i8 %63, %59
  br i1 %cmp6.i396, label %match_token.exit400.for.inc_crit_edge, label %match_token.exit400.while.body_crit_edge

match_token.exit400.while.body_crit_edge:         ; preds = %match_token.exit400
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

match_token.exit400.for.inc_crit_edge:            ; preds = %match_token.exit400
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

while.body:                                       ; preds = %match_token.exit400.while.body_crit_edge, %if.then.i394.while.body_crit_edge
  %64 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx11, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %tobool.not.i401 = icmp eq i16 %65, 0
  br i1 %tobool.not.i401, label %match_token.exit412, label %if.then.i406

if.then.i406:                                     ; preds = %while.body
  %idxprom.i402 = zext i8 %59 to i32
  %arrayidx.i403 = getelementptr [256 x i16], ptr @token_lookup_tbl, i32 0, i32 %idxprom.i402
  %66 = ptrtoint ptr %arrayidx.i403 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx.i403, align 2
  %and11.i404 = and i16 %67, %65
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and11.i404)
  %cmp.i405.not = icmp eq i16 %and11.i404, 0
  br i1 %cmp.i405.not, label %if.then.i406.do.body144_crit_edge, label %if.then.i406.if.end151_crit_edge

if.then.i406.if.end151_crit_edge:                 ; preds = %if.then.i406
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end151

if.then.i406.do.body144_crit_edge:                ; preds = %if.then.i406
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body144

match_token.exit412:                              ; preds = %while.body
  %68 = ptrtoint ptr %value.i407 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %value.i407, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %69, i8 %59)
  %cmp6.i408 = icmp eq i8 %69, %59
  br i1 %cmp6.i408, label %match_token.exit412.if.end151_crit_edge, label %match_token.exit412.do.body144_crit_edge

match_token.exit412.do.body144_crit_edge:         ; preds = %match_token.exit412
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body144

match_token.exit412.if.end151_crit_edge:          ; preds = %match_token.exit412
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end151

do.body144:                                       ; preds = %match_token.exit412.do.body144_crit_edge, %if.then.i406.do.body144_crit_edge
  br i1 %cmp5.not, label %do.body144.startover.backedge_crit_edge, label %do.body144.cleanup_crit_edge

do.body144.cleanup_crit_edge:                     ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body144.startover.backedge_crit_edge:          ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #9
  br label %startover.backedge

if.end151:                                        ; preds = %match_token.exit412.if.end151_crit_edge, %if.then.i406.if.end151_crit_edge
  %inc152 = add i32 %block_idx.8, 1
  %cmp153.not = icmp ult i32 %inc152, %block_len.8.ph458
  br i1 %cmp153.not, label %if.end151.while.cond_crit_edge, label %land.rhs155

if.end151.while.cond_crit_edge:                   ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

land.rhs155:                                      ; preds = %if.end151
  %add156 = add i32 %umax568, %consumed.8.ph457
  %70 = ptrtoint ptr %get_next_block to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %get_next_block, align 4
  %call159 = call i32 %71(i32 noundef %add156, ptr noundef nonnull %data, ptr noundef %conf, ptr noundef %state) #10
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %land.rhs155.cleanup_crit_edge, label %land.rhs155.while.cond.outer_crit_edge, !prof !24

land.rhs155.while.cond.outer_crit_edge:           ; preds = %land.rhs155
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.outer

land.rhs155.cleanup_crit_edge:                    ; preds = %land.rhs155
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb172:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %block_idx.2520, i32 %block_len.2518)
  %cmp173.not = icmp ult i32 %block_idx.2520, %block_len.2518
  br i1 %cmp173.not, label %sw.bb172.while.cond192.preheader_crit_edge, label %land.rhs175

sw.bb172.while.cond192.preheader_crit_edge:       ; preds = %sw.bb172
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond192.preheader

land.rhs175:                                      ; preds = %sw.bb172
  %add176 = add i32 %block_idx.2520, %consumed.2517
  %72 = ptrtoint ptr %get_next_block to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %get_next_block, align 4
  %call179 = call i32 %73(i32 noundef %add176, ptr noundef nonnull %data, ptr noundef %conf, ptr noundef %state) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call179)
  %tobool180.not = icmp eq i32 %call179, 0
  br i1 %tobool180.not, label %land.rhs175.for.inc_crit_edge, label %land.rhs175.while.cond192.preheader_crit_edge, !prof !24

land.rhs175.while.cond192.preheader_crit_edge:    ; preds = %land.rhs175
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond192.preheader

land.rhs175.for.inc_crit_edge:                    ; preds = %land.rhs175
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

while.cond192.preheader:                          ; preds = %land.rhs175.while.cond192.preheader_crit_edge, %sw.bb172.while.cond192.preheader_crit_edge
  %consumed.11.ph = phi i32 [ %consumed.2517, %sw.bb172.while.cond192.preheader_crit_edge ], [ %add176, %land.rhs175.while.cond192.preheader_crit_edge ]
  %block_len.11.ph = phi i32 [ %block_len.2518, %sw.bb172.while.cond192.preheader_crit_edge ], [ %call179, %land.rhs175.while.cond192.preheader_crit_edge ]
  %block_idx.11.ph = phi i32 [ %block_idx.2520, %sw.bb172.while.cond192.preheader_crit_edge ], [ 0, %land.rhs175.while.cond192.preheader_crit_edge ]
  %value.i419 = getelementptr inbounds %struct.ts_fsm_token, ptr %next.0, i32 0, i32 2
  %value.i431 = getelementptr inbounds %struct.ts_fsm_token, ptr %arrayidx11, i32 0, i32 2
  br label %while.cond192.outer

while.cond192.outer:                              ; preds = %land.rhs207.while.cond192.outer_crit_edge, %while.cond192.preheader
  %consumed.11.ph461 = phi i32 [ %consumed.11.ph, %while.cond192.preheader ], [ %add208, %land.rhs207.while.cond192.outer_crit_edge ]
  %block_len.11.ph462 = phi i32 [ %block_len.11.ph, %while.cond192.preheader ], [ %call211, %land.rhs207.while.cond192.outer_crit_edge ]
  %block_idx.11.ph463 = phi i32 [ %block_idx.11.ph, %while.cond192.preheader ], [ 0, %land.rhs207.while.cond192.outer_crit_edge ]
  %74 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %data, align 4
  %76 = ptrtoint ptr %next.0 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %next.0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %tobool.not.i413 = icmp eq i16 %77, 0
  %78 = add nuw i32 %block_idx.11.ph463, 1
  %umax = call i32 @llvm.umax.i32(i32 %block_len.11.ph462, i32 %78)
  br label %while.cond192

while.cond192:                                    ; preds = %if.end203.while.cond192_crit_edge, %while.cond192.outer
  %block_idx.11 = phi i32 [ %inc204, %if.end203.while.cond192_crit_edge ], [ %block_idx.11.ph463, %while.cond192.outer ]
  %arrayidx193 = getelementptr i8, ptr %75, i32 %block_idx.11
  %79 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx193, align 1
  br i1 %tobool.not.i413, label %match_token.exit424, label %if.then.i418

if.then.i418:                                     ; preds = %while.cond192
  %idxprom.i414 = zext i8 %80 to i32
  %arrayidx.i415 = getelementptr [256 x i16], ptr @token_lookup_tbl, i32 0, i32 %idxprom.i414
  %81 = ptrtoint ptr %arrayidx.i415 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %arrayidx.i415, align 2
  %and11.i416 = and i16 %82, %77
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and11.i416)
  %cmp.i417.not = icmp eq i16 %and11.i416, 0
  br i1 %cmp.i417.not, label %if.then.i418.while.body198_crit_edge, label %if.then.i418.while.end224_crit_edge

if.then.i418.while.end224_crit_edge:              ; preds = %if.then.i418
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end224

if.then.i418.while.body198_crit_edge:             ; preds = %if.then.i418
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body198

match_token.exit424:                              ; preds = %while.cond192
  %83 = ptrtoint ptr %value.i419 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %value.i419, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %84, i8 %80)
  %cmp6.i420 = icmp eq i8 %84, %80
  br i1 %cmp6.i420, label %match_token.exit424.while.end224_crit_edge, label %match_token.exit424.while.body198_crit_edge

match_token.exit424.while.body198_crit_edge:      ; preds = %match_token.exit424
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body198

match_token.exit424.while.end224_crit_edge:       ; preds = %match_token.exit424
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end224

while.body198:                                    ; preds = %match_token.exit424.while.body198_crit_edge, %if.then.i418.while.body198_crit_edge
  %85 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %arrayidx11, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %86)
  %tobool.not.i425 = icmp eq i16 %86, 0
  br i1 %tobool.not.i425, label %match_token.exit436, label %if.then.i430

if.then.i430:                                     ; preds = %while.body198
  %idxprom.i426 = zext i8 %80 to i32
  %arrayidx.i427 = getelementptr [256 x i16], ptr @token_lookup_tbl, i32 0, i32 %idxprom.i426
  %87 = ptrtoint ptr %arrayidx.i427 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %arrayidx.i427, align 2
  %and11.i428 = and i16 %88, %86
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and11.i428)
  %cmp.i429.not = icmp eq i16 %and11.i428, 0
  br i1 %cmp.i429.not, label %if.then.i430.cleanup_crit_edge, label %if.then.i430.if.end203_crit_edge

if.then.i430.if.end203_crit_edge:                 ; preds = %if.then.i430
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end203

if.then.i430.cleanup_crit_edge:                   ; preds = %if.then.i430
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

match_token.exit436:                              ; preds = %while.body198
  %89 = ptrtoint ptr %value.i431 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %value.i431, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %90, i8 %80)
  %cmp6.i432 = icmp eq i8 %90, %80
  br i1 %cmp6.i432, label %match_token.exit436.if.end203_crit_edge, label %match_token.exit436.cleanup_crit_edge

match_token.exit436.cleanup_crit_edge:            ; preds = %match_token.exit436
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

match_token.exit436.if.end203_crit_edge:          ; preds = %match_token.exit436
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end203

if.end203:                                        ; preds = %match_token.exit436.if.end203_crit_edge, %if.then.i430.if.end203_crit_edge
  %inc204 = add i32 %block_idx.11, 1
  %cmp205.not = icmp ult i32 %inc204, %block_len.11.ph462
  br i1 %cmp205.not, label %if.end203.while.cond192_crit_edge, label %land.rhs207

if.end203.while.cond192_crit_edge:                ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond192

land.rhs207:                                      ; preds = %if.end203
  %add208 = add i32 %umax, %consumed.11.ph461
  %91 = ptrtoint ptr %get_next_block to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %get_next_block, align 4
  %call211 = call i32 %92(i32 noundef %add208, ptr noundef nonnull %data, ptr noundef %conf, ptr noundef %state) #10
  %tobool212.not = icmp eq i32 %call211, 0
  br i1 %tobool212.not, label %land.rhs207.cleanup_crit_edge, label %land.rhs207.while.cond192.outer_crit_edge, !prof !24

land.rhs207.while.cond192.outer_crit_edge:        ; preds = %land.rhs207
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond192.outer

land.rhs207.cleanup_crit_edge:                    ; preds = %land.rhs207
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.end224:                                     ; preds = %match_token.exit424.while.end224_crit_edge, %if.then.i418.while.end224_crit_edge
  %add225 = add i32 %block_idx.11, %consumed.11.ph461
  br label %for.inc

sw.epilog:                                        ; preds = %match_token.exit376.sw.epilog_crit_edge, %if.then.i370.sw.epilog_crit_edge, %match_token.exit.sw.epilog_crit_edge, %if.then.i.sw.epilog_crit_edge, %for.body.sw.epilog_crit_edge
  %consumed.13 = phi i32 [ %consumed.2517, %for.body.sw.epilog_crit_edge ], [ %consumed.4446, %match_token.exit376.sw.epilog_crit_edge ], [ %consumed.3440, %match_token.exit.sw.epilog_crit_edge ], [ %consumed.3440, %if.then.i.sw.epilog_crit_edge ], [ %consumed.4446, %if.then.i370.sw.epilog_crit_edge ]
  %block_len.13 = phi i32 [ %block_len.2518, %for.body.sw.epilog_crit_edge ], [ %block_len.4447, %match_token.exit376.sw.epilog_crit_edge ], [ %block_len.3441, %match_token.exit.sw.epilog_crit_edge ], [ %block_len.3441, %if.then.i.sw.epilog_crit_edge ], [ %block_len.4447, %if.then.i370.sw.epilog_crit_edge ]
  %block_idx.13 = phi i32 [ %block_idx.2520, %for.body.sw.epilog_crit_edge ], [ %block_idx.4448, %match_token.exit376.sw.epilog_crit_edge ], [ %block_idx.3442, %match_token.exit.sw.epilog_crit_edge ], [ %block_idx.3442, %if.then.i.sw.epilog_crit_edge ], [ %block_idx.4448, %if.then.i370.sw.epilog_crit_edge ]
  %inc226 = add i32 %block_idx.13, 1
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog, %while.end224, %land.rhs175.for.inc_crit_edge, %match_token.exit400.for.inc_crit_edge, %if.then.i394.for.inc_crit_edge, %land.rhs118.for.inc_crit_edge, %match_token.exit376.for.inc_crit_edge, %if.then.i370.for.inc_crit_edge, %land.end66.for.inc_crit_edge
  %consumed.14 = phi i32 [ %consumed.13, %sw.epilog ], [ %consumed.11.ph461, %while.end224 ], [ %add59, %land.end66.for.inc_crit_edge ], [ %consumed.4446, %match_token.exit376.for.inc_crit_edge ], [ %add119, %land.rhs118.for.inc_crit_edge ], [ %add176, %land.rhs175.for.inc_crit_edge ], [ %consumed.4446, %if.then.i370.for.inc_crit_edge ], [ %consumed.8.ph457, %if.then.i394.for.inc_crit_edge ], [ %consumed.8.ph457, %match_token.exit400.for.inc_crit_edge ]
  %block_len.14 = phi i32 [ %block_len.13, %sw.epilog ], [ %block_len.11.ph462, %while.end224 ], [ 0, %land.end66.for.inc_crit_edge ], [ %block_len.4447, %match_token.exit376.for.inc_crit_edge ], [ 0, %land.rhs118.for.inc_crit_edge ], [ 0, %land.rhs175.for.inc_crit_edge ], [ %block_len.4447, %if.then.i370.for.inc_crit_edge ], [ %block_len.8.ph458, %if.then.i394.for.inc_crit_edge ], [ %block_len.8.ph458, %match_token.exit400.for.inc_crit_edge ]
  %block_idx.14 = phi i32 [ %inc226, %sw.epilog ], [ %block_idx.11, %while.end224 ], [ 0, %land.end66.for.inc_crit_edge ], [ %block_idx.4448, %match_token.exit376.for.inc_crit_edge ], [ 0, %land.rhs118.for.inc_crit_edge ], [ 0, %land.rhs175.for.inc_crit_edge ], [ %block_idx.4448, %if.then.i370.for.inc_crit_edge ], [ %block_idx.8, %if.then.i394.for.inc_crit_edge ], [ %block_idx.8, %match_token.exit400.for.inc_crit_edge ]
  %match_start.1 = phi i32 [ %match_start.0521, %sw.epilog ], [ %add225, %while.end224 ], [ %match_start.0521, %land.end66.for.inc_crit_edge ], [ %match_start.0521, %match_token.exit376.for.inc_crit_edge ], [ %match_start.0521, %land.rhs118.for.inc_crit_edge ], [ %match_start.0521, %land.rhs175.for.inc_crit_edge ], [ %match_start.0521, %if.then.i370.for.inc_crit_edge ], [ %match_start.0521, %if.then.i394.for.inc_crit_edge ], [ %match_start.0521, %match_token.exit400.for.inc_crit_edge ]
  %93 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add23, i32 %94)
  %cmp8 = icmp ult i32 %add23, %94
  br i1 %cmp8, label %for.inc.for.body.backedge_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body.backedge_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.backedge

for.body.backedge:                                ; preds = %for.inc.for.body.backedge_crit_edge, %startover.backedge.for.body.backedge_crit_edge
  %.be = phi i32 [ %94, %for.inc.for.body.backedge_crit_edge ], [ %26, %startover.backedge.for.body.backedge_crit_edge ]
  %match_start.0521.be = phi i32 [ %match_start.1, %for.inc.for.body.backedge_crit_edge ], [ %add7, %startover.backedge.for.body.backedge_crit_edge ]
  %block_idx.2520.be = phi i32 [ %block_idx.14, %for.inc.for.body.backedge_crit_edge ], [ %block_idx.1.be, %startover.backedge.for.body.backedge_crit_edge ]
  %tok_idx.0519.be = phi i32 [ %add23, %for.inc.for.body.backedge_crit_edge ], [ 0, %startover.backedge.for.body.backedge_crit_edge ]
  %block_len.2518.be = phi i32 [ %block_len.14, %for.inc.for.body.backedge_crit_edge ], [ %block_len.1.be, %startover.backedge.for.body.backedge_crit_edge ]
  %consumed.2517.be = phi i32 [ %consumed.14, %for.inc.for.body.backedge_crit_edge ], [ %consumed.1.be, %startover.backedge.for.body.backedge_crit_edge ]
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %startover.backedge.for.end_crit_edge, %if.end.for.end_crit_edge
  %consumed.2.lcssa = phi i32 [ %1, %if.end.for.end_crit_edge ], [ %consumed.1.be, %startover.backedge.for.end_crit_edge ], [ %consumed.14, %for.inc.for.end_crit_edge ]
  %block_len.2.lcssa = phi i32 [ %call1, %if.end.for.end_crit_edge ], [ %block_len.1.be, %startover.backedge.for.end_crit_edge ], [ %block_len.14, %for.inc.for.end_crit_edge ]
  %block_idx.2.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %block_idx.1.be, %startover.backedge.for.end_crit_edge ], [ %block_idx.14, %for.inc.for.end_crit_edge ]
  %match_start.0.lcssa = phi i32 [ %1, %if.end.for.end_crit_edge ], [ %add7, %startover.backedge.for.end_crit_edge ], [ %match_start.1, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %block_idx.2.lcssa, i32 %block_len.2.lcssa)
  %cmp228.not = icmp ult i32 %block_idx.2.lcssa, %block_len.2.lcssa
  br i1 %cmp228.not, label %for.end.cleanup_crit_edge, label %land.end238

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.end238:                                      ; preds = %for.end
  %add231 = add i32 %block_idx.2.lcssa, %consumed.2.lcssa
  %95 = ptrtoint ptr %get_next_block to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %get_next_block, align 4
  %call234 = call i32 %96(i32 noundef %add231, ptr noundef nonnull %data, ptr noundef %conf, ptr noundef %state) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call234)
  %tobool235.not = icmp eq i32 %call234, 0
  br i1 %tobool235.not, label %land.end238.found_match_crit_edge, label %land.end238.cleanup_crit_edge, !prof !24

land.end238.cleanup_crit_edge:                    ; preds = %land.end238
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.end238.found_match_crit_edge:                ; preds = %land.end238
  call void @__sanitizer_cov_trace_pc() #9
  br label %found_match

found_match:                                      ; preds = %land.end238.found_match_crit_edge, %sw.bb111.found_match_crit_edge
  %match_start.0491 = phi i32 [ %match_start.0.lcssa, %land.end238.found_match_crit_edge ], [ %match_start.0521, %sw.bb111.found_match_crit_edge ]
  %consumed.16 = phi i32 [ %add231, %land.end238.found_match_crit_edge ], [ %consumed.6, %sw.bb111.found_match_crit_edge ]
  %block_idx.16 = phi i32 [ 0, %land.end238.found_match_crit_edge ], [ %block_idx.6, %sw.bb111.found_match_crit_edge ]
  %add247 = add i32 %block_idx.16, %consumed.16
  %97 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %add247, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %found_match, %land.end238.cleanup_crit_edge, %for.end.cleanup_crit_edge, %land.rhs207.cleanup_crit_edge, %match_token.exit436.cleanup_crit_edge, %if.then.i430.cleanup_crit_edge, %land.rhs155.cleanup_crit_edge, %do.body144.cleanup_crit_edge, %do.body102.cleanup_crit_edge, %land.end89.cleanup_crit_edge, %do.body.cleanup_crit_edge, %land.end38.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %match_start.0491, %found_match ], [ -1, %land.end238.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ -1, %for.end.cleanup_crit_edge ], [ -1, %if.then.i430.cleanup_crit_edge ], [ -1, %match_token.exit436.cleanup_crit_edge ], [ -1, %land.rhs155.cleanup_crit_edge ], [ -1, %land.rhs207.cleanup_crit_edge ], [ -1, %land.end89.cleanup_crit_edge ], [ -1, %land.end38.cleanup_crit_edge ], [ -1, %do.body144.cleanup_crit_edge ], [ -1, %do.body102.cleanup_crit_edge ], [ -1, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #10
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @fsm_get_pattern(ptr noundef readnone %conf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %tokens = getelementptr i8, ptr %conf, i32 20
  ret ptr %tokens
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fsm_get_pattern_len(ptr nocapture noundef readonly %conf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %conf, i32 16
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  %mul = shl i32 %1, 2
  ret i32 %mul
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @textsearch_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind uwtable(sync) }
attributes #9 = { nomerge }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @__UNIQUE_ID_file173, !1, !"__UNIQUE_ID_file173", i1 false, i1 false}
!1 = !{!"../lib/ts_fsm.c", i32 334, i32 1}
!2 = !{ptr @__UNIQUE_ID_license174, !1, !"__UNIQUE_ID_license174", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_ts_fsm__175_336_init_fsm6, !4, !"__initcall__kmod_ts_fsm__175_336_init_fsm6", i1 false, i1 false}
!4 = !{!"../lib/ts_fsm.c", i32 336, i32 1}
!5 = !{ptr @__exitcall_exit_fsm, !6, !"__exitcall_exit_fsm", i1 false, i1 false}
!6 = !{!"../lib/ts_fsm.c", i32 337, i32 1}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../lib/ts_fsm.c", i32 315, i32 13}
!9 = !{ptr @fsm_ops, !10, !"fsm_ops", i1 false, i1 false}
!10 = !{!"../lib/ts_fsm.c", i32 314, i32 22}
!11 = !{ptr @token_map, !12, !"token_map", i1 false, i1 false}
!12 = !{!"../lib/ts_fsm.c", i32 43, i32 18}
!13 = !{ptr @token_lookup_tbl, !14, !"token_lookup_tbl", i1 false, i1 false}
!14 = !{!"../lib/ts_fsm.c", i32 60, i32 18}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{!"auto-init"}
!24 = !{!"branch_weights", i32 1, i32 2000}
!25 = !{!"branch_weights", i32 2000, i32 1}
