; ModuleID = '/llk/IR_all_yes/drivers/staging/media/av7110/dvb_filter.c_pt.bc'
source_filename = "../drivers/staging/media/av7110/dvb_filter.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dvb_audio_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_filter_pes2ts = type { [188 x i8], i8, ptr, ptr }

@dvb_filter_get_ac3info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 41, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017Audiostream: AC3\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dvb_filter_get_ac3info\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/staging/media/av7110/dvb_filter.c\00", [54 x i8] zeroinitializer }, align 32
@dvb_filter_get_ac3info._entry_ptr = internal global ptr @dvb_filter_get_ac3info._entry, section ".printk_index", align 4
@dvb_filter_get_ac3info._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 53, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\01c  BRate: %d kb/s\00", [45 x i8] zeroinitializer }, align 32
@dvb_filter_get_ac3info._entry_ptr.5 = internal global ptr @dvb_filter_get_ac3info._entry.3, section ".printk_index", align 4
@freq = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 480, i32 441, i32 320, i32 0], [16 x i8] zeroinitializer }, align 32
@dvb_filter_get_ac3info._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\01c  Freq: %d Hz\0A\00", [47 x i8] zeroinitializer }, align 32
@dvb_filter_get_ac3info._entry_ptr.8 = internal global ptr @dvb_filter_get_ac3info._entry.6, section ".printk_index", align 4
@dvb_filter_get_ac3info._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017  Framesize %d\0A\00", [46 x i8] zeroinitializer }, align 32
@dvb_filter_get_ac3info._entry_ptr.11 = internal global ptr @dvb_filter_get_ac3info._entry.9, section ".printk_index", align 4
@ac3_bitrates = internal constant { <{ [19 x i32], [13 x i32] }>, [32 x i8] } { <{ [19 x i32], [13 x i32] }> <{ [19 x i32] [i32 32, i32 40, i32 48, i32 56, i32 64, i32 80, i32 96, i32 112, i32 128, i32 160, i32 192, i32 224, i32 256, i32 320, i32 384, i32 448, i32 512, i32 576, i32 640], [13 x i32] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@ac3_frames = internal constant { [3 x <{ [19 x i32], [13 x i32] }>], [96 x i8] } { [3 x <{ [19 x i32], [13 x i32] }>] [<{ [19 x i32], [13 x i32] }> <{ [19 x i32] [i32 64, i32 80, i32 96, i32 112, i32 128, i32 160, i32 192, i32 224, i32 256, i32 320, i32 384, i32 448, i32 512, i32 640, i32 768, i32 896, i32 1024, i32 1152, i32 1280], [13 x i32] zeroinitializer }>, <{ [19 x i32], [13 x i32] }> <{ [19 x i32] [i32 69, i32 87, i32 104, i32 121, i32 139, i32 174, i32 208, i32 243, i32 278, i32 348, i32 417, i32 487, i32 557, i32 696, i32 835, i32 975, i32 1114, i32 1253, i32 1393], [13 x i32] zeroinitializer }>, <{ [19 x i32], [13 x i32] }> <{ [19 x i32] [i32 96, i32 120, i32 144, i32 168, i32 192, i32 240, i32 288, i32 336, i32 384, i32 480, i32 576, i32 672, i32 768, i32 960, i32 1152, i32 1344, i32 1536, i32 1728, i32 1920], [13 x i32] zeroinitializer }>], [96 x i8] zeroinitializer }, align 32
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 41, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 53, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant [5 x i8] c"freq\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 7, i32 12 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 59, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 65, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant [13 x i8] c"ac3_bitrates\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 9, i32 21 }
@___asan_gen_.50 = private unnamed_addr constant [11 x i8] c"ac3_frames\00", align 1
@___asan_gen_.51 = private constant [45 x i8] c"../drivers/staging/media/av7110/dvb_filter.c\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 13, i32 12 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @dvb_filter_get_ac3info._entry, ptr @dvb_filter_get_ac3info._entry.3, ptr @dvb_filter_get_ac3info._entry.6, ptr @dvb_filter_get_ac3info._entry.9, ptr @dvb_filter_get_ac3info._entry_ptr, ptr @dvb_filter_get_ac3info._entry_ptr.11, ptr @dvb_filter_get_ac3info._entry_ptr.5, ptr @dvb_filter_get_ac3info._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @freq, ptr @.str.7, ptr @.str.10, ptr @ac3_bitrates, ptr @ac3_frames], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_filter_get_ac3info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_filter_get_ac3info._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @freq to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_filter_get_ac3info._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_filter_get_ac3info._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac3_bitrates to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac3_frames to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dvb_filter_get_ac3info(ptr nocapture noundef readonly %mbuf, i32 noundef %count, ptr nocapture noundef %ai, i32 noundef %pr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp112 = icmp sgt i32 %count, 0
  br i1 %cmp112, label %entry.while.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %c.0113 = phi i32 [ %inc, %if.end.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %mbuf, i32 %c.0113
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %1)
  %cmp1 = icmp eq i8 %1, 11
  br i1 %cmp1, label %land.lhs.true, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true:                                    ; preds = %while.body
  %arrayidx3 = getelementptr i8, ptr %add.ptr, i32 1
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 119, i8 %3)
  %cmp5 = icmp eq i8 %3, 119
  br i1 %cmp5, label %if.end9, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %while.body.if.end_crit_edge
  %inc = add nuw nsw i32 %c.0113, 1
  %cmp = icmp slt i32 %inc, %count
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

if.end9:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pr)
  %tobool10.not = icmp eq i32 %pr, 0
  br i1 %tobool10.not, label %if.end9.if.end12_crit_edge, label %do.end

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #6
  br label %if.end12

if.end12:                                         ; preds = %do.end, %if.end9.if.end12_crit_edge
  %off = getelementptr inbounds %struct.dvb_audio_info, ptr %ai, i32 0, i32 7
  %4 = ptrtoint ptr %off to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %c.0113, ptr %off, align 4
  %add = add nuw i32 %c.0113, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %count)
  %cmp13.not = icmp slt i32 %add, %count
  br i1 %cmp13.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %5 = ptrtoint ptr %ai to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %ai, align 4
  %add.ptr17 = getelementptr i8, ptr %mbuf, i32 %c.0113
  %add.ptr18 = getelementptr i8, ptr %add.ptr17, i32 2
  %arrayidx19 = getelementptr i8, ptr %add.ptr18, i32 2
  %6 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx19, align 1
  %8 = and i8 %7, 63
  %conv22 = zext i8 %8 to i32
  %9 = lshr i32 %conv22, 1
  %arrayidx23 = getelementptr [32 x i32], ptr @ac3_bitrates, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx23, align 4
  %mul = mul i32 %11, 1000
  %bit_rate = getelementptr inbounds %struct.dvb_audio_info, ptr %ai, i32 0, i32 1
  %12 = ptrtoint ptr %bit_rate to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mul, ptr %bit_rate, align 4
  br i1 %tobool10.not, label %if.end16.if.end32_crit_edge, label %do.end28

if.end16.if.end32_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end32

do.end28:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  %div = sdiv i32 %mul, 1000
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %div) #6
  br label %if.end32

if.end32:                                         ; preds = %do.end28, %if.end16.if.end32_crit_edge
  %13 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx19, align 1
  %15 = lshr i8 %14, 6
  %16 = zext i8 %15 to i32
  %frequency = getelementptr inbounds %struct.dvb_audio_info, ptr %ai, i32 0, i32 2
  %17 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %frequency, align 4
  %18 = load i8, ptr %arrayidx19, align 1
  %19 = lshr i8 %18, 6
  %20 = zext i8 %19 to i32
  %arrayidx41 = getelementptr [4 x i32], ptr @freq, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx41, align 4
  %mul42 = mul i32 %22, 100
  store i32 %mul42, ptr %frequency, align 4
  br i1 %tobool10.not, label %if.end32.if.end52_crit_edge, label %do.end48

if.end32.if.end52_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end52

do.end48:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #5
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %mul42) #6
  br label %if.end52

if.end52:                                         ; preds = %do.end48, %if.end32.if.end52_crit_edge
  %arrayidx56 = getelementptr [3 x [32 x i32]], ptr @ac3_frames, i32 0, i32 %20, i32 %9
  %23 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx56, align 4
  %framesize = getelementptr inbounds %struct.dvb_audio_info, ptr %ai, i32 0, i32 6
  %and58 = and i32 %conv22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp ne i32 %and58, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp61 = icmp eq i8 %19, 1
  %or.cond111 = select i1 %tobool59.not, i1 %cmp61, i1 false
  %inc65 = zext i1 %or.cond111 to i32
  %spec.select = add i32 %24, %inc65
  %shl = shl i32 %spec.select, 1
  %25 = ptrtoint ptr %framesize to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %shl, ptr %framesize, align 4
  br i1 %tobool10.not, label %if.end52.cleanup_crit_edge, label %do.end73

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end73:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #5
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %shl) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end73, %if.end52.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.end12.cleanup_crit_edge ], [ 0, %do.end73 ], [ 0, %if.end52.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @dvb_filter_pes2ts_init(ptr nocapture noundef writeonly %p2ts, i16 noundef zeroext %pid, ptr noundef %cb, ptr noundef %priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p2ts to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 71, ptr %p2ts, align 1
  %1 = lshr i16 %pid, 8
  %conv2 = trunc i16 %1 to i8
  %arrayidx3 = getelementptr i8, ptr %p2ts, i32 1
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv2, ptr %arrayidx3, align 1
  %conv5 = trunc i16 %pid to i8
  %arrayidx6 = getelementptr i8, ptr %p2ts, i32 2
  %3 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv5, ptr %arrayidx6, align 1
  %cc = getelementptr inbounds %struct.dvb_filter_pes2ts, ptr %p2ts, i32 0, i32 1
  %4 = ptrtoint ptr %cc to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %cc, align 4
  %cb7 = getelementptr inbounds %struct.dvb_filter_pes2ts, ptr %p2ts, i32 0, i32 2
  %5 = ptrtoint ptr %cb7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %cb, ptr %cb7, align 4
  %priv8 = getelementptr inbounds %struct.dvb_filter_pes2ts, ptr %p2ts, i32 0, i32 3
  %6 = ptrtoint ptr %priv8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %priv, ptr %priv8, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dvb_filter_pes2ts(ptr noundef %p2ts, ptr nocapture noundef readonly %pes, i32 noundef %len, i32 noundef %payload_start) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %payload_start)
  %tobool.not = icmp eq i32 %payload_start, 0
  %arrayidx3 = getelementptr i8, ptr %p2ts, i32 1
  %0 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx3, align 1
  %2 = and i8 %1, -65
  %masksel = select i1 %tobool.not, i8 0, i8 64
  %.sink = or i8 %2, %masksel
  store i8 %.sink, ptr %arrayidx3, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 183, i32 %len)
  %cmp80 = icmp sgt i32 %len, 183
  br i1 %cmp80, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %cc = getelementptr inbounds %struct.dvb_filter_pes2ts, ptr %p2ts, i32 0, i32 1
  %arrayidx11 = getelementptr i8, ptr %p2ts, i32 3
  %add.ptr = getelementptr i8, ptr %p2ts, i32 4
  %cb = getelementptr inbounds %struct.dvb_filter_pes2ts, ptr %p2ts, i32 0, i32 2
  %priv = getelementptr inbounds %struct.dvb_filter_pes2ts, ptr %p2ts, i32 0, i32 3
  %arrayidx16 = getelementptr i8, ptr %p2ts, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end14.while.body_crit_edge, %while.body.lr.ph
  %len.addr.082 = phi i32 [ %len, %while.body.lr.ph ], [ %sub, %if.end14.while.body_crit_edge ]
  %pes.addr.081 = phi ptr [ %pes, %while.body.lr.ph ], [ %add.ptr15, %if.end14.while.body_crit_edge ]
  %3 = ptrtoint ptr %cc to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %cc, align 4
  %inc = add i8 %4, 1
  store i8 %inc, ptr %cc, align 4
  %5 = and i8 %4, 15
  %6 = or i8 %5, 16
  %7 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %arrayidx11, align 1
  %8 = call ptr @memcpy(ptr %add.ptr, ptr %pes.addr.081, i32 184)
  %9 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cb, align 4
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 4
  %call = tail call i32 %10(ptr noundef %12, ptr noundef %p2ts) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool12.not = icmp eq i32 %call, 0
  br i1 %tobool12.not, label %if.end14, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end14:                                         ; preds = %while.body
  %sub = add nsw i32 %len.addr.082, -184
  %add.ptr15 = getelementptr i8, ptr %pes.addr.081, i32 184
  %13 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx16, align 1
  %15 = and i8 %14, -65
  store i8 %15, ptr %arrayidx16, align 1
  %cmp = icmp sgt i32 %len.addr.082, 367
  br i1 %cmp, label %if.end14.while.body_crit_edge, label %if.end14.while.end_crit_edge

if.end14.while.end_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

if.end14.while.body_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

while.end:                                        ; preds = %if.end14.while.end_crit_edge, %entry.while.end_crit_edge
  %pes.addr.0.lcssa = phi ptr [ %pes, %entry.while.end_crit_edge ], [ %add.ptr15, %if.end14.while.end_crit_edge ]
  %len.addr.0.lcssa = phi i32 [ %len, %entry.while.end_crit_edge ], [ %sub, %if.end14.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0.lcssa)
  %tobool20.not = icmp eq i32 %len.addr.0.lcssa, 0
  br i1 %tobool20.not, label %while.end.cleanup_crit_edge, label %if.end22

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end22:                                         ; preds = %while.end
  %cc23 = getelementptr inbounds %struct.dvb_filter_pes2ts, ptr %p2ts, i32 0, i32 1
  %16 = ptrtoint ptr %cc23 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cc23, align 4
  %inc24 = add i8 %17, 1
  store i8 %inc24, ptr %cc23, align 4
  %18 = and i8 %17, 15
  %19 = or i8 %18, 48
  %arrayidx29 = getelementptr i8, ptr %p2ts, i32 3
  %20 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %arrayidx29, align 1
  %sub30 = sub i32 183, %len.addr.0.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 183, i32 %len.addr.0.lcssa)
  %tobool31.not = icmp eq i32 %len.addr.0.lcssa, 183
  br i1 %tobool31.not, label %if.end22.if.end40_crit_edge, label %if.then32

if.end22.if.end40_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end40

if.then32:                                        ; preds = %if.end22
  %arrayidx33 = getelementptr i8, ptr %p2ts, i32 5
  %21 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %arrayidx33, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 182, i32 %len.addr.0.lcssa)
  %tobool35.not = icmp eq i32 %len.addr.0.lcssa, 182
  br i1 %tobool35.not, label %if.then32.if.end40_crit_edge, label %if.then36

if.then32.if.end40_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end40

if.then36:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #5
  %sub34 = sub i32 182, %len.addr.0.lcssa
  %add.ptr37 = getelementptr i8, ptr %p2ts, i32 6
  %22 = call ptr @memset(ptr %add.ptr37, i32 255, i32 %sub34)
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %if.then32.if.end40_crit_edge, %if.end22.if.end40_crit_edge
  %conv41 = trunc i32 %sub30 to i8
  %arrayidx42 = getelementptr i8, ptr %p2ts, i32 4
  %23 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv41, ptr %arrayidx42, align 1
  %add.ptr43 = getelementptr i8, ptr %p2ts, i32 5
  %add.ptr44 = getelementptr i8, ptr %add.ptr43, i32 %sub30
  %24 = call ptr @memcpy(ptr %add.ptr44, ptr %pes.addr.0.lcssa, i32 %len.addr.0.lcssa)
  %cb45 = getelementptr inbounds %struct.dvb_filter_pes2ts, ptr %p2ts, i32 0, i32 2
  %25 = ptrtoint ptr %cb45 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cb45, align 4
  %priv46 = getelementptr inbounds %struct.dvb_filter_pes2ts, ptr %p2ts, i32 0, i32 3
  %27 = ptrtoint ptr %priv46 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv46, align 4
  %call47 = tail call i32 %26(ptr noundef %28, ptr noundef %p2ts) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %while.end.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call47, %if.end40 ], [ 0, %while.end.cleanup_crit_edge ], [ %call, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/av7110/dvb_filter.c", i32 41, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @dvb_filter_get_ac3info._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @dvb_filter_get_ac3info._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/media/av7110/dvb_filter.c", i32 53, i32 3}
!8 = !{ptr @dvb_filter_get_ac3info._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @dvb_filter_get_ac3info._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/media/av7110/dvb_filter.c", i32 59, i32 3}
!12 = !{ptr @dvb_filter_get_ac3info._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @dvb_filter_get_ac3info._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/staging/media/av7110/dvb_filter.c", i32 65, i32 3}
!16 = !{ptr @dvb_filter_get_ac3info._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @dvb_filter_get_ac3info._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @ac3_bitrates, !19, !"ac3_bitrates", i1 false, i1 false}
!19 = !{!"../drivers/staging/media/av7110/dvb_filter.c", i32 9, i32 21}
!20 = !{ptr @freq, !21, !"freq", i1 false, i1 false}
!21 = !{!"../drivers/staging/media/av7110/dvb_filter.c", i32 7, i32 12}
!22 = !{ptr @ac3_frames, !23, !"ac3_frames", i1 false, i1 false}
!23 = !{!"../drivers/staging/media/av7110/dvb_filter.c", i32 13, i32 12}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
