; ModuleID = '/llk/IR_all_yes/drivers/media/platform/allegro-dvt/allegro-mail.c_pt.bc'
source_filename = "../drivers/media/platform/allegro-dvt/allegro-mail.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+msg_type_name\22, \22a\22\09"
module asm "\09.weak\09__crc_msg_type_name\09\09\09\09"
module asm "\09.long\09__crc_msg_type_name\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_msg_type_name:\09\09\09\09\09"
module asm "\09.asciz \09\22msg_type_name\22\09\09\09\09\09"
module asm "__kstrtabns_msg_type_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.create_channel_param = type { i32, i32, i16, i16, i32, i32, i32, i32, i32, i8, i16, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i16, i32, i32, i16, i32, i32, i16, i16, [4 x i16], i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, [3 x i32], i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, i32, i32, [6 x i32], i32 }
%struct.mcu_msg_header = type { i32, i32 }
%struct.mcu_msg_create_channel_response = type { %struct.mcu_msg_header, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mcu_msg_init_request = type { %struct.mcu_msg_header, i32, i32, i32, i32, i32, i32, i32 }
%struct.mcu_msg_create_channel = type { %struct.mcu_msg_header, i32, ptr, i32, i32, i32 }
%struct.mcu_msg_destroy_channel = type { %struct.mcu_msg_header, i32 }
%struct.mcu_msg_encode_frame = type { %struct.mcu_msg_header, i32, i32, i32, i16, i16, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.mcu_msg_put_stream_buffer = type { %struct.mcu_msg_header, i32, i32, i32, i32, i32, i64 }
%struct.mcu_msg_push_buffers_internal = type { %struct.mcu_msg_header, i32, i32, [0 x %struct.mcu_msg_push_buffers_internal_buffer] }
%struct.mcu_msg_push_buffers_internal_buffer = type { i32, i32, i32 }
%struct.mcu_msg_init_response = type { %struct.mcu_msg_header, i32 }
%struct.mcu_msg_destroy_channel_response = type { %struct.mcu_msg_header, i32 }
%struct.mcu_msg_encode_frame_response = type { %struct.mcu_msg_header, i32, i64, i64, i64, i16, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i32, i32, i32, [4 x i32], [22 x i32], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32 }

@msg_type_name.buf = internal global { [9 x i8], [23 x i8] } zeroinitializer, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"INIT\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CREATE_CHANNEL\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DESTROY_CHANNEL\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ENCODE_FRAME\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PUT_STREAM_BUFFER\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"PUSH_BUFFER_INTERMEDIATE\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PUSH_BUFFER_REFERENCE\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"(0x%04x)\00", [23 x i8] zeroinitializer }, align 32
@__kstrtab_msg_type_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_msg_type_name = external dso_local constant [0 x i8], align 1
@__ksymtab_msg_type_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @msg_type_name to i32), ptr @__kstrtab_msg_type_name, ptr @__kstrtabns_msg_type_name }, section "___ksymtab+msg_type_name", align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 5, i64 6, i64 7, i64 14, i64 15, i64 18]
@__sancov_gen_cov_switch_values.8 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 5, i64 6, i64 7, i64 14, i64 15, i64 18]
@__sancov_gen_cov_switch_values.9 = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 5, i64 6, i64 7]
@___asan_gen_.10 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 19, i32 14 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 23, i32 10 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 25, i32 10 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 27, i32 10 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 29, i32 10 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 31, i32 10 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 33, i32 10 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 35, i32 10 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private constant [53 x i8] c"../drivers/media/platform/allegro-dvt/allegro-mail.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 37, i32 30 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__ksymtab_msg_type_name, ptr @msg_type_name.buf, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msg_type_name.buf to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local nonnull ptr @msg_type_name(i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 5, label %sw.bb1
    i32 6, label %sw.bb2
    i32 7, label %sw.bb3
    i32 18, label %sw.bb4
    i32 14, label %sw.bb5
    i32 15, label %sw.bb6
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull @msg_type_name.buf, i32 noundef 9, ptr noundef nonnull @.str.7, i32 noundef %type)
  br label %return

return:                                           ; preds = %sw.default, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi ptr [ @msg_type_name.buf, %sw.default ], [ @.str.6, %sw.bb6 ], [ @.str.5, %sw.bb5 ], [ @.str.4, %sw.bb4 ], [ @.str.3, %sw.bb3 ], [ @.str.2, %sw.bb2 ], [ @.str.1, %sw.bb1 ], [ @.str, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @allegro_encode_config_blob(ptr noundef writeonly %dst, ptr noundef readonly %param) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %param, align 4
  %codec.i = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 11
  %2 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %codec.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1129727304, i32 %3)
  %cond.i = icmp eq i32 %3, 1129727304
  %..i = select i1 %cond.i, i32 2, i32 1
  %.10.i = zext i1 %cond.i to i32
  %retval.0.i = select i1 %cmp.i, i32 %..i, i32 %.10.i
  br i1 %cmp.i, label %if.end63.thread, label %if.then68

if.end63.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %height1742 = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 3
  %4 = ptrtoint ptr %height1742 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %height1742, align 2
  %conv181743 = zext i16 %5 to i32
  %shl1744 = shl nuw i32 %conv181743, 16
  %width1745 = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 2
  %6 = ptrtoint ptr %width1745 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %width1745, align 4
  %conv451746 = zext i16 %7 to i32
  %or1747 = or i32 %shl1744, %conv451746
  %8 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or1747, ptr %dst, align 4
  %format1751 = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 5
  %9 = ptrtoint ptr %format1751 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %format1751, align 4
  %arrayidx571753 = getelementptr i32, ptr %dst, i32 1
  %11 = ptrtoint ptr %arrayidx571753 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx571753, align 4
  %colorspace = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 6
  %12 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %colorspace, align 4
  %arrayidx62 = getelementptr i32, ptr %dst, i32 2
  %14 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx62, align 4
  %src_mode1757 = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 7
  br label %do.end92

if.then68:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %layer_id = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 1
  %15 = ptrtoint ptr %layer_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %layer_id, align 4
  %17 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %dst, align 4
  %height = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 3
  %18 = ptrtoint ptr %height to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %height, align 2
  %conv18 = zext i16 %19 to i32
  %shl = shl nuw i32 %conv18, 16
  %width = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 2
  %20 = ptrtoint ptr %width to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %width, align 4
  %conv45 = zext i16 %21 to i32
  %or = or i32 %shl, %conv45
  %arrayidx49 = getelementptr i32, ptr %dst, i32 1
  %22 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or, ptr %arrayidx49, align 4
  %videomode = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 4
  %23 = ptrtoint ptr %videomode to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %videomode, align 4
  %arrayidx54 = getelementptr i32, ptr %dst, i32 2
  %25 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx54, align 4
  %format = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 5
  %26 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %format, align 4
  %arrayidx57 = getelementptr i32, ptr %dst, i32 3
  %28 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx57, align 4
  %src_mode = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 7
  %29 = ptrtoint ptr %src_mode to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %src_mode, align 4
  %arrayidx65 = getelementptr i32, ptr %dst, i32 4
  %31 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx65, align 4
  %src_bit_depth = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 8
  br label %do.end92

do.end92:                                         ; preds = %if.then68, %if.end63.thread
  %src_bit_depth.sink = phi ptr [ %src_bit_depth, %if.then68 ], [ %src_mode1757, %if.end63.thread ]
  %.sink1796 = phi i32 [ 5, %if.then68 ], [ 3, %if.end63.thread ]
  %i.3 = phi i32 [ 6, %if.then68 ], [ 4, %if.end63.thread ]
  %32 = ptrtoint ptr %src_bit_depth.sink to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %src_bit_depth.sink, align 4
  %arrayidx70 = getelementptr i32, ptr %dst, i32 %.sink1796
  %34 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx70, align 4
  %shl94 = shl nuw nsw i32 %retval.0.i, 24
  %constraint_set_flags = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 10
  %35 = ptrtoint ptr %constraint_set_flags to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %constraint_set_flags, align 2
  %conv121 = zext i16 %36 to i32
  %shl122 = shl nuw nsw i32 %conv121, 8
  %or124 = or i32 %shl122, %shl94
  %profile = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 9
  %37 = ptrtoint ptr %profile to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %profile, align 4
  %conv150 = zext i8 %38 to i32
  %or153 = or i32 %or124, %conv150
  %inc154 = or i32 %i.3, 1
  %arrayidx155 = getelementptr i32, ptr %dst, i32 %i.3
  %39 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or153, ptr %arrayidx155, align 4
  %tier = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 13
  %40 = ptrtoint ptr %tier to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %tier, align 2
  %conv181 = zext i16 %41 to i32
  %shl182 = shl nuw i32 %conv181, 16
  %level = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 12
  %42 = ptrtoint ptr %level to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %level, align 4
  %conv209 = zext i16 %43 to i32
  %or212 = or i32 %shl182, %conv209
  %inc213 = add nuw nsw i32 %i.3, 2
  %arrayidx214 = getelementptr i32, ptr %dst, i32 %inc154
  %44 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or212, ptr %arrayidx214, align 4
  %log2_max_frame_num = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 15
  %45 = ptrtoint ptr %log2_max_frame_num to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %log2_max_frame_num, align 4
  %temporal_mvp_enable = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 16
  %47 = ptrtoint ptr %temporal_mvp_enable to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %temporal_mvp_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool215.not = icmp eq i32 %48, 0
  %cond = select i1 %tobool215.not, i32 0, i32 1048576
  %shl241 = shl i32 %46, 4
  %and242 = and i32 %shl241, 240
  %or243 = or i32 %cond, %and242
  %log2_max_poc283 = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 14
  %49 = ptrtoint ptr %log2_max_poc283 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %log2_max_poc283, align 4
  %not.cmp.i = xor i1 %cmp.i, true
  %sub = sext i1 %not.cmp.i to i32
  %and274.pn.in = add i32 %50, %sub
  %and274.pn = and i32 %and274.pn.in, 15
  %val.0 = or i32 %or243, %and274.pn
  %inc305 = add nuw nsw i32 %i.3, 3
  %arrayidx306 = getelementptr i32, ptr %dst, i32 %inc213
  %51 = ptrtoint ptr %arrayidx306 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %val.0, ptr %arrayidx306, align 4
  %enable_reordering = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 17
  %52 = ptrtoint ptr %enable_reordering to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %enable_reordering, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool307.not = icmp ne i32 %53, 0
  %cond308 = zext i1 %tobool307.not to i32
  %dbf_ovr_en = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 18
  %54 = ptrtoint ptr %dbf_ovr_en to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dbf_ovr_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool310.not = icmp eq i32 %55, 0
  %cond311 = select i1 %tobool310.not, i32 0, i32 4
  %or312 = or i32 %cond311, %cond308
  %override_lf = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 19
  %56 = ptrtoint ptr %override_lf to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %override_lf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool313.not = icmp eq i32 %57, 0
  %cond314 = select i1 %tobool313.not, i32 0, i32 4096
  %or315 = or i32 %or312, %cond314
  %inc316 = add nuw nsw i32 %i.3, 4
  %arrayidx317 = getelementptr i32, ptr %dst, i32 %inc305
  %58 = ptrtoint ptr %arrayidx317 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %or315, ptr %arrayidx317, align 4
  br i1 %cmp.i, label %do.end92.do.body350_crit_edge, label %if.then320

do.end92.do.body350_crit_edge:                    ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body350

if.then320:                                       ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #6
  %custom_lda = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 22
  %59 = ptrtoint ptr %custom_lda to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %custom_lda, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool321.not = icmp eq i32 %60, 0
  %cond322 = select i1 %tobool321.not, i32 0, i32 4
  %rdo_cost_mode = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 23
  %61 = ptrtoint ptr %rdo_cost_mode to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rdo_cost_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool324.not = icmp eq i32 %62, 0
  %cond325 = select i1 %tobool324.not, i32 0, i32 1048576
  %or326 = or i32 %cond325, %cond322
  %inc327 = add nuw nsw i32 %i.3, 5
  %arrayidx328 = getelementptr i32, ptr %dst, i32 %inc316
  %63 = ptrtoint ptr %arrayidx328 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %or326, ptr %arrayidx328, align 4
  %lf = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 24
  %64 = ptrtoint ptr %lf to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %lf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool329.not = icmp eq i32 %65, 0
  %cond330 = select i1 %tobool329.not, i32 0, i32 4
  %lf_x_tile = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 25
  %66 = ptrtoint ptr %lf_x_tile to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %lf_x_tile, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool332.not = icmp eq i32 %67, 0
  %cond333 = select i1 %tobool332.not, i32 0, i32 8
  %or334 = or i32 %cond333, %cond330
  %lf_x_slice = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 26
  %68 = ptrtoint ptr %lf_x_slice to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %lf_x_slice, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool335.not = icmp eq i32 %69, 0
  %cond336 = select i1 %tobool335.not, i32 0, i32 16
  %or337 = or i32 %or334, %cond336
  br label %do.body350

do.body350:                                       ; preds = %if.then320, %do.end92.do.body350_crit_edge
  %.sink = phi i32 [ 6, %if.then320 ], [ 5, %do.end92.do.body350_crit_edge ]
  %inc327.sink = phi i32 [ %inc327, %if.then320 ], [ %inc316, %do.end92.do.body350_crit_edge ]
  %or337.sink = phi i32 [ %or337, %if.then320 ], [ 0, %do.end92.do.body350_crit_edge ]
  %inc338 = add nuw nsw i32 %i.3, %.sink
  %arrayidx339 = getelementptr i32, ptr %dst, i32 %inc327.sink
  %70 = ptrtoint ptr %arrayidx339 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %or337.sink, ptr %arrayidx339, align 4
  %beta_offset = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 27
  %71 = ptrtoint ptr %beta_offset to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %beta_offset, align 4
  %tc_offset = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 28
  %73 = ptrtoint ptr %tc_offset to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %tc_offset, align 1
  %conv369 = sext i8 %72 to i32
  %shl370 = shl nsw i32 %conv369, 8
  %and371 = and i32 %shl370, 65280
  %conv3971724 = zext i8 %74 to i32
  %or400 = or i32 %and371, %conv3971724
  %inc401 = add nuw nsw i32 %inc338, 1
  %arrayidx402 = getelementptr i32, ptr %dst, i32 %inc338
  %75 = ptrtoint ptr %arrayidx402 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %or400, ptr %arrayidx402, align 4
  %unknown11 = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 30
  %76 = ptrtoint ptr %unknown11 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %unknown11, align 4
  %inc403 = add nuw nsw i32 %inc338, 2
  %arrayidx404 = getelementptr i32, ptr %dst, i32 %inc401
  %78 = ptrtoint ptr %arrayidx404 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %arrayidx404, align 4
  %unknown12 = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 31
  %79 = ptrtoint ptr %unknown12 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %unknown12, align 4
  %inc405 = add nuw nsw i32 %inc338, 3
  %arrayidx406 = getelementptr i32, ptr %dst, i32 %inc403
  %81 = ptrtoint ptr %arrayidx406 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %arrayidx406, align 4
  %num_slices = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 32
  %82 = ptrtoint ptr %num_slices to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %num_slices, align 4
  %conv407 = zext i16 %83 to i32
  %inc408 = add nuw nsw i32 %inc338, 4
  %arrayidx409 = getelementptr i32, ptr %dst, i32 %inc405
  %84 = ptrtoint ptr %arrayidx409 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %conv407, ptr %arrayidx409, align 4
  %encoder_buffer_offset = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 33
  %85 = ptrtoint ptr %encoder_buffer_offset to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %encoder_buffer_offset, align 4
  %inc410 = add nuw nsw i32 %inc338, 5
  %arrayidx411 = getelementptr i32, ptr %dst, i32 %inc408
  %87 = ptrtoint ptr %arrayidx411 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %arrayidx411, align 4
  %encoder_buffer_enabled = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 34
  %88 = ptrtoint ptr %encoder_buffer_enabled to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %encoder_buffer_enabled, align 4
  %inc412 = add nuw nsw i32 %inc338, 6
  %arrayidx413 = getelementptr i32, ptr %dst, i32 %inc410
  %90 = ptrtoint ptr %arrayidx413 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %arrayidx413, align 4
  %clip_vrt_range = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 36
  %91 = ptrtoint ptr %clip_vrt_range to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %clip_vrt_range, align 2
  %conv439 = zext i16 %92 to i32
  %shl440 = shl nuw i32 %conv439, 16
  %clip_hrz_range = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 35
  %93 = ptrtoint ptr %clip_hrz_range to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %clip_hrz_range, align 4
  %conv467 = zext i16 %94 to i32
  %or470 = or i32 %shl440, %conv467
  %inc471 = add nuw nsw i32 %inc338, 7
  %arrayidx472 = getelementptr i32, ptr %dst, i32 %inc412
  %95 = ptrtoint ptr %arrayidx472 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %or470, ptr %arrayidx472, align 4
  %me_range = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 37
  %arrayidx480 = getelementptr %struct.create_channel_param, ptr %param, i32 0, i32 37, i32 1
  %96 = ptrtoint ptr %arrayidx480 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %arrayidx480, align 2
  %conv501 = zext i16 %97 to i32
  %shl502 = shl nuw i32 %conv501, 16
  %98 = ptrtoint ptr %me_range to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %me_range, align 4
  %conv533 = zext i16 %99 to i32
  %or536 = or i32 %shl502, %conv533
  %inc537 = add nuw nsw i32 %inc338, 8
  %arrayidx538 = getelementptr i32, ptr %dst, i32 %inc471
  %100 = ptrtoint ptr %arrayidx538 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %or536, ptr %arrayidx538, align 4
  %arrayidx547 = getelementptr %struct.create_channel_param, ptr %param, i32 0, i32 37, i32 3
  %101 = ptrtoint ptr %arrayidx547 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %arrayidx547, align 2
  %conv568 = zext i16 %102 to i32
  %shl569 = shl nuw i32 %conv568, 16
  %arrayidx579 = getelementptr %struct.create_channel_param, ptr %param, i32 0, i32 37, i32 2
  %103 = ptrtoint ptr %arrayidx579 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %arrayidx579, align 4
  %conv600 = zext i16 %104 to i32
  %or603 = or i32 %shl569, %conv600
  %inc604 = add nuw nsw i32 %inc338, 9
  %arrayidx605 = getelementptr i32, ptr %dst, i32 %inc537
  %105 = ptrtoint ptr %arrayidx605 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %or603, ptr %arrayidx605, align 4
  %min_tu_size = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 41
  %106 = ptrtoint ptr %min_tu_size to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %min_tu_size, align 1
  %conv631 = zext i8 %107 to i32
  %shl632 = shl nuw i32 %conv631, 24
  %max_tu_size = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 40
  %108 = ptrtoint ptr %max_tu_size to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %max_tu_size, align 2
  %conv659 = zext i8 %109 to i32
  %shl660 = shl nuw nsw i32 %conv659, 16
  %or662 = or i32 %shl660, %shl632
  %min_cu_size = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 39
  %110 = ptrtoint ptr %min_cu_size to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %min_cu_size, align 1
  %conv688 = zext i8 %111 to i32
  %shl689 = shl nuw nsw i32 %conv688, 8
  %or691 = or i32 %or662, %shl689
  %max_cu_size = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 38
  %112 = ptrtoint ptr %max_cu_size to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %max_cu_size, align 4
  %conv717 = zext i8 %113 to i32
  %or720 = or i32 %or691, %conv717
  %inc721 = add nuw nsw i32 %inc338, 10
  %arrayidx722 = getelementptr i32, ptr %dst, i32 %inc604
  %114 = ptrtoint ptr %arrayidx722 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %or720, ptr %arrayidx722, align 4
  %max_transfo_depth_intra = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 43
  %115 = ptrtoint ptr %max_transfo_depth_intra to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %max_transfo_depth_intra, align 1
  %conv748 = zext i8 %116 to i32
  %shl749 = shl nuw nsw i32 %conv748, 8
  %max_transfo_depth_inter = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 42
  %117 = ptrtoint ptr %max_transfo_depth_inter to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %max_transfo_depth_inter, align 4
  %conv776 = zext i8 %118 to i32
  %or779 = or i32 %shl749, %conv776
  %inc780 = add nuw nsw i32 %inc338, 11
  %arrayidx781 = getelementptr i32, ptr %dst, i32 %inc721
  %119 = ptrtoint ptr %arrayidx781 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %or779, ptr %arrayidx781, align 4
  %entropy_mode = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 45
  %120 = ptrtoint ptr %entropy_mode to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %entropy_mode, align 4
  %inc782 = add nuw nsw i32 %inc338, 12
  %arrayidx783 = getelementptr i32, ptr %dst, i32 %inc780
  %122 = ptrtoint ptr %arrayidx783 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %arrayidx783, align 4
  %wp_mode = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 46
  %123 = ptrtoint ptr %wp_mode to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %wp_mode, align 4
  %inc784 = add nuw nsw i32 %inc338, 13
  %arrayidx785 = getelementptr i32, ptr %dst, i32 %inc782
  %125 = ptrtoint ptr %arrayidx785 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %arrayidx785, align 4
  %rate_control_mode = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 47
  %126 = ptrtoint ptr %rate_control_mode to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %rate_control_mode, align 4
  %inc786 = add nuw nsw i32 %inc338, 14
  %arrayidx787 = getelementptr i32, ptr %dst, i32 %inc784
  %128 = ptrtoint ptr %arrayidx787 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %arrayidx787, align 4
  %initial_rem_delay = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 48
  %129 = ptrtoint ptr %initial_rem_delay to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %initial_rem_delay, align 4
  %inc788 = add nuw nsw i32 %inc338, 15
  %arrayidx789 = getelementptr i32, ptr %dst, i32 %inc786
  %131 = ptrtoint ptr %arrayidx789 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %arrayidx789, align 4
  %cpb_size = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 49
  %132 = ptrtoint ptr %cpb_size to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %cpb_size, align 4
  %inc790 = or i32 %inc338, 16
  %arrayidx791 = getelementptr i32, ptr %dst, i32 %inc788
  %134 = ptrtoint ptr %arrayidx791 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %arrayidx791, align 4
  %clk_ratio = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 51
  %135 = ptrtoint ptr %clk_ratio to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %clk_ratio, align 2
  %conv817 = zext i16 %136 to i32
  %shl818 = shl nuw i32 %conv817, 16
  %framerate = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 50
  %137 = ptrtoint ptr %framerate to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %framerate, align 4
  %conv845 = zext i16 %138 to i32
  %or848 = or i32 %shl818, %conv845
  %inc849 = add nuw nsw i32 %inc338, 17
  %arrayidx850 = getelementptr i32, ptr %dst, i32 %inc790
  %139 = ptrtoint ptr %arrayidx850 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %or848, ptr %arrayidx850, align 4
  %target_bitrate = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 52
  %140 = ptrtoint ptr %target_bitrate to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %target_bitrate, align 4
  %inc851 = add nuw nsw i32 %inc338, 18
  %arrayidx852 = getelementptr i32, ptr %dst, i32 %inc849
  %142 = ptrtoint ptr %arrayidx852 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %arrayidx852, align 4
  %max_bitrate = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 53
  %143 = ptrtoint ptr %max_bitrate to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %max_bitrate, align 4
  %inc853 = add nuw nsw i32 %inc338, 19
  %arrayidx854 = getelementptr i32, ptr %dst, i32 %inc851
  %145 = ptrtoint ptr %arrayidx854 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %arrayidx854, align 4
  %min_qp = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 55
  %146 = ptrtoint ptr %min_qp to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %min_qp, align 2
  %conv880 = zext i16 %147 to i32
  %shl881 = shl nuw i32 %conv880, 16
  %initial_qp = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 54
  %148 = ptrtoint ptr %initial_qp to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %initial_qp, align 4
  %conv908 = zext i16 %149 to i32
  %or911 = or i32 %shl881, %conv908
  %arrayidx913 = getelementptr i32, ptr %dst, i32 %inc853
  %150 = ptrtoint ptr %arrayidx913 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %or911, ptr %arrayidx913, align 4
  %ip_delta = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 57
  %151 = ptrtoint ptr %ip_delta to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %ip_delta, align 2
  %inc912 = add nuw nsw i32 %inc338, 20
  %conv9391725 = zext i16 %152 to i32
  %shl940 = shl nuw i32 %conv9391725, 16
  %max_qp = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 56
  %153 = ptrtoint ptr %max_qp to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %max_qp, align 4
  %conv967 = zext i16 %154 to i32
  %or970 = or i32 %shl940, %conv967
  %arrayidx972 = getelementptr i32, ptr %dst, i32 %inc912
  %155 = ptrtoint ptr %arrayidx972 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %or970, ptr %arrayidx972, align 4
  %pb_delta = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 58
  %156 = ptrtoint ptr %pb_delta to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %pb_delta, align 4
  %golden_ref = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 59
  %158 = ptrtoint ptr %golden_ref to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %golden_ref, align 2
  %conv998 = zext i16 %159 to i32
  %shl999 = shl nuw i32 %conv998, 16
  %inc971 = add nuw nsw i32 %inc338, 21
  %conv10261726 = zext i16 %157 to i32
  %or1029 = or i32 %shl999, %conv10261726
  %inc1030 = add nuw nsw i32 %inc338, 22
  %arrayidx1031 = getelementptr i32, ptr %dst, i32 %inc971
  %160 = ptrtoint ptr %arrayidx1031 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %or1029, ptr %arrayidx1031, align 4
  %golden_ref_frequency = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 61
  %161 = ptrtoint ptr %golden_ref_frequency to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %golden_ref_frequency, align 2
  %conv1057 = zext i16 %162 to i32
  %shl1058 = shl nuw i32 %conv1057, 16
  %golden_delta = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 60
  %163 = ptrtoint ptr %golden_delta to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %golden_delta, align 4
  %conv1085 = zext i16 %164 to i32
  %or1088 = or i32 %shl1058, %conv1085
  %inc1089 = add nuw nsw i32 %inc338, 23
  %arrayidx1090 = getelementptr i32, ptr %dst, i32 %inc1030
  %165 = ptrtoint ptr %arrayidx1090 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %or1088, ptr %arrayidx1090, align 4
  br i1 %cmp.i, label %if.end1394.thread, label %if.end1394

if.end1394.thread:                                ; preds = %do.body350
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx1098 = getelementptr i32, ptr %dst, i32 %inc1089
  %166 = ptrtoint ptr %arrayidx1098 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 0, ptr %arrayidx1098, align 4
  %i.51760 = add nuw nsw i32 %inc338, 24
  %arrayidx1178 = getelementptr i32, ptr %dst, i32 %i.51760
  %167 = ptrtoint ptr %arrayidx1178 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 0, ptr %arrayidx1178, align 4
  %i.81765 = add nuw nsw i32 %inc338, 25
  %freq_idr1767 = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 68
  %168 = ptrtoint ptr %freq_idr1767 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %freq_idr1767, align 4
  %inc12721768 = add nuw nsw i32 %inc338, 26
  %arrayidx12731769 = getelementptr i32, ptr %dst, i32 %i.81765
  %170 = ptrtoint ptr %arrayidx12731769 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %169, ptr %arrayidx12731769, align 4
  %freq_lt1771 = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 69
  %171 = ptrtoint ptr %freq_lt1771 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %freq_lt1771, align 4
  %inc12801772 = add nuw nsw i32 %inc338, 27
  %arrayidx12811773 = getelementptr i32, ptr %dst, i32 %inc12721768
  %173 = ptrtoint ptr %arrayidx12811773 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %172, ptr %arrayidx12811773, align 4
  %gdr_mode1774 = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 70
  %174 = ptrtoint ptr %gdr_mode1774 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %gdr_mode1774, align 4
  %inc12821775 = add nuw nsw i32 %inc338, 28
  %arrayidx12831776 = getelementptr i32, ptr %dst, i32 %inc12801772
  %176 = ptrtoint ptr %arrayidx12831776 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %175, ptr %arrayidx12831776, align 4
  %freq_golden_ref1294 = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 73
  %177 = ptrtoint ptr %freq_golden_ref1294 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %freq_golden_ref1294, align 1
  %conv1313 = zext i8 %178 to i32
  %shl1314 = shl nuw i32 %conv1313, 24
  %num_b1323 = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 72
  %179 = ptrtoint ptr %num_b1323 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %num_b1323, align 2
  %conv1342 = zext i8 %180 to i32
  %shl1343 = shl nuw nsw i32 %conv1342, 16
  %or1345 = or i32 %shl1343, %shl1314
  %gop_length1353 = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 71
  %181 = ptrtoint ptr %gop_length1353 to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %gop_length1353, align 4
  %conv1372 = zext i16 %182 to i32
  %or1375 = or i32 %or1345, %conv1372
  %inc1376 = add nuw nsw i32 %inc338, 29
  %arrayidx1377 = getelementptr i32, ptr %dst, i32 %inc12821775
  %183 = ptrtoint ptr %arrayidx1377 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %or1375, ptr %arrayidx1377, align 4
  %subframe_latency1781 = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 76
  %184 = ptrtoint ptr %subframe_latency1781 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %subframe_latency1781, align 4
  %inc13851782 = add nuw nsw i32 %inc338, 30
  %arrayidx13861783 = getelementptr i32, ptr %dst, i32 %inc1376
  %186 = ptrtoint ptr %arrayidx13861783 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %185, ptr %arrayidx13861783, align 4
  %lda_control_mode1784 = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 77
  %187 = ptrtoint ptr %lda_control_mode1784 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %lda_control_mode1784, align 4
  %inc13871785 = add nuw nsw i32 %inc338, 31
  %arrayidx13881786 = getelementptr i32, ptr %dst, i32 %inc13851782
  %189 = ptrtoint ptr %arrayidx13881786 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %188, ptr %arrayidx13881786, align 4
  %unknown41 = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 78
  %inc1392 = or i32 %inc338, 32
  br label %if.end1410

if.end1394:                                       ; preds = %do.body350
  call void @__sanitizer_cov_trace_pc() #6
  %rate_control_option = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 62
  %190 = ptrtoint ptr %rate_control_option to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %rate_control_option, align 4
  %arrayidx1095 = getelementptr i32, ptr %dst, i32 %inc1089
  %192 = ptrtoint ptr %arrayidx1095 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %191, ptr %arrayidx1095, align 4
  %i.5 = add nuw nsw i32 %inc338, 24
  %num_pixel = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 63
  %193 = ptrtoint ptr %num_pixel to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %num_pixel, align 4
  %inc1103 = add nuw nsw i32 %inc338, 25
  %arrayidx1104 = getelementptr i32, ptr %dst, i32 %i.5
  %195 = ptrtoint ptr %arrayidx1104 to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %194, ptr %arrayidx1104, align 4
  %max_pixel_value = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 65
  %196 = ptrtoint ptr %max_pixel_value to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %max_pixel_value, align 2
  %conv1130 = zext i16 %197 to i32
  %shl1131 = shl nuw i32 %conv1130, 16
  %max_psnr = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 64
  %198 = ptrtoint ptr %max_psnr to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %max_psnr, align 4
  %conv1158 = zext i16 %199 to i32
  %or1161 = or i32 %shl1131, %conv1158
  %inc1162 = add nuw nsw i32 %inc338, 26
  %arrayidx1163 = getelementptr i32, ptr %dst, i32 %inc1103
  %200 = ptrtoint ptr %arrayidx1163 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %or1161, ptr %arrayidx1163, align 4
  %arrayidx1166 = getelementptr %struct.create_channel_param, ptr %param, i32 0, i32 66, i32 0
  %201 = ptrtoint ptr %arrayidx1166 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %arrayidx1166, align 4
  %inc1167 = add nuw nsw i32 %inc338, 27
  %arrayidx1168 = getelementptr i32, ptr %dst, i32 %inc1162
  %203 = ptrtoint ptr %arrayidx1168 to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %202, ptr %arrayidx1168, align 4
  %arrayidx1166.1 = getelementptr %struct.create_channel_param, ptr %param, i32 0, i32 66, i32 1
  %204 = ptrtoint ptr %arrayidx1166.1 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %arrayidx1166.1, align 4
  %inc1167.1 = add nuw nsw i32 %inc338, 28
  %arrayidx1168.1 = getelementptr i32, ptr %dst, i32 %inc1167
  %206 = ptrtoint ptr %arrayidx1168.1 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %205, ptr %arrayidx1168.1, align 4
  %arrayidx1166.2 = getelementptr %struct.create_channel_param, ptr %param, i32 0, i32 66, i32 2
  %207 = ptrtoint ptr %arrayidx1166.2 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %arrayidx1166.2, align 4
  %arrayidx1168.2 = getelementptr i32, ptr %dst, i32 %inc1167.1
  %209 = ptrtoint ptr %arrayidx1168.2 to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %208, ptr %arrayidx1168.2, align 4
  %inc1167.2 = add nuw nsw i32 %inc338, 29
  %gop_ctrl_mode = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 67
  %210 = ptrtoint ptr %gop_ctrl_mode to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %gop_ctrl_mode, align 4
  %arrayidx1175 = getelementptr i32, ptr %dst, i32 %inc1167.2
  %212 = ptrtoint ptr %arrayidx1175 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %211, ptr %arrayidx1175, align 4
  %i.8 = add nuw nsw i32 %inc338, 30
  %freq_golden_ref = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 73
  %213 = ptrtoint ptr %freq_golden_ref to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %freq_golden_ref, align 1
  %conv1208 = zext i8 %214 to i32
  %shl1209 = shl nuw i32 %conv1208, 24
  %num_b = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 72
  %215 = ptrtoint ptr %num_b to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %num_b, align 2
  %conv1236 = zext i8 %216 to i32
  %shl1237 = shl nuw nsw i32 %conv1236, 16
  %or1239 = or i32 %shl1237, %shl1209
  %gop_length = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 71
  %217 = ptrtoint ptr %gop_length to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %gop_length, align 4
  %conv1265 = zext i16 %218 to i32
  %or1268 = or i32 %or1239, %conv1265
  %inc1269 = add nuw nsw i32 %inc338, 31
  %arrayidx1270 = getelementptr i32, ptr %dst, i32 %i.8
  %219 = ptrtoint ptr %arrayidx1270 to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %or1268, ptr %arrayidx1270, align 4
  %freq_idr = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 68
  %220 = ptrtoint ptr %freq_idr to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %freq_idr, align 4
  %inc1272 = or i32 %inc338, 32
  %arrayidx1273 = getelementptr i32, ptr %dst, i32 %inc1269
  %222 = ptrtoint ptr %arrayidx1273 to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %221, ptr %arrayidx1273, align 4
  %enable_lt = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 74
  %223 = ptrtoint ptr %enable_lt to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %enable_lt, align 4
  %inc1277 = add nuw nsw i32 %inc338, 33
  %arrayidx1278 = getelementptr i32, ptr %dst, i32 %inc1272
  %225 = ptrtoint ptr %arrayidx1278 to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 %224, ptr %arrayidx1278, align 4
  %freq_lt = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 69
  %226 = ptrtoint ptr %freq_lt to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %freq_lt, align 4
  %inc1280 = add nuw nsw i32 %inc338, 34
  %arrayidx1281 = getelementptr i32, ptr %dst, i32 %inc1277
  %228 = ptrtoint ptr %arrayidx1281 to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %227, ptr %arrayidx1281, align 4
  %gdr_mode = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 70
  %229 = ptrtoint ptr %gdr_mode to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %gdr_mode, align 4
  %inc1282 = add nuw nsw i32 %inc338, 35
  %arrayidx1283 = getelementptr i32, ptr %dst, i32 %inc1280
  %231 = ptrtoint ptr %arrayidx1283 to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %230, ptr %arrayidx1283, align 4
  %tmpdqp = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 75
  %232 = ptrtoint ptr %tmpdqp to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %tmpdqp, align 4
  %inc1382 = add nuw nsw i32 %inc338, 36
  %arrayidx1383 = getelementptr i32, ptr %dst, i32 %inc1282
  %234 = ptrtoint ptr %arrayidx1383 to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %233, ptr %arrayidx1383, align 4
  %subframe_latency = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 76
  %235 = ptrtoint ptr %subframe_latency to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %subframe_latency, align 4
  %inc1385 = add nuw nsw i32 %inc338, 37
  %arrayidx1386 = getelementptr i32, ptr %dst, i32 %inc1382
  %237 = ptrtoint ptr %arrayidx1386 to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %236, ptr %arrayidx1386, align 4
  %lda_control_mode = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 77
  %238 = ptrtoint ptr %lda_control_mode to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %lda_control_mode, align 4
  %inc1387 = add nuw nsw i32 %inc338, 38
  %arrayidx1388 = getelementptr i32, ptr %dst, i32 %inc1385
  %240 = ptrtoint ptr %arrayidx1388 to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %239, ptr %arrayidx1388, align 4
  %arrayidx1402 = getelementptr %struct.create_channel_param, ptr %param, i32 0, i32 79, i32 0
  %241 = ptrtoint ptr %arrayidx1402 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %arrayidx1402, align 4
  %inc1403 = add nuw nsw i32 %inc338, 39
  %arrayidx1404 = getelementptr i32, ptr %dst, i32 %inc1387
  %243 = ptrtoint ptr %arrayidx1404 to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 %242, ptr %arrayidx1404, align 4
  %arrayidx1402.1 = getelementptr %struct.create_channel_param, ptr %param, i32 0, i32 79, i32 1
  %244 = ptrtoint ptr %arrayidx1402.1 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %arrayidx1402.1, align 4
  %inc1403.1 = add nuw nsw i32 %inc338, 40
  %arrayidx1404.1 = getelementptr i32, ptr %dst, i32 %inc1403
  %246 = ptrtoint ptr %arrayidx1404.1 to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %245, ptr %arrayidx1404.1, align 4
  %arrayidx1402.2 = getelementptr %struct.create_channel_param, ptr %param, i32 0, i32 79, i32 2
  %247 = ptrtoint ptr %arrayidx1402.2 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %arrayidx1402.2, align 4
  %inc1403.2 = add nuw nsw i32 %inc338, 41
  %arrayidx1404.2 = getelementptr i32, ptr %dst, i32 %inc1403.1
  %249 = ptrtoint ptr %arrayidx1404.2 to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %248, ptr %arrayidx1404.2, align 4
  %arrayidx1402.3 = getelementptr %struct.create_channel_param, ptr %param, i32 0, i32 79, i32 3
  %250 = ptrtoint ptr %arrayidx1402.3 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %arrayidx1402.3, align 4
  %inc1403.3 = add nuw nsw i32 %inc338, 42
  %arrayidx1404.3 = getelementptr i32, ptr %dst, i32 %inc1403.2
  %252 = ptrtoint ptr %arrayidx1404.3 to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %251, ptr %arrayidx1404.3, align 4
  %arrayidx1402.4 = getelementptr %struct.create_channel_param, ptr %param, i32 0, i32 79, i32 4
  %253 = ptrtoint ptr %arrayidx1402.4 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %arrayidx1402.4, align 4
  %inc1403.4 = add nuw nsw i32 %inc338, 43
  %arrayidx1404.4 = getelementptr i32, ptr %dst, i32 %inc1403.3
  %255 = ptrtoint ptr %arrayidx1404.4 to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %254, ptr %arrayidx1404.4, align 4
  %arrayidx1402.5 = getelementptr %struct.create_channel_param, ptr %param, i32 0, i32 79, i32 5
  %256 = ptrtoint ptr %arrayidx1402.5 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %arrayidx1402.5, align 4
  %inc1403.5 = add nuw nsw i32 %inc338, 44
  %arrayidx1404.5 = getelementptr i32, ptr %dst, i32 %inc1403.4
  %258 = ptrtoint ptr %arrayidx1404.5 to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 %257, ptr %arrayidx1404.5, align 4
  %max_num_merge_cand = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 80
  %inc1408 = add nuw nsw i32 %inc338, 45
  br label %if.end1410

if.end1410:                                       ; preds = %if.end1394, %if.end1394.thread
  %inc13871785.sink = phi i32 [ %inc13871785, %if.end1394.thread ], [ %inc1403.5, %if.end1394 ]
  %.sink1797.in = phi ptr [ %unknown41, %if.end1394.thread ], [ %max_num_merge_cand, %if.end1394 ]
  %i.15 = phi i32 [ %inc1392, %if.end1394.thread ], [ %inc1408, %if.end1394 ]
  %259 = ptrtoint ptr %.sink1797.in to i32
  call void @__asan_load4_noabort(i32 %259)
  %.sink1797 = load i32, ptr %.sink1797.in, align 4
  %arrayidx1393 = getelementptr i32, ptr %dst, i32 %inc13871785.sink
  %260 = ptrtoint ptr %arrayidx1393 to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 %.sink1797, ptr %arrayidx1393, align 4
  %mul = shl nuw nsw i32 %i.15, 2
  ret i32 %mul
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @allegro_decode_config_blob(ptr nocapture noundef writeonly %param, ptr nocapture noundef readonly %msg, ptr nocapture noundef readonly %src) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %version1 = getelementptr inbounds %struct.mcu_msg_header, ptr %msg, i32 0, i32 1
  %0 = ptrtoint ptr %version1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %version1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.else, label %do.end13

do.end13:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx = getelementptr i32, ptr %src, i32 9
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %and = lshr i32 %3, 4
  %shr = and i32 %and, 15
  %num_ref_idx_l0 = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 20
  %4 = ptrtoint ptr %num_ref_idx_l0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shr, ptr %num_ref_idx_l0, align 4
  %5 = load i32, ptr %arrayidx, align 4
  %and31 = lshr i32 %5, 8
  %shr32 = and i32 %and31, 15
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %num_ref_idx_l033 = getelementptr inbounds %struct.mcu_msg_create_channel_response, ptr %msg, i32 0, i32 5
  %6 = ptrtoint ptr %num_ref_idx_l033 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_ref_idx_l033, align 4
  %num_ref_idx_l034 = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 20
  %8 = ptrtoint ptr %num_ref_idx_l034 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %num_ref_idx_l034, align 4
  %num_ref_idx_l135 = getelementptr inbounds %struct.mcu_msg_create_channel_response, ptr %msg, i32 0, i32 6
  %9 = ptrtoint ptr %num_ref_idx_l135 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_ref_idx_l135, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end13
  %shr32.sink = phi i32 [ %10, %if.else ], [ %shr32, %do.end13 ]
  %11 = getelementptr inbounds %struct.create_channel_param, ptr %param, i32 0, i32 21
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %shr32.sink, ptr %11, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @allegro_encode_mail(ptr noundef writeonly %dst, ptr noundef readonly %msg) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %msg, null
  %tobool1.not = icmp eq ptr %dst, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %1, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 5, label %sw.bb2
    i32 6, label %sw.bb5
    i32 7, label %sw.bb8
    i32 18, label %sw.bb11
    i32 14, label %if.end.sw.bb14_crit_edge
    i32 15, label %if.end.sw.bb14_crit_edge107
  ]

if.end.sw.bb14_crit_edge107:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb14

if.end.sw.bb14_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %arrayidx = getelementptr i32, ptr %dst, i32 1
  %version1.i = getelementptr inbounds %struct.mcu_msg_header, ptr %msg, i32 0, i32 1
  %3 = ptrtoint ptr %version1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %version1.i, align 4
  %reserved0.i = getelementptr inbounds %struct.mcu_msg_init_request, ptr %msg, i32 0, i32 1
  %5 = ptrtoint ptr %reserved0.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reserved0.i, align 4
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %arrayidx, align 4
  %suballoc_dma.i = getelementptr inbounds %struct.mcu_msg_init_request, ptr %msg, i32 0, i32 2
  %8 = ptrtoint ptr %suballoc_dma.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %suballoc_dma.i, align 4
  %arrayidx3.i = getelementptr i32, ptr %dst, i32 2
  %10 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %arrayidx3.i, align 4
  %suballoc_size.i = getelementptr inbounds %struct.mcu_msg_init_request, ptr %msg, i32 0, i32 3
  %11 = ptrtoint ptr %suballoc_size.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %suballoc_size.i, align 4
  %arrayidx5.i = getelementptr i32, ptr %dst, i32 3
  %13 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx5.i, align 4
  %encoder_buffer_size.i = getelementptr inbounds %struct.mcu_msg_init_request, ptr %msg, i32 0, i32 4
  %14 = ptrtoint ptr %encoder_buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %encoder_buffer_size.i, align 4
  %arrayidx7.i = getelementptr i32, ptr %dst, i32 4
  %16 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx7.i, align 4
  %encoder_buffer_color_depth.i = getelementptr inbounds %struct.mcu_msg_init_request, ptr %msg, i32 0, i32 5
  %17 = ptrtoint ptr %encoder_buffer_color_depth.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %encoder_buffer_color_depth.i, align 4
  %arrayidx9.i = getelementptr i32, ptr %dst, i32 5
  %19 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx9.i, align 4
  %num_cores.i = getelementptr inbounds %struct.mcu_msg_init_request, ptr %msg, i32 0, i32 6
  %20 = ptrtoint ptr %num_cores.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_cores.i, align 4
  %arrayidx11.i = getelementptr i32, ptr %dst, i32 6
  %22 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not.i = icmp eq i32 %4, 0
  br i1 %cmp.not.i, label %sw.bb.do.body20_crit_edge, label %if.then.i

sw.bb.do.body20_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body20

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %clk_rate.i = getelementptr inbounds %struct.mcu_msg_init_request, ptr %msg, i32 0, i32 7
  %23 = ptrtoint ptr %clk_rate.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %clk_rate.i, align 4
  %arrayidx13.i = getelementptr i32, ptr %dst, i32 7
  %25 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx13.i, align 4
  %arrayidx15.i = getelementptr i32, ptr %dst, i32 8
  %26 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %arrayidx15.i, align 4
  br label %do.body20

sw.bb2:                                           ; preds = %if.end
  %arrayidx3 = getelementptr i32, ptr %dst, i32 1
  %version1.i85 = getelementptr inbounds %struct.mcu_msg_header, ptr %msg, i32 0, i32 1
  %27 = ptrtoint ptr %version1.i85 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %version1.i85, align 4
  %user_id.i = getelementptr inbounds %struct.mcu_msg_create_channel, ptr %msg, i32 0, i32 1
  %29 = ptrtoint ptr %user_id.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %user_id.i, align 4
  %31 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.not.i86 = icmp eq i32 %28, 0
  br i1 %cmp.not.i86, label %if.end.thread.i, label %if.then7.i

if.end.thread.i:                                  ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx4.i = getelementptr i32, ptr %dst, i32 2
  %blob.i = getelementptr inbounds %struct.mcu_msg_create_channel, ptr %msg, i32 0, i32 2
  %32 = ptrtoint ptr %blob.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %blob.i, align 4
  %blob_size.i = getelementptr inbounds %struct.mcu_msg_create_channel, ptr %msg, i32 0, i32 3
  %34 = ptrtoint ptr %blob_size.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %blob_size.i, align 4
  %36 = call ptr @memcpy(ptr %arrayidx4.i, ptr %33, i32 %35)
  %37 = load i32, ptr %blob_size.i, align 4
  %38 = add i32 %37, 4
  %phi.bo.i = and i32 %38, -4
  br label %do.body20

if.then7.i:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #6
  %blob_mcu_addr.i = getelementptr inbounds %struct.mcu_msg_create_channel, ptr %msg, i32 0, i32 4
  %39 = ptrtoint ptr %blob_mcu_addr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %blob_mcu_addr.i, align 4
  %arrayidx3.i87 = getelementptr i32, ptr %dst, i32 2
  %41 = ptrtoint ptr %arrayidx3.i87 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %arrayidx3.i87, align 4
  %ep1_addr.i = getelementptr inbounds %struct.mcu_msg_create_channel, ptr %msg, i32 0, i32 5
  %42 = ptrtoint ptr %ep1_addr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ep1_addr.i, align 4
  %arrayidx9.i88 = getelementptr i32, ptr %dst, i32 3
  %44 = ptrtoint ptr %arrayidx9.i88 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %arrayidx9.i88, align 4
  br label %do.body20

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx6 = getelementptr i32, ptr %dst, i32 1
  %channel_id.i = getelementptr inbounds %struct.mcu_msg_destroy_channel, ptr %msg, i32 0, i32 1
  %45 = ptrtoint ptr %channel_id.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %channel_id.i, align 4
  %47 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %arrayidx6, align 4
  br label %do.body20

sw.bb8:                                           ; preds = %if.end
  %arrayidx9 = getelementptr i32, ptr %dst, i32 1
  %version1.i89 = getelementptr inbounds %struct.mcu_msg_header, ptr %msg, i32 0, i32 1
  %48 = ptrtoint ptr %version1.i89 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %version1.i89, align 4
  %channel_id.i90 = getelementptr inbounds %struct.mcu_msg_encode_frame, ptr %msg, i32 0, i32 1
  %50 = ptrtoint ptr %channel_id.i90 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %channel_id.i90, align 8
  %52 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %arrayidx9, align 4
  %reserved.i = getelementptr inbounds %struct.mcu_msg_encode_frame, ptr %msg, i32 0, i32 2
  %53 = ptrtoint ptr %reserved.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %reserved.i, align 4
  %arrayidx3.i91 = getelementptr i32, ptr %dst, i32 2
  %55 = ptrtoint ptr %arrayidx3.i91 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %arrayidx3.i91, align 4
  %encoding_options.i = getelementptr inbounds %struct.mcu_msg_encode_frame, ptr %msg, i32 0, i32 3
  %56 = ptrtoint ptr %encoding_options.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %encoding_options.i, align 8
  %arrayidx5.i92 = getelementptr i32, ptr %dst, i32 3
  %58 = ptrtoint ptr %arrayidx5.i92 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %arrayidx5.i92, align 4
  %pps_qp.i = getelementptr inbounds %struct.mcu_msg_encode_frame, ptr %msg, i32 0, i32 4
  %59 = ptrtoint ptr %pps_qp.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %pps_qp.i, align 4
  %padding.i = getelementptr inbounds %struct.mcu_msg_encode_frame, ptr %msg, i32 0, i32 5
  %61 = ptrtoint ptr %padding.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %padding.i, align 2
  %conv20.i = zext i16 %62 to i32
  %shl.i = shl nuw i32 %conv20.i, 16
  %conv47179.i = zext i16 %60 to i32
  %or.i = or i32 %shl.i, %conv47179.i
  %arrayidx51.i = getelementptr i32, ptr %dst, i32 4
  %63 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %or.i, ptr %arrayidx51.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp.not.i93 = icmp eq i32 %49, 0
  br i1 %cmp.not.i93, label %sw.bb8.if.end62.i_crit_edge, label %if.then53.i

sw.bb8.if.end62.i_crit_edge:                      ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end62.i

if.then53.i:                                      ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx55.i = getelementptr i32, ptr %dst, i32 5
  %64 = call ptr @memset(ptr %arrayidx55.i, i32 0, i32 16)
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.then53.i, %sw.bb8.if.end62.i_crit_edge
  %i.0.i94 = phi i32 [ 8, %if.then53.i ], [ 4, %sw.bb8.if.end62.i_crit_edge ]
  %user_param.i = getelementptr inbounds %struct.mcu_msg_encode_frame, ptr %msg, i32 0, i32 6
  %65 = ptrtoint ptr %user_param.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %user_param.i, align 8
  %conv64.i = trunc i64 %66 to i32
  %inc65.i = or i32 %i.0.i94, 1
  %arrayidx66.i = getelementptr i32, ptr %arrayidx9, i32 %i.0.i94
  %67 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %conv64.i, ptr %arrayidx66.i, align 4
  %68 = load i64, ptr %user_param.i, align 8
  %shr.i = lshr i64 %68, 32
  %conv69.i = trunc i64 %shr.i to i32
  %inc70.i = or i32 %i.0.i94, 2
  %arrayidx71.i = getelementptr i32, ptr %arrayidx9, i32 %inc65.i
  %69 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %conv69.i, ptr %arrayidx71.i, align 4
  %src_handle.i = getelementptr inbounds %struct.mcu_msg_encode_frame, ptr %msg, i32 0, i32 7
  %70 = ptrtoint ptr %src_handle.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %src_handle.i, align 8
  %conv73.i = trunc i64 %71 to i32
  %inc74.i = or i32 %i.0.i94, 3
  %arrayidx75.i = getelementptr i32, ptr %arrayidx9, i32 %inc70.i
  %72 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %conv73.i, ptr %arrayidx75.i, align 4
  %73 = load i64, ptr %src_handle.i, align 8
  %shr77.i = lshr i64 %73, 32
  %conv79.i = trunc i64 %shr77.i to i32
  %inc80.i = add nuw nsw i32 %i.0.i94, 4
  %arrayidx81.i = getelementptr i32, ptr %arrayidx9, i32 %inc74.i
  %74 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %conv79.i, ptr %arrayidx81.i, align 4
  %request_options.i = getelementptr inbounds %struct.mcu_msg_encode_frame, ptr %msg, i32 0, i32 8
  %75 = ptrtoint ptr %request_options.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %request_options.i, align 8
  %inc82.i = add nuw nsw i32 %i.0.i94, 5
  %arrayidx83.i = getelementptr i32, ptr %arrayidx9, i32 %inc80.i
  %77 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %arrayidx83.i, align 4
  %src_y.i = getelementptr inbounds %struct.mcu_msg_encode_frame, ptr %msg, i32 0, i32 9
  %78 = ptrtoint ptr %src_y.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %src_y.i, align 4
  %inc84.i = add nuw nsw i32 %i.0.i94, 6
  %arrayidx85.i = getelementptr i32, ptr %arrayidx9, i32 %inc82.i
  %80 = ptrtoint ptr %arrayidx85.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %arrayidx85.i, align 4
  %src_uv.i = getelementptr inbounds %struct.mcu_msg_encode_frame, ptr %msg, i32 0, i32 10
  %81 = ptrtoint ptr %src_uv.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %src_uv.i, align 8
  %inc86.i = add nuw nsw i32 %i.0.i94, 7
  %arrayidx87.i = getelementptr i32, ptr %arrayidx9, i32 %inc84.i
  %83 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %arrayidx87.i, align 4
  br i1 %cmp.not.i93, label %if.end93.thread.i, label %if.then98.i

if.end93.thread.i:                                ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #6
  %stride181.i = getelementptr inbounds %struct.mcu_msg_encode_frame, ptr %msg, i32 0, i32 12
  br label %allegro_enc_encode_frame.exit

if.then98.i:                                      ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #6
  %is_10_bit.i = getelementptr inbounds %struct.mcu_msg_encode_frame, ptr %msg, i32 0, i32 11
  %84 = ptrtoint ptr %is_10_bit.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %is_10_bit.i, align 4
  %inc91.i = add nuw nsw i32 %i.0.i94, 8
  %arrayidx92.i = getelementptr i32, ptr %arrayidx9, i32 %inc86.i
  %86 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %arrayidx92.i, align 4
  %stride.i = getelementptr inbounds %struct.mcu_msg_encode_frame, ptr %msg, i32 0, i32 12
  %87 = ptrtoint ptr %stride.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %stride.i, align 8
  %inc94.i = add nuw nsw i32 %i.0.i94, 9
  %arrayidx95.i = getelementptr i32, ptr %arrayidx9, i32 %inc91.i
  %89 = ptrtoint ptr %arrayidx95.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %arrayidx95.i, align 4
  %format.i = getelementptr inbounds %struct.mcu_msg_encode_frame, ptr %msg, i32 0, i32 13
  br label %allegro_enc_encode_frame.exit

allegro_enc_encode_frame.exit:                    ; preds = %if.then98.i, %if.end93.thread.i
  %.sink184.i = phi i32 [ 8, %if.end93.thread.i ], [ 10, %if.then98.i ]
  %inc86.sink.i = phi i32 [ %inc86.i, %if.end93.thread.i ], [ %inc94.i, %if.then98.i ]
  %.sink.in.i = phi ptr [ %stride181.i, %if.end93.thread.i ], [ %format.i, %if.then98.i ]
  %90 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %.sink.i = load i32, ptr %.sink.in.i, align 4
  %inc94182.i = add nuw nsw i32 %.sink184.i, %i.0.i94
  %arrayidx95183.i = getelementptr i32, ptr %arrayidx9, i32 %inc86.sink.i
  %91 = ptrtoint ptr %arrayidx95183.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %.sink.i, ptr %arrayidx95183.i, align 4
  %ep2.i = getelementptr inbounds %struct.mcu_msg_encode_frame, ptr %msg, i32 0, i32 14
  %92 = ptrtoint ptr %ep2.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %ep2.i, align 8
  %inc102.i = or i32 %inc94182.i, 1
  %arrayidx103.i = getelementptr i32, ptr %arrayidx9, i32 %inc94182.i
  %94 = ptrtoint ptr %arrayidx103.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %arrayidx103.i, align 4
  %ep2_v.i = getelementptr inbounds %struct.mcu_msg_encode_frame, ptr %msg, i32 0, i32 15
  %95 = ptrtoint ptr %ep2_v.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %ep2_v.i, align 8
  %conv105.i = trunc i64 %96 to i32
  %inc106.i = add nuw nsw i32 %inc94182.i, 2
  %arrayidx107.i = getelementptr i32, ptr %arrayidx9, i32 %inc102.i
  %97 = ptrtoint ptr %arrayidx107.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %conv105.i, ptr %arrayidx107.i, align 4
  %98 = load i64, ptr %ep2_v.i, align 8
  %shr109.i = lshr i64 %98, 32
  %conv111.i = trunc i64 %shr109.i to i32
  %arrayidx113.i = getelementptr i32, ptr %arrayidx9, i32 %inc106.i
  %99 = ptrtoint ptr %arrayidx113.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %conv111.i, ptr %arrayidx113.i, align 4
  %inc112.i = shl nuw nsw i32 %inc94182.i, 2
  %mul.i = add nuw nsw i32 %inc112.i, 12
  br label %do.body20

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx12 = getelementptr i32, ptr %dst, i32 1
  %channel_id.i95 = getelementptr inbounds %struct.mcu_msg_put_stream_buffer, ptr %msg, i32 0, i32 1
  %100 = ptrtoint ptr %channel_id.i95 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %channel_id.i95, align 8
  %102 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %arrayidx12, align 4
  %dma_addr.i = getelementptr inbounds %struct.mcu_msg_put_stream_buffer, ptr %msg, i32 0, i32 2
  %103 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %dma_addr.i, align 4
  %arrayidx2.i = getelementptr i32, ptr %dst, i32 2
  %105 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %arrayidx2.i, align 4
  %mcu_addr.i = getelementptr inbounds %struct.mcu_msg_put_stream_buffer, ptr %msg, i32 0, i32 3
  %106 = ptrtoint ptr %mcu_addr.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %mcu_addr.i, align 8
  %arrayidx4.i96 = getelementptr i32, ptr %dst, i32 3
  %108 = ptrtoint ptr %arrayidx4.i96 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %arrayidx4.i96, align 4
  %size.i = getelementptr inbounds %struct.mcu_msg_put_stream_buffer, ptr %msg, i32 0, i32 4
  %109 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %size.i, align 4
  %arrayidx6.i = getelementptr i32, ptr %dst, i32 4
  %111 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %arrayidx6.i, align 4
  %offset.i = getelementptr inbounds %struct.mcu_msg_put_stream_buffer, ptr %msg, i32 0, i32 5
  %112 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %offset.i, align 8
  %arrayidx8.i = getelementptr i32, ptr %dst, i32 5
  %114 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %arrayidx8.i, align 4
  %dst_handle.i = getelementptr inbounds %struct.mcu_msg_put_stream_buffer, ptr %msg, i32 0, i32 6
  %115 = ptrtoint ptr %dst_handle.i to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %dst_handle.i, align 8
  %conv.i = trunc i64 %116 to i32
  %arrayidx10.i = getelementptr i32, ptr %dst, i32 6
  %117 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %conv.i, ptr %arrayidx10.i, align 4
  %118 = load i64, ptr %dst_handle.i, align 8
  %shr.i97 = lshr i64 %118, 32
  %conv13.i = trunc i64 %shr.i97 to i32
  %arrayidx15.i98 = getelementptr i32, ptr %dst, i32 7
  %119 = ptrtoint ptr %arrayidx15.i98 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %conv13.i, ptr %arrayidx15.i98, align 4
  br label %do.body20

sw.bb14:                                          ; preds = %if.end.sw.bb14_crit_edge, %if.end.sw.bb14_crit_edge107
  %arrayidx15 = getelementptr i32, ptr %dst, i32 1
  %num_buffers1.i = getelementptr inbounds %struct.mcu_msg_push_buffers_internal, ptr %msg, i32 0, i32 2
  %120 = ptrtoint ptr %num_buffers1.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %num_buffers1.i, align 4
  %channel_id.i99 = getelementptr inbounds %struct.mcu_msg_push_buffers_internal, ptr %msg, i32 0, i32 1
  %122 = ptrtoint ptr %channel_id.i99 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %channel_id.i99, align 4
  %124 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %arrayidx15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %cmp24.not.i = icmp eq i32 %121, 0
  br i1 %cmp24.not.i, label %sw.bb14.do.body20_crit_edge, label %sw.bb14.for.body.i_crit_edge

sw.bb14.for.body.i_crit_edge:                     ; preds = %sw.bb14
  br label %for.body.i

sw.bb14.do.body20_crit_edge:                      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body20

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.bb14.for.body.i_crit_edge
  %j.026.i = phi i32 [ %inc10.i, %for.body.i.for.body.i_crit_edge ], [ 0, %sw.bb14.for.body.i_crit_edge ]
  %i.025.i = phi i32 [ %inc8.i, %for.body.i.for.body.i_crit_edge ], [ 1, %sw.bb14.for.body.i_crit_edge ]
  %arrayidx3.i100 = getelementptr %struct.mcu_msg_push_buffers_internal, ptr %msg, i32 0, i32 3, i32 %j.026.i
  %125 = ptrtoint ptr %arrayidx3.i100 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx3.i100, align 4
  %inc4.i = add i32 %i.025.i, 1
  %arrayidx5.i101 = getelementptr i32, ptr %arrayidx15, i32 %i.025.i
  %127 = ptrtoint ptr %arrayidx5.i101 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %arrayidx5.i101, align 4
  %mcu_addr.i102 = getelementptr %struct.mcu_msg_push_buffers_internal, ptr %msg, i32 0, i32 3, i32 %j.026.i, i32 1
  %128 = ptrtoint ptr %mcu_addr.i102 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %mcu_addr.i102, align 4
  %inc6.i = add i32 %i.025.i, 2
  %arrayidx7.i103 = getelementptr i32, ptr %arrayidx15, i32 %inc4.i
  %130 = ptrtoint ptr %arrayidx7.i103 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %arrayidx7.i103, align 4
  %size.i104 = getelementptr %struct.mcu_msg_push_buffers_internal, ptr %msg, i32 0, i32 3, i32 %j.026.i, i32 2
  %131 = ptrtoint ptr %size.i104 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %size.i104, align 4
  %inc8.i = add i32 %i.025.i, 3
  %arrayidx9.i105 = getelementptr i32, ptr %arrayidx15, i32 %inc6.i
  %133 = ptrtoint ptr %arrayidx9.i105 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %arrayidx9.i105, align 4
  %inc10.i = add nuw i32 %j.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc10.i, %121
  br i1 %exitcond.not.i, label %for.end.loopexit.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.end.loopexit.i:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %phi.bo.i106 = shl i32 %inc8.i, 2
  br label %do.body20

do.body20:                                        ; preds = %for.end.loopexit.i, %sw.bb14.do.body20_crit_edge, %sw.bb11, %allegro_enc_encode_frame.exit, %sw.bb5, %if.then7.i, %if.end.thread.i, %if.then.i, %sw.bb.do.body20_crit_edge
  %size.0 = phi i32 [ 28, %sw.bb11 ], [ %mul.i, %allegro_enc_encode_frame.exit ], [ 4, %sw.bb5 ], [ 32, %if.then.i ], [ 24, %sw.bb.do.body20_crit_edge ], [ 12, %if.then7.i ], [ %phi.bo.i, %if.end.thread.i ], [ 4, %sw.bb14.do.body20_crit_edge ], [ %phi.bo.i106, %for.end.loopexit.i ]
  %134 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %msg, align 4
  %shl = shl i32 %135, 16
  %and59 = and i32 %size.0, 65535
  %or = or i32 %shl, %and59
  %136 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %or, ptr %dst, align 4
  %add = add i32 %size.0, 4
  br label %cleanup

cleanup:                                          ; preds = %do.body20, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %do.body20 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @allegro_decode_mail(ptr noundef %msg, ptr noundef readonly %src) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %src, null
  %tobool1.not = icmp eq ptr %msg, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src, align 4
  %shr = lshr i32 %1, 16
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %shr, ptr %msg, align 4
  %incdec.ptr = getelementptr i32, ptr %src, i32 1
  %trunc = trunc i32 %shr to i16
  %3 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.9)
  switch i16 %trunc, label %if.end.cleanup_crit_edge [
    i16 0, label %sw.bb
    i16 5, label %sw.bb15
    i16 6, label %sw.bb17
    i16 7, label %sw.bb19
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %incdec.ptr, align 4
  %reserved0.i = getelementptr inbounds %struct.mcu_msg_init_response, ptr %msg, i32 0, i32 1
  %6 = ptrtoint ptr %reserved0.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %reserved0.i, align 4
  br label %cleanup

sw.bb15:                                          ; preds = %if.end
  %version1.i = getelementptr inbounds %struct.mcu_msg_header, ptr %msg, i32 0, i32 1
  %7 = ptrtoint ptr %version1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %version1.i, align 4
  %9 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %incdec.ptr, align 4
  %channel_id.i = getelementptr inbounds %struct.mcu_msg_create_channel_response, ptr %msg, i32 0, i32 1
  %11 = ptrtoint ptr %channel_id.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %channel_id.i, align 4
  %arrayidx3.i = getelementptr i32, ptr %src, i32 2
  %12 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx3.i, align 4
  %user_id.i = getelementptr inbounds %struct.mcu_msg_create_channel_response, ptr %msg, i32 0, i32 2
  %14 = ptrtoint ptr %user_id.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %user_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  br i1 %cmp.i, label %if.then.i, label %sw.bb15.allegro_dec_create_channel.exit_crit_edge

sw.bb15.allegro_dec_create_channel.exit_crit_edge: ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #6
  br label %allegro_dec_create_channel.exit

if.then.i:                                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx5.i = getelementptr i32, ptr %src, i32 3
  %15 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx5.i, align 4
  %options.i = getelementptr inbounds %struct.mcu_msg_create_channel_response, ptr %msg, i32 0, i32 3
  %17 = ptrtoint ptr %options.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %options.i, align 4
  %arrayidx7.i = getelementptr i32, ptr %src, i32 4
  %18 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx7.i, align 4
  %num_core.i = getelementptr inbounds %struct.mcu_msg_create_channel_response, ptr %msg, i32 0, i32 4
  %20 = ptrtoint ptr %num_core.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %num_core.i, align 4
  %arrayidx20.i = getelementptr i32, ptr %src, i32 5
  %21 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx20.i, align 4
  %and.i = lshr i32 %22, 4
  %shr.i = and i32 %and.i, 15
  %num_ref_idx_l0.i = getelementptr inbounds %struct.mcu_msg_create_channel_response, ptr %msg, i32 0, i32 5
  %23 = ptrtoint ptr %num_ref_idx_l0.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %shr.i, ptr %num_ref_idx_l0.i, align 4
  %24 = load i32, ptr %arrayidx20.i, align 4
  %and39.i = lshr i32 %24, 8
  %shr40.i = and i32 %and39.i, 15
  %num_ref_idx_l1.i = getelementptr inbounds %struct.mcu_msg_create_channel_response, ptr %msg, i32 0, i32 6
  %25 = ptrtoint ptr %num_ref_idx_l1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %shr40.i, ptr %num_ref_idx_l1.i, align 4
  br label %allegro_dec_create_channel.exit

allegro_dec_create_channel.exit:                  ; preds = %if.then.i, %sw.bb15.allegro_dec_create_channel.exit_crit_edge
  %i.0.i = phi i32 [ 5, %if.then.i ], [ 2, %sw.bb15.allegro_dec_create_channel.exit_crit_edge ]
  %inc41.i = add nuw nsw i32 %i.0.i, 1
  %arrayidx42.i = getelementptr i32, ptr %incdec.ptr, i32 %i.0.i
  %26 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx42.i, align 4
  %int_buffers_count.i = getelementptr inbounds %struct.mcu_msg_create_channel_response, ptr %msg, i32 0, i32 7
  %28 = ptrtoint ptr %int_buffers_count.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %int_buffers_count.i, align 4
  %inc43.i = add nuw nsw i32 %i.0.i, 2
  %arrayidx44.i = getelementptr i32, ptr %incdec.ptr, i32 %inc41.i
  %29 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx44.i, align 4
  %int_buffers_size.i = getelementptr inbounds %struct.mcu_msg_create_channel_response, ptr %msg, i32 0, i32 8
  %31 = ptrtoint ptr %int_buffers_size.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %int_buffers_size.i, align 4
  %inc45.i = add nuw nsw i32 %i.0.i, 3
  %arrayidx46.i = getelementptr i32, ptr %incdec.ptr, i32 %inc43.i
  %32 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx46.i, align 4
  %rec_buffers_count.i = getelementptr inbounds %struct.mcu_msg_create_channel_response, ptr %msg, i32 0, i32 9
  %34 = ptrtoint ptr %rec_buffers_count.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %rec_buffers_count.i, align 4
  %inc47.i = add nuw nsw i32 %i.0.i, 4
  %arrayidx48.i = getelementptr i32, ptr %incdec.ptr, i32 %inc45.i
  %35 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx48.i, align 4
  %rec_buffers_size.i = getelementptr inbounds %struct.mcu_msg_create_channel_response, ptr %msg, i32 0, i32 10
  %37 = ptrtoint ptr %rec_buffers_size.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %rec_buffers_size.i, align 4
  %inc49.i = add nuw nsw i32 %i.0.i, 5
  %arrayidx50.i = getelementptr i32, ptr %incdec.ptr, i32 %inc47.i
  %38 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx50.i, align 4
  %reserved.i = getelementptr inbounds %struct.mcu_msg_create_channel_response, ptr %msg, i32 0, i32 11
  %40 = ptrtoint ptr %reserved.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %reserved.i, align 4
  %arrayidx52.i = getelementptr i32, ptr %incdec.ptr, i32 %inc49.i
  %41 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx52.i, align 4
  %error_code.i = getelementptr inbounds %struct.mcu_msg_create_channel_response, ptr %msg, i32 0, i32 12
  %43 = ptrtoint ptr %error_code.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %error_code.i, align 4
  br label %cleanup

sw.bb17:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %44 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %incdec.ptr, align 4
  %channel_id.i33 = getelementptr inbounds %struct.mcu_msg_destroy_channel_response, ptr %msg, i32 0, i32 1
  %46 = ptrtoint ptr %channel_id.i33 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %channel_id.i33, align 4
  br label %cleanup

sw.bb19:                                          ; preds = %if.end
  %version1.i34 = getelementptr inbounds %struct.mcu_msg_header, ptr %msg, i32 0, i32 1
  %47 = ptrtoint ptr %version1.i34 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %version1.i34, align 4
  %49 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %incdec.ptr, align 4
  %channel_id.i35 = getelementptr inbounds %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 1
  %51 = ptrtoint ptr %channel_id.i35 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %channel_id.i35, align 8
  %arrayidx3.i36 = getelementptr i32, ptr %src, i32 2
  %52 = ptrtoint ptr %arrayidx3.i36 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx3.i36, align 4
  %conv.i = zext i32 %53 to i64
  %dst_handle.i = getelementptr inbounds %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 2
  %54 = ptrtoint ptr %dst_handle.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %conv.i, ptr %dst_handle.i, align 8
  %arrayidx5.i37 = getelementptr i32, ptr %src, i32 3
  %55 = ptrtoint ptr %arrayidx5.i37 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx5.i37, align 4
  %conv6.i = zext i32 %56 to i64
  %shl.i = shl nuw i64 %conv6.i, 32
  %or.i = or i64 %shl.i, %conv.i
  store i64 %or.i, ptr %dst_handle.i, align 8
  %arrayidx9.i = getelementptr i32, ptr %src, i32 4
  %57 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx9.i, align 4
  %conv10.i = zext i32 %58 to i64
  %user_param.i = getelementptr inbounds %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 3
  %59 = ptrtoint ptr %user_param.i to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %conv10.i, ptr %user_param.i, align 8
  %arrayidx12.i = getelementptr i32, ptr %src, i32 5
  %60 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx12.i, align 4
  %conv13.i = zext i32 %61 to i64
  %shl14.i = shl nuw i64 %conv13.i, 32
  %or16.i = or i64 %shl14.i, %conv10.i
  store i64 %or16.i, ptr %user_param.i, align 8
  %arrayidx18.i = getelementptr i32, ptr %src, i32 6
  %62 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx18.i, align 4
  %conv19.i = zext i32 %63 to i64
  %src_handle.i = getelementptr inbounds %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 4
  %64 = ptrtoint ptr %src_handle.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %conv19.i, ptr %src_handle.i, align 8
  %arrayidx21.i = getelementptr i32, ptr %src, i32 7
  %65 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx21.i, align 4
  %conv22.i = zext i32 %66 to i64
  %shl23.i = shl nuw i64 %conv22.i, 32
  %or25.i = or i64 %shl23.i, %conv19.i
  store i64 %or25.i, ptr %src_handle.i, align 8
  %arrayidx38.i = getelementptr i32, ptr %src, i32 8
  %67 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx38.i, align 4
  %shr.i38 = lshr i32 %68, 16
  %conv39.i = trunc i32 %shr.i38 to i16
  %skip.i = getelementptr inbounds %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 5
  %69 = ptrtoint ptr %skip.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv39.i, ptr %skip.i, align 8
  %70 = load i32, ptr %arrayidx38.i, align 4
  %conv60.i = trunc i32 %70 to i16
  %is_ref.i = getelementptr inbounds %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 6
  %71 = ptrtoint ptr %is_ref.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %conv60.i, ptr %is_ref.i, align 2
  %arrayidx62.i = getelementptr i32, ptr %src, i32 9
  %72 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx62.i, align 4
  %initial_removal_delay.i = getelementptr inbounds %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 7
  %74 = ptrtoint ptr %initial_removal_delay.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %initial_removal_delay.i, align 4
  %arrayidx64.i = getelementptr i32, ptr %src, i32 10
  %75 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx64.i, align 4
  %dpb_output_delay.i = getelementptr inbounds %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 8
  %77 = ptrtoint ptr %dpb_output_delay.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %dpb_output_delay.i, align 8
  %arrayidx66.i = getelementptr i32, ptr %src, i32 11
  %78 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx66.i, align 4
  %size.i = getelementptr inbounds %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 9
  %80 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %size.i, align 4
  %arrayidx68.i = getelementptr i32, ptr %src, i32 12
  %81 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx68.i, align 4
  %frame_tag_size.i = getelementptr inbounds %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 10
  %83 = ptrtoint ptr %frame_tag_size.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %frame_tag_size.i, align 8
  %arrayidx70.i = getelementptr i32, ptr %src, i32 13
  %84 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx70.i, align 4
  %stuffing.i = getelementptr inbounds %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 11
  %86 = ptrtoint ptr %stuffing.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %stuffing.i, align 4
  %arrayidx72.i = getelementptr i32, ptr %src, i32 14
  %87 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx72.i, align 4
  %filler.i = getelementptr inbounds %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 12
  %89 = ptrtoint ptr %filler.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %filler.i, align 8
  %arrayidx89.i = getelementptr i32, ptr %src, i32 15
  %90 = ptrtoint ptr %arrayidx89.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx89.i, align 4
  %shr91.i = lshr i32 %91, 16
  %conv92.i = trunc i32 %shr91.i to i16
  %num_row.i = getelementptr inbounds %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 14
  %92 = ptrtoint ptr %num_row.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %conv92.i, ptr %num_row.i, align 2
  %93 = load i32, ptr %arrayidx89.i, align 4
  %conv113.i = trunc i32 %93 to i16
  %num_column.i = getelementptr inbounds %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 13
  %94 = ptrtoint ptr %num_column.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %conv113.i, ptr %num_column.i, align 4
  %arrayidx130.i = getelementptr i32, ptr %src, i32 16
  %95 = ptrtoint ptr %arrayidx130.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx130.i, align 4
  %shr132.i = lshr i32 %96, 24
  %conv133.i = trunc i32 %shr132.i to i8
  %num_ref_idx_l1.i39 = getelementptr inbounds %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 17
  %97 = ptrtoint ptr %num_ref_idx_l1.i39 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv133.i, ptr %num_ref_idx_l1.i39, align 1
  %98 = load i32, ptr %arrayidx130.i, align 4
  %and151.i = lshr i32 %98, 16
  %conv153.i = trunc i32 %and151.i to i8
  %num_ref_idx_l0.i40 = getelementptr inbounds %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 16
  %99 = ptrtoint ptr %num_ref_idx_l0.i40 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %conv153.i, ptr %num_ref_idx_l0.i40, align 2
  %100 = load i32, ptr %arrayidx130.i, align 4
  %conv174.i = trunc i32 %100 to i16
  %qp.i = getelementptr inbounds %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 15
  %101 = ptrtoint ptr %qp.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %conv174.i, ptr %qp.i, align 8
  %arrayidx176.i = getelementptr i32, ptr %src, i32 17
  %102 = ptrtoint ptr %arrayidx176.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx176.i, align 4
  %partition_table_offset.i = getelementptr inbounds %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 18
  %104 = ptrtoint ptr %partition_table_offset.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %partition_table_offset.i, align 4
  %arrayidx178.i = getelementptr i32, ptr %src, i32 18
  %105 = ptrtoint ptr %arrayidx178.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx178.i, align 4
  %partition_table_size.i = getelementptr inbounds %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 19
  %107 = ptrtoint ptr %partition_table_size.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %partition_table_size.i, align 8
  %arrayidx180.i = getelementptr i32, ptr %src, i32 19
  %108 = ptrtoint ptr %arrayidx180.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx180.i, align 4
  %sum_complex.i = getelementptr inbounds %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 20
  %110 = ptrtoint ptr %sum_complex.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %sum_complex.i, align 4
  %arrayidx183.i = getelementptr i32, ptr %src, i32 20
  %111 = ptrtoint ptr %arrayidx183.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx183.i, align 4
  %arrayidx184.i = getelementptr %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 21, i32 0
  %113 = ptrtoint ptr %arrayidx184.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %arrayidx184.i, align 4
  %arrayidx183.1.i = getelementptr i32, ptr %src, i32 21
  %114 = ptrtoint ptr %arrayidx183.1.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx183.1.i, align 4
  %arrayidx184.1.i = getelementptr %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 21, i32 1
  %116 = ptrtoint ptr %arrayidx184.1.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %arrayidx184.1.i, align 4
  %arrayidx183.2.i = getelementptr i32, ptr %src, i32 22
  %117 = ptrtoint ptr %arrayidx183.2.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx183.2.i, align 4
  %arrayidx184.2.i = getelementptr %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 21, i32 2
  %119 = ptrtoint ptr %arrayidx184.2.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %arrayidx184.2.i, align 4
  %arrayidx183.3.i = getelementptr i32, ptr %src, i32 23
  %120 = ptrtoint ptr %arrayidx183.3.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx183.3.i, align 4
  %arrayidx184.3.i = getelementptr %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 21, i32 3
  %122 = ptrtoint ptr %arrayidx184.3.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %arrayidx184.3.i, align 4
  %arrayidx191.i = getelementptr i32, ptr %src, i32 24
  %123 = ptrtoint ptr %arrayidx191.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx191.i, align 4
  %arrayidx192.i = getelementptr %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 22, i32 0
  %125 = ptrtoint ptr %arrayidx192.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %arrayidx192.i, align 4
  %arrayidx191.1.i = getelementptr i32, ptr %src, i32 25
  %126 = ptrtoint ptr %arrayidx191.1.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx191.1.i, align 4
  %arrayidx192.1.i = getelementptr %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 22, i32 1
  %128 = ptrtoint ptr %arrayidx192.1.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %arrayidx192.1.i, align 4
  %arrayidx191.2.i = getelementptr i32, ptr %src, i32 26
  %129 = ptrtoint ptr %arrayidx191.2.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx191.2.i, align 4
  %arrayidx192.2.i = getelementptr %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 22, i32 2
  %131 = ptrtoint ptr %arrayidx192.2.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %arrayidx192.2.i, align 4
  %arrayidx191.3.i = getelementptr i32, ptr %src, i32 27
  %132 = ptrtoint ptr %arrayidx191.3.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx191.3.i, align 4
  %arrayidx192.3.i = getelementptr %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 22, i32 3
  %134 = ptrtoint ptr %arrayidx192.3.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %arrayidx192.3.i, align 4
  %arrayidx191.4.i = getelementptr i32, ptr %src, i32 28
  %135 = ptrtoint ptr %arrayidx191.4.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx191.4.i, align 4
  %arrayidx192.4.i = getelementptr %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 22, i32 4
  %137 = ptrtoint ptr %arrayidx192.4.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %arrayidx192.4.i, align 4
  %arrayidx191.5.i = getelementptr i32, ptr %src, i32 29
  %138 = ptrtoint ptr %arrayidx191.5.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx191.5.i, align 4
  %arrayidx192.5.i = getelementptr %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 22, i32 5
  %140 = ptrtoint ptr %arrayidx192.5.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %arrayidx192.5.i, align 4
  %arrayidx191.6.i = getelementptr i32, ptr %src, i32 30
  %141 = ptrtoint ptr %arrayidx191.6.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %arrayidx191.6.i, align 4
  %arrayidx192.6.i = getelementptr %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 22, i32 6
  %143 = ptrtoint ptr %arrayidx192.6.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %arrayidx192.6.i, align 4
  %arrayidx191.7.i = getelementptr i32, ptr %src, i32 31
  %144 = ptrtoint ptr %arrayidx191.7.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx191.7.i, align 4
  %arrayidx192.7.i = getelementptr %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 22, i32 7
  %146 = ptrtoint ptr %arrayidx192.7.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %145, ptr %arrayidx192.7.i, align 4
  %arrayidx191.8.i = getelementptr i32, ptr %src, i32 32
  %147 = ptrtoint ptr %arrayidx191.8.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx191.8.i, align 4
  %arrayidx192.8.i = getelementptr %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 22, i32 8
  %149 = ptrtoint ptr %arrayidx192.8.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %148, ptr %arrayidx192.8.i, align 4
  %arrayidx191.9.i = getelementptr i32, ptr %src, i32 33
  %150 = ptrtoint ptr %arrayidx191.9.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx191.9.i, align 4
  %arrayidx192.9.i = getelementptr %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 22, i32 9
  %152 = ptrtoint ptr %arrayidx192.9.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %arrayidx192.9.i, align 4
  %arrayidx191.10.i = getelementptr i32, ptr %src, i32 34
  %153 = ptrtoint ptr %arrayidx191.10.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx191.10.i, align 4
  %arrayidx192.10.i = getelementptr %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 22, i32 10
  %155 = ptrtoint ptr %arrayidx192.10.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %arrayidx192.10.i, align 4
  %arrayidx191.11.i = getelementptr i32, ptr %src, i32 35
  %156 = ptrtoint ptr %arrayidx191.11.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx191.11.i, align 4
  %arrayidx192.11.i = getelementptr %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 22, i32 11
  %158 = ptrtoint ptr %arrayidx192.11.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %arrayidx192.11.i, align 4
  %arrayidx191.12.i = getelementptr i32, ptr %src, i32 36
  %159 = ptrtoint ptr %arrayidx191.12.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %arrayidx191.12.i, align 4
  %arrayidx192.12.i = getelementptr %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 22, i32 12
  %161 = ptrtoint ptr %arrayidx192.12.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %160, ptr %arrayidx192.12.i, align 4
  %arrayidx191.13.i = getelementptr i32, ptr %src, i32 37
  %162 = ptrtoint ptr %arrayidx191.13.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx191.13.i, align 4
  %arrayidx192.13.i = getelementptr %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 22, i32 13
  %164 = ptrtoint ptr %arrayidx192.13.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %arrayidx192.13.i, align 4
  %arrayidx191.14.i = getelementptr i32, ptr %src, i32 38
  %165 = ptrtoint ptr %arrayidx191.14.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %arrayidx191.14.i, align 4
  %arrayidx192.14.i = getelementptr %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 22, i32 14
  %167 = ptrtoint ptr %arrayidx192.14.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %arrayidx192.14.i, align 4
  %arrayidx191.15.i = getelementptr i32, ptr %src, i32 39
  %168 = ptrtoint ptr %arrayidx191.15.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx191.15.i, align 4
  %arrayidx192.15.i = getelementptr %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 22, i32 15
  %170 = ptrtoint ptr %arrayidx192.15.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %169, ptr %arrayidx192.15.i, align 4
  %arrayidx191.16.i = getelementptr i32, ptr %src, i32 40
  %171 = ptrtoint ptr %arrayidx191.16.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %arrayidx191.16.i, align 4
  %arrayidx192.16.i = getelementptr %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 22, i32 16
  %173 = ptrtoint ptr %arrayidx192.16.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %172, ptr %arrayidx192.16.i, align 4
  %arrayidx191.17.i = getelementptr i32, ptr %src, i32 41
  %174 = ptrtoint ptr %arrayidx191.17.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %arrayidx191.17.i, align 4
  %arrayidx192.17.i = getelementptr %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 22, i32 17
  %176 = ptrtoint ptr %arrayidx192.17.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %175, ptr %arrayidx192.17.i, align 4
  %arrayidx191.18.i = getelementptr i32, ptr %src, i32 42
  %177 = ptrtoint ptr %arrayidx191.18.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %arrayidx191.18.i, align 4
  %arrayidx192.18.i = getelementptr %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 22, i32 18
  %179 = ptrtoint ptr %arrayidx192.18.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %178, ptr %arrayidx192.18.i, align 4
  %arrayidx191.19.i = getelementptr i32, ptr %src, i32 43
  %180 = ptrtoint ptr %arrayidx191.19.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %arrayidx191.19.i, align 4
  %arrayidx192.19.i = getelementptr %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 22, i32 19
  %182 = ptrtoint ptr %arrayidx192.19.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %181, ptr %arrayidx192.19.i, align 4
  %arrayidx191.20.i = getelementptr i32, ptr %src, i32 44
  %183 = ptrtoint ptr %arrayidx191.20.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %arrayidx191.20.i, align 4
  %arrayidx192.20.i = getelementptr %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 22, i32 20
  %185 = ptrtoint ptr %arrayidx192.20.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %184, ptr %arrayidx192.20.i, align 4
  %arrayidx191.21.i = getelementptr i32, ptr %src, i32 45
  %186 = ptrtoint ptr %arrayidx191.21.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %arrayidx191.21.i, align 4
  %arrayidx192.21.i = getelementptr %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 22, i32 21
  %188 = ptrtoint ptr %arrayidx192.21.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %187, ptr %arrayidx192.21.i, align 4
  %arrayidx197.i = getelementptr i32, ptr %src, i32 46
  %189 = ptrtoint ptr %arrayidx197.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %arrayidx197.i, align 4
  %error_code.i41 = getelementptr inbounds %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 23
  %191 = ptrtoint ptr %error_code.i41 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %190, ptr %error_code.i41, align 8
  %arrayidx199.i = getelementptr i32, ptr %src, i32 47
  %192 = ptrtoint ptr %arrayidx199.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %arrayidx199.i, align 4
  %slice_type.i = getelementptr inbounds %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 24
  %194 = ptrtoint ptr %slice_type.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %193, ptr %slice_type.i, align 4
  %arrayidx201.i = getelementptr i32, ptr %src, i32 48
  %195 = ptrtoint ptr %arrayidx201.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %arrayidx201.i, align 4
  %pic_struct.i = getelementptr inbounds %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 25
  %197 = ptrtoint ptr %pic_struct.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %196, ptr %pic_struct.i, align 8
  %arrayidx218.i = getelementptr i32, ptr %src, i32 49
  %198 = ptrtoint ptr %arrayidx218.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %arrayidx218.i, align 4
  %shr220.i = lshr i32 %199, 24
  %conv221.i = trunc i32 %shr220.i to i8
  %reserved.i42 = getelementptr inbounds %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 29
  %200 = ptrtoint ptr %reserved.i42 to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 %conv221.i, ptr %reserved.i42, align 1
  %201 = load i32, ptr %arrayidx218.i, align 4
  %and239.i = lshr i32 %201, 16
  %conv241.i = trunc i32 %and239.i to i8
  %is_last_slice.i = getelementptr inbounds %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 28
  %202 = ptrtoint ptr %is_last_slice.i to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 %conv241.i, ptr %is_last_slice.i, align 2
  %203 = load i32, ptr %arrayidx218.i, align 4
  %and259.i = lshr i32 %203, 8
  %conv261.i = trunc i32 %and259.i to i8
  %is_first_slice.i = getelementptr inbounds %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 27
  %204 = ptrtoint ptr %is_first_slice.i to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %conv261.i, ptr %is_first_slice.i, align 1
  %205 = load i32, ptr %arrayidx218.i, align 4
  %conv282.i = trunc i32 %205 to i8
  %is_idr.i = getelementptr inbounds %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 26
  %206 = ptrtoint ptr %is_idr.i to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 %conv282.i, ptr %is_idr.i, align 4
  %arrayidx299.i = getelementptr i32, ptr %src, i32 50
  %207 = ptrtoint ptr %arrayidx299.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %arrayidx299.i, align 4
  %shr301.i = lshr i32 %208, 16
  %conv302.i = trunc i32 %shr301.i to i16
  %reserved1.i = getelementptr inbounds %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 31
  %209 = ptrtoint ptr %reserved1.i to i32
  call void @__asan_store2_noabort(i32 %209)
  store i16 %conv302.i, ptr %reserved1.i, align 2
  %210 = load i32, ptr %arrayidx299.i, align 4
  %conv323.i = trunc i32 %210 to i16
  %pps_qp.i = getelementptr inbounds %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 30
  %211 = ptrtoint ptr %pps_qp.i to i32
  call void @__asan_store2_noabort(i32 %211)
  store i16 %conv323.i, ptr %pps_qp.i, align 8
  %arrayidx325.i = getelementptr i32, ptr %src, i32 51
  %212 = ptrtoint ptr %arrayidx325.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %arrayidx325.i, align 4
  %reserved2.i = getelementptr inbounds %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 32
  %214 = ptrtoint ptr %reserved2.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %213, ptr %reserved2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp326.not.i = icmp eq i32 %48, 0
  br i1 %cmp326.not.i, label %sw.bb19.cleanup_crit_edge, label %if.then.i43

sw.bb19.cleanup_crit_edge:                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i43:                                      ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx329.i = getelementptr i32, ptr %src, i32 52
  %215 = ptrtoint ptr %arrayidx329.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %arrayidx329.i, align 4
  %reserved3.i = getelementptr inbounds %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 33
  %217 = ptrtoint ptr %reserved3.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %216, ptr %reserved3.i, align 8
  %arrayidx331.i = getelementptr i32, ptr %src, i32 53
  %218 = ptrtoint ptr %arrayidx331.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %arrayidx331.i, align 4
  %reserved4.i = getelementptr inbounds %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 34
  %220 = ptrtoint ptr %reserved4.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %219, ptr %reserved4.i, align 4
  %arrayidx333.i = getelementptr i32, ptr %src, i32 54
  %221 = ptrtoint ptr %arrayidx333.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %arrayidx333.i, align 4
  %reserved5.i = getelementptr inbounds %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 35
  %223 = ptrtoint ptr %reserved5.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %222, ptr %reserved5.i, align 8
  %arrayidx335.i = getelementptr i32, ptr %src, i32 55
  %224 = ptrtoint ptr %arrayidx335.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %arrayidx335.i, align 4
  %reserved6.i = getelementptr inbounds %struct.mcu_msg_encode_frame_response, ptr %msg, i32 0, i32 36
  %226 = ptrtoint ptr %reserved6.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %225, ptr %reserved6.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i43, %sw.bb19.cleanup_crit_edge, %sw.bb17, %allegro_dec_create_channel.exit, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %sw.bb17 ], [ 0, %allegro_dec_create_channel.exit ], [ 0, %sw.bb ], [ 0, %sw.bb19.cleanup_crit_edge ], [ 0, %if.then.i43 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

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

attributes #0 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @msg_type_name.buf, !1, !"buf", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/allegro-dvt/allegro-mail.c", i32 19, i32 14}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/allegro-dvt/allegro-mail.c", i32 23, i32 10}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/media/platform/allegro-dvt/allegro-mail.c", i32 25, i32 10}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/allegro-dvt/allegro-mail.c", i32 27, i32 10}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/allegro-dvt/allegro-mail.c", i32 29, i32 10}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/allegro-dvt/allegro-mail.c", i32 31, i32 10}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/allegro-dvt/allegro-mail.c", i32 33, i32 10}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/allegro-dvt/allegro-mail.c", i32 35, i32 10}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/allegro-dvt/allegro-mail.c", i32 37, i32 30}
!18 = !{ptr @__ksymtab_msg_type_name, !19, !"__ksymtab_msg_type_name", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/allegro-dvt/allegro-mail.c", i32 41, i32 1}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
