; ModuleID = '/llk/IR_all_yes/sound/core/seq/oss/seq_oss_event.c_pt.bc'
source_filename = "../sound/core/seq/oss/seq_oss_event.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.evrec_extended = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.snd_seq_event = type { i8, i8, i8, i8, %union.snd_seq_timestamp, %struct.snd_seq_addr, %struct.snd_seq_addr, %union.anon.2 }
%union.snd_seq_timestamp = type { %struct.snd_seq_real_time }
%struct.snd_seq_real_time = type { i32, i32 }
%struct.snd_seq_addr = type { i8, i8 }
%union.anon.2 = type { %struct.snd_seq_ev_ctrl }
%struct.snd_seq_ev_ctrl = type { i8, i8, i8, i8, i32, i32 }
%struct.evrec_voice = type { i8, i8, i8, i8, i8, i8, i16 }
%struct.evrec_long = type { i8, i8, i8, i8, i8, i8, i16 }
%struct.evrec_timer = type { i8, i8, i8, i8, i32 }
%struct.seq_oss_devinfo = type { i32, i32, i32, i32, %struct.snd_seq_addr, i32, i32, i32, i32, [16 x %struct.seq_oss_synthinfo], i32, ptr, ptr, ptr }
%struct.seq_oss_synthinfo = type { %struct.snd_seq_oss_arg, ptr, ptr, i32, i32, i32, i32 }
%struct.snd_seq_oss_arg = type { i32, i32, i32, %struct.snd_seq_addr, ptr, i32 }
%struct.evrec_sysex = type { i8, i8, [6 x i8] }
%struct.evrec_short = type { i8, i8, i8, i8 }
%struct.evrec_note = type { i8, i8, i8, i8 }
%struct.seq_oss_chinfo = type { i32, i32 }

@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 8, i64 5, i64 8, i64 128, i64 129, i64 146, i64 147, i64 148, i64 254, i64 255]
@__sancov_gen_cov_switch_values.1 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 3, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 8, i64 254, i64 255]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 8, i64 128, i64 144, i64 160]
@__sancov_gen_cov_switch_values.4 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.5 = internal global [6 x i64] [i64 4, i64 8, i64 3, i64 5, i64 6, i64 8]
@__sancov_gen_cov_switch_values.6 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_oss_process_event(ptr noundef %dp, ptr noundef %q, ptr noundef %ev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %q to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %q, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %sw.default [
    i8 -1, label %sw.bb
    i8 -109, label %sw.bb1
    i8 -110, label %sw.bb3
    i8 -127, label %sw.bb5
    i8 -128, label %entry.return_crit_edge
    i8 -108, label %sw.bb9
    i8 5, label %sw.bb12
    i8 8, label %sw.bb32
    i8 -2, label %sw.bb39
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb:                                            ; preds = %entry
  %cmd.i = getelementptr inbounds %struct.evrec_extended, ptr %q, i32 0, i32 1
  %3 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %cmd.i, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %4, label %sw.bb.return_crit_edge [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb5.i
    i8 3, label %sw.bb15.i
    i8 9, label %sw.bb23.i
    i8 11, label %sw.bb31.i
    i8 10, label %sw.bb39.i
    i8 12, label %sw.bb67.i
  ]

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb.i:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %dev.i = getelementptr inbounds %struct.evrec_extended, ptr %q, i32 0, i32 2
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dev.i, align 2
  %conv1.i = zext i8 %7 to i32
  %chn.i = getelementptr inbounds %struct.evrec_extended, ptr %q, i32 0, i32 3
  %8 = ptrtoint ptr %chn.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %chn.i, align 1
  %conv2.i = zext i8 %9 to i32
  %p1.i = getelementptr inbounds %struct.evrec_extended, ptr %q, i32 0, i32 4
  %10 = ptrtoint ptr %p1.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %p1.i, align 4
  %conv3.i = zext i8 %11 to i32
  %p2.i = getelementptr inbounds %struct.evrec_extended, ptr %q, i32 0, i32 5
  %12 = ptrtoint ptr %p2.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %p2.i, align 1
  %conv4.i = zext i8 %13 to i32
  %call.i = tail call fastcc i32 @note_off_event(ptr noundef %dp, i32 noundef %conv1.i, i32 noundef %conv2.i, i32 noundef %conv3.i, i32 noundef %conv4.i, ptr noundef %ev) #3
  br label %return

sw.bb5.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %dev6.i = getelementptr inbounds %struct.evrec_extended, ptr %q, i32 0, i32 2
  %14 = ptrtoint ptr %dev6.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dev6.i, align 2
  %conv7.i = zext i8 %15 to i32
  %chn8.i = getelementptr inbounds %struct.evrec_extended, ptr %q, i32 0, i32 3
  %16 = ptrtoint ptr %chn8.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %chn8.i, align 1
  %conv9.i = zext i8 %17 to i32
  %p110.i = getelementptr inbounds %struct.evrec_extended, ptr %q, i32 0, i32 4
  %18 = ptrtoint ptr %p110.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %p110.i, align 4
  %conv11.i = zext i8 %19 to i32
  %p212.i = getelementptr inbounds %struct.evrec_extended, ptr %q, i32 0, i32 5
  %20 = ptrtoint ptr %p212.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %p212.i, align 1
  %conv13.i = zext i8 %21 to i32
  %call14.i = tail call fastcc i32 @note_on_event(ptr noundef %dp, i32 noundef %conv7.i, i32 noundef %conv9.i, i32 noundef %conv11.i, i32 noundef %conv13.i, ptr noundef %ev) #3
  br label %return

sw.bb15.i:                                        ; preds = %sw.bb
  %dev16.i = getelementptr inbounds %struct.evrec_extended, ptr %q, i32 0, i32 2
  %22 = ptrtoint ptr %dev16.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %dev16.i, align 2
  %conv17.i = zext i8 %23 to i32
  %chn18.i = getelementptr inbounds %struct.evrec_extended, ptr %q, i32 0, i32 3
  %24 = ptrtoint ptr %chn18.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %chn18.i, align 1
  %p120.i = getelementptr inbounds %struct.evrec_extended, ptr %q, i32 0, i32 4
  %26 = ptrtoint ptr %p120.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %p120.i, align 4
  %call.i.i = tail call ptr @snd_seq_oss_synth_info(ptr noundef %dp, i32 noundef %conv17.i) #3
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %sw.bb15.i.return_crit_edge, label %if.end.i.i

sw.bb15.i.return_crit_edge:                       ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end.i.i:                                       ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #5
  %conv21.i = zext i8 %27 to i32
  %28 = ptrtoint ptr %ev to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 11, ptr %ev, align 4
  %call2.i.i = tail call i32 @snd_seq_oss_synth_addr(ptr noundef %dp, i32 noundef %conv17.i, ptr noundef %ev) #3
  %data.i.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7
  %29 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %25, ptr %data.i.i, align 4
  %param5.i.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 4
  %30 = ptrtoint ptr %param5.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %param5.i.i, align 4
  %value.i.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 5
  %31 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv21.i, ptr %value.i.i, align 4
  br label %return

sw.bb23.i:                                        ; preds = %sw.bb
  %dev24.i = getelementptr inbounds %struct.evrec_extended, ptr %q, i32 0, i32 2
  %32 = ptrtoint ptr %dev24.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %dev24.i, align 2
  %conv25.i = zext i8 %33 to i32
  %chn26.i = getelementptr inbounds %struct.evrec_extended, ptr %q, i32 0, i32 3
  %34 = ptrtoint ptr %chn26.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %chn26.i, align 1
  %p128.i = getelementptr inbounds %struct.evrec_extended, ptr %q, i32 0, i32 4
  %36 = ptrtoint ptr %p128.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %p128.i, align 4
  %call.i121.i = tail call ptr @snd_seq_oss_synth_info(ptr noundef %dp, i32 noundef %conv25.i) #3
  %tobool.not.i122.i = icmp eq ptr %call.i121.i, null
  br i1 %tobool.not.i122.i, label %sw.bb23.i.return_crit_edge, label %if.end.i127.i

sw.bb23.i.return_crit_edge:                       ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end.i127.i:                                    ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #5
  %conv29.i = zext i8 %37 to i32
  %38 = ptrtoint ptr %ev to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 12, ptr %ev, align 4
  %call2.i123.i = tail call i32 @snd_seq_oss_synth_addr(ptr noundef %dp, i32 noundef %conv25.i, ptr noundef %ev) #3
  %data.i124.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7
  %39 = ptrtoint ptr %data.i124.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %35, ptr %data.i124.i, align 4
  %param5.i125.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 4
  %40 = ptrtoint ptr %param5.i125.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %param5.i125.i, align 4
  %value.i126.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 5
  %41 = ptrtoint ptr %value.i126.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv29.i, ptr %value.i126.i, align 4
  br label %return

sw.bb31.i:                                        ; preds = %sw.bb
  %p132.i = getelementptr inbounds %struct.evrec_extended, ptr %q, i32 0, i32 4
  %42 = ptrtoint ptr %p132.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %p132.i, align 4
  %dev34.i = getelementptr inbounds %struct.evrec_extended, ptr %q, i32 0, i32 2
  %44 = ptrtoint ptr %dev34.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %dev34.i, align 2
  %conv35.i = zext i8 %45 to i32
  %chn36.i = getelementptr inbounds %struct.evrec_extended, ptr %q, i32 0, i32 3
  %46 = ptrtoint ptr %chn36.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %chn36.i, align 1
  %call.i130.i = tail call ptr @snd_seq_oss_synth_info(ptr noundef %dp, i32 noundef %conv35.i) #3
  %tobool.not.i131.i = icmp eq ptr %call.i130.i, null
  br i1 %tobool.not.i131.i, label %sw.bb31.i.return_crit_edge, label %if.end.i136.i

sw.bb31.i.return_crit_edge:                       ; preds = %sw.bb31.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end.i136.i:                                    ; preds = %sw.bb31.i
  call void @__sanitizer_cov_trace_pc() #5
  %conv33.i = zext i8 %43 to i32
  %add.i = add nuw nsw i32 %conv33.i, 128
  %div120.i = lshr i32 %add.i, 1
  %48 = ptrtoint ptr %ev to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 10, ptr %ev, align 4
  %call2.i132.i = tail call i32 @snd_seq_oss_synth_addr(ptr noundef %dp, i32 noundef %conv35.i, ptr noundef %ev) #3
  %data.i133.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7
  %49 = ptrtoint ptr %data.i133.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %47, ptr %data.i133.i, align 4
  %param5.i134.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 4
  %50 = ptrtoint ptr %param5.i134.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 10, ptr %param5.i134.i, align 4
  %value.i135.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 5
  %51 = ptrtoint ptr %value.i135.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %div120.i, ptr %value.i135.i, align 4
  br label %return

sw.bb39.i:                                        ; preds = %sw.bb
  %p3.i = getelementptr inbounds %struct.evrec_extended, ptr %q, i32 0, i32 6
  %52 = ptrtoint ptr %p3.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %p3.i, align 2
  %54 = zext i8 %53 to i32
  %shl.i = shl nuw nsw i32 %54, 8
  %p242.i = getelementptr inbounds %struct.evrec_extended, ptr %q, i32 0, i32 5
  %55 = ptrtoint ptr %p242.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %p242.i, align 1
  %57 = zext i8 %56 to i32
  %or.i = or i32 %shl.i, %57
  %p145.i = getelementptr inbounds %struct.evrec_extended, ptr %q, i32 0, i32 4
  %58 = ptrtoint ptr %p145.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %p145.i, align 4
  %60 = zext i8 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %59, label %sw.default.i [
    i8 -1, label %sw.bb47.i
    i8 -2, label %sw.bb53.i
  ]

sw.bb47.i:                                        ; preds = %sw.bb39.i
  %dev48.i = getelementptr inbounds %struct.evrec_extended, ptr %q, i32 0, i32 2
  %61 = ptrtoint ptr %dev48.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %dev48.i, align 2
  %conv49.i = zext i8 %62 to i32
  %chn50.i = getelementptr inbounds %struct.evrec_extended, ptr %q, i32 0, i32 3
  %63 = ptrtoint ptr %chn50.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %chn50.i, align 1
  %call.i139.i = tail call ptr @snd_seq_oss_synth_info(ptr noundef %dp, i32 noundef %conv49.i) #3
  %tobool.not.i140.i = icmp eq ptr %call.i139.i, null
  br i1 %tobool.not.i140.i, label %sw.bb47.i.return_crit_edge, label %if.end.i145.i

sw.bb47.i.return_crit_edge:                       ; preds = %sw.bb47.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end.i145.i:                                    ; preds = %sw.bb47.i
  call void @__sanitizer_cov_trace_pc() #5
  %65 = ptrtoint ptr %ev to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 13, ptr %ev, align 4
  %call2.i141.i = tail call i32 @snd_seq_oss_synth_addr(ptr noundef %dp, i32 noundef %conv49.i, ptr noundef %ev) #3
  %data.i142.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7
  %66 = ptrtoint ptr %data.i142.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %64, ptr %data.i142.i, align 4
  %param5.i143.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 4
  %67 = ptrtoint ptr %param5.i143.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %param5.i143.i, align 4
  %value.i144.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 5
  %68 = ptrtoint ptr %value.i144.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %or.i, ptr %value.i144.i, align 4
  br label %return

sw.bb53.i:                                        ; preds = %sw.bb39.i
  %dev54.i = getelementptr inbounds %struct.evrec_extended, ptr %q, i32 0, i32 2
  %69 = ptrtoint ptr %dev54.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %dev54.i, align 2
  %conv55.i = zext i8 %70 to i32
  %chn56.i = getelementptr inbounds %struct.evrec_extended, ptr %q, i32 0, i32 3
  %71 = ptrtoint ptr %chn56.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %chn56.i, align 1
  %call.i148.i = tail call ptr @snd_seq_oss_synth_info(ptr noundef %dp, i32 noundef %conv55.i) #3
  %tobool.not.i149.i = icmp eq ptr %call.i148.i, null
  br i1 %tobool.not.i149.i, label %sw.bb53.i.return_crit_edge, label %if.end.i154.i

sw.bb53.i.return_crit_edge:                       ; preds = %sw.bb53.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end.i154.i:                                    ; preds = %sw.bb53.i
  call void @__sanitizer_cov_trace_pc() #5
  %mul.i = shl nuw nsw i32 %or.i, 7
  %div58.i = udiv i32 %mul.i, 100
  %73 = ptrtoint ptr %ev to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 16, ptr %ev, align 4
  %call2.i150.i = tail call i32 @snd_seq_oss_synth_addr(ptr noundef %dp, i32 noundef %conv55.i, ptr noundef %ev) #3
  %data.i151.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7
  %74 = ptrtoint ptr %data.i151.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %72, ptr %data.i151.i, align 4
  %param5.i152.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 4
  %75 = ptrtoint ptr %param5.i152.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %param5.i152.i, align 4
  %value.i153.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 5
  %76 = ptrtoint ptr %value.i153.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %div58.i, ptr %value.i153.i, align 4
  br label %return

sw.default.i:                                     ; preds = %sw.bb39.i
  %dev60.i = getelementptr inbounds %struct.evrec_extended, ptr %q, i32 0, i32 2
  %77 = ptrtoint ptr %dev60.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %dev60.i, align 2
  %conv61.i = zext i8 %78 to i32
  %chn62.i = getelementptr inbounds %struct.evrec_extended, ptr %q, i32 0, i32 3
  %79 = ptrtoint ptr %chn62.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %chn62.i, align 1
  %call.i157.i = tail call ptr @snd_seq_oss_synth_info(ptr noundef %dp, i32 noundef %conv61.i) #3
  %tobool.not.i158.i = icmp eq ptr %call.i157.i, null
  br i1 %tobool.not.i158.i, label %sw.default.i.return_crit_edge, label %if.end.i163.i

sw.default.i.return_crit_edge:                    ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end.i163.i:                                    ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #5
  %conv46.i = zext i8 %59 to i32
  %81 = ptrtoint ptr %ev to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 14, ptr %ev, align 4
  %call2.i159.i = tail call i32 @snd_seq_oss_synth_addr(ptr noundef %dp, i32 noundef %conv61.i, ptr noundef %ev) #3
  %data.i160.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7
  %82 = ptrtoint ptr %data.i160.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %80, ptr %data.i160.i, align 4
  %param5.i161.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 4
  %83 = ptrtoint ptr %param5.i161.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %conv46.i, ptr %param5.i161.i, align 4
  %value.i162.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 5
  %84 = ptrtoint ptr %value.i162.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %or.i, ptr %value.i162.i, align 4
  br label %return

sw.bb67.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %dev68.i = getelementptr inbounds %struct.evrec_extended, ptr %q, i32 0, i32 2
  %85 = ptrtoint ptr %dev68.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %dev68.i, align 2
  %conv69.i = zext i8 %86 to i32
  %call70.i = tail call i32 @snd_seq_oss_synth_raw_event(ptr noundef %dp, i32 noundef %conv69.i, ptr noundef %q, ptr noundef %ev) #3
  br label %return

sw.bb1:                                           ; preds = %entry
  %chn.i94 = getelementptr inbounds %struct.evrec_voice, ptr %q, i32 0, i32 3
  %87 = ptrtoint ptr %chn.i94 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %chn.i94, align 1
  %conv.i = zext i8 %88 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %88)
  %cmp.i = icmp ugt i8 %88, 31
  br i1 %cmp.i, label %sw.bb1.return_crit_edge, label %if.end.i

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end.i:                                         ; preds = %sw.bb1
  %cmd.i95 = getelementptr inbounds %struct.evrec_voice, ptr %q, i32 0, i32 2
  %89 = ptrtoint ptr %cmd.i95 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %cmd.i95, align 2
  %91 = zext i8 %90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %90, label %if.end.i.return_crit_edge [
    i8 -112, label %sw.bb.i100
    i8 -128, label %sw.bb8.i
    i8 -96, label %sw.bb18.i
  ]

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb.i100:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %dev.i96 = getelementptr inbounds %struct.evrec_voice, ptr %q, i32 0, i32 1
  %92 = ptrtoint ptr %dev.i96 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %dev.i96, align 1
  %conv3.i97 = zext i8 %93 to i32
  %note.i = getelementptr inbounds %struct.evrec_voice, ptr %q, i32 0, i32 4
  %94 = ptrtoint ptr %note.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %note.i, align 4
  %conv6.i = zext i8 %95 to i32
  %parm.i = getelementptr inbounds %struct.evrec_voice, ptr %q, i32 0, i32 5
  %96 = ptrtoint ptr %parm.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %parm.i, align 1
  %conv7.i98 = zext i8 %97 to i32
  %call.i99 = tail call fastcc i32 @note_on_event(ptr noundef %dp, i32 noundef %conv3.i97, i32 noundef %conv.i, i32 noundef %conv6.i, i32 noundef %conv7.i98, ptr noundef %ev) #3
  br label %return

sw.bb8.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %dev9.i = getelementptr inbounds %struct.evrec_voice, ptr %q, i32 0, i32 1
  %98 = ptrtoint ptr %dev9.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %dev9.i, align 1
  %conv10.i = zext i8 %99 to i32
  %note13.i = getelementptr inbounds %struct.evrec_voice, ptr %q, i32 0, i32 4
  %100 = ptrtoint ptr %note13.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %note13.i, align 4
  %conv14.i = zext i8 %101 to i32
  %parm15.i = getelementptr inbounds %struct.evrec_voice, ptr %q, i32 0, i32 5
  %102 = ptrtoint ptr %parm15.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %parm15.i, align 1
  %conv16.i = zext i8 %103 to i32
  %call17.i = tail call fastcc i32 @note_off_event(ptr noundef %dp, i32 noundef %conv10.i, i32 noundef %conv.i, i32 noundef %conv14.i, i32 noundef %conv16.i, ptr noundef %ev) #3
  br label %return

sw.bb18.i:                                        ; preds = %if.end.i
  %dev19.i = getelementptr inbounds %struct.evrec_voice, ptr %q, i32 0, i32 1
  %104 = ptrtoint ptr %dev19.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %dev19.i, align 1
  %conv20.i = zext i8 %105 to i32
  %note23.i = getelementptr inbounds %struct.evrec_voice, ptr %q, i32 0, i32 4
  %106 = ptrtoint ptr %note23.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %note23.i, align 4
  %parm25.i = getelementptr inbounds %struct.evrec_voice, ptr %q, i32 0, i32 5
  %108 = ptrtoint ptr %parm25.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %parm25.i, align 1
  %call.i.i101 = tail call ptr @snd_seq_oss_synth_info(ptr noundef %dp, i32 noundef %conv20.i) #3
  %tobool.not.i.i102 = icmp eq ptr %call.i.i101, null
  br i1 %tobool.not.i.i102, label %sw.bb18.i.return_crit_edge, label %if.end.i.i105

sw.bb18.i.return_crit_edge:                       ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end.i.i105:                                    ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #5
  %110 = ptrtoint ptr %ev to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 8, ptr %ev, align 4
  %call2.i.i103 = tail call i32 @snd_seq_oss_synth_addr(ptr noundef %dp, i32 noundef %conv20.i, ptr noundef %ev) #3
  %data.i.i104 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7
  %111 = ptrtoint ptr %data.i.i104 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %88, ptr %data.i.i104, align 4
  %note6.i.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 1
  %112 = ptrtoint ptr %note6.i.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %107, ptr %note6.i.i, align 1
  %velocity.i.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 2
  %113 = ptrtoint ptr %velocity.i.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %109, ptr %velocity.i.i, align 2
  br label %return

sw.bb3:                                           ; preds = %entry
  %chn.i107 = getelementptr inbounds %struct.evrec_long, ptr %q, i32 0, i32 3
  %114 = ptrtoint ptr %chn.i107 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %chn.i107, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %115)
  %cmp.i108 = icmp ugt i8 %115, 31
  br i1 %cmp.i108, label %sw.bb3.return_crit_edge, label %if.end.i111

sw.bb3.return_crit_edge:                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end.i111:                                      ; preds = %sw.bb3
  %cmd.i109 = getelementptr inbounds %struct.evrec_long, ptr %q, i32 0, i32 2
  %116 = ptrtoint ptr %cmd.i109 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %cmd.i109, align 2
  %conv2.i110 = zext i8 %117 to i32
  %118 = add nsw i32 %conv2.i110, -176
  %119 = tail call i32 @llvm.fshl.i32(i32 %118, i32 %118, i32 28) #3
  %120 = zext i32 %119 to i64
  call void @__sanitizer_cov_trace_switch(i64 %120, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %119, label %if.end.i111.return_crit_edge [
    i32 1, label %sw.bb.i117
    i32 0, label %sw.bb7.i
    i32 3, label %sw.bb16.i
    i32 2, label %sw.bb24.i
  ]

if.end.i111.return_crit_edge:                     ; preds = %if.end.i111
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb.i117:                                       ; preds = %if.end.i111
  %dev.i112 = getelementptr inbounds %struct.evrec_long, ptr %q, i32 0, i32 1
  %121 = ptrtoint ptr %dev.i112 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %dev.i112, align 1
  %conv3.i113 = zext i8 %122 to i32
  %p1.i114 = getelementptr inbounds %struct.evrec_long, ptr %q, i32 0, i32 4
  %123 = ptrtoint ptr %p1.i114 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %p1.i114, align 4
  %call.i.i115 = tail call ptr @snd_seq_oss_synth_info(ptr noundef %dp, i32 noundef %conv3.i113) #3
  %tobool.not.i.i116 = icmp eq ptr %call.i.i115, null
  br i1 %tobool.not.i.i116, label %sw.bb.i117.return_crit_edge, label %if.end.i.i119

sw.bb.i117.return_crit_edge:                      ; preds = %sw.bb.i117
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end.i.i119:                                    ; preds = %sw.bb.i117
  call void @__sanitizer_cov_trace_pc() #5
  %conv6.i118 = zext i8 %124 to i32
  br label %return.sink.split.i

sw.bb7.i:                                         ; preds = %if.end.i111
  %dev8.i = getelementptr inbounds %struct.evrec_long, ptr %q, i32 0, i32 1
  %125 = ptrtoint ptr %dev8.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %dev8.i, align 1
  %conv9.i120 = zext i8 %126 to i32
  %p112.i = getelementptr inbounds %struct.evrec_long, ptr %q, i32 0, i32 4
  %127 = ptrtoint ptr %p112.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %p112.i, align 4
  %val.i = getelementptr inbounds %struct.evrec_long, ptr %q, i32 0, i32 6
  %129 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %val.i, align 2
  %call.i52.i = tail call ptr @snd_seq_oss_synth_info(ptr noundef %dp, i32 noundef %conv9.i120) #3
  %tobool.not.i53.i = icmp eq ptr %call.i52.i, null
  br i1 %tobool.not.i53.i, label %sw.bb7.i.return_crit_edge, label %if.end.i58.i

sw.bb7.i.return_crit_edge:                        ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end.i58.i:                                     ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #5
  %conv14.i121 = zext i16 %130 to i32
  %conv13.i122 = zext i8 %128 to i32
  br label %return.sink.split.i

sw.bb16.i:                                        ; preds = %if.end.i111
  %dev17.i = getelementptr inbounds %struct.evrec_long, ptr %q, i32 0, i32 1
  %131 = ptrtoint ptr %dev17.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %dev17.i, align 1
  %conv18.i = zext i8 %132 to i32
  %val21.i = getelementptr inbounds %struct.evrec_long, ptr %q, i32 0, i32 6
  %133 = ptrtoint ptr %val21.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %val21.i, align 2
  %call.i61.i = tail call ptr @snd_seq_oss_synth_info(ptr noundef %dp, i32 noundef %conv18.i) #3
  %tobool.not.i62.i = icmp eq ptr %call.i61.i, null
  br i1 %tobool.not.i62.i, label %sw.bb16.i.return_crit_edge, label %if.end.i67.i

sw.bb16.i.return_crit_edge:                       ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end.i67.i:                                     ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #5
  %conv22.i = zext i16 %134 to i32
  %sub.i = add nsw i32 %conv22.i, -8192
  br label %return.sink.split.i

sw.bb24.i:                                        ; preds = %if.end.i111
  %dev25.i = getelementptr inbounds %struct.evrec_long, ptr %q, i32 0, i32 1
  %135 = ptrtoint ptr %dev25.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %dev25.i, align 1
  %conv26.i = zext i8 %136 to i32
  %val29.i = getelementptr inbounds %struct.evrec_long, ptr %q, i32 0, i32 6
  %137 = ptrtoint ptr %val29.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %val29.i, align 2
  %call.i70.i = tail call ptr @snd_seq_oss_synth_info(ptr noundef %dp, i32 noundef %conv26.i) #3
  %tobool.not.i71.i = icmp eq ptr %call.i70.i, null
  br i1 %tobool.not.i71.i, label %sw.bb24.i.return_crit_edge, label %if.end.i76.i

sw.bb24.i.return_crit_edge:                       ; preds = %sw.bb24.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end.i76.i:                                     ; preds = %sw.bb24.i
  call void @__sanitizer_cov_trace_pc() #5
  %conv30.i = zext i16 %138 to i32
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %if.end.i76.i, %if.end.i67.i, %if.end.i58.i, %if.end.i.i119
  %.sink79.i = phi i8 [ 12, %if.end.i76.i ], [ 13, %if.end.i67.i ], [ 10, %if.end.i58.i ], [ 11, %if.end.i.i119 ]
  %conv26.sink.i = phi i32 [ %conv26.i, %if.end.i76.i ], [ %conv18.i, %if.end.i67.i ], [ %conv9.i120, %if.end.i58.i ], [ %conv3.i113, %if.end.i.i119 ]
  %.sink.i = phi i32 [ 0, %if.end.i76.i ], [ 0, %if.end.i67.i ], [ %conv13.i122, %if.end.i58.i ], [ 0, %if.end.i.i119 ]
  %conv30.sink.i = phi i32 [ %conv30.i, %if.end.i76.i ], [ %sub.i, %if.end.i67.i ], [ %conv14.i121, %if.end.i58.i ], [ %conv6.i118, %if.end.i.i119 ]
  %139 = ptrtoint ptr %ev to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %.sink79.i, ptr %ev, align 4
  %call2.i72.i = tail call i32 @snd_seq_oss_synth_addr(ptr noundef %dp, i32 noundef %conv26.sink.i, ptr noundef %ev) #3
  %data.i73.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7
  %140 = ptrtoint ptr %data.i73.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %115, ptr %data.i73.i, align 4
  %param5.i74.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 4
  %141 = ptrtoint ptr %param5.i74.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %.sink.i, ptr %param5.i74.i, align 4
  %value.i75.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 5
  %142 = ptrtoint ptr %value.i75.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %conv30.sink.i, ptr %value.i75.i, align 4
  br label %return

sw.bb5:                                           ; preds = %entry
  %cmd.i124 = getelementptr inbounds %struct.evrec_timer, ptr %q, i32 0, i32 1
  %143 = ptrtoint ptr %cmd.i124 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %cmd.i124, align 1
  %145 = zext i8 %144 to i64
  call void @__sanitizer_cov_trace_switch(i64 %145, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %144, label %sw.bb5.return_crit_edge [
    i8 8, label %sw.bb.i126
    i8 3, label %sw.bb3.i
    i8 5, label %sw.bb7.i129
    i8 6, label %sw.bb14.i
  ]

sw.bb5.return_crit_edge:                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb.i126:                                       ; preds = %sw.bb5
  %seq_mode.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 5
  %146 = ptrtoint ptr %seq_mode.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %seq_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %147)
  %cmp.i125 = icmp eq i32 %147, 1
  br i1 %cmp.i125, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb.i126
  call void @__sanitizer_cov_trace_pc() #5
  %148 = ptrtoint ptr %ev to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 50, ptr %ev, align 4
  %addr.i.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 4
  %149 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %addr.i.i, align 4
  %port.i.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 4, i32 1
  %151 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %port.i.i, align 1
  %queue.i.i.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 3
  %153 = ptrtoint ptr %queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %queue.i.i.i, align 4
  %conv.i.i.i = trunc i32 %154 to i8
  %queue1.i.i.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 3
  %155 = ptrtoint ptr %queue1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %conv.i.i.i, ptr %queue1.i.i.i, align 1
  %source.i.i.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 5
  %156 = load i16, ptr %addr.i.i, align 4
  %157 = ptrtoint ptr %source.i.i.i to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 %156, ptr %source.i.i.i, align 4
  %dest.i.i.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 6
  %158 = ptrtoint ptr %dest.i.i.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %150, ptr %dest.i.i.i, align 2
  %port.i.i.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 6, i32 1
  %159 = ptrtoint ptr %port.i.i.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %152, ptr %port.i.i.i, align 1
  %data.i.i127 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7
  %160 = ptrtoint ptr %q to i32
  call void @__asan_loadN_noabort(i32 %160, i32 8)
  %161 = load i64, ptr %q, align 4
  %162 = ptrtoint ptr %data.i.i127 to i32
  call void @__asan_storeN_noabort(i32 %162, i32 8)
  store i64 %161, ptr %data.i.i127, align 4
  br label %return

if.else.i:                                        ; preds = %sw.bb.i126
  call void @__sanitizer_cov_trace_pc() #5
  %time.i = getelementptr inbounds %struct.evrec_timer, ptr %q, i32 0, i32 4
  %163 = ptrtoint ptr %time.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %time.i, align 4
  %shl.i128 = shl i32 %164, 8
  %165 = ptrtoint ptr %ev to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 50, ptr %ev, align 4
  %addr.i34.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 4
  %166 = ptrtoint ptr %addr.i34.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %addr.i34.i, align 4
  %port.i35.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 4, i32 1
  %168 = ptrtoint ptr %port.i35.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %port.i35.i, align 1
  %queue.i.i36.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 3
  %170 = ptrtoint ptr %queue.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %queue.i.i36.i, align 4
  %conv.i.i37.i = trunc i32 %171 to i8
  %queue1.i.i38.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 3
  %172 = ptrtoint ptr %queue1.i.i38.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %conv.i.i37.i, ptr %queue1.i.i38.i, align 1
  %source.i.i39.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 5
  %173 = load i16, ptr %addr.i34.i, align 4
  %174 = ptrtoint ptr %source.i.i39.i to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 %173, ptr %source.i.i39.i, align 4
  %dest.i.i40.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 6
  %175 = ptrtoint ptr %dest.i.i40.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %167, ptr %dest.i.i40.i, align 2
  %port.i.i41.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 6, i32 1
  %176 = ptrtoint ptr %port.i.i41.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %169, ptr %port.i.i41.i, align 1
  %data.i42.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7
  %tmp.sroa.0.sroa.0.0.insert.insert.i = or i32 %shl.i128, 8
  %tmp.sroa.0.0.insert.ext.i = zext i32 %tmp.sroa.0.sroa.0.0.insert.insert.i to i64
  %tmp.sroa.0.0.insert.shift.i = shl nuw i64 %tmp.sroa.0.0.insert.ext.i, 32
  %177 = ptrtoint ptr %data.i42.i to i32
  call void @__asan_storeN_noabort(i32 %177, i32 8)
  store i64 %tmp.sroa.0.0.insert.shift.i, ptr %data.i42.i, align 4
  br label %return

sw.bb3.i:                                         ; preds = %sw.bb5
  %seq_mode4.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 5
  %178 = ptrtoint ptr %seq_mode4.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %seq_mode4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %tobool.not.i = icmp eq i32 %179, 0
  br i1 %tobool.not.i, label %sw.bb3.i.return_crit_edge, label %if.then5.i

sw.bb3.i.return_crit_edge:                        ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then5.i:                                       ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #5
  %timer.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 13
  %180 = ptrtoint ptr %timer.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %timer.i, align 4
  %call6.i = tail call i32 @snd_seq_oss_timer_stop(ptr noundef %181) #3
  br label %return

sw.bb7.i129:                                      ; preds = %sw.bb5
  %seq_mode8.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 5
  %182 = ptrtoint ptr %seq_mode8.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %seq_mode8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %tobool9.not.i = icmp eq i32 %183, 0
  br i1 %tobool9.not.i, label %sw.bb7.i129.return_crit_edge, label %if.then10.i

sw.bb7.i129.return_crit_edge:                     ; preds = %sw.bb7.i129
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then10.i:                                      ; preds = %sw.bb7.i129
  call void @__sanitizer_cov_trace_pc() #5
  %timer11.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 13
  %184 = ptrtoint ptr %timer11.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %timer11.i, align 4
  %call12.i = tail call i32 @snd_seq_oss_timer_continue(ptr noundef %185) #3
  br label %return

sw.bb14.i:                                        ; preds = %sw.bb5
  %seq_mode15.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 5
  %186 = ptrtoint ptr %seq_mode15.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %seq_mode15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %tobool16.not.i = icmp eq i32 %187, 0
  br i1 %tobool16.not.i, label %sw.bb14.i.return_crit_edge, label %if.then17.i

sw.bb14.i.return_crit_edge:                       ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then17.i:                                      ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #5
  %timer18.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 13
  %188 = ptrtoint ptr %timer18.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %timer18.i, align 4
  %time19.i = getelementptr inbounds %struct.evrec_timer, ptr %q, i32 0, i32 4
  %190 = ptrtoint ptr %time19.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %time19.i, align 4
  %call20.i = tail call i32 @snd_seq_oss_timer_tempo(ptr noundef %189, i32 noundef %191) #3
  br label %return

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %dev = getelementptr inbounds %struct.evrec_sysex, ptr %q, i32 0, i32 1
  %192 = ptrtoint ptr %dev to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %dev, align 1
  %conv10 = zext i8 %193 to i32
  %buf = getelementptr inbounds %struct.evrec_sysex, ptr %q, i32 0, i32 2
  %call11 = tail call i32 @snd_seq_oss_synth_sysex(ptr noundef %dp, i32 noundef %conv10, ptr noundef %buf, ptr noundef %ev) #3
  br label %return

sw.bb12:                                          ; preds = %entry
  %seq_mode = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 5
  %194 = ptrtoint ptr %seq_mode to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %seq_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %195)
  %cmp = icmp eq i32 %195, 1
  br i1 %cmp, label %sw.bb12.return_crit_edge, label %if.end

sw.bb12.return_crit_edge:                         ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %sw.bb12
  %file_mode = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 6
  %196 = ptrtoint ptr %file_mode to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %file_mode, align 4
  %and = and i32 %197, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.return_crit_edge, label %if.end15

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end15:                                         ; preds = %if.end
  %dev16 = getelementptr inbounds %struct.evrec_short, ptr %q, i32 0, i32 2
  %198 = ptrtoint ptr %dev16 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %dev16, align 2
  %conv17 = zext i8 %199 to i32
  %call18 = tail call i32 @snd_seq_oss_midi_open(ptr noundef %dp, i32 noundef %conv17, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end15.return_crit_edge

if.end15.return_crit_edge:                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end21:                                         ; preds = %if.end15
  %200 = ptrtoint ptr %dev16 to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %dev16, align 2
  %conv23 = zext i8 %201 to i32
  %call24 = tail call i32 @snd_seq_oss_midi_filemode(ptr noundef %dp, i32 noundef %conv23) #3
  %and25 = and i32 %call24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end21.return_crit_edge, label %if.then27

if.end21.return_crit_edge:                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then27:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #5
  %202 = ptrtoint ptr %dev16 to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %dev16, align 2
  %conv29 = zext i8 %203 to i32
  %parm1 = getelementptr inbounds %struct.evrec_short, ptr %q, i32 0, i32 1
  %204 = ptrtoint ptr %parm1 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %parm1, align 1
  %call30 = tail call i32 @snd_seq_oss_midi_putc(ptr noundef %dp, i32 noundef %conv29, i8 noundef zeroext %205, ptr noundef %ev) #3
  br label %return

sw.bb32:                                          ; preds = %entry
  %seq_mode33 = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 5
  %206 = ptrtoint ptr %seq_mode33 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %seq_mode33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %207)
  %cmp34 = icmp eq i32 %207, 1
  br i1 %cmp34, label %sw.bb32.return_crit_edge, label %if.end37

sw.bb32.return_crit_edge:                         ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end37:                                         ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #5
  %208 = ptrtoint ptr %ev to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 50, ptr %ev, align 4
  %addr.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 4
  %209 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %addr.i, align 4
  %port.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 4, i32 1
  %211 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %port.i, align 1
  %queue.i.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 3
  %213 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %queue.i.i, align 4
  %conv.i.i = trunc i32 %214 to i8
  %queue1.i.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 3
  %215 = ptrtoint ptr %queue1.i.i to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 %conv.i.i, ptr %queue1.i.i, align 1
  %source.i.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 5
  %216 = load i16, ptr %addr.i, align 4
  %217 = ptrtoint ptr %source.i.i to i32
  call void @__asan_store2_noabort(i32 %217)
  store i16 %216, ptr %source.i.i, align 4
  %dest.i.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 6
  %218 = ptrtoint ptr %dest.i.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 %210, ptr %dest.i.i, align 2
  %port.i.i131 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 6, i32 1
  %219 = ptrtoint ptr %port.i.i131 to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %212, ptr %port.i.i131, align 1
  %data.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7
  %220 = ptrtoint ptr %q to i32
  call void @__asan_loadN_noabort(i32 %220, i32 8)
  %221 = load i64, ptr %q, align 4
  %222 = ptrtoint ptr %data.i to i32
  call void @__asan_storeN_noabort(i32 %222, i32 8)
  store i64 %221, ptr %data.i, align 4
  br label %return

sw.bb39:                                          ; preds = %entry
  %seq_mode40 = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 5
  %223 = ptrtoint ptr %seq_mode40 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %seq_mode40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %224)
  %cmp41 = icmp eq i32 %224, 1
  br i1 %cmp41, label %sw.bb39.return_crit_edge, label %if.end44

sw.bb39.return_crit_edge:                         ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end44:                                         ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx = getelementptr [8 x i8], ptr %q, i32 0, i32 1
  %225 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %arrayidx, align 1
  %conv45 = zext i8 %226 to i32
  %call47 = tail call i32 @snd_seq_oss_synth_raw_event(ptr noundef %dp, i32 noundef %conv45, ptr noundef %q, ptr noundef %ev) #3
  br label %return

sw.default:                                       ; preds = %entry
  %seq_mode48 = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 5
  %227 = ptrtoint ptr %seq_mode48 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %seq_mode48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %228)
  %cmp49 = icmp eq i32 %228, 1
  br i1 %cmp49, label %sw.default.return_crit_edge, label %if.end52

sw.default.return_crit_edge:                      ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end52:                                         ; preds = %sw.default
  %229 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %229, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %1, label %if.end52.return_crit_edge [
    i8 0, label %sw.bb.i138
    i8 1, label %sw.bb4.i
    i8 4, label %sw.bb18.i150
    i8 3, label %sw.bb12.i
  ]

if.end52.return_crit_edge:                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb.i138:                                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #5
  %chn.i132 = getelementptr inbounds %struct.evrec_note, ptr %q, i32 0, i32 1
  %230 = ptrtoint ptr %chn.i132 to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %chn.i132, align 1
  %conv1.i133 = zext i8 %231 to i32
  %note.i134 = getelementptr inbounds %struct.evrec_note, ptr %q, i32 0, i32 2
  %232 = ptrtoint ptr %note.i134 to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %note.i134, align 2
  %conv2.i135 = zext i8 %233 to i32
  %vel.i = getelementptr inbounds %struct.evrec_note, ptr %q, i32 0, i32 3
  %234 = ptrtoint ptr %vel.i to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %vel.i, align 1
  %conv3.i136 = zext i8 %235 to i32
  %call.i137 = tail call fastcc i32 @note_off_event(ptr noundef %dp, i32 noundef 0, i32 noundef %conv1.i133, i32 noundef %conv2.i135, i32 noundef %conv3.i136, ptr noundef %ev) #3
  br label %return

sw.bb4.i:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #5
  %chn5.i = getelementptr inbounds %struct.evrec_note, ptr %q, i32 0, i32 1
  %236 = ptrtoint ptr %chn5.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %chn5.i, align 1
  %conv6.i139 = zext i8 %237 to i32
  %note7.i = getelementptr inbounds %struct.evrec_note, ptr %q, i32 0, i32 2
  %238 = ptrtoint ptr %note7.i to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %note7.i, align 2
  %conv8.i = zext i8 %239 to i32
  %vel9.i = getelementptr inbounds %struct.evrec_note, ptr %q, i32 0, i32 3
  %240 = ptrtoint ptr %vel9.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %vel9.i, align 1
  %conv10.i140 = zext i8 %241 to i32
  %call11.i = tail call fastcc i32 @note_on_event(ptr noundef %dp, i32 noundef 0, i32 noundef %conv6.i139, i32 noundef %conv8.i, i32 noundef %conv10.i140, ptr noundef %ev) #3
  br label %return

sw.bb12.i:                                        ; preds = %if.end52
  %chn13.i = getelementptr inbounds %struct.evrec_note, ptr %q, i32 0, i32 1
  %242 = ptrtoint ptr %chn13.i to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %chn13.i, align 1
  %note15.i = getelementptr inbounds %struct.evrec_note, ptr %q, i32 0, i32 2
  %244 = ptrtoint ptr %note15.i to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %note15.i, align 2
  %call.i.i141 = tail call ptr @snd_seq_oss_synth_info(ptr noundef %dp, i32 noundef 0) #3
  %tobool.not.i.i142 = icmp eq ptr %call.i.i141, null
  br i1 %tobool.not.i.i142, label %sw.bb12.i.return_crit_edge, label %if.end.i.i148

sw.bb12.i.return_crit_edge:                       ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end.i.i148:                                    ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #5
  %conv16.i143 = zext i8 %245 to i32
  %246 = ptrtoint ptr %ev to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 11, ptr %ev, align 4
  %call2.i.i144 = tail call i32 @snd_seq_oss_synth_addr(ptr noundef %dp, i32 noundef 0, ptr noundef %ev) #3
  %data.i.i145 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7
  %247 = ptrtoint ptr %data.i.i145 to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 %243, ptr %data.i.i145, align 4
  %param5.i.i146 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 4
  %248 = ptrtoint ptr %param5.i.i146 to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 0, ptr %param5.i.i146, align 4
  %value.i.i147 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 5
  %249 = ptrtoint ptr %value.i.i147 to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %conv16.i143, ptr %value.i.i147, align 4
  br label %return

sw.bb18.i150:                                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #5
  %timer.i149 = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 13
  %250 = ptrtoint ptr %timer.i149 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %timer.i149, align 4
  %call19.i = tail call i32 @snd_seq_oss_timer_start(ptr noundef %251) #3
  br label %return

return:                                           ; preds = %sw.bb18.i150, %if.end.i.i148, %sw.bb12.i.return_crit_edge, %sw.bb4.i, %sw.bb.i138, %if.end52.return_crit_edge, %sw.default.return_crit_edge, %if.end44, %sw.bb39.return_crit_edge, %if.end37, %sw.bb32.return_crit_edge, %if.then27, %if.end21.return_crit_edge, %if.end15.return_crit_edge, %if.end.return_crit_edge, %sw.bb12.return_crit_edge, %sw.bb9, %if.then17.i, %sw.bb14.i.return_crit_edge, %if.then10.i, %sw.bb7.i129.return_crit_edge, %if.then5.i, %sw.bb3.i.return_crit_edge, %if.else.i, %if.then.i, %sw.bb5.return_crit_edge, %return.sink.split.i, %sw.bb24.i.return_crit_edge, %sw.bb16.i.return_crit_edge, %sw.bb7.i.return_crit_edge, %sw.bb.i117.return_crit_edge, %if.end.i111.return_crit_edge, %sw.bb3.return_crit_edge, %if.end.i.i105, %sw.bb18.i.return_crit_edge, %sw.bb8.i, %sw.bb.i100, %if.end.i.return_crit_edge, %sw.bb1.return_crit_edge, %sw.bb67.i, %if.end.i163.i, %sw.default.i.return_crit_edge, %if.end.i154.i, %sw.bb53.i.return_crit_edge, %if.end.i145.i, %sw.bb47.i.return_crit_edge, %if.end.i136.i, %sw.bb31.i.return_crit_edge, %if.end.i127.i, %sw.bb23.i.return_crit_edge, %if.end.i.i, %sw.bb15.i.return_crit_edge, %sw.bb5.i, %sw.bb.i, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call47, %if.end44 ], [ 0, %if.end37 ], [ %call30, %if.then27 ], [ %call11, %sw.bb9 ], [ -22, %sw.bb12.return_crit_edge ], [ -22, %sw.bb32.return_crit_edge ], [ -22, %sw.bb39.return_crit_edge ], [ -22, %sw.default.return_crit_edge ], [ -22, %if.end21.return_crit_edge ], [ -22, %if.end15.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ %call70.i, %sw.bb67.i ], [ %call14.i, %sw.bb5.i ], [ %call.i, %sw.bb.i ], [ -22, %sw.bb.return_crit_edge ], [ 0, %if.end.i.i ], [ -6, %sw.bb15.i.return_crit_edge ], [ 0, %if.end.i127.i ], [ -6, %sw.bb23.i.return_crit_edge ], [ 0, %if.end.i136.i ], [ -6, %sw.bb31.i.return_crit_edge ], [ 0, %if.end.i145.i ], [ -6, %sw.bb47.i.return_crit_edge ], [ 0, %if.end.i154.i ], [ -6, %sw.bb53.i.return_crit_edge ], [ 0, %if.end.i163.i ], [ -6, %sw.default.i.return_crit_edge ], [ %call17.i, %sw.bb8.i ], [ %call.i99, %sw.bb.i100 ], [ -22, %sw.bb1.return_crit_edge ], [ -22, %if.end.i.return_crit_edge ], [ 0, %if.end.i.i105 ], [ -6, %sw.bb18.i.return_crit_edge ], [ -22, %sw.bb3.return_crit_edge ], [ -22, %if.end.i111.return_crit_edge ], [ -6, %sw.bb.i117.return_crit_edge ], [ -6, %sw.bb7.i.return_crit_edge ], [ -6, %sw.bb16.i.return_crit_edge ], [ -6, %sw.bb24.i.return_crit_edge ], [ 0, %return.sink.split.i ], [ %call20.i, %if.then17.i ], [ %call12.i, %if.then10.i ], [ %call6.i, %if.then5.i ], [ 0, %if.then.i ], [ 0, %if.else.i ], [ 0, %sw.bb3.i.return_crit_edge ], [ 0, %sw.bb7.i129.return_crit_edge ], [ 0, %sw.bb14.i.return_crit_edge ], [ -22, %sw.bb5.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ %call19.i, %sw.bb18.i150 ], [ %call11.i, %sw.bb4.i ], [ %call.i137, %sw.bb.i138 ], [ -22, %if.end52.return_crit_edge ], [ 0, %if.end.i.i148 ], [ -6, %sw.bb12.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_oss_synth_sysex(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_oss_midi_open(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_oss_midi_filemode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_oss_midi_putc(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_oss_synth_raw_event(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_oss_event_input(ptr noundef %ev, i32 noundef %direct, ptr noundef %private_data, i32 noundef %atomic, i32 noundef %hop) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ev to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %1)
  %cmp.not = icmp eq i8 %1, 50
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 @snd_seq_oss_midi_input(ptr noundef %ev, i32 noundef %direct, ptr noundef %private_data) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %source = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 5
  %2 = ptrtoint ptr %source to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %source, align 4
  %conv2 = zext i8 %3 to i32
  %cseq = getelementptr inbounds %struct.seq_oss_devinfo, ptr %private_data, i32 0, i32 1
  %4 = ptrtoint ptr %cseq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cseq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv2)
  %cmp3.not = icmp eq i32 %5, %conv2
  br i1 %cmp3.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %7)
  %cmp8 = icmp eq i8 %7, 4
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  %writeq = getelementptr inbounds %struct.seq_oss_devinfo, ptr %private_data, i32 0, i32 11
  %8 = ptrtoint ptr %writeq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %writeq, align 4
  %time = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 4
  %10 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %time, align 4
  tail call void @snd_seq_oss_writeq_wakeup(ptr noundef %9, i32 noundef %11) #3
  br label %cleanup

if.else:                                          ; preds = %if.end6
  %readq = getelementptr inbounds %struct.seq_oss_devinfo, ptr %private_data, i32 0, i32 12
  %12 = ptrtoint ptr %readq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %readq, align 4
  %cmp11 = icmp eq ptr %13, null
  br i1 %cmp11, label %if.else.cleanup_crit_edge, label %if.end14

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end14:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %call16 = tail call i32 @snd_seq_oss_readq_put_event(ptr noundef nonnull %13, ptr noundef %data) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.else.cleanup_crit_edge, %if.then10, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.end14 ], [ 0, %if.then10 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_oss_midi_input(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_seq_oss_writeq_wakeup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_oss_readq_put_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @note_off_event(ptr noundef %dp, i32 noundef %dev, i32 noundef %ch, i32 noundef %note, i32 noundef %vel, ptr noundef %ev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @snd_seq_oss_synth_info(ptr noundef %dp, i32 noundef %dev) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %event_passing = getelementptr inbounds %struct.snd_seq_oss_arg, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %event_passing to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event_passing, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %1, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %if.end.sw.bb28_crit_edge
    i32 2, label %if.end.sw.bb28_crit_edge85
  ]

if.end.sw.bb28_crit_edge85:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb28

if.end.sw.bb28_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb28

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %ch1 = getelementptr inbounds %struct.seq_oss_synthinfo, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %ch1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ch1, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %sw.bb.if.then5_crit_edge, label %lor.lhs.false3

sw.bb.if.then5_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then5

lor.lhs.false3:                                   ; preds = %sw.bb
  %nr_voices = getelementptr inbounds %struct.seq_oss_synthinfo, ptr %call, i32 0, i32 3
  %5 = ptrtoint ptr %nr_voices to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr_voices, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %ch)
  %cmp4.not = icmp sgt i32 %6, %ch
  br i1 %cmp4.not, label %if.end7, label %lor.lhs.false3.if.then5_crit_edge

lor.lhs.false3.if.then5_crit_edge:                ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then5

if.then5:                                         ; preds = %lor.lhs.false3.if.then5_crit_edge, %sw.bb.if.then5_crit_edge
  %call.i = tail call ptr @snd_seq_oss_synth_info(ptr noundef %dp, i32 noundef %dev) #3
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then5.cleanup_crit_edge, label %if.then5.cleanup.sink.split_crit_edge

if.then5.cleanup.sink.split_crit_edge:            ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false3
  %7 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %ch, i32 %6) #3, !srcloc !9
  %and = and i32 %7, %ch
  %8 = ptrtoint ptr %ch1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ch1, align 4
  %arrayidx = getelementptr %struct.seq_oss_chinfo, ptr %9, i32 %and
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp15 = icmp sgt i32 %11, -1
  br i1 %cmp15, label %if.then16, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then16:                                        ; preds = %if.end7
  %vel22 = getelementptr %struct.seq_oss_chinfo, ptr %9, i32 %and, i32 1
  %12 = ptrtoint ptr %vel22 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %vel22, align 4
  %13 = ptrtoint ptr %ch1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ch1, align 4
  %arrayidx24 = getelementptr %struct.seq_oss_chinfo, ptr %14, i32 %and
  %15 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %arrayidx24, align 4
  %call.i61 = tail call ptr @snd_seq_oss_synth_info(ptr noundef %dp, i32 noundef %dev) #3
  %tobool.not.i62 = icmp eq ptr %call.i61, null
  br i1 %tobool.not.i62, label %if.then16.cleanup_crit_edge, label %if.then16.cleanup.sink.split_crit_edge

if.then16.cleanup.sink.split_crit_edge:           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb28:                                          ; preds = %if.end.sw.bb28_crit_edge, %if.end.sw.bb28_crit_edge85
  %call.i73 = tail call ptr @snd_seq_oss_synth_info(ptr noundef %dp, i32 noundef %dev) #3
  %tobool.not.i74 = icmp eq ptr %call.i73, null
  br i1 %tobool.not.i74, label %sw.bb28.cleanup_crit_edge, label %sw.bb28.cleanup.sink.split_crit_edge

sw.bb28.cleanup.sink.split_crit_edge:             ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

sw.bb28.cleanup_crit_edge:                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup.sink.split:                               ; preds = %sw.bb28.cleanup.sink.split_crit_edge, %if.then16.cleanup.sink.split_crit_edge, %if.then5.cleanup.sink.split_crit_edge
  %.sink = phi i8 [ 6, %if.then5.cleanup.sink.split_crit_edge ], [ 7, %if.then16.cleanup.sink.split_crit_edge ], [ 7, %sw.bb28.cleanup.sink.split_crit_edge ]
  %ch.sink = phi i32 [ %ch, %if.then5.cleanup.sink.split_crit_edge ], [ %and, %if.then16.cleanup.sink.split_crit_edge ], [ %ch, %sw.bb28.cleanup.sink.split_crit_edge ]
  %note.sink = phi i32 [ %note, %if.then5.cleanup.sink.split_crit_edge ], [ %11, %if.then16.cleanup.sink.split_crit_edge ], [ %note, %sw.bb28.cleanup.sink.split_crit_edge ]
  %16 = ptrtoint ptr %ev to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %.sink, ptr %ev, align 4
  %call2.i75 = tail call i32 @snd_seq_oss_synth_addr(ptr noundef %dp, i32 noundef %dev, ptr noundef %ev) #3
  %conv3.i76 = trunc i32 %ch.sink to i8
  %data.i77 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7
  %17 = ptrtoint ptr %data.i77 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv3.i76, ptr %data.i77, align 4
  %conv4.i78 = trunc i32 %note.sink to i8
  %note6.i79 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 1
  %18 = ptrtoint ptr %note6.i79 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv4.i78, ptr %note6.i79, align 1
  %conv7.i80 = trunc i32 %vel to i8
  %velocity.i81 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 2
  %19 = ptrtoint ptr %velocity.i81 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv7.i80, ptr %velocity.i81, align 2
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb28.cleanup_crit_edge, %if.then16.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %entry.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -6, %if.then5.cleanup_crit_edge ], [ -6, %if.then16.cleanup_crit_edge ], [ -6, %sw.bb28.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @note_on_event(ptr noundef %dp, i32 noundef %dev, i32 noundef %ch, i32 noundef %note, i32 noundef %vel, ptr noundef %ev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @snd_seq_oss_synth_info(ptr noundef %dp, i32 noundef %dev) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %event_passing = getelementptr inbounds %struct.snd_seq_oss_arg, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %event_passing to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event_passing, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %1, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb61
    i32 2, label %sw.bb63
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %ch1 = getelementptr inbounds %struct.seq_oss_synthinfo, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %ch1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ch1, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %sw.bb.if.then5_crit_edge, label %lor.lhs.false3

sw.bb.if.then5_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then5

lor.lhs.false3:                                   ; preds = %sw.bb
  %nr_voices = getelementptr inbounds %struct.seq_oss_synthinfo, ptr %call, i32 0, i32 3
  %5 = ptrtoint ptr %nr_voices to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr_voices, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %ch)
  %cmp4.not = icmp sgt i32 %6, %ch
  br i1 %cmp4.not, label %if.end7, label %lor.lhs.false3.if.then5_crit_edge

lor.lhs.false3.if.then5_crit_edge:                ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then5

if.then5:                                         ; preds = %lor.lhs.false3.if.then5_crit_edge, %sw.bb.if.then5_crit_edge
  %call.i = tail call ptr @snd_seq_oss_synth_info(ptr noundef %dp, i32 noundef %dev) #3
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then5.cleanup_crit_edge, label %if.end.i

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %ev to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 6, ptr %ev, align 4
  %call2.i = tail call i32 @snd_seq_oss_synth_addr(ptr noundef %dp, i32 noundef %dev, ptr noundef %ev) #3
  %conv3.i = trunc i32 %ch to i8
  %data.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv3.i, ptr %data.i, align 4
  %conv4.i = trunc i32 %note to i8
  %note6.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 1
  %9 = ptrtoint ptr %note6.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv4.i, ptr %note6.i, align 1
  %conv7.i = trunc i32 %vel to i8
  %velocity.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 2
  %10 = ptrtoint ptr %velocity.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv7.i, ptr %velocity.i, align 2
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false3
  %11 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %ch, i32 %6) #3, !srcloc !9
  %and = and i32 %11, %ch
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %note)
  %cmp13 = icmp eq i32 %note, 255
  br i1 %cmp13, label %land.lhs.true, label %if.else31

land.lhs.true:                                    ; preds = %if.end7
  %12 = ptrtoint ptr %ch1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ch1, align 4
  %arrayidx = getelementptr %struct.seq_oss_chinfo, ptr %13, i32 %and
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp16 = icmp sgt i32 %15, -1
  br i1 %cmp16, label %if.then17, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %vel20 = getelementptr %struct.seq_oss_chinfo, ptr %13, i32 %and, i32 1
  %16 = ptrtoint ptr %vel20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vel20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool21.not = icmp eq i32 %17, 0
  %. = select i1 %tobool21.not, i32 6, i32 8
  %18 = ptrtoint ptr %vel20 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %vel, ptr %vel20, align 4
  %19 = ptrtoint ptr %ch1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ch1, align 4
  %arrayidx28 = getelementptr %struct.seq_oss_chinfo, ptr %20, i32 %and
  %21 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx28, align 4
  %call30 = tail call fastcc i32 @set_note_event(ptr noundef %dp, i32 noundef %dev, i32 noundef %., i32 noundef %and, i32 noundef %22, i32 noundef %vel, ptr noundef %ev)
  br label %cleanup

if.else31:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %note)
  %cmp32 = icmp sgt i32 %note, 127
  br i1 %cmp32, label %if.else31.cleanup_crit_edge, label %if.end35

if.else31.cleanup_crit_edge:                      ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end35:                                         ; preds = %if.else31
  %23 = ptrtoint ptr %ch1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ch1, align 4
  %arrayidx37 = getelementptr %struct.seq_oss_chinfo, ptr %24, i32 %and
  %25 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx37, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %note)
  %cmp39.not = icmp ne i32 %26, %note
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp44 = icmp sgt i32 %26, -1
  %or.cond = and i1 %cmp39.not, %cmp44
  br i1 %or.cond, label %if.then45, label %if.end35.if.end50_crit_edge

if.end35.if.end50_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end50

if.then45:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #5
  %call49 = tail call fastcc i32 @set_note_event(ptr noundef %dp, i32 noundef %dev, i32 noundef 7, i32 noundef %and, i32 noundef %26, i32 noundef 0, ptr noundef %ev)
  br label %if.end50

if.end50:                                         ; preds = %if.then45, %if.end35.if.end50_crit_edge
  %27 = ptrtoint ptr %ch1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ch1, align 4
  %arrayidx52 = getelementptr %struct.seq_oss_chinfo, ptr %28, i32 %and
  %29 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %note, ptr %arrayidx52, align 4
  %30 = load ptr, ptr %ch1, align 4
  %vel56 = getelementptr %struct.seq_oss_chinfo, ptr %30, i32 %and, i32 1
  %31 = ptrtoint ptr %vel56 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %vel, ptr %vel56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vel)
  %tobool57.not = icmp eq i32 %vel, 0
  br i1 %tobool57.not, label %if.end50.cleanup_crit_edge, label %if.then58

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then58:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #5
  %call59 = tail call fastcc i32 @set_note_event(ptr noundef %dp, i32 noundef %dev, i32 noundef 6, i32 noundef %and, i32 noundef %note, i32 noundef %vel, ptr noundef %ev)
  br label %cleanup

sw.bb61:                                          ; preds = %if.end
  %call.i139 = tail call ptr @snd_seq_oss_synth_info(ptr noundef %dp, i32 noundef %dev) #3
  %tobool.not.i140 = icmp eq ptr %call.i139, null
  br i1 %tobool.not.i140, label %sw.bb61.cleanup_crit_edge, label %if.end.i148

sw.bb61.cleanup_crit_edge:                        ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i148:                                      ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #5
  %32 = ptrtoint ptr %ev to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 6, ptr %ev, align 4
  %call2.i141 = tail call i32 @snd_seq_oss_synth_addr(ptr noundef %dp, i32 noundef %dev, ptr noundef %ev) #3
  %conv3.i142 = trunc i32 %ch to i8
  %data.i143 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7
  %33 = ptrtoint ptr %data.i143 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv3.i142, ptr %data.i143, align 4
  %conv4.i144 = trunc i32 %note to i8
  %note6.i145 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 1
  %34 = ptrtoint ptr %note6.i145 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv4.i144, ptr %note6.i145, align 1
  %conv7.i146 = trunc i32 %vel to i8
  %velocity.i147 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 2
  %35 = ptrtoint ptr %velocity.i147 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv7.i146, ptr %velocity.i147, align 2
  br label %cleanup

sw.bb63:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %note)
  %cmp64 = icmp sgt i32 %note, 127
  %call.i151 = tail call ptr @snd_seq_oss_synth_info(ptr noundef %dp, i32 noundef %dev) #3
  %tobool.not.i152 = icmp eq ptr %call.i151, null
  br i1 %cmp64, label %if.then65, label %if.else67

if.then65:                                        ; preds = %sw.bb63
  br i1 %tobool.not.i152, label %if.then65.cleanup_crit_edge, label %if.end.i160

if.then65.cleanup_crit_edge:                      ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i160:                                      ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #5
  %36 = ptrtoint ptr %ev to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 8, ptr %ev, align 4
  %call2.i153 = tail call i32 @snd_seq_oss_synth_addr(ptr noundef %dp, i32 noundef %dev, ptr noundef %ev) #3
  %conv3.i154 = trunc i32 %ch to i8
  %data.i155 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7
  %37 = ptrtoint ptr %data.i155 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv3.i154, ptr %data.i155, align 4
  %38 = trunc i32 %note to i8
  %conv4.i156 = xor i8 %38, -128
  %note6.i157 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 1
  %39 = ptrtoint ptr %note6.i157 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv4.i156, ptr %note6.i157, align 1
  %conv7.i158 = trunc i32 %vel to i8
  %velocity.i159 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 2
  %40 = ptrtoint ptr %velocity.i159 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv7.i158, ptr %velocity.i159, align 2
  br label %cleanup

if.else67:                                        ; preds = %sw.bb63
  br i1 %tobool.not.i152, label %if.else67.cleanup_crit_edge, label %if.end.i172

if.else67.cleanup_crit_edge:                      ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i172:                                      ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #5
  %41 = ptrtoint ptr %ev to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 6, ptr %ev, align 4
  %call2.i165 = tail call i32 @snd_seq_oss_synth_addr(ptr noundef %dp, i32 noundef %dev, ptr noundef %ev) #3
  %conv3.i166 = trunc i32 %ch to i8
  %data.i167 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7
  %42 = ptrtoint ptr %data.i167 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv3.i166, ptr %data.i167, align 4
  %conv4.i168 = trunc i32 %note to i8
  %note6.i169 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 1
  %43 = ptrtoint ptr %note6.i169 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv4.i168, ptr %note6.i169, align 1
  %conv7.i170 = trunc i32 %vel to i8
  %velocity.i171 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 2
  %44 = ptrtoint ptr %velocity.i171 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv7.i170, ptr %velocity.i171, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end.i172, %if.else67.cleanup_crit_edge, %if.end.i160, %if.then65.cleanup_crit_edge, %if.end.i148, %sw.bb61.cleanup_crit_edge, %if.then58, %if.end50.cleanup_crit_edge, %if.else31.cleanup_crit_edge, %if.then17, %land.lhs.true.cleanup_crit_edge, %if.end.i, %if.then5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call30, %if.then17 ], [ %call59, %if.then58 ], [ -6, %entry.cleanup_crit_edge ], [ -22, %if.else31.cleanup_crit_edge ], [ -22, %if.end50.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end.i ], [ -6, %if.then5.cleanup_crit_edge ], [ 0, %if.end.i148 ], [ -6, %sw.bb61.cleanup_crit_edge ], [ 0, %if.end.i160 ], [ -6, %if.then65.cleanup_crit_edge ], [ 0, %if.end.i172 ], [ -6, %if.else67.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_oss_timer_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_seq_oss_synth_info(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_note_event(ptr noundef %dp, i32 noundef %dev, i32 noundef %type, i32 noundef %ch, i32 noundef %note, i32 noundef %vel, ptr noundef %ev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @snd_seq_oss_synth_info(ptr noundef %dp, i32 noundef %dev) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %conv = trunc i32 %type to i8
  %0 = ptrtoint ptr %ev to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %ev, align 4
  %call2 = tail call i32 @snd_seq_oss_synth_addr(ptr noundef %dp, i32 noundef %dev, ptr noundef %ev) #3
  %conv3 = trunc i32 %ch to i8
  %data = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv3, ptr %data, align 4
  %conv4 = trunc i32 %note to i8
  %note6 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 1
  %2 = ptrtoint ptr %note6 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv4, ptr %note6, align 1
  %conv7 = trunc i32 %vel to i8
  %velocity = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 2
  %3 = ptrtoint ptr %velocity to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv7, ptr %velocity, align 2
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -6, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_oss_synth_addr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_oss_timer_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_oss_timer_continue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_oss_timer_tempo(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{i64 663408, i64 663425}
