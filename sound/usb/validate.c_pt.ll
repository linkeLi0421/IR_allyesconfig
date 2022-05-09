; ModuleID = '/llk/IR_all_yes/sound/usb/validate.c_pt.bc'
source_filename = "../sound/usb/validate.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_desc_validator = type { i8, i8, ptr, i32 }
%struct.uac1_ac_header_descriptor = type <{ i8, i8, i8, i16, i16, i8, [0 x i8] }>
%struct.uac_mixer_unit_descriptor = type { i8, i8, i8, i8, i8, [0 x i8] }
%struct.uac_selector_unit_descriptor = type { i8, i8, i8, i8, i8, [0 x i8] }
%struct.uac_feature_unit_descriptor = type { i8, i8, i8, i8, i8, i8, [0 x i8] }
%struct.uac_processing_unit_descriptor = type <{ i8, i8, i8, i8, i16, i8, [0 x i8] }>
%struct.usb_midi_out_jack_descriptor = type { i8, i8, i8, i8, i8, i8, [0 x %struct.usb_midi_source_pin] }
%struct.usb_midi_source_pin = type { i8, i8 }

@audio_validators = internal constant { [31 x %struct.usb_desc_validator], [76 x i8] } { [31 x %struct.usb_desc_validator] [%struct.usb_desc_validator { i8 0, i8 1, ptr @validate_uac1_header, i32 0 }, %struct.usb_desc_validator { i8 0, i8 2, ptr null, i32 12 }, %struct.usb_desc_validator { i8 0, i8 3, ptr null, i32 9 }, %struct.usb_desc_validator { i8 0, i8 4, ptr @validate_mixer_unit, i32 0 }, %struct.usb_desc_validator { i8 0, i8 5, ptr @validate_selector_unit, i32 0 }, %struct.usb_desc_validator { i8 0, i8 6, ptr @validate_uac1_feature_unit, i32 0 }, %struct.usb_desc_validator { i8 0, i8 7, ptr @validate_processing_unit, i32 0 }, %struct.usb_desc_validator { i8 0, i8 8, ptr @validate_processing_unit, i32 0 }, %struct.usb_desc_validator { i8 32, i8 1, ptr null, i32 9 }, %struct.usb_desc_validator { i8 32, i8 2, ptr null, i32 17 }, %struct.usb_desc_validator { i8 32, i8 3, ptr null, i32 12 }, %struct.usb_desc_validator { i8 32, i8 4, ptr @validate_mixer_unit, i32 0 }, %struct.usb_desc_validator { i8 32, i8 5, ptr @validate_selector_unit, i32 0 }, %struct.usb_desc_validator { i8 32, i8 6, ptr @validate_uac2_feature_unit, i32 0 }, %struct.usb_desc_validator { i8 32, i8 8, ptr @validate_processing_unit, i32 0 }, %struct.usb_desc_validator { i8 32, i8 9, ptr @validate_processing_unit, i32 0 }, %struct.usb_desc_validator { i8 32, i8 10, ptr null, i32 8 }, %struct.usb_desc_validator { i8 32, i8 11, ptr @validate_selector_unit, i32 0 }, %struct.usb_desc_validator { i8 32, i8 12, ptr null, i32 7 }, %struct.usb_desc_validator { i8 32, i8 1, ptr null, i32 10 }, %struct.usb_desc_validator { i8 48, i8 2, ptr null, i32 20 }, %struct.usb_desc_validator { i8 48, i8 3, ptr null, i32 19 }, %struct.usb_desc_validator { i8 48, i8 5, ptr @validate_mixer_unit, i32 0 }, %struct.usb_desc_validator { i8 48, i8 6, ptr @validate_selector_unit, i32 0 }, %struct.usb_desc_validator { i8 48, i8 6, ptr @validate_uac3_feature_unit, i32 0 }, %struct.usb_desc_validator { i8 48, i8 9, ptr @validate_processing_unit, i32 0 }, %struct.usb_desc_validator { i8 48, i8 10, ptr @validate_processing_unit, i32 0 }, %struct.usb_desc_validator { i8 48, i8 11, ptr null, i32 12 }, %struct.usb_desc_validator { i8 48, i8 12, ptr @validate_selector_unit, i32 0 }, %struct.usb_desc_validator { i8 48, i8 13, ptr null, i32 11 }, %struct.usb_desc_validator zeroinitializer], [76 x i8] zeroinitializer }, align 32
@snd_usb_skip_validation = external dso_local local_unnamed_addr global i8, align 1
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"USB-audio: buggy audio desc: \00", [34 x i8] zeroinitializer }, align 32
@midi_validators = internal constant { [4 x %struct.usb_desc_validator], [48 x i8] } { [4 x %struct.usb_desc_validator] [%struct.usb_desc_validator { i8 -1, i8 1, ptr null, i32 7 }, %struct.usb_desc_validator { i8 -1, i8 2, ptr null, i32 6 }, %struct.usb_desc_validator { i8 -1, i8 3, ptr @validate_midi_out_jack, i32 0 }, %struct.usb_desc_validator zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"USB-audio: buggy midi desc: \00", [35 x i8] zeroinitializer }, align 32
@switch.table.snd_usb_validate_midi_desc = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @midi_validators, ptr getelementptr inbounds ([4 x %struct.usb_desc_validator], ptr @midi_validators, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.usb_desc_validator], ptr @midi_validators, i32 0, i32 2)], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 32, i64 48]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 8, i64 32, i64 48]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 3]
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"audio_validators\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 236, i32 40 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 330, i32 18 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 330, i32 28 }
@___asan_gen_.14 = private unnamed_addr constant [16 x i8] c"midi_validators\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 291, i32 40 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private constant [24 x i8] c"../sound/usb/validate.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 344, i32 28 }
@___asan_gen_.20 = private unnamed_addr constant [40 x i8] c"switch.table.snd_usb_validate_midi_desc\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @audio_validators, ptr @.str, ptr @.str.1, ptr @midi_validators, ptr @.str.2, ptr @switch.table.snd_usb_validate_midi_desc], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_validators to i32), i32 372, i32 448, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @midi_validators to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_usb_validate_midi_desc to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @snd_usb_validate_audio_desc(ptr noundef %p, i32 noundef %protocol) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr i8, ptr %p, i32 1
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %1)
  %cmp.not.i = icmp eq i8 %1, 36
  br i1 %cmp.not.i, label %for.cond.preheader.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.cond.preheader.i:                             ; preds = %entry
  %arrayidx4.i = getelementptr i8, ptr %p, i32 2
  %2 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx4.i, align 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i
  %4 = phi i8 [ 1, %for.cond.preheader.i ], [ %10, %for.inc.i.for.body.i_crit_edge ]
  %v.addr.041.i = phi ptr [ @audio_validators, %for.cond.preheader.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %3)
  %cmp6.i = icmp eq i8 %4, %3
  br i1 %cmp6.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %5 = ptrtoint ptr %v.addr.041.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %v.addr.041.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %cmp10.i = icmp eq i8 %6, -1
  %conv9.i = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv9.i, i32 %protocol)
  %cmp14.i = icmp eq i32 %conv9.i, %protocol
  %or.cond.i = or i1 %cmp10.i, %cmp14.i
  br i1 %or.cond.i, label %if.then16.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then16.i:                                      ; preds = %land.lhs.true.i
  %func.i = getelementptr inbounds %struct.usb_desc_validator, ptr %v.addr.041.i, i32 0, i32 2
  %7 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %func.i, align 4
  %tobool17.not.i = icmp eq ptr %8, null
  br i1 %tobool17.not.i, label %validate_desc.exit, label %if.then18.i

if.then18.i:                                      ; preds = %if.then16.i
  %call.i = tail call zeroext i1 %8(ptr noundef %p, ptr noundef %v.addr.041.i) #5
  br i1 %call.i, label %if.then18.i.if.end_crit_edge, label %if.then18.i.land.lhs.true_crit_edge

if.then18.i.land.lhs.true_crit_edge:              ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

if.then18.i.if.end_crit_edge:                     ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.usb_desc_validator, ptr %v.addr.041.i, i32 1
  %type.i = getelementptr %struct.usb_desc_validator, ptr %v.addr.041.i, i32 1, i32 1
  %9 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %type.i, align 1
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

validate_desc.exit:                               ; preds = %if.then16.i
  %11 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %p, align 1
  %conv22.i = zext i8 %12 to i32
  %size.i = getelementptr inbounds %struct.usb_desc_validator, ptr %v.addr.041.i, i32 0, i32 3
  %13 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv22.i)
  %cmp23.i.not = icmp ugt i32 %14, %conv22.i
  br i1 %cmp23.i.not, label %validate_desc.exit.land.lhs.true_crit_edge, label %validate_desc.exit.if.end_crit_edge

validate_desc.exit.if.end_crit_edge:              ; preds = %validate_desc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

validate_desc.exit.land.lhs.true_crit_edge:       ; preds = %validate_desc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %validate_desc.exit.land.lhs.true_crit_edge, %if.then18.i.land.lhs.true_crit_edge
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @snd_usb_skip_validation to i32))
  %15 = load i8, ptr @snd_usb_skip_validation, align 1, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool1.not = icmp eq i8 %15, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %p, align 1
  %conv = zext i8 %17 to i32
  tail call void @print_hex_dump(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %p, i32 noundef %conv, i1 noundef zeroext true) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %validate_desc.exit.if.end_crit_edge, %for.inc.i.if.end_crit_edge, %if.then18.i.if.end_crit_edge, %entry.if.end_crit_edge
  %valid.0.shrunk = phi i1 [ true, %validate_desc.exit.if.end_crit_edge ], [ true, %if.then ], [ false, %land.lhs.true.if.end_crit_edge ], [ true, %if.then18.i.if.end_crit_edge ], [ true, %entry.if.end_crit_edge ], [ true, %for.inc.i.if.end_crit_edge ]
  ret i1 %valid.0.shrunk
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @snd_usb_validate_midi_desc(ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr i8, ptr %p, i32 1
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %1)
  %cmp.not.i = icmp eq i8 %1, 36
  br i1 %cmp.not.i, label %for.cond.preheader.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.cond.preheader.i:                             ; preds = %entry
  %arrayidx4.i = getelementptr i8, ptr %p, i32 2
  %2 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx4.i, align 1
  %switch.tableidx = add i8 %3, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %4 = icmp ult i8 %switch.tableidx, 3
  br i1 %4, label %switch.lookup, label %for.cond.preheader.i.if.end_crit_edge

for.cond.preheader.i.if.end_crit_edge:            ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

switch.lookup:                                    ; preds = %for.cond.preheader.i
  %5 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.snd_usb_validate_midi_desc, i32 0, i32 %5
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %func.i = getelementptr inbounds %struct.usb_desc_validator, ptr %switch.load, i32 0, i32 2
  %7 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %func.i, align 4
  %tobool17.not.i = icmp eq ptr %8, null
  br i1 %tobool17.not.i, label %validate_desc.exit, label %if.then18.i

if.then18.i:                                      ; preds = %switch.lookup
  %call.i = tail call zeroext i1 %8(ptr noundef %p, ptr noundef %switch.load) #5
  br i1 %call.i, label %if.then18.i.if.end_crit_edge, label %if.then18.i.land.lhs.true_crit_edge

if.then18.i.land.lhs.true_crit_edge:              ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

if.then18.i.if.end_crit_edge:                     ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

validate_desc.exit:                               ; preds = %switch.lookup
  %9 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %p, align 1
  %conv22.i = zext i8 %10 to i32
  %size.i = getelementptr inbounds %struct.usb_desc_validator, ptr %switch.load, i32 0, i32 3
  %11 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv22.i)
  %cmp23.i.not = icmp ugt i32 %12, %conv22.i
  br i1 %cmp23.i.not, label %validate_desc.exit.land.lhs.true_crit_edge, label %validate_desc.exit.if.end_crit_edge

validate_desc.exit.if.end_crit_edge:              ; preds = %validate_desc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

validate_desc.exit.land.lhs.true_crit_edge:       ; preds = %validate_desc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %validate_desc.exit.land.lhs.true_crit_edge, %if.then18.i.land.lhs.true_crit_edge
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @snd_usb_skip_validation to i32))
  %13 = load i8, ptr @snd_usb_skip_validation, align 1, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool1.not = icmp eq i8 %13, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %p, align 1
  %conv = zext i8 %15 to i32
  tail call void @print_hex_dump(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %p, i32 noundef %conv, i1 noundef zeroext true) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %validate_desc.exit.if.end_crit_edge, %if.then18.i.if.end_crit_edge, %for.cond.preheader.i.if.end_crit_edge, %entry.if.end_crit_edge
  %valid.0.shrunk = phi i1 [ true, %validate_desc.exit.if.end_crit_edge ], [ true, %if.then ], [ false, %land.lhs.true.if.end_crit_edge ], [ true, %if.then18.i.if.end_crit_edge ], [ true, %entry.if.end_crit_edge ], [ true, %for.cond.preheader.i.if.end_crit_edge ]
  ret i1 %valid.0.shrunk
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @validate_uac1_header(ptr nocapture noundef readonly %p, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %p, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %1)
  %cmp = icmp ugt i8 %1, 7
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i8 %1 to i32
  %bInCollection = getelementptr inbounds %struct.uac1_ac_header_descriptor, ptr %p, i32 0, i32 5
  %2 = ptrtoint ptr %bInCollection to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bInCollection, align 1
  %conv4 = zext i8 %3 to i32
  %add = add nuw nsw i32 %conv4, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp5 = icmp ule i32 %add, %conv
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i1 [ false, %entry.land.end_crit_edge ], [ %cmp5, %land.rhs ]
  ret i1 %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @validate_mixer_unit(ptr nocapture noundef readonly %p, ptr nocapture noundef readonly %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %p, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %1)
  %cmp = icmp ult i8 %1, 5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %bNrInPins = getelementptr inbounds %struct.uac_mixer_unit_descriptor, ptr %p, i32 0, i32 4
  %2 = ptrtoint ptr %bNrInPins to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bNrInPins, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %conv3 = zext i8 %3 to i32
  %4 = ptrtoint ptr %v to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %5)
  %switch.selectcmp = icmp eq i8 %5, 32
  %switch.select = select i1 %switch.selectcmp, i32 12, i32 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %5)
  %switch.selectcmp25 = icmp eq i8 %5, 48
  %switch.select26 = select i1 %switch.selectcmp25, i32 7, i32 %switch.select
  %add11 = add nuw nsw i32 %switch.select26, %conv3
  %conv13 = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add11, i32 %conv13)
  %cmp14 = icmp ule i32 %add11, %conv13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp14, %if.end ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @validate_selector_unit(ptr nocapture noundef readonly %p, ptr nocapture noundef readonly %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %p, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %1)
  %cmp = icmp ult i8 %1, 5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %bNrInPins = getelementptr inbounds %struct.uac_selector_unit_descriptor, ptr %p, i32 0, i32 4
  %2 = ptrtoint ptr %bNrInPins to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bNrInPins, align 1
  %conv2 = zext i8 %3 to i32
  %4 = ptrtoint ptr %v to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %5)
  %switch.selectcmp = icmp eq i8 %5, 32
  %switch.select = select i1 %switch.selectcmp, i32 7, i32 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %5)
  %switch.selectcmp19 = icmp eq i8 %5, 48
  %switch.select20 = select i1 %switch.selectcmp19, i32 11, i32 %switch.select
  %add8 = add nuw nsw i32 %switch.select20, %conv2
  %conv10 = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add8, i32 %conv10)
  %cmp11 = icmp ule i32 %add8, %conv10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp11, %if.end ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @validate_uac1_feature_unit(ptr nocapture noundef readonly %p, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %p, align 1
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %1)
  %cmp = icmp ult i8 %1, 6
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %bControlSize = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %p, i32 0, i32 5
  %2 = ptrtoint ptr %bControlSize to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bControlSize, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %conv5 = zext i8 %3 to i32
  %add6 = add nuw nsw i32 %conv5, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %add6, i32 %conv)
  %cmp7 = icmp ule i32 %add6, %conv
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp7, %if.end ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @validate_processing_unit(ptr nocapture noundef readonly %p, ptr nocapture noundef readonly %v) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %p, align 1
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %1)
  %cmp = icmp ult i8 %1, 7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %bNrInPins = getelementptr inbounds %struct.uac_processing_unit_descriptor, ptr %p, i32 0, i32 5
  %2 = ptrtoint ptr %bNrInPins to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bNrInPins, align 1
  %conv2 = zext i8 %3 to i32
  %add = add nuw nsw i32 %conv2, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp5 = icmp ugt i32 %add, %conv
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %4 = ptrtoint ptr %v to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %v, align 4
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %sw.default [
    i8 48, label %sw.bb32
    i8 32, label %sw.bb22
  ]

sw.default:                                       ; preds = %if.end8
  %add13 = add nuw nsw i32 %conv2, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %add13, i32 %conv)
  %cmp14 = icmp ugt i32 %add13, %conv
  br i1 %cmp14, label %sw.default.cleanup_crit_edge, label %if.end17

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  %add10 = add nuw nsw i32 %conv2, 11
  %arrayidx = getelementptr i8, ptr %p, i32 %add10
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %conv18 = zext i8 %8 to i32
  %add20 = add nuw nsw i32 %conv2, 13
  %add21 = add nuw nsw i32 %add20, %conv18
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %type = getelementptr inbounds %struct.usb_desc_validator, ptr %v, i32 0, i32 1
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %10)
  %cmp25 = icmp eq i8 %10, 8
  %len.0.v = select i1 %cmp25, i32 15, i32 14
  %len.0 = add nuw nsw i32 %conv2, 1
  %add31 = add nuw nsw i32 %len.0, %len.0.v
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %add33 = add nuw nsw i32 %conv2, 13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb32, %sw.bb22, %if.end17
  %len.1 = phi i32 [ %add21, %if.end17 ], [ %add31, %sw.bb22 ], [ %add33, %sw.bb32 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %len.1, i32 %conv)
  %cmp36 = icmp ugt i32 %len.1, %conv
  br i1 %cmp36, label %sw.epilog.cleanup_crit_edge, label %if.end39

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end39:                                         ; preds = %sw.epilog
  %11 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %5, label %sw.default43 [
    i8 48, label %sw.bb89
    i8 32, label %sw.bb65
  ]

sw.default43:                                     ; preds = %if.end39
  %type44 = getelementptr inbounds %struct.usb_desc_validator, ptr %v, i32 0, i32 1
  %12 = ptrtoint ptr %type44 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %type44, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %13)
  %cmp46 = icmp eq i8 %13, 8
  br i1 %cmp46, label %sw.default43.cleanup_crit_edge, label %if.end49

sw.default43.cleanup_crit_edge:                   ; preds = %sw.default43
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end49:                                         ; preds = %sw.default43
  %wProcessType = getelementptr inbounds %struct.uac_processing_unit_descriptor, ptr %p, i32 0, i32 4
  %14 = ptrtoint ptr %wProcessType to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %wProcessType, align 1
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %.off = add i16 %16, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off)
  %switch = icmp ult i16 %.off, 2
  br i1 %switch, label %sw.bb51, label %if.end49.sw.epilog116_crit_edge

if.end49.sw.epilog116_crit_edge:                  ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog116

sw.bb51:                                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_cmp4(i32 %len.1, i32 %conv)
  %cmp55.not = icmp ult i32 %len.1, %conv
  br i1 %cmp55.not, label %if.end58, label %sw.bb51.cleanup_crit_edge

sw.bb51.cleanup_crit_edge:                        ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end58:                                         ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx59 = getelementptr i8, ptr %p, i32 %len.1
  %17 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %18 to i32
  %mul = shl nuw nsw i32 %conv60, 1
  %add61 = add nuw nsw i32 %len.1, 1
  %add62 = add nuw nsw i32 %add61, %mul
  br label %sw.epilog116

sw.bb65:                                          ; preds = %if.end39
  %type66 = getelementptr inbounds %struct.usb_desc_validator, ptr %v, i32 0, i32 1
  %19 = ptrtoint ptr %type66 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %type66, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %20)
  %cmp68 = icmp eq i8 %20, 9
  br i1 %cmp68, label %sw.bb65.cleanup_crit_edge, label %if.end71

sw.bb65.cleanup_crit_edge:                        ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end71:                                         ; preds = %sw.bb65
  %wProcessType72 = getelementptr inbounds %struct.uac_processing_unit_descriptor, ptr %p, i32 0, i32 4
  %21 = ptrtoint ptr %wProcessType72 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %wProcessType72, align 1
  %23 = tail call i16 @llvm.bswap.i16(i16 %22)
  %.off171 = add i16 %23, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off171)
  %switch172 = icmp ult i16 %.off171, 2
  br i1 %switch172, label %sw.bb74, label %if.end71.sw.epilog116_crit_edge

if.end71.sw.epilog116_crit_edge:                  ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog116

sw.bb74:                                          ; preds = %if.end71
  call void @__sanitizer_cov_trace_cmp4(i32 %len.1, i32 %conv)
  %cmp78.not = icmp ult i32 %len.1, %conv
  br i1 %cmp78.not, label %if.end81, label %sw.bb74.cleanup_crit_edge

sw.bb74.cleanup_crit_edge:                        ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end81:                                         ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx82 = getelementptr i8, ptr %p, i32 %len.1
  %24 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx82, align 1
  %conv83 = zext i8 %25 to i32
  %mul84 = shl nuw nsw i32 %conv83, 2
  %add85 = add nuw nsw i32 %len.1, 1
  %add86 = add nuw nsw i32 %add85, %mul84
  br label %sw.epilog116

sw.bb89:                                          ; preds = %if.end39
  %type90 = getelementptr inbounds %struct.usb_desc_validator, ptr %v, i32 0, i32 1
  %26 = ptrtoint ptr %type90 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %type90, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %27)
  %cmp92 = icmp eq i8 %27, 10
  br i1 %cmp92, label %if.then94, label %if.end96

if.then94:                                        ; preds = %sw.bb89
  call void @__sanitizer_cov_trace_pc() #7
  %add95 = add nuw nsw i32 %len.1, 2
  br label %sw.epilog116

if.end96:                                         ; preds = %sw.bb89
  %wProcessType97 = getelementptr inbounds %struct.uac_processing_unit_descriptor, ptr %p, i32 0, i32 4
  %28 = ptrtoint ptr %wProcessType97 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %wProcessType97, align 1
  %30 = tail call i16 @llvm.bswap.i16(i16 %29)
  %31 = zext i16 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.4)
  switch i16 %30, label %if.end96.sw.epilog116_crit_edge [
    i16 1, label %sw.bb99
    i16 3, label %sw.bb112
  ]

if.end96.sw.epilog116_crit_edge:                  ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog116

sw.bb99:                                          ; preds = %if.end96
  call void @__sanitizer_cov_trace_cmp4(i32 %len.1, i32 %conv)
  %cmp103.not = icmp ult i32 %len.1, %conv
  br i1 %cmp103.not, label %if.end106, label %sw.bb99.cleanup_crit_edge

sw.bb99.cleanup_crit_edge:                        ; preds = %sw.bb99
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end106:                                        ; preds = %sw.bb99
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx107 = getelementptr i8, ptr %p, i32 %len.1
  %32 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx107, align 1
  %conv108 = zext i8 %33 to i32
  %mul109 = shl nuw nsw i32 %conv108, 1
  %add110 = add nuw nsw i32 %len.1, 1
  %add111 = add nuw nsw i32 %add110, %mul109
  br label %sw.epilog116

sw.bb112:                                         ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #7
  %add113 = add nuw nsw i32 %len.1, 6
  br label %sw.epilog116

sw.epilog116:                                     ; preds = %sw.bb112, %if.end106, %if.end96.sw.epilog116_crit_edge, %if.then94, %if.end81, %if.end71.sw.epilog116_crit_edge, %if.end58, %if.end49.sw.epilog116_crit_edge
  %len.2 = phi i32 [ %len.1, %if.end49.sw.epilog116_crit_edge ], [ %add62, %if.end58 ], [ %len.1, %if.end71.sw.epilog116_crit_edge ], [ %add86, %if.end81 ], [ %add95, %if.then94 ], [ %len.1, %if.end96.sw.epilog116_crit_edge ], [ %add113, %sw.bb112 ], [ %add111, %if.end106 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %len.2, i32 %conv)
  %cmp119 = icmp ule i32 %len.2, %conv
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog116, %sw.bb99.cleanup_crit_edge, %sw.bb74.cleanup_crit_edge, %sw.bb65.cleanup_crit_edge, %sw.bb51.cleanup_crit_edge, %sw.default43.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.default.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %sw.default.cleanup_crit_edge ], [ false, %sw.epilog.cleanup_crit_edge ], [ true, %sw.default43.cleanup_crit_edge ], [ false, %sw.bb51.cleanup_crit_edge ], [ true, %sw.bb65.cleanup_crit_edge ], [ false, %sw.bb74.cleanup_crit_edge ], [ false, %sw.bb99.cleanup_crit_edge ], [ %cmp119, %sw.epilog116 ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @validate_uac2_feature_unit(ptr nocapture noundef readonly %p, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %p, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %1)
  %cmp4 = icmp ugt i8 %1, 9
  ret i1 %cmp4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @validate_uac3_feature_unit(ptr nocapture noundef readonly %p, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %p, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %1)
  %cmp4 = icmp ugt i8 %1, 10
  ret i1 %cmp4
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @validate_midi_out_jack(ptr nocapture noundef readonly %p, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %p, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %1)
  %cmp = icmp ugt i8 %1, 5
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i8 %1 to i32
  %bNrInputPins = getelementptr inbounds %struct.usb_midi_out_jack_descriptor, ptr %p, i32 0, i32 5
  %2 = ptrtoint ptr %bNrInputPins to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bNrInputPins, align 1
  %conv4 = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv4, 1
  %add = add nuw nsw i32 %mul, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp5 = icmp ule i32 %add, %conv
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i1 [ false, %entry.land.end_crit_edge ], [ %cmp5, %land.rhs ]
  ret i1 %4
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/usb/validate.c", i32 330, i32 18}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/usb/validate.c", i32 330, i32 28}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/usb/validate.c", i32 344, i32 28}
!6 = !{ptr @audio_validators, !7, !"audio_validators", i1 false, i1 false}
!7 = !{!"../sound/usb/validate.c", i32 236, i32 40}
!8 = !{ptr @midi_validators, !9, !"midi_validators", i1 false, i1 false}
!9 = !{!"../sound/usb/validate.c", i32 291, i32 40}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i8 0, i8 2}
