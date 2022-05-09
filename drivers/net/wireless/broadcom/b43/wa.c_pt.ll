; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/b43/wa.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/b43/wa.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.b43_wldev = type { ptr, ptr, %struct.completion, %struct.atomic_t, i8, i8, i8, i8, i8, i8, %struct.b43_phy, %union.anon.137, i8, %struct.b43_stats, i32, [6 x i32], i32, %struct.b43_noise_calculation, i32, %struct.delayed_work, i32, %struct.work_struct, i16, [58 x %struct.b43_key], %struct.b43_firmware, %struct.list_head, ptr, i32, [32 x i32], i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.b43_phy = type { ptr, %struct.anon.135, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i32, i8, i32, ptr, i32, %struct.atomic_t, i8, i8 }
%struct.anon.135 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.137 = type { %struct.b43_dma }
%struct.b43_dma = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.b43_stats = type { i8 }
%struct.b43_noise_calculation = type { i8, i8, [8 x [4 x i8]] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.b43_key = type { ptr, i8 }
%struct.b43_firmware = type { %struct.b43_firmware_file, %struct.b43_firmware_file, %struct.b43_firmware_file, %struct.b43_firmware_file, i16, i16, i32, i8, i8 }
%struct.b43_firmware_file = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.b43_bus_dev = type { i32, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, i32, i16, i16, i16, i16, i8, i8, ptr, i16, i8 }
%union.anon = type { ptr }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.102, %struct.anon.103, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.102 = type { i8, i8, i8, i8 }
%struct.anon.103 = type { %struct.anon.104, %struct.anon.105 }
%struct.anon.104 = type { i8, i8, i8, i8, i8 }
%struct.anon.105 = type { i8, i8, i8, i8, i8 }

@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/wireless/broadcom/b43/wa.c\00", [57 x i8] zeroinitializer }, align 32
@b43_tab_finefreqg = external dso_local local_unnamed_addr constant [0 x i16], align 2
@b43_tab_noiseg1 = external dso_local local_unnamed_addr constant [0 x i16], align 2
@b43_tab_noiseg2 = external dso_local local_unnamed_addr constant [0 x i16], align 2
@b43_tab_rotor = external dso_local local_unnamed_addr constant [0 x i32], align 4
@b43_tab_noisescaleg3 = external dso_local local_unnamed_addr constant [0 x i16], align 2
@b43_tab_noisescaleg2 = external dso_local local_unnamed_addr constant [0 x i16], align 2
@b43_tab_noisescaleg1 = external dso_local local_unnamed_addr constant [0 x i16], align 2
@b43_tab_retard = external dso_local local_unnamed_addr constant [0 x i32], align 4
@b43_tab_sigmasqr2 = external dso_local local_unnamed_addr constant [0 x i16], align 2
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private constant [42 x i8] c"../drivers/net/wireless/broadcom/b43/wa.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 368, i32 4 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_wa_initgains(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1052, i16 noundef zeroext 8185) #2
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1056, i16 noundef zeroext -241) #2
  %rev = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 8
  %0 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp = icmp ult i8 %1, 3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 15372, i16 noundef zeroext 0, i16 noundef zeroext 8127) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 2, i16 noundef zeroext 8127) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 36, i16 noundef zeroext 18048) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 32, i16 noundef zeroext 3) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 29, i16 noundef zeroext 3904) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 31, i16 noundef zeroext 7168) #2
  %2 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp5 = icmp ult i8 %3, 4
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 42, i16 noundef zeroext 255, i16 noundef zeroext 1024) #2
  br label %if.end14

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %3)
  %cmp10 = icmp eq i8 %3, 5
  br i1 %cmp10, label %if.then12, label %if.else.if.then19_crit_edge

if.else.if.then19_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then19

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 42, i16 noundef zeroext 255, i16 noundef zeroext 6656) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 204, i16 noundef zeroext 8481) #2
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.then7
  %4 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %4)
  %.pr = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.pr)
  %cmp17 = icmp ugt i8 %.pr, 2
  br i1 %cmp17, label %if.end14.if.then19_crit_edge, label %if.end14.if.end20_crit_edge

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end20

if.end14.if.then19_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then19

if.then19:                                        ; preds = %if.end14.if.then19_crit_edge, %if.else.if.then19_crit_edge
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 186, i16 noundef zeroext 16085) #2
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end14.if.end20_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_phy_write(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_phy_mask(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_ofdmtab_write16(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_radio_write(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_phy_maskset(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_wa_all(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 7
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp eq i8 %1, 2
  br i1 %cmp, label %if.then, label %do.end32

if.then:                                          ; preds = %entry
  %rev = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 8
  %2 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rev, align 2
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %do.end [
    i8 1, label %sw.bb
    i8 2, label %if.then.sw.bb4_crit_edge
    i8 6, label %if.then.sw.bb4_crit_edge96
    i8 7, label %if.then.sw.bb4_crit_edge97
    i8 8, label %if.then.sw.bb4_crit_edge98
    i8 9, label %if.then.sw.bb4_crit_edge99
  ]

if.then.sw.bb4_crit_edge99:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb4

if.then.sw.bb4_crit_edge98:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb4

if.then.sw.bb4_crit_edge97:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb4

if.then.sw.bb4_crit_edge96:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb4

if.then.sw.bb4_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb4

sw.bb:                                            ; preds = %if.then
  tail call fastcc void @b43_wa_crs_ed(ptr noundef %dev)
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1065, i16 noundef zeroext -961, i16 noundef zeroext -12288) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1068, i16 noundef zeroext 90) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1191, i16 noundef zeroext 38) #2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.bb
  %i.04.i = phi i32 [ 0, %sw.bb ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %conv.i = trunc i32 %i.04.i to i16
  %arrayidx.i = getelementptr [0 x i16], ptr @b43_tab_finefreqg, i32 0, i32 %i.04.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx.i, align 2
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 22528, i16 noundef zeroext %conv.i, i16 noundef zeroext %6) #2
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %b43_wa_fft.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i

b43_wa_fft.exit:                                  ; preds = %for.body.i
  tail call fastcc void @b43_wa_nft(ptr noundef %dev)
  br label %for.body.i78

for.body.i78:                                     ; preds = %for.body.i78.for.body.i78_crit_edge, %b43_wa_fft.exit
  %i.04.i73 = phi i32 [ 0, %b43_wa_fft.exit ], [ %inc.i76, %for.body.i78.for.body.i78_crit_edge ]
  %conv.i74 = trunc i32 %i.04.i73 to i16
  %arrayidx.i75 = getelementptr [0 x i32], ptr @b43_tab_rotor, i32 0, i32 %i.04.i73
  %7 = ptrtoint ptr %arrayidx.i75 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i75, align 4
  tail call void @b43_ofdmtab_write32(ptr noundef %dev, i16 noundef zeroext 8192, i16 noundef zeroext %conv.i74, i32 noundef %8) #2
  %inc.i76 = add nuw nsw i32 %i.04.i73, 1
  %exitcond.not.i77 = icmp eq i32 %inc.i76, 53
  br i1 %exitcond.not.i77, label %b43_wa_rt.exit, label %for.body.i78.for.body.i78_crit_edge

for.body.i78.for.body.i78_crit_edge:              ; preds = %for.body.i78
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i78

b43_wa_rt.exit:                                   ; preds = %for.body.i78
  tail call fastcc void @b43_wa_nst(ptr noundef %dev)
  br label %for.body.i84

for.body.i84:                                     ; preds = %for.body.i84.for.body.i84_crit_edge, %b43_wa_rt.exit
  %i.04.i79 = phi i32 [ 0, %b43_wa_rt.exit ], [ %inc.i82, %for.body.i84.for.body.i84_crit_edge ]
  %conv.i80 = trunc i32 %i.04.i79 to i16
  %arrayidx.i81 = getelementptr [0 x i32], ptr @b43_tab_retard, i32 0, i32 %i.04.i79
  %9 = ptrtoint ptr %arrayidx.i81 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i81, align 4
  tail call void @b43_ofdmtab_write32(ptr noundef %dev, i16 noundef zeroext 9216, i16 noundef zeroext %conv.i80, i32 noundef %10) #2
  %inc.i82 = add nuw nsw i32 %i.04.i79, 1
  %exitcond.not.i83 = icmp eq i32 %inc.i82, 53
  br i1 %exitcond.not.i83, label %b43_wa_art.exit, label %for.body.i84.for.body.i84_crit_edge

for.body.i84.for.body.i84_crit_edge:              ; preds = %for.body.i84
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i84

b43_wa_art.exit:                                  ; preds = %for.body.i84
  call void @__sanitizer_cov_trace_pc() #4
  tail call fastcc void @b43_wa_wrssi_offset(ptr noundef %dev)
  tail call fastcc void @b43_wa_altagc(ptr noundef %dev)
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.then.sw.bb4_crit_edge, %if.then.sw.bb4_crit_edge96, %if.then.sw.bb4_crit_edge97, %if.then.sw.bb4_crit_edge98, %if.then.sw.bb4_crit_edge99
  tail call void @b43_gtab_write(ptr noundef %dev, i16 noundef zeroext -17768, i16 noundef zeroext 0, i16 noundef zeroext 30292) #2
  tail call fastcc void @b43_wa_crs_ed(ptr noundef %dev)
  br label %for.body.i88

for.body.i88:                                     ; preds = %for.body.i88.for.body.i88_crit_edge, %sw.bb4
  %i.05.i = phi i32 [ 0, %sw.bb4 ], [ %inc.i86, %for.body.i88.for.body.i88_crit_edge ]
  %conv.i85 = trunc i32 %i.05.i to i16
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 16384, i16 noundef zeroext %conv.i85, i16 noundef zeroext %conv.i85) #2
  %inc.i86 = add nuw nsw i32 %i.05.i, 1
  %exitcond.not.i87 = icmp eq i32 %inc.i86, 64
  br i1 %exitcond.not.i87, label %b43_wa_rssi_lt.exit, label %for.body.i88.for.body.i88_crit_edge

for.body.i88.for.body.i88_crit_edge:              ; preds = %for.body.i88
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i88

b43_wa_rssi_lt.exit:                              ; preds = %for.body.i88
  tail call fastcc void @b43_wa_nft(ptr noundef %dev)
  tail call fastcc void @b43_wa_nst(ptr noundef %dev)
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %cmp.i = icmp eq i8 %12, 2
  br i1 %cmp.i, label %b43_wa_rssi_lt.exit.for.body.i92_crit_edge, label %do.end.i

b43_wa_rssi_lt.exit.for.body.i92_crit_edge:       ; preds = %b43_wa_rssi_lt.exit
  br label %for.body.i92

do.end.i:                                         ; preds = %b43_wa_rssi_lt.exit
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 145, i32 noundef 9, ptr noundef null) #2
  br label %b43_wa_msst.exit

for.body.i92:                                     ; preds = %for.body.i92.for.body.i92_crit_edge, %b43_wa_rssi_lt.exit.for.body.i92_crit_edge
  %i.029.i = phi i32 [ %inc.i90, %for.body.i92.for.body.i92_crit_edge ], [ 0, %b43_wa_rssi_lt.exit.for.body.i92_crit_edge ]
  %conv21.i = trunc i32 %i.029.i to i16
  %arrayidx.i89 = getelementptr i16, ptr @b43_tab_sigmasqr2, i32 %i.029.i
  %13 = ptrtoint ptr %arrayidx.i89 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx.i89, align 2
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 20480, i16 noundef zeroext %conv21.i, i16 noundef zeroext %14) #2
  %inc.i90 = add nuw nsw i32 %i.029.i, 1
  %exitcond.not.i91 = icmp eq i32 %inc.i90, 53
  br i1 %exitcond.not.i91, label %for.body.i92.b43_wa_msst.exit_crit_edge, label %for.body.i92.for.body.i92_crit_edge

for.body.i92.for.body.i92_crit_edge:              ; preds = %for.body.i92
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i92

for.body.i92.b43_wa_msst.exit_crit_edge:          ; preds = %for.body.i92
  call void @__sanitizer_cov_trace_pc() #4
  br label %b43_wa_msst.exit

b43_wa_msst.exit:                                 ; preds = %for.body.i92.b43_wa_msst.exit_crit_edge, %do.end.i
  tail call fastcc void @b43_wa_wrssi_offset(ptr noundef %dev)
  tail call fastcc void @b43_wa_altagc(ptr noundef %dev)
  %call.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1024) #2
  %15 = and i16 %call.i, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %15)
  %cmp.i93 = icmp ugt i16 %15, 2
  br i1 %cmp.i93, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %b43_wa_msst.exit
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1027, i16 noundef zeroext 4096) #2
  br label %b43_wa_analog.exit

if.else.i:                                        ; preds = %b43_wa_msst.exit
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 12288, i16 noundef zeroext 3, i16 noundef zeroext 4164) #2
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 12288, i16 noundef zeroext 4, i16 noundef zeroext 29185) #2
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 12288, i16 noundef zeroext 6, i16 noundef zeroext 64) #2
  br label %b43_wa_analog.exit

b43_wa_analog.exit:                               ; preds = %if.else.i, %if.then.i
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 15360, i16 noundef zeroext 2, i16 noundef zeroext 15) #2
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 15360, i16 noundef zeroext 3, i16 noundef zeroext 20) #2
  br label %sw.epilog

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 368, i32 noundef 9, ptr noundef null) #2
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %b43_wa_analog.exit, %b43_wa_art.exit
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %bus_sprom.i = getelementptr inbounds %struct.b43_bus_dev, ptr %17, i32 0, i32 23
  %18 = ptrtoint ptr %bus_sprom.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus_sprom.i, align 4
  %board_vendor.i = getelementptr inbounds %struct.b43_bus_dev, ptr %17, i32 0, i32 17
  %20 = ptrtoint ptr %board_vendor.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %board_vendor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5348, i16 %21)
  %cmp.not.i = icmp eq i16 %21, 5348
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %sw.epilog.if.then.i94_crit_edge

sw.epilog.if.then.i94_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then.i94

lor.lhs.false.i:                                  ; preds = %sw.epilog
  %board_type.i = getelementptr inbounds %struct.b43_bus_dev, ptr %17, i32 0, i32 18
  %22 = ptrtoint ptr %board_type.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %board_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1046, i16 %23)
  %cmp7.not.i = icmp eq i16 %23, 1046
  br i1 %cmp7.not.i, label %lor.lhs.false9.i, label %lor.lhs.false.i.if.then.i94_crit_edge

lor.lhs.false.i.if.then.i94_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then.i94

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false.i
  %board_rev.i = getelementptr inbounds %struct.b43_bus_dev, ptr %17, i32 0, i32 19
  %24 = ptrtoint ptr %board_rev.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %board_rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 23, i16 %25)
  %cmp12.not.i = icmp eq i16 %25, 23
  br i1 %cmp12.not.i, label %lor.lhs.false9.i.if.end25.i_crit_edge, label %lor.lhs.false9.i.if.then.i94_crit_edge

lor.lhs.false9.i.if.then.i94_crit_edge:           ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then.i94

lor.lhs.false9.i.if.end25.i_crit_edge:            ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end25.i

if.then.i94:                                      ; preds = %lor.lhs.false9.i.if.then.i94_crit_edge, %lor.lhs.false.i.if.then.i94_crit_edge, %sw.epilog.if.then.i94_crit_edge
  %26 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %27)
  %cmp15.i = icmp ult i8 %27, 2
  br i1 %cmp15.i, label %if.then17.i, label %if.else.i95

if.then17.i:                                      ; preds = %if.then.i94
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 20480, i16 noundef zeroext 1, i16 noundef zeroext 2) #2
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 20480, i16 noundef zeroext 2, i16 noundef zeroext 1) #2
  br label %if.end25.i

if.else.i95:                                      ; preds = %if.then.i94
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 1024, i16 noundef zeroext 1, i16 noundef zeroext 2) #2
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 1024, i16 noundef zeroext 2, i16 noundef zeroext 1) #2
  %boardflags_lo.i = getelementptr inbounds %struct.ssb_sprom, ptr %19, i32 0, i32 70
  %28 = ptrtoint ptr %boardflags_lo.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %boardflags_lo.i, align 4
  %30 = and i16 %29, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool.not.i = icmp eq i16 %30, 0
  br i1 %tobool.not.i, label %if.else.i95.if.end25.i_crit_edge, label %land.lhs.true.i

if.else.i95.if.end25.i_crit_edge:                 ; preds = %if.else.i95
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end25.i

land.lhs.true.i:                                  ; preds = %if.else.i95
  %31 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %32)
  %cmp21.i = icmp ugt i8 %32, 6
  br i1 %cmp21.i, label %if.then23.i, label %land.lhs.true.i.if.end25.i_crit_edge

land.lhs.true.i.if.end25.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end25.i

if.then23.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 2065, i16 noundef zeroext -2049) #2
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 1024, i16 noundef zeroext 32, i16 noundef zeroext 1) #2
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 1024, i16 noundef zeroext 33, i16 noundef zeroext 1) #2
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 1024, i16 noundef zeroext 34, i16 noundef zeroext 1) #2
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 1024, i16 noundef zeroext 35, i16 noundef zeroext 0) #2
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 1024, i16 noundef zeroext 0, i16 noundef zeroext 0) #2
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 1024, i16 noundef zeroext 3, i16 noundef zeroext 2) #2
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then23.i, %land.lhs.true.i.if.end25.i_crit_edge, %if.else.i95.if.end25.i_crit_edge, %if.then17.i, %lor.lhs.false9.i.if.end25.i_crit_edge
  %boardflags_lo26.i = getelementptr inbounds %struct.ssb_sprom, ptr %19, i32 0, i32 70
  %33 = ptrtoint ptr %boardflags_lo26.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %boardflags_lo26.i, align 4
  %35 = and i16 %34, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool29.not.i = icmp eq i16 %35, 0
  br i1 %tobool29.not.i, label %if.end25.i.if.end46_crit_edge, label %if.then30.i

if.end25.i.if.end46_crit_edge:                    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end46

if.then30.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2051, i16 noundef zeroext 12576) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2052, i16 noundef zeroext -15232) #2
  br label %if.end46

do.end32:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 372, i32 noundef 9, ptr noundef null) #2
  br label %if.end46

if.end46:                                         ; preds = %do.end32, %if.then30.i, %if.end25.i.if.end46_crit_edge
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 17412, i16 noundef zeroext 0, i16 noundef zeroext 0) #2
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 17412, i16 noundef zeroext 1, i16 noundef zeroext 0) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @b43_wa_crs_ed(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %rev = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 8
  %0 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rev, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %1, label %if.else8 [
    i8 1, label %if.then
    i8 2, label %if.then7
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1030, i16 noundef zeroext 20249) #2
  br label %if.end9

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1216, i16 noundef zeroext 6241) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1217, i16 noundef zeroext 625) #2
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1067, i16 noundef zeroext 2048) #2
  br label %if.end9

if.else8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1216, i16 noundef zeroext 152) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1217, i16 noundef zeroext 112) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1225, i16 noundef zeroext 128) #2
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1067, i16 noundef zeroext 2048) #2
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %if.then7, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @b43_wa_nft(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %rev = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 8
  %0 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  %b43_tab_noiseg1.b43_tab_noiseg2 = select i1 %cmp, ptr @b43_tab_noiseg1, ptr @b43_tab_noiseg2
  %. = select i1 %cmp, ptr getelementptr inbounds ([0 x i16], ptr @b43_tab_noiseg1, i32 0, i32 1), ptr getelementptr inbounds ([0 x i16], ptr @b43_tab_noiseg2, i32 0, i32 1)
  %.35 = select i1 %cmp, ptr getelementptr inbounds ([0 x i16], ptr @b43_tab_noiseg1, i32 0, i32 2), ptr getelementptr inbounds ([0 x i16], ptr @b43_tab_noiseg2, i32 0, i32 2)
  %.36 = select i1 %cmp, ptr getelementptr inbounds ([0 x i16], ptr @b43_tab_noiseg1, i32 0, i32 3), ptr getelementptr inbounds ([0 x i16], ptr @b43_tab_noiseg2, i32 0, i32 3)
  %.37 = select i1 %cmp, ptr getelementptr inbounds ([0 x i16], ptr @b43_tab_noiseg1, i32 0, i32 4), ptr getelementptr inbounds ([0 x i16], ptr @b43_tab_noiseg2, i32 0, i32 4)
  %.38 = select i1 %cmp, ptr getelementptr inbounds ([0 x i16], ptr @b43_tab_noiseg1, i32 0, i32 5), ptr getelementptr inbounds ([0 x i16], ptr @b43_tab_noiseg2, i32 0, i32 5)
  %.39 = select i1 %cmp, ptr getelementptr inbounds ([0 x i16], ptr @b43_tab_noiseg1, i32 0, i32 6), ptr getelementptr inbounds ([0 x i16], ptr @b43_tab_noiseg2, i32 0, i32 6)
  %.40 = select i1 %cmp, ptr getelementptr inbounds ([0 x i16], ptr @b43_tab_noiseg1, i32 0, i32 7), ptr getelementptr inbounds ([0 x i16], ptr @b43_tab_noiseg2, i32 0, i32 7)
  %2 = ptrtoint ptr %b43_tab_noiseg1.b43_tab_noiseg2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %b43_tab_noiseg1.b43_tab_noiseg2, align 2
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 6144, i16 noundef zeroext 0, i16 noundef zeroext %3) #2
  %4 = ptrtoint ptr %. to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %., align 2
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 6144, i16 noundef zeroext 1, i16 noundef zeroext %5) #2
  %6 = ptrtoint ptr %.35 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %.35, align 2
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 6144, i16 noundef zeroext 2, i16 noundef zeroext %7) #2
  %8 = ptrtoint ptr %.36 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %.36, align 2
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 6144, i16 noundef zeroext 3, i16 noundef zeroext %9) #2
  %10 = ptrtoint ptr %.37 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %.37, align 2
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 6144, i16 noundef zeroext 4, i16 noundef zeroext %11) #2
  %12 = ptrtoint ptr %.38 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %.38, align 2
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 6144, i16 noundef zeroext 5, i16 noundef zeroext %13) #2
  %14 = ptrtoint ptr %.39 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %.39, align 2
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 6144, i16 noundef zeroext 6, i16 noundef zeroext %15) #2
  %16 = ptrtoint ptr %.40 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %.40, align 2
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 6144, i16 noundef zeroext 7, i16 noundef zeroext %17) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @b43_wa_nst(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %rev = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 8
  %0 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %1)
  %cmp = icmp ugt i8 %1, 5
  br i1 %cmp, label %if.then, label %entry.for.body.i23_crit_edge

entry.for.body.i23_crit_edge:                     ; preds = %entry
  br label %for.body.i23

if.then:                                          ; preds = %entry
  %call = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1097) #2
  %2 = and i16 %call, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %if.then.for.body.i16_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.for.body.i16_crit_edge:                   ; preds = %if.then
  br label %for.body.i16

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.04.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %conv.i = trunc i32 %i.04.i to i16
  %arrayidx.i = getelementptr i16, ptr @b43_tab_noisescaleg3, i32 %i.04.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx.i, align 2
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 5120, i16 noundef zeroext %conv.i, i16 noundef zeroext %4) #2
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 27
  br i1 %exitcond.not.i, label %for.body.i.if.end6_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i

for.body.i.if.end6_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end6

for.body.i16:                                     ; preds = %for.body.i16.for.body.i16_crit_edge, %if.then.for.body.i16_crit_edge
  %i.04.i11 = phi i32 [ %inc.i14, %for.body.i16.for.body.i16_crit_edge ], [ 0, %if.then.for.body.i16_crit_edge ]
  %conv.i12 = trunc i32 %i.04.i11 to i16
  %arrayidx.i13 = getelementptr i16, ptr @b43_tab_noisescaleg2, i32 %i.04.i11
  %5 = ptrtoint ptr %arrayidx.i13 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx.i13, align 2
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 5120, i16 noundef zeroext %conv.i12, i16 noundef zeroext %6) #2
  %inc.i14 = add nuw nsw i32 %i.04.i11, 1
  %exitcond.not.i15 = icmp eq i32 %inc.i14, 27
  br i1 %exitcond.not.i15, label %for.body.i16.if.end6_crit_edge, label %for.body.i16.for.body.i16_crit_edge

for.body.i16.for.body.i16_crit_edge:              ; preds = %for.body.i16
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i16

for.body.i16.if.end6_crit_edge:                   ; preds = %for.body.i16
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end6

for.body.i23:                                     ; preds = %for.body.i23.for.body.i23_crit_edge, %entry.for.body.i23_crit_edge
  %i.04.i18 = phi i32 [ %inc.i21, %for.body.i23.for.body.i23_crit_edge ], [ 0, %entry.for.body.i23_crit_edge ]
  %conv.i19 = trunc i32 %i.04.i18 to i16
  %arrayidx.i20 = getelementptr i16, ptr @b43_tab_noisescaleg1, i32 %i.04.i18
  %7 = ptrtoint ptr %arrayidx.i20 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx.i20, align 2
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 5120, i16 noundef zeroext %conv.i19, i16 noundef zeroext %8) #2
  %inc.i21 = add nuw nsw i32 %i.04.i18, 1
  %exitcond.not.i22 = icmp eq i32 %inc.i21, 27
  br i1 %exitcond.not.i22, label %for.body.i23.if.end6_crit_edge, label %for.body.i23.for.body.i23_crit_edge

for.body.i23.for.body.i23_crit_edge:              ; preds = %for.body.i23
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i23

for.body.i23.if.end6_crit_edge:                   ; preds = %for.body.i23
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end6

if.end6:                                          ; preds = %for.body.i23.if.end6_crit_edge, %for.body.i16.if.end6_crit_edge, %for.body.i.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @b43_wa_wrssi_offset(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %rev = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 8
  %0 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %for.body.preheader, label %entry.for.body8_crit_edge

entry.for.body8_crit_edge:                        ; preds = %entry
  br label %for.body8

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 21508, i16 noundef zeroext 0, i16 noundef zeroext 32) #2
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 21508, i16 noundef zeroext 1, i16 noundef zeroext 32) #2
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 21508, i16 noundef zeroext 2, i16 noundef zeroext 32) #2
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 21508, i16 noundef zeroext 3, i16 noundef zeroext 32) #2
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 21508, i16 noundef zeroext 4, i16 noundef zeroext 32) #2
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 21508, i16 noundef zeroext 5, i16 noundef zeroext 32) #2
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 21508, i16 noundef zeroext 6, i16 noundef zeroext 32) #2
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 21508, i16 noundef zeroext 7, i16 noundef zeroext 32) #2
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 21508, i16 noundef zeroext 8, i16 noundef zeroext 32) #2
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 21508, i16 noundef zeroext 9, i16 noundef zeroext 32) #2
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 21508, i16 noundef zeroext 10, i16 noundef zeroext 32) #2
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 21508, i16 noundef zeroext 11, i16 noundef zeroext 32) #2
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 21508, i16 noundef zeroext 12, i16 noundef zeroext 32) #2
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 21508, i16 noundef zeroext 13, i16 noundef zeroext 32) #2
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 21508, i16 noundef zeroext 14, i16 noundef zeroext 32) #2
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 21508, i16 noundef zeroext 15, i16 noundef zeroext 32) #2
  br label %if.end

for.body8:                                        ; preds = %for.body8.for.body8_crit_edge, %entry.for.body8_crit_edge
  %i.121 = phi i32 [ %inc11, %for.body8.for.body8_crit_edge ], [ 0, %entry.for.body8_crit_edge ]
  %conv9 = trunc i32 %i.121 to i16
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 4096, i16 noundef zeroext %conv9, i16 noundef zeroext 2080) #2
  %inc11 = add nuw nsw i32 %i.121, 1
  %exitcond.not = icmp eq i32 %inc11, 32
  br i1 %exitcond.not, label %for.body8.if.end_crit_edge, label %for.body8.for.body8_crit_edge

for.body8.for.body8_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body8

for.body8.if.end_crit_edge:                       ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.end:                                           ; preds = %for.body8.if.end_crit_edge, %for.body.preheader
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @b43_wa_altagc(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %rev = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 8
  %0 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 19456, i16 noundef zeroext 0, i16 noundef zeroext 254) #2
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 19456, i16 noundef zeroext 1, i16 noundef zeroext 13) #2
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 19456, i16 noundef zeroext 2, i16 noundef zeroext 19) #2
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 19456, i16 noundef zeroext 3, i16 noundef zeroext 25) #2
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 6144, i16 noundef zeroext 0, i16 noundef zeroext 10000) #2
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 6144, i16 noundef zeroext 1, i16 noundef zeroext -25725) #2
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 6144, i16 noundef zeroext 2, i16 noundef zeroext -25725) #2
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 6144, i16 noundef zeroext 3, i16 noundef zeroext 3981) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1109, i16 noundef zeroext 4) #2
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 254) #2
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 0, i16 noundef zeroext 1, i16 noundef zeroext 13) #2
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 0, i16 noundef zeroext 2, i16 noundef zeroext 19) #2
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext 0, i16 noundef zeroext 3, i16 noundef zeroext 25) #2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1189, i16 noundef zeroext 255, i16 noundef zeroext 22272) #2
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1050, i16 noundef zeroext -128, i16 noundef zeroext 15) #2
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1050, i16 noundef zeroext -16257, i16 noundef zeroext 11136) #2
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1164, i16 noundef zeroext -3841, i16 noundef zeroext 768) #2
  tail call void @b43_radio_set(ptr noundef %dev, i16 noundef zeroext 122, i16 noundef zeroext 8) #2
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1184, i16 noundef zeroext -16, i16 noundef zeroext 8) #2
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1185, i16 noundef zeroext -3841, i16 noundef zeroext 1536) #2
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1186, i16 noundef zeroext -3841, i16 noundef zeroext 1792) #2
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1184, i16 noundef zeroext -3841, i16 noundef zeroext 256) #2
  %2 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp5 = icmp eq i8 %3, 1
  br i1 %cmp5, label %if.then7, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1186, i16 noundef zeroext -16, i16 noundef zeroext 7) #2
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1160, i16 noundef zeroext -256, i16 noundef zeroext 28) #2
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1160, i16 noundef zeroext -16129, i16 noundef zeroext 512) #2
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1174, i16 noundef zeroext -256, i16 noundef zeroext 28) #2
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1161, i16 noundef zeroext -256, i16 noundef zeroext 32) #2
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1161, i16 noundef zeroext -16129, i16 noundef zeroext 512) #2
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1154, i16 noundef zeroext -256, i16 noundef zeroext 46) #2
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1174, i16 noundef zeroext 255, i16 noundef zeroext 6656) #2
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1153, i16 noundef zeroext -256, i16 noundef zeroext 40) #2
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1153, i16 noundef zeroext 255, i16 noundef zeroext 11264) #2
  %4 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp11 = icmp eq i8 %5, 1
  br i1 %cmp11, label %if.then13, label %if.else14

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1072, i16 noundef zeroext 2347) #2
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1051, i16 noundef zeroext -31, i16 noundef zeroext 2) #2
  br label %if.end21

if.else14:                                        ; preds = %if.end8
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1051, i16 noundef zeroext -31) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1055, i16 noundef zeroext 10362) #2
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1056, i16 noundef zeroext -16, i16 noundef zeroext 4) #2
  %6 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %7)
  %cmp17 = icmp ugt i8 %7, 5
  br i1 %cmp17, label %if.then19, label %if.else14.if.end21_crit_edge

if.else14.if.end21_crit_edge:                     ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end21

if.then19:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1058, i16 noundef zeroext 10362) #2
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1056, i16 noundef zeroext 4095, i16 noundef zeroext 12288) #2
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.else14.if.end21_crit_edge, %if.then13
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1192, i16 noundef zeroext -32640, i16 noundef zeroext 30836) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1166, i16 noundef zeroext 7168) #2
  %8 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp24 = icmp eq i8 %9, 1
  br i1 %cmp24, label %if.then26, label %if.end21.if.end28_crit_edge

if.end21.if.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end28

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1195, i16 noundef zeroext -3841, i16 noundef zeroext 1536) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1163, i16 noundef zeroext 94) #2
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1164, i16 noundef zeroext -256, i16 noundef zeroext 30) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1165, i16 noundef zeroext 2) #2
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end21.if.end28_crit_edge
  %.sink98 = phi i16 [ 21504, %if.then26 ], [ 2048, %if.end21.if.end28_crit_edge ]
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext %.sink98, i16 noundef zeroext 0, i16 noundef zeroext 0) #2
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext %.sink98, i16 noundef zeroext 1, i16 noundef zeroext 7) #2
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext %.sink98, i16 noundef zeroext 2, i16 noundef zeroext 16) #2
  tail call void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext %.sink98, i16 noundef zeroext 3, i16 noundef zeroext 28) #2
  %10 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %11)
  %cmp31 = icmp ugt i8 %11, 5
  br i1 %cmp31, label %if.then33, label %if.end28.if.end34_crit_edge

if.end28.if.end34_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end34

if.then33:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1062, i16 noundef zeroext -4) #2
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1062, i16 noundef zeroext -4097) #2
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end28.if.end34_crit_edge
  %call = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1024) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_phy_set(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_ofdmtab_write32(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @b43_phy_read(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_radio_set(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_gtab_write(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/b43/wa.c", i32 368, i32 4}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
