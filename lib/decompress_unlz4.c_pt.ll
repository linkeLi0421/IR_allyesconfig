; ModuleID = '/llk/IR_all_yes/lib/decompress_unlz4.c_pt.bc'
source_filename = "../lib/decompress_unlz4.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"NULL output pointer and no flush function provided\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Could not allocate output buffer\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Both input pointer and fill function provided,\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"NULL input pointer and missing fill function\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Could not allocate input buffer\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"data corrupted\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"invalid header\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"chunk length is longer than allocated\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Decoding failed\00", [16 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 53, i32 9 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 58, i32 10 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 64, i32 9 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 69, i32 9 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 74, i32 10 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 86, i32 10 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 98, i32 9 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 144, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private constant [26 x i8] c"../lib/decompress_unlz4.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 169, i32 10 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold inlinehint nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @unlz4(ptr noundef %input, i32 noundef %in_len, ptr noundef readonly %fill, ptr noundef readonly %flush, ptr noundef %output, ptr noundef %posp, ptr nocapture noundef readonly %error) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %tobool.not = icmp eq ptr %output, null
  br i1 %tobool.not, label %if.else, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

if.else:                                          ; preds = %entry
  %tobool1.not = icmp eq ptr %flush, null
  br i1 %tobool1.not, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %error(ptr noundef nonnull @.str) #6
  br label %exit_0

if.else3:                                         ; preds = %if.else
  %call = tail call noalias ptr @vmalloc(i32 noundef 8388608) #7
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.then5, label %if.else3.if.end7_crit_edge

if.else3.if.end7_crit_edge:                       ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

if.then5:                                         ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %error(ptr noundef nonnull @.str.1) #6
  br label %exit_0

if.end7:                                          ; preds = %if.else3.if.end7_crit_edge, %entry.if.end7_crit_edge
  %outp.0 = phi ptr [ %call, %if.else3.if.end7_crit_edge ], [ %output, %entry.if.end7_crit_edge ]
  %tobool8.not = icmp eq ptr %input, null
  %tobool9.not = icmp eq ptr %fill, null
  %or.cond = or i1 %tobool8.not, %tobool9.not
  br i1 %or.cond, label %if.else11, label %if.then10

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %error(ptr noundef nonnull @.str.2) #6
  br label %exit_1

if.else11:                                        ; preds = %if.end7
  br i1 %tobool8.not, label %if.else14, label %if.else11.if.end25_crit_edge

if.else11.if.end25_crit_edge:                     ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end25

if.else14:                                        ; preds = %if.else11
  br i1 %tobool9.not, label %if.then16, label %if.else17

if.then16:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %error(ptr noundef nonnull @.str.3) #6
  br label %exit_1

if.else17:                                        ; preds = %if.else14
  %call19 = tail call noalias ptr @vmalloc(i32 noundef 8421520) #7
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.then21, label %if.else17.if.end25_crit_edge

if.else17.if.end25_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end25

if.then21:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %error(ptr noundef nonnull @.str.4) #6
  br label %exit_1

if.end25:                                         ; preds = %if.else17.if.end25_crit_edge, %if.else11.if.end25_crit_edge
  %inp.0 = phi ptr [ %call19, %if.else17.if.end25_crit_edge ], [ %input, %if.else11.if.end25_crit_edge ]
  %tobool26.not = icmp eq ptr %posp, null
  br i1 %tobool26.not, label %if.end25.if.end28_crit_edge, label %if.then27

if.end25.if.end28_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end28

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %posp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %posp, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end25.if.end28_crit_edge
  br i1 %tobool9.not, label %if.end28.if.end34_crit_edge, label %if.then30

if.end28.if.end34_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end34

if.then30:                                        ; preds = %if.end28
  %call31 = tail call i32 %fill(ptr noundef nonnull %inp.0, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call31)
  %cmp = icmp slt i32 %call31, 4
  br i1 %cmp, label %if.then30.exit_2.sink.split_crit_edge, label %if.then30.if.end34_crit_edge

if.then30.if.end34_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end34

if.then30.exit_2.sink.split_crit_edge:            ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #5
  br label %exit_2.sink.split

if.end34:                                         ; preds = %if.then30.if.end34_crit_edge, %if.end28.if.end34_crit_edge
  %size.0 = phi i32 [ %call31, %if.then30.if.end34_crit_edge ], [ %in_len, %if.end28.if.end34_crit_edge ]
  %1 = ptrtoint ptr %inp.0 to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %inp.0, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 35736600, i32 %2)
  %cmp36 = icmp eq i32 %2, 35736600
  br i1 %cmp36, label %if.then37, label %if.end34.exit_2.sink.split_crit_edge

if.end34.exit_2.sink.split_crit_edge:             ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #5
  br label %exit_2.sink.split

if.then37:                                        ; preds = %if.end34
  %sub = add i32 %size.0, -4
  %inp.1.idx = select i1 %tobool9.not, i32 4, i32 0
  %inp.1 = getelementptr i8, ptr %inp.0, i32 %inp.1.idx
  %size.1 = select i1 %tobool9.not, i32 %sub, i32 %size.0
  br i1 %tobool26.not, label %if.then37.if.end45_crit_edge, label %if.then44

if.then37.if.end45_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end45

if.then44:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %posp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %posp, align 4
  %add = add i32 %4, 4
  store i32 %add, ptr %posp, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.then37.if.end45_crit_edge
  %tobool100.not = icmp eq ptr %flush, null
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %for.cond.outer.backedge, %if.end45
  %inp.2.ph = phi ptr [ %inp.1, %if.end45 ], [ %inp.2.ph.be, %for.cond.outer.backedge ]
  %outp.1.ph = phi ptr [ %outp.0, %if.end45 ], [ %spec.select, %for.cond.outer.backedge ]
  %size.2.ph = phi i32 [ %size.1, %if.end45 ], [ %size.2.ph.be, %for.cond.outer.backedge ]
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %for.cond.outer
  %inp.2 = phi ptr [ %inp.2.ph, %for.cond.outer ], [ %inp.3, %for.cond.backedge ]
  %size.2 = phi i32 [ %size.2.ph, %for.cond.outer ], [ %size.4, %for.cond.backedge ]
  br i1 %tobool9.not, label %if.else55, label %if.then47

if.then47:                                        ; preds = %for.cond
  %call48 = tail call i32 %fill(ptr noundef %inp.2, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp eq i32 %call48, 0
  br i1 %cmp49, label %if.then47.exit_2_crit_edge, label %if.end51

if.then47.exit_2_crit_edge:                       ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #5
  br label %exit_2

if.end51:                                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call48)
  %cmp52 = icmp slt i32 %call48, 4
  br i1 %cmp52, label %if.end51.exit_2.sink.split_crit_edge, label %if.end51.if.end59_crit_edge

if.end51.if.end59_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end59

if.end51.exit_2.sink.split_crit_edge:             ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #5
  br label %exit_2.sink.split

if.else55:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size.2)
  %cmp56 = icmp slt i32 %size.2, 4
  br i1 %cmp56, label %if.else55.exit_2_crit_edge, label %if.else55.if.end59_crit_edge

if.else55.if.end59_crit_edge:                     ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end59

if.else55.exit_2_crit_edge:                       ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #5
  br label %exit_2

if.end59:                                         ; preds = %if.else55.if.end59_crit_edge, %if.end51.if.end59_crit_edge
  %size.3 = phi i32 [ %call48, %if.end51.if.end59_crit_edge ], [ %size.2, %if.else55.if.end59_crit_edge ]
  %5 = ptrtoint ptr %inp.2 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %inp.2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 35736600, i32 %6)
  %cmp61 = icmp eq i32 %6, 35736600
  br i1 %cmp61, label %if.then62, label %if.end72

if.then62:                                        ; preds = %if.end59
  %sub66 = add nsw i32 %size.3, -4
  %inp.3 = getelementptr i8, ptr %inp.2, i32 %inp.1.idx
  %size.4 = select i1 %tobool9.not, i32 %sub66, i32 %size.3
  br i1 %tobool26.not, label %if.then62.for.cond.backedge_crit_edge, label %if.then69

if.then62.for.cond.backedge_crit_edge:            ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.backedge

if.then69:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %posp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %posp, align 4
  %add70 = add i32 %8, 4
  store i32 %add70, ptr %posp, align 4
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.then69, %if.then62.for.cond.backedge_crit_edge
  br label %for.cond

if.end72:                                         ; preds = %if.end59
  %9 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp75 = icmp eq i32 %6, 0
  %or.cond213 = select i1 %tobool9.not, i1 %cmp75, i1 false
  br i1 %or.cond213, label %if.end72.exit_2_crit_edge, label %if.end77

if.end72.exit_2_crit_edge:                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #5
  br label %exit_2

if.end77:                                         ; preds = %if.end72
  br i1 %tobool26.not, label %if.end77.if.end81_crit_edge, label %if.then79

if.end77.if.end81_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end81

if.then79:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #5
  %10 = ptrtoint ptr %posp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %posp, align 4
  %add80 = add i32 %11, 4
  store i32 %add80, ptr %posp, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then79, %if.end77.if.end81_crit_edge
  br i1 %tobool9.not, label %if.then83, label %if.else86

if.then83:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr84 = getelementptr i8, ptr %inp.2, i32 4
  %sub85 = add nsw i32 %size.3, -4
  br label %if.end95

if.else86:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_const_cmp4(i32 8421520, i32 %9)
  %cmp88 = icmp ugt i32 %9, 8421520
  br i1 %cmp88, label %if.else86.exit_2.sink.split_crit_edge, label %if.end90

if.else86.exit_2.sink.split_crit_edge:            ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #5
  br label %exit_2.sink.split

if.end90:                                         ; preds = %if.else86
  %call91 = tail call i32 %fill(ptr noundef %inp.2, i32 noundef %9) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call91, i32 %9)
  %cmp92 = icmp ult i32 %call91, %9
  br i1 %cmp92, label %if.end90.exit_2.sink.split_crit_edge, label %if.end90.if.end95_crit_edge

if.end90.if.end95_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end95

if.end90.exit_2.sink.split_crit_edge:             ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #5
  br label %exit_2.sink.split

if.end95:                                         ; preds = %if.end90.if.end95_crit_edge, %if.then83
  %inp.4 = phi ptr [ %inp.2, %if.end90.if.end95_crit_edge ], [ %add.ptr84, %if.then83 ]
  %size.5 = phi i32 [ %call91, %if.end90.if.end95_crit_edge ], [ %sub85, %if.then83 ]
  %call96 = tail call i32 @LZ4_decompress_safe(ptr noundef %inp.4, ptr noundef %outp.1.ph, i32 noundef %9, i32 noundef 8388608) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %cmp97 = icmp slt i32 %call96, 0
  br i1 %cmp97, label %if.end95.exit_2.sink.split_crit_edge, label %if.end99

if.end95.exit_2.sink.split_crit_edge:             ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #5
  br label %exit_2.sink.split

if.end99:                                         ; preds = %if.end95
  br i1 %tobool100.not, label %if.end99.if.end105_crit_edge, label %land.lhs.true101

if.end99.if.end105_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end105

land.lhs.true101:                                 ; preds = %if.end99
  %call102 = tail call i32 %flush(ptr noundef %outp.1.ph, i32 noundef %call96) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call102, i32 %call96)
  %cmp103.not = icmp eq i32 %call102, %call96
  br i1 %cmp103.not, label %land.lhs.true101.if.end105_crit_edge, label %land.lhs.true101.exit_2_crit_edge

land.lhs.true101.exit_2_crit_edge:                ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #5
  br label %exit_2

land.lhs.true101.if.end105_crit_edge:             ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end105

if.end105:                                        ; preds = %land.lhs.true101.if.end105_crit_edge, %if.end99.if.end105_crit_edge
  %spec.select.idx = select i1 %tobool.not, i32 0, i32 %call96
  %spec.select = getelementptr i8, ptr %outp.1.ph, i32 %spec.select.idx
  br i1 %tobool26.not, label %if.end105.if.end113_crit_edge, label %if.then111

if.end105.if.end113_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end113

if.then111:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #5
  %12 = ptrtoint ptr %posp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %posp, align 4
  %add112 = add i32 %13, %9
  store i32 %add112, ptr %posp, align 4
  br label %if.end113

if.end113:                                        ; preds = %if.then111, %if.end105.if.end113_crit_edge
  br i1 %tobool9.not, label %if.then115, label %if.end113.for.cond.outer.backedge_crit_edge

if.end113.for.cond.outer.backedge_crit_edge:      ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.outer.backedge

if.then115:                                       ; preds = %if.end113
  %sub116 = sub i32 %size.5, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub116)
  %cmp117 = icmp eq i32 %sub116, 0
  br i1 %cmp117, label %if.then115.exit_2_crit_edge, label %if.else119

if.then115.exit_2_crit_edge:                      ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #5
  br label %exit_2

if.else119:                                       ; preds = %if.then115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub116)
  %cmp120 = icmp slt i32 %sub116, 0
  br i1 %cmp120, label %if.else119.exit_2.sink.split_crit_edge, label %if.end123

if.else119.exit_2.sink.split_crit_edge:           ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #5
  br label %exit_2.sink.split

if.end123:                                        ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr124 = getelementptr i8, ptr %inp.4, i32 %9
  br label %for.cond.outer.backedge

for.cond.outer.backedge:                          ; preds = %if.end123, %if.end113.for.cond.outer.backedge_crit_edge
  %inp.2.ph.be = phi ptr [ %inp.4, %if.end113.for.cond.outer.backedge_crit_edge ], [ %add.ptr124, %if.end123 ]
  %size.2.ph.be = phi i32 [ %size.5, %if.end113.for.cond.outer.backedge_crit_edge ], [ %sub116, %if.end123 ]
  br label %for.cond.outer

exit_2.sink.split:                                ; preds = %if.else119.exit_2.sink.split_crit_edge, %if.end95.exit_2.sink.split_crit_edge, %if.end90.exit_2.sink.split_crit_edge, %if.else86.exit_2.sink.split_crit_edge, %if.end51.exit_2.sink.split_crit_edge, %if.end34.exit_2.sink.split_crit_edge, %if.then30.exit_2.sink.split_crit_edge
  %.str.5.sink = phi ptr [ @.str.5, %if.then30.exit_2.sink.split_crit_edge ], [ @.str.6, %if.end34.exit_2.sink.split_crit_edge ], [ @.str.5, %if.end51.exit_2.sink.split_crit_edge ], [ @.str.7, %if.else86.exit_2.sink.split_crit_edge ], [ @.str.5, %if.end90.exit_2.sink.split_crit_edge ], [ @.str.8, %if.end95.exit_2.sink.split_crit_edge ], [ @.str.5, %if.else119.exit_2.sink.split_crit_edge ]
  %ret.1.ph = phi i32 [ -1, %if.then30.exit_2.sink.split_crit_edge ], [ -1, %if.end34.exit_2.sink.split_crit_edge ], [ -1, %if.end51.exit_2.sink.split_crit_edge ], [ -1, %if.else86.exit_2.sink.split_crit_edge ], [ -1, %if.end90.exit_2.sink.split_crit_edge ], [ %call96, %if.end95.exit_2.sink.split_crit_edge ], [ -1, %if.else119.exit_2.sink.split_crit_edge ]
  %outp.4.ph = phi ptr [ %outp.0, %if.then30.exit_2.sink.split_crit_edge ], [ %outp.0, %if.end34.exit_2.sink.split_crit_edge ], [ %outp.1.ph, %if.end51.exit_2.sink.split_crit_edge ], [ %outp.1.ph, %if.else86.exit_2.sink.split_crit_edge ], [ %outp.1.ph, %if.end90.exit_2.sink.split_crit_edge ], [ %outp.1.ph, %if.end95.exit_2.sink.split_crit_edge ], [ %spec.select, %if.else119.exit_2.sink.split_crit_edge ]
  tail call void %error(ptr noundef nonnull %.str.5.sink) #6
  br label %exit_2

exit_2:                                           ; preds = %exit_2.sink.split, %if.then115.exit_2_crit_edge, %land.lhs.true101.exit_2_crit_edge, %if.end72.exit_2_crit_edge, %if.else55.exit_2_crit_edge, %if.then47.exit_2_crit_edge
  %ret.1 = phi i32 [ %ret.1.ph, %exit_2.sink.split ], [ 0, %if.then47.exit_2_crit_edge ], [ 0, %if.else55.exit_2_crit_edge ], [ -1, %land.lhs.true101.exit_2_crit_edge ], [ 0, %if.end72.exit_2_crit_edge ], [ 0, %if.then115.exit_2_crit_edge ]
  %outp.4 = phi ptr [ %outp.4.ph, %exit_2.sink.split ], [ %outp.1.ph, %if.then47.exit_2_crit_edge ], [ %outp.1.ph, %if.else55.exit_2_crit_edge ], [ %outp.1.ph, %land.lhs.true101.exit_2_crit_edge ], [ %outp.1.ph, %if.end72.exit_2_crit_edge ], [ %spec.select, %if.then115.exit_2_crit_edge ]
  br i1 %tobool8.not, label %if.then127, label %exit_2.exit_1_crit_edge

exit_2.exit_1_crit_edge:                          ; preds = %exit_2
  call void @__sanitizer_cov_trace_pc() #5
  br label %exit_1

if.then127:                                       ; preds = %exit_2
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @vfree(ptr noundef %inp.0) #6
  br label %exit_1

exit_1:                                           ; preds = %if.then127, %exit_2.exit_1_crit_edge, %if.then21, %if.then16, %if.then10
  %ret.2 = phi i32 [ -1, %if.then10 ], [ %ret.1, %exit_2.exit_1_crit_edge ], [ %ret.1, %if.then127 ], [ -1, %if.then21 ], [ -1, %if.then16 ]
  %outp.5 = phi ptr [ %outp.0, %if.then10 ], [ %outp.4, %exit_2.exit_1_crit_edge ], [ %outp.4, %if.then127 ], [ %outp.0, %if.then21 ], [ %outp.0, %if.then16 ]
  br i1 %tobool.not, label %if.then130, label %exit_1.exit_0_crit_edge

exit_1.exit_0_crit_edge:                          ; preds = %exit_1
  call void @__sanitizer_cov_trace_pc() #5
  br label %exit_0

if.then130:                                       ; preds = %exit_1
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @vfree(ptr noundef %outp.5) #6
  br label %exit_0

exit_0:                                           ; preds = %if.then130, %exit_1.exit_0_crit_edge, %if.then5, %if.then2
  %ret.3 = phi i32 [ %ret.2, %exit_1.exit_0_crit_edge ], [ %ret.2, %if.then130 ], [ -1, %if.then5 ], [ -1, %if.then2 ]
  ret i32 %ret.3
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @LZ4_decompress_safe(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold inlinehint nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind uwtable(sync) }
attributes #5 = { nomerge }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../lib/decompress_unlz4.c", i32 53, i32 9}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../lib/decompress_unlz4.c", i32 58, i32 10}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../lib/decompress_unlz4.c", i32 64, i32 9}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../lib/decompress_unlz4.c", i32 69, i32 9}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../lib/decompress_unlz4.c", i32 74, i32 10}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../lib/decompress_unlz4.c", i32 86, i32 10}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../lib/decompress_unlz4.c", i32 98, i32 9}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../lib/decompress_unlz4.c", i32 144, i32 11}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../lib/decompress_unlz4.c", i32 169, i32 10}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
