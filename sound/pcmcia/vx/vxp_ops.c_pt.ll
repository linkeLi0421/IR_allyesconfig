; ModuleID = '/llk/IR_all_yes/sound/pcmcia/vx/vxp_ops.c_pt.bc'
source_filename = "../sound/pcmcia/vx/vxp_ops.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_vx_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.vx_core = type { ptr, [2 x ptr], i32, i32, ptr, ptr, %struct.mutex, i32, i32, ptr, ptr, %struct.vx_rmh, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vx_ibl_info, [2 x [2 x i32]], [2 x [4 x i32]], [4 x i8], [4 x i32], [4 x i8], %struct.mutex, [4 x ptr] }
%struct.vx_rmh = type { i16, i16, [16 x i32], [16 x i32], i16 }
%struct.vx_ibl_info = type { i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_vxpocket = type { %struct.vx_core, i32, i32, i32, i32, i32, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.vx_pipe = type { i32, i8, i32, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i64, i32, ptr }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }

@snd_vxpocket_ops = dso_local constant { %struct.snd_vx_ops, [60 x i8] } { %struct.snd_vx_ops { ptr @vxp_inb, ptr null, ptr @vxp_outb, ptr null, ptr @vxp_test_and_ack, ptr @vxp_validate_irq, ptr @vxp_write_codec_reg, ptr null, ptr @vxp_reset_codec, ptr @vxp_change_audio_source, ptr @vxp_set_clock_source, ptr @vxp_load_dsp, ptr @vxp_reset_dsp, ptr @vxp_reset_board, ptr @vxp_add_mic_controls, ptr @vxp_dma_write, ptr @vxp_dma_read }, [60 x i8] zeroinitializer }, align 32
@vxp_reg_offset = internal constant { [27 x i32], [52 x i8] } { [27 x i32] [i32 0, i32 1, i32 2, i32 3, i32 5, i32 6, i32 7, i32 4, i32 8, i32 0, i32 0, i32 11, i32 12, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 9, i32 10, i32 14, i32 15], [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/pcmcia/vx/vxp_ops.c\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUG?\0A\00", [26 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013cannot find xilinx magic word (%x)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017check ISR_HF2\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013vxpocket: load xilinx mismatch at %d: 0x%x != 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017xilinx: dsp size received 0x%x, orig 0x%zx\0A\00", [50 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@switch.table.vx_set_mic_level = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 6, i32 8, i32 11, i32 15], [16 x i8] zeroinitializer }, align 32
@switch.table.vxp_change_audio_source = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 6, i32 8, i32 11, i32 15], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.6 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"snd_vxpocket_ops\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 586, i32 25 }
@___asan_gen_.10 = private unnamed_addr constant [15 x i8] c"vxp_reg_offset\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 18, i32 18 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 257, i32 3 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 87, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 156, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 173, i32 4 }
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private constant [29 x i8] c"../sound/pcmcia/vx/vxp_ops.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 191, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [30 x i8] c"switch.table.vx_set_mic_level\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [37 x i8] c"switch.table.vxp_change_audio_source\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @snd_vxpocket_ops, ptr @vxp_reg_offset, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @switch.table.vx_set_mic_level, ptr @switch.table.vxp_change_audio_source], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vxpocket_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxp_reg_offset to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vx_set_mic_level to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vxp_change_audio_source to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vx_set_mic_boost(ptr noundef %chip, i32 noundef %boost) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_status = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %chip_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chip_status, align 4
  %and = and i32 %1, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %regCDSP = getelementptr inbounds %struct.snd_vxpocket, ptr %chip, i32 0, i32 3
  %2 = ptrtoint ptr %regCDSP to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %regCDSP, align 4
  %and1 = and i32 %3, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end15_crit_edge, label %if.then3

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %boost)
  %tobool4.not = icmp eq i32 %boost, 0
  %or10 = and i32 %3, -25
  %storemerge.v = select i1 %tobool4.not, i32 16, i32 8
  %storemerge = or i32 %or10, %storemerge.v
  %4 = ptrtoint ptr %regCDSP to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %storemerge, ptr %regCDSP, align 4
  %conv = trunc i32 %storemerge to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %port.i.i = getelementptr inbounds %struct.snd_vxpocket, ptr %chip, i32 0, i32 1
  %5 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port.i.i, align 4
  %add.i.i = add i32 %6, 8
  %and.i = and i32 %add.i.i, 1048575
  %add.i = or i32 %and.i, -18874368
  %7 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %conv) #4, !srcloc !25
  br label %if.end15

if.end15:                                         ; preds = %if.then3, %if.end.if.end15_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vxp_outb(ptr nocapture noundef readonly %chip, i32 noundef %offset, i8 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %port.i = getelementptr inbounds %struct.snd_vxpocket, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port.i, align 4
  %arrayidx.i = getelementptr [27 x i32], ptr @vxp_reg_offset, i32 0, i32 %offset
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %3, %1
  %and = and i32 %add.i, 1048575
  %add = or i32 %and, -18874368
  %4 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %val) #4, !srcloc !25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vx_set_mic_level(ptr noundef %chip, i32 noundef %level) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_status = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %chip_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chip_status, align 4
  %and = and i32 %1, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %regCDSP = getelementptr inbounds %struct.snd_vxpocket, ptr %chip, i32 0, i32 3
  %2 = ptrtoint ptr %regCDSP to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %regCDSP, align 4
  %and1 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then3:                                         ; preds = %if.end
  %switch.tableidx = add i32 %level, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 4
  br i1 %4, label %switch.lookup, label %if.then3.vx_compute_mic_level.exit_crit_edge

if.then3.vx_compute_mic_level.exit_crit_edge:     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %vx_compute_mic_level.exit

switch.lookup:                                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.vx_set_mic_level, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %vx_compute_mic_level.exit

vx_compute_mic_level.exit:                        ; preds = %switch.lookup, %if.then3.vx_compute_mic_level.exit_crit_edge
  %level.addr.0.i = phi i32 [ %level, %if.then3.vx_compute_mic_level.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %conv = trunc i32 %level.addr.0.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %port.i.i = getelementptr inbounds %struct.snd_vxpocket, ptr %chip, i32 0, i32 1
  %6 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port.i.i, align 4
  %add.i.i = add i32 %7, 12
  %and.i = and i32 %add.i.i, 1048575
  %add.i = or i32 %and.i, -18874368
  %8 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %conv) #4, !srcloc !25
  br label %if.end4

if.end4:                                          ; preds = %vx_compute_mic_level.exit, %if.end.if.end4_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @vxp_inb(ptr nocapture noundef readonly %chip, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %port.i = getelementptr inbounds %struct.snd_vxpocket, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port.i, align 4
  %arrayidx.i = getelementptr [27 x i32], ptr @vxp_reg_offset, i32 0, i32 %offset
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %3, %1
  %and = and i32 %add.i, 1048575
  %add = or i32 %and, -18874368
  %4 = inttoptr i32 %add to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #4, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  ret i8 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vxp_test_and_ack(ptr nocapture noundef readonly %_chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_status = getelementptr inbounds %struct.vx_core, ptr %_chip, i32 0, i32 7
  %0 = ptrtoint ptr %chip_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chip_status, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %port.i.i = getelementptr inbounds %struct.snd_vxpocket, ptr %_chip, i32 0, i32 1
  %2 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port.i.i, align 4
  %add.i.i = add i32 %3, 13
  %and.i = and i32 %add.i.i, 1048575
  %add.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add.i to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #4, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  %6 = and i8 %5, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not = icmp eq i8 %6, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %regDIALOG = getelementptr inbounds %struct.snd_vxpocket, ptr %_chip, i32 0, i32 4
  %7 = ptrtoint ptr %regDIALOG to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %regDIALOG, align 4
  %9 = trunc i32 %8 to i8
  %conv5 = or i8 %9, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %10 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port.i.i, align 4
  %add.i.i17 = add i32 %11, 13
  %and.i18 = and i32 %add.i.i17, 1048575
  %add.i19 = or i32 %and.i18, -18874368
  %12 = inttoptr i32 %add.i19 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %conv5) #4, !srcloc !25
  %13 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port.i.i, align 4
  %add.i.i21 = add i32 %14, 13
  %and.i22 = and i32 %add.i.i21, 1048575
  %add.i23 = or i32 %and.i22, -18874368
  %15 = inttoptr i32 %add.i23 to ptr
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #4, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  %17 = ptrtoint ptr %regDIALOG to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %regDIALOG, align 4
  %19 = trunc i32 %18 to i8
  %conv9 = and i8 %19, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %20 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port.i.i, align 4
  %add.i.i25 = add i32 %21, 13
  %and.i26 = and i32 %add.i.i25, 1048575
  %add.i27 = or i32 %and.i26, -18874368
  %22 = inttoptr i32 %add.i27 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 %conv9) #4, !srcloc !25
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -6, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vxp_validate_irq(ptr nocapture noundef %_chip, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %regCDSP1 = getelementptr inbounds %struct.snd_vxpocket, ptr %_chip, i32 0, i32 3
  %0 = ptrtoint ptr %regCDSP1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %regCDSP1, align 4
  %and = and i32 %1, -5
  %masksel = select i1 %tobool.not, i32 0, i32 4
  %and.sink = or i32 %and, %masksel
  store i32 %and.sink, ptr %regCDSP1, align 4
  %conv = trunc i32 %and.sink to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %port.i.i = getelementptr inbounds %struct.snd_vxpocket, ptr %_chip, i32 0, i32 1
  %2 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port.i.i, align 4
  %add.i.i = add i32 %3, 8
  %and.i = and i32 %add.i.i, 1048575
  %add.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %conv) #4, !srcloc !25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vxp_write_codec_reg(ptr nocapture noundef readonly %chip, i32 noundef %codec, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %codec)
  %tobool.not = icmp eq i32 %codec, 0
  %port.i.i = getelementptr inbounds %struct.snd_vxpocket, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port.i.i, align 4
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.i.i = add i32 %1, 9
  %and.i = and i32 %add.i.i, 1048575
  %add.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add.i to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #4, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.i.i10 = add i32 %1, 12
  %and.i11 = and i32 %add.i.i10, 1048575
  %add.i12 = or i32 %and.i11, -18874368
  %4 = inttoptr i32 %add.i12 to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #4, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %port.i.i13 = getelementptr inbounds %struct.snd_vxpocket, ptr %chip, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %i.022 = phi i32 [ 0, %if.end ], [ %inc, %for.body.for.body_crit_edge ]
  %data.addr.021 = phi i32 [ %data, %if.end ], [ %shl, %for.body.for.body_crit_edge ]
  %and = lshr i32 %data.addr.021, 16
  %6 = trunc i32 %and to i8
  %conv = and i8 %6, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %7 = ptrtoint ptr %port.i.i13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port.i.i13, align 4
  %add.i.i14 = add i32 %8, 11
  %and.i15 = and i32 %add.i.i14, 1048575
  %add.i16 = or i32 %and.i15, -18874368
  %9 = inttoptr i32 %add.i16 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %conv) #4, !srcloc !25
  %inc = add nuw nsw i32 %i.022, 1
  %shl = shl i32 %data.addr.021, 1
  %exitcond.not = icmp eq i32 %inc, 24
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %port.i.i13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port.i.i13, align 4
  %add.i.i18 = add i32 %11, 10
  %and.i19 = and i32 %add.i.i18, 1048575
  %add.i20 = or i32 %and.i19, -18874368
  %12 = inttoptr i32 %add.i20 to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #4, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vxp_reset_codec(ptr nocapture noundef %_chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regCDSP = getelementptr inbounds %struct.snd_vxpocket, ptr %_chip, i32 0, i32 3
  %0 = ptrtoint ptr %regCDSP to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %regCDSP, align 4
  %2 = trunc i32 %1 to i8
  %conv = or i8 %2, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %port.i.i = getelementptr inbounds %struct.snd_vxpocket, ptr %_chip, i32 0, i32 1
  %3 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port.i.i, align 4
  %add.i.i = add i32 %4, 8
  %and.i = and i32 %add.i.i, 1048575
  %add.i = or i32 %and.i, -18874368
  %5 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 %conv) #4, !srcloc !25
  %6 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port.i.i, align 4
  %add.i.i12 = add i32 %7, 8
  %and.i13 = and i32 %add.i.i12, 1048575
  %add.i14 = or i32 %and.i13, -18874368
  %8 = inttoptr i32 %add.i14 to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #4, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @msleep(i32 noundef 10) #4
  %10 = ptrtoint ptr %regCDSP to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %regCDSP, align 4
  %and = and i32 %11, -3
  store i32 %and, ptr %regCDSP, align 4
  %conv3 = trunc i32 %and to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %12 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port.i.i, align 4
  %add.i.i16 = add i32 %13, 8
  %and.i17 = and i32 %add.i.i16, 1048575
  %add.i18 = or i32 %and.i17, -18874368
  %14 = inttoptr i32 %add.i18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %conv3) #4, !srcloc !25
  %15 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port.i.i, align 4
  %add.i.i20 = add i32 %16, 8
  %and.i21 = and i32 %add.i.i20, 1048575
  %add.i22 = or i32 %and.i21, -18874368
  %17 = inttoptr i32 %add.i22 to ptr
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %17) #4, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @msleep(i32 noundef 1) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vxp_change_audio_source(ptr nocapture noundef %_chip, i32 noundef %src) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %src to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %src, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb11
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %regCDSP = getelementptr inbounds %struct.snd_vxpocket, ptr %_chip, i32 0, i32 3
  %1 = ptrtoint ptr %regCDSP to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %regCDSP, align 4
  %or = or i32 %2, 64
  store i32 %or, ptr %regCDSP, align 4
  %conv = trunc i32 %or to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %port.i.i = getelementptr inbounds %struct.snd_vxpocket, ptr %_chip, i32 0, i32 1
  %3 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port.i.i, align 4
  %add.i.i = add i32 %4, 8
  %and.i = and i32 %add.i.i, 1048575
  %add.i = or i32 %and.i, -18874368
  %5 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 %conv) #4, !srcloc !25
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %regCDSP3 = getelementptr inbounds %struct.snd_vxpocket, ptr %_chip, i32 0, i32 3
  %6 = ptrtoint ptr %regCDSP3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %regCDSP3, align 4
  %type = getelementptr inbounds %struct.vx_core, ptr %_chip, i32 0, i32 2
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp = icmp eq i32 %9, 4
  %storemerge58.v = select i1 %cmp, i32 -89, i32 -73
  %storemerge58 = and i32 %storemerge58.v, %7
  %10 = ptrtoint ptr %regCDSP3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %storemerge58, ptr %regCDSP3, align 4
  %conv10 = trunc i32 %storemerge58 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %port.i.i59 = getelementptr inbounds %struct.snd_vxpocket, ptr %_chip, i32 0, i32 1
  %11 = ptrtoint ptr %port.i.i59 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port.i.i59, align 4
  %add.i.i60 = add i32 %12, 8
  %and.i61 = and i32 %add.i.i60, 1048575
  %add.i62 = or i32 %and.i61, -18874368
  %13 = inttoptr i32 %add.i62 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %conv10) #4, !srcloc !25
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  %regCDSP12 = getelementptr inbounds %struct.snd_vxpocket, ptr %_chip, i32 0, i32 3
  %14 = ptrtoint ptr %regCDSP12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %regCDSP12, align 4
  %type14 = getelementptr inbounds %struct.vx_core, ptr %_chip, i32 0, i32 2
  %16 = ptrtoint ptr %type14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %17)
  %cmp15 = icmp eq i32 %17, 4
  br i1 %cmp15, label %if.then17, label %if.else29

if.then17:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #6
  %and19 = and i32 %15, -89
  %mic_level = getelementptr inbounds %struct.snd_vxpocket, ptr %_chip, i32 0, i32 2
  %18 = ptrtoint ptr %mic_level to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mic_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  %storemerge.v = select i1 %tobool.not, i32 16, i32 8
  %storemerge = or i32 %storemerge.v, %and19
  %20 = ptrtoint ptr %regCDSP12 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %storemerge, ptr %regCDSP12, align 4
  %conv28 = trunc i32 %storemerge to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %port.i.i63 = getelementptr inbounds %struct.snd_vxpocket, ptr %_chip, i32 0, i32 1
  %21 = ptrtoint ptr %port.i.i63 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port.i.i63, align 4
  %add.i.i64 = add i32 %22, 8
  %and.i65 = and i32 %add.i.i64, 1048575
  %add.i66 = or i32 %and.i65, -18874368
  %23 = inttoptr i32 %add.i66 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 %conv28) #4, !srcloc !25
  br label %sw.epilog

if.else29:                                        ; preds = %sw.bb11
  %and13 = and i32 %15, -73
  %or31 = or i32 %and13, 8
  %24 = ptrtoint ptr %regCDSP12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or31, ptr %regCDSP12, align 4
  %conv33 = trunc i32 %or31 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %port.i.i67 = getelementptr inbounds %struct.snd_vxpocket, ptr %_chip, i32 0, i32 1
  %25 = ptrtoint ptr %port.i.i67 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %port.i.i67, align 4
  %add.i.i68 = add i32 %26, 8
  %and.i69 = and i32 %add.i.i68, 1048575
  %add.i70 = or i32 %and.i69, -18874368
  %27 = inttoptr i32 %add.i70 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 %conv33) #4, !srcloc !25
  %mic_level34 = getelementptr inbounds %struct.snd_vxpocket, ptr %_chip, i32 0, i32 2
  %28 = ptrtoint ptr %mic_level34 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mic_level34, align 4
  %switch.tableidx = add i32 %29, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %30 = icmp ult i32 %switch.tableidx, 4
  br i1 %30, label %switch.lookup, label %if.else29.vx_compute_mic_level.exit_crit_edge

if.else29.vx_compute_mic_level.exit_crit_edge:    ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #6
  br label %vx_compute_mic_level.exit

switch.lookup:                                    ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.vxp_change_audio_source, i32 0, i32 %switch.tableidx
  %31 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %31)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %vx_compute_mic_level.exit

vx_compute_mic_level.exit:                        ; preds = %switch.lookup, %if.else29.vx_compute_mic_level.exit_crit_edge
  %level.addr.0.i = phi i32 [ %29, %if.else29.vx_compute_mic_level.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %conv35 = trunc i32 %level.addr.0.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %32 = ptrtoint ptr %port.i.i67 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port.i.i67, align 4
  %add.i.i72 = add i32 %33, 12
  %and.i73 = and i32 %add.i.i72, 1048575
  %add.i74 = or i32 %and.i73, -18874368
  %34 = inttoptr i32 %add.i74 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 %conv35) #4, !srcloc !25
  br label %sw.epilog

sw.epilog:                                        ; preds = %vx_compute_mic_level.exit, %if.then17, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vxp_set_clock_source(ptr nocapture noundef %_chip, i32 noundef %source) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %source)
  %cmp = icmp eq i32 %source, 0
  %regCDSP = getelementptr inbounds %struct.snd_vxpocket, ptr %_chip, i32 0, i32 3
  %0 = ptrtoint ptr %regCDSP to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %regCDSP, align 4
  %and = and i32 %1, -129
  %masksel = select i1 %cmp, i32 0, i32 128
  %or.sink = or i32 %and, %masksel
  store i32 %or.sink, ptr %regCDSP, align 4
  %conv = trunc i32 %or.sink to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %port.i.i = getelementptr inbounds %struct.snd_vxpocket, ptr %_chip, i32 0, i32 1
  %2 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port.i.i, align 4
  %add.i.i = add i32 %3, 8
  %and.i = and i32 %add.i.i, 1048575
  %add.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %conv) #4, !srcloc !25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vxp_load_dsp(ptr noundef %vx, i32 noundef %index, ptr noundef %fw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %index to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %index, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
    i32 2, label %sw.bb7
    i32 3, label %sw.bb9
  ]

sw.bb:                                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %1, 20
  %port.i.i.i = getelementptr inbounds %struct.snd_vxpocket, ptr %vx, i32 0, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %sw.bb
  %2 = ptrtoint ptr %port.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port.i.i.i, align 4
  %add.i.i.i = add i32 %3, 8
  %and.i.i = and i32 %add.i.i.i, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %4 = inttoptr i32 %add.i.i to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #4, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 -89, i8 %5)
  %cmp.i = icmp eq i8 %5, -89
  br i1 %cmp.i, label %if.end, label %if.end.i

if.end.i:                                         ; preds = %do.body.i
  tail call void @msleep(i32 noundef 10) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %6
  %cmp2.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp2.i, label %if.end.i.do.body.i_crit_edge, label %vx_check_magic.exit.thread

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

vx_check_magic.exit.thread:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv.le.i = zext i8 %5 to i32
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 87, ptr noundef nonnull @.str.2, i32 noundef %conv.le.i) #4
  br label %cleanup

if.end:                                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call i32 @snd_vx_load_boot_image(ptr noundef %vx, ptr noundef %fw) #4
  %7 = tail call i32 @llvm.smin.i32(i32 %call1, i32 0)
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  %regDIALOG.i = getelementptr inbounds %struct.snd_vxpocket, ptr %vx, i32 0, i32 4
  %8 = ptrtoint ptr %regDIALOG.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %regDIALOG.i, align 4
  %or.i = or i32 %9, 128
  store i32 %or.i, ptr %regDIALOG.i, align 4
  %conv.i = trunc i32 %or.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %port.i.i.i38 = getelementptr inbounds %struct.snd_vxpocket, ptr %vx, i32 0, i32 1
  %10 = ptrtoint ptr %port.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port.i.i.i38, align 4
  %add.i.i.i39 = add i32 %11, 13
  %and.i.i40 = and i32 %add.i.i.i39, 1048575
  %add.i.i41 = or i32 %and.i.i40, -18874368
  %12 = inttoptr i32 %add.i.i41 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %conv.i) #4, !srcloc !25
  %13 = ptrtoint ptr %port.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port.i.i.i38, align 4
  %add.i.i126.i = add i32 %14, 14
  %and.i127.i = and i32 %add.i.i126.i, 1048575
  %add.i128.i = or i32 %and.i127.i, -18874368
  %15 = inttoptr i32 %add.i128.i to ptr
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #4, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  %17 = ptrtoint ptr %port.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port.i.i.i38, align 4
  %add.i.i130.i = add i32 %18, 15
  %and.i131.i = and i32 %add.i.i130.i, 1048575
  %add.i132.i = or i32 %and.i131.i, -18874368
  %19 = inttoptr i32 %add.i132.i to ptr
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %19) #4, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %21 = ptrtoint ptr %port.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port.i.i.i38, align 4
  %and.i134.i = and i32 %22, 1048575
  %add.i135.i = or i32 %and.i134.i, -18874368
  %23 = inttoptr i32 %add.i135.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 0) #4, !srcloc !25
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 156, ptr noundef nonnull @.str.3) #4
  %call5.i = tail call i32 @snd_vx_check_reg_bit(ptr noundef %vx, i32 noundef 2, i32 noundef 8, i32 noundef 8, i32 noundef 20) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i42 = icmp slt i32 %call5.i, 0
  br i1 %cmp.i42, label %sw.bb5._error.i_crit_edge, label %if.end.i43

sw.bb5._error.i_crit_edge:                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #6
  br label %_error.i

if.end.i43:                                       ; preds = %sw.bb5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %24 = ptrtoint ptr %port.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port.i.i.i38, align 4
  %and.i137.i = and i32 %25, 1048575
  %add.i138.i = or i32 %and.i137.i, -18874368
  %26 = inttoptr i32 %add.i138.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 16) #4, !srcloc !25
  %27 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp8211.not.i = icmp eq i32 %28, 0
  br i1 %cmp8211.not.i, label %if.end.i43.for.end.i_crit_edge, label %for.body.preheader.i

if.end.i43.for.end.i_crit_edge:                   ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.body.preheader.i:                             ; preds = %if.end.i43
  %data7.i = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %29 = ptrtoint ptr %data7.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data7.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %image.0214.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %30, %for.body.preheader.i ]
  %i.0212.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %31 = ptrtoint ptr %image.0214.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %image.0214.i, align 1
  %call10.i = tail call i32 @snd_vx_check_reg_bit(ptr noundef %vx, i32 noundef 2, i32 noundef 2, i32 noundef 2, i32 noundef 200) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %for.body.i._error.i_crit_edge, label %if.end14.i

for.body.i._error.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %_error.i

if.end14.i:                                       ; preds = %for.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %33 = ptrtoint ptr %port.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %port.i.i.i38, align 4
  %add.i.i140.i = add i32 %34, 7
  %and.i141.i = and i32 %add.i.i140.i, 1048575
  %add.i142.i = or i32 %and.i141.i, -18874368
  %35 = inttoptr i32 %add.i142.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 %32) #4, !srcloc !25
  %call15.i = tail call i32 @snd_vx_check_reg_bit(ptr noundef %vx, i32 noundef 2, i32 noundef 1, i32 noundef 1, i32 noundef 200) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp16.i = icmp slt i32 %call15.i, 0
  br i1 %cmp16.i, label %if.end14.i._error.i_crit_edge, label %if.end19.i

if.end14.i._error.i_crit_edge:                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %_error.i

if.end19.i:                                       ; preds = %if.end14.i
  %36 = ptrtoint ptr %port.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port.i.i.i38, align 4
  %add.i.i144.i = add i32 %37, 7
  %and.i145.i = and i32 %add.i.i144.i, 1048575
  %add.i146.i = or i32 %and.i145.i, -18874368
  %38 = inttoptr i32 %add.i146.i to ptr
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %38) #4, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %32)
  %cmp23.not.i = icmp eq i8 %39, %32
  br i1 %cmp23.not.i, label %if.end19.i.for.inc.i_crit_edge, label %if.then25.i

if.end19.i.for.inc.i_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.then25.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv22.i = zext i8 %32 to i32
  %conv21.i = zext i8 %39 to i32
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 173, ptr noundef nonnull @.str.4, i32 noundef %i.0212.i, i32 noundef %conv21.i, i32 noundef %conv22.i) #4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then25.i, %if.end19.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.0212.i, 1
  %incdec.ptr.i = getelementptr i8, ptr %image.0214.i, i32 1
  %40 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fw, align 4
  %cmp8.i = icmp ult i32 %inc.i, %41
  br i1 %cmp8.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.i43.for.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %42 = ptrtoint ptr %port.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %port.i.i.i38, align 4
  %and.i148.i = and i32 %43, 1048575
  %add.i149.i = or i32 %and.i148.i, -18874368
  %44 = inttoptr i32 %add.i149.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %44, i8 0) #4, !srcloc !25
  %call28.i = tail call i32 @snd_vx_check_reg_bit(ptr noundef %vx, i32 noundef 2, i32 noundef 16, i32 noundef 16, i32 noundef 20) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp29.i = icmp slt i32 %call28.i, 0
  br i1 %cmp29.i, label %for.end.i._error.i_crit_edge, label %if.end32.i

for.end.i._error.i_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %_error.i

if.end32.i:                                       ; preds = %for.end.i
  %call33.i = tail call i32 @snd_vx_check_reg_bit(ptr noundef %vx, i32 noundef 2, i32 noundef 1, i32 noundef 1, i32 noundef 200) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %cmp34.i = icmp slt i32 %call33.i, 0
  br i1 %cmp34.i, label %if.end32.i._error.i_crit_edge, label %if.end37.i

if.end32.i._error.i_crit_edge:                    ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %_error.i

if.end37.i:                                       ; preds = %if.end32.i
  %45 = ptrtoint ptr %port.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %port.i.i.i38, align 4
  %add.i.i151.i = add i32 %46, 5
  %and.i152.i = and i32 %add.i.i151.i, 1048575
  %add.i153.i = or i32 %and.i152.i, -18874368
  %47 = inttoptr i32 %add.i153.i to ptr
  %48 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %47) #4, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  %conv39.i = zext i8 %48 to i32
  %shl.i = shl nuw nsw i32 %conv39.i, 16
  %49 = ptrtoint ptr %port.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %port.i.i.i38, align 4
  %add.i.i155.i = add i32 %50, 6
  %and.i156.i = and i32 %add.i.i155.i, 1048575
  %add.i157.i = or i32 %and.i156.i, -18874368
  %51 = inttoptr i32 %add.i157.i to ptr
  %52 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %51) #4, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  %conv41.i = zext i8 %52 to i32
  %shl42.i = shl nuw nsw i32 %conv41.i, 8
  %or43.i = or i32 %shl42.i, %shl.i
  %53 = ptrtoint ptr %port.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %port.i.i.i38, align 4
  %add.i.i159.i = add i32 %54, 7
  %and.i160.i = and i32 %add.i.i159.i, 1048575
  %add.i161.i = or i32 %and.i160.i, -18874368
  %55 = inttoptr i32 %add.i161.i to ptr
  %56 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %55) #4, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  %conv45.i = zext i8 %56 to i32
  %or46.i = or i32 %or43.i, %conv45.i
  %57 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %fw, align 4
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 191, ptr noundef nonnull @.str.5, i32 noundef %or46.i, i32 noundef %58) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %59 = ptrtoint ptr %port.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %port.i.i.i38, align 4
  %and.i163.i = and i32 %60, 1048575
  %add.i164.i = or i32 %and.i163.i, -18874368
  %61 = inttoptr i32 %add.i164.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %61, i8 8) #4, !srcloc !25
  tail call void @msleep(i32 noundef 300) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %62 = load volatile i32, ptr @jiffies, align 128
  %add.i165.i = add i32 %62, 20
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i.i.do.body.i.i_crit_edge, %if.end37.i
  %63 = ptrtoint ptr %port.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %port.i.i.i38, align 4
  %add.i.i.i.i = add i32 %64, 8
  %and.i.i.i = and i32 %add.i.i.i.i, 1048575
  %add.i.i166.i = or i32 %and.i.i.i, -18874368
  %65 = inttoptr i32 %add.i.i166.i to ptr
  %66 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %65) #4, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 -89, i8 %66)
  %cmp.i.i = icmp eq i8 %66, -89
  br i1 %cmp.i.i, label %if.end52.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %do.body.i.i
  tail call void @msleep(i32 noundef 10) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %67 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i165.i, %67
  %cmp2.i.i = icmp sgt i32 %sub.i.i, -1
  br i1 %cmp2.i.i, label %if.end.i.i.do.body.i.i_crit_edge, label %vx_check_magic.exit.thread.i

if.end.i.i.do.body.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i

vx_check_magic.exit.thread.i:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv.le.i.i = zext i8 %66 to i32
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 87, ptr noundef nonnull @.str.2, i32 noundef %conv.le.i.i) #4
  br label %_error.i

if.end52.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %68 = ptrtoint ptr %port.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %port.i.i.i38, align 4
  %add.i.i168.i = add i32 %69, 14
  %and.i169.i = and i32 %add.i.i168.i, 1048575
  %add.i170.i = or i32 %and.i169.i, -18874368
  %70 = inttoptr i32 %add.i170.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %70, i8 %16) #4, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %71 = ptrtoint ptr %port.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %port.i.i.i38, align 4
  %add.i.i172.i = add i32 %72, 15
  %and.i173.i = and i32 %add.i.i172.i, 1048575
  %add.i174.i = or i32 %and.i173.i, -18874368
  %73 = inttoptr i32 %add.i174.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %73, i8 %20) #4, !srcloc !25
  %74 = ptrtoint ptr %regDIALOG.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %regDIALOG.i, align 4
  %or56.i = or i32 %75, 128
  store i32 %or56.i, ptr %regDIALOG.i, align 4
  %conv58.i = trunc i32 %or56.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %76 = ptrtoint ptr %port.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %port.i.i.i38, align 4
  %add.i.i176.i = add i32 %77, 13
  %and.i177.i = and i32 %add.i.i176.i, 1048575
  %add.i178.i = or i32 %and.i177.i, -18874368
  %78 = inttoptr i32 %add.i178.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %78, i8 %conv58.i) #4, !srcloc !25
  %79 = ptrtoint ptr %port.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %port.i.i.i38, align 4
  %add.i.i180.i = add i32 %80, 13
  %and.i181.i = and i32 %add.i.i180.i, 1048575
  %add.i182.i = or i32 %and.i181.i, -18874368
  %81 = inttoptr i32 %add.i182.i to ptr
  %82 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %81) #4, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @msleep(i32 noundef 10) #4
  %83 = ptrtoint ptr %regDIALOG.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %regDIALOG.i, align 4
  %and.i = and i32 %84, -129
  store i32 %and.i, ptr %regDIALOG.i, align 4
  %conv62.i = trunc i32 %and.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %85 = ptrtoint ptr %port.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %port.i.i.i38, align 4
  %add.i.i184.i = add i32 %86, 13
  %and.i185.i = and i32 %add.i.i184.i, 1048575
  %add.i186.i = or i32 %and.i185.i, -18874368
  %87 = inttoptr i32 %add.i186.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %87, i8 %conv62.i) #4, !srcloc !25
  %88 = ptrtoint ptr %port.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %port.i.i.i38, align 4
  %add.i.i188.i = add i32 %89, 13
  %and.i189.i = and i32 %add.i.i188.i, 1048575
  %add.i190.i = or i32 %and.i189.i, -18874368
  %90 = inttoptr i32 %add.i190.i to ptr
  %91 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %90) #4, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  %regCDSP.i.i = getelementptr inbounds %struct.snd_vxpocket, ptr %vx, i32 0, i32 3
  %92 = ptrtoint ptr %regCDSP.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %regCDSP.i.i, align 4
  %94 = trunc i32 %93 to i8
  %conv.i.i = or i8 %94, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %95 = ptrtoint ptr %port.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %port.i.i.i38, align 4
  %add.i.i.i192.i = add i32 %96, 8
  %and.i.i193.i = and i32 %add.i.i.i192.i, 1048575
  %add.i.i194.i = or i32 %and.i.i193.i, -18874368
  %97 = inttoptr i32 %add.i.i194.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %97, i8 %conv.i.i) #4, !srcloc !25
  %98 = ptrtoint ptr %port.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %port.i.i.i38, align 4
  %add.i.i12.i.i = add i32 %99, 8
  %and.i13.i.i = and i32 %add.i.i12.i.i, 1048575
  %add.i14.i.i = or i32 %and.i13.i.i, -18874368
  %100 = inttoptr i32 %add.i14.i.i to ptr
  %101 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %100) #4, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @msleep(i32 noundef 10) #4
  %102 = ptrtoint ptr %regCDSP.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %regCDSP.i.i, align 4
  %and.i195.i = and i32 %103, -3
  store i32 %and.i195.i, ptr %regCDSP.i.i, align 4
  %conv3.i.i = trunc i32 %and.i195.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %104 = ptrtoint ptr %port.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %port.i.i.i38, align 4
  %add.i.i16.i.i = add i32 %105, 8
  %and.i17.i.i = and i32 %add.i.i16.i.i, 1048575
  %add.i18.i.i = or i32 %and.i17.i.i, -18874368
  %106 = inttoptr i32 %add.i18.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %106, i8 %conv3.i.i) #4, !srcloc !25
  %107 = ptrtoint ptr %port.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %port.i.i.i38, align 4
  %add.i.i20.i.i = add i32 %108, 8
  %and.i21.i.i = and i32 %add.i.i20.i.i, 1048575
  %add.i22.i.i = or i32 %and.i21.i.i, -18874368
  %109 = inttoptr i32 %add.i22.i.i to ptr
  %110 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %109) #4, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @msleep(i32 noundef 1) #4
  %ops.i.i = getelementptr inbounds %struct.vx_core, ptr %vx, i32 0, i32 5
  %111 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ops.i.i, align 4
  %reset_dsp.i.i = getelementptr inbounds %struct.snd_vx_ops, ptr %112, i32 0, i32 12
  %113 = ptrtoint ptr %reset_dsp.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %reset_dsp.i.i, align 4
  tail call void %114(ptr noundef %vx) #4
  br label %cleanup

_error.i:                                         ; preds = %vx_check_magic.exit.thread.i, %if.end32.i._error.i_crit_edge, %for.end.i._error.i_crit_edge, %if.end14.i._error.i_crit_edge, %for.body.i._error.i_crit_edge, %sw.bb5._error.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %115 = ptrtoint ptr %port.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %port.i.i.i38, align 4
  %add.i.i197.i = add i32 %116, 14
  %and.i198.i = and i32 %add.i.i197.i, 1048575
  %add.i199.i = or i32 %and.i198.i, -18874368
  %117 = inttoptr i32 %add.i199.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %117, i8 %16) #4, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %118 = ptrtoint ptr %port.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %port.i.i.i38, align 4
  %add.i.i201.i = add i32 %119, 15
  %and.i202.i = and i32 %add.i.i201.i, 1048575
  %add.i203.i = or i32 %and.i202.i, -18874368
  %120 = inttoptr i32 %add.i203.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %120, i8 %20) #4, !srcloc !25
  %121 = ptrtoint ptr %regDIALOG.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %regDIALOG.i, align 4
  %and67.i = and i32 %122, -129
  store i32 %and67.i, ptr %regDIALOG.i, align 4
  %conv69.i = trunc i32 %and67.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %123 = ptrtoint ptr %port.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %port.i.i.i38, align 4
  %add.i.i205.i = add i32 %124, 13
  %and.i206.i = and i32 %add.i.i205.i, 1048575
  %add.i207.i = or i32 %and.i206.i, -18874368
  %125 = inttoptr i32 %add.i207.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %125, i8 %conv69.i) #4, !srcloc !25
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call8 = tail call i32 @snd_vx_dsp_boot(ptr noundef %vx, ptr noundef %fw) #4
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call10 = tail call i32 @snd_vx_dsp_load(ptr noundef %vx, ptr noundef %fw) #4
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 257, i32 noundef 9, ptr noundef nonnull @.str.1) #4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb9, %sw.bb7, %_error.i, %if.end52.i, %if.end, %vx_check_magic.exit.thread
  %retval.0 = phi i32 [ -22, %do.end ], [ %call10, %sw.bb9 ], [ %call8, %sw.bb7 ], [ %7, %if.end ], [ -5, %vx_check_magic.exit.thread ], [ -5, %_error.i ], [ 0, %if.end52.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vxp_reset_dsp(ptr nocapture noundef %_chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regCDSP = getelementptr inbounds %struct.snd_vxpocket, ptr %_chip, i32 0, i32 3
  %0 = ptrtoint ptr %regCDSP to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %regCDSP, align 4
  %2 = trunc i32 %1 to i8
  %conv = or i8 %2, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %port.i.i = getelementptr inbounds %struct.snd_vxpocket, ptr %_chip, i32 0, i32 1
  %3 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port.i.i, align 4
  %add.i.i = add i32 %4, 8
  %and.i = and i32 %add.i.i, 1048575
  %add.i = or i32 %and.i, -18874368
  %5 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 %conv) #4, !srcloc !25
  %6 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port.i.i, align 4
  %add.i.i12 = add i32 %7, 8
  %and.i13 = and i32 %add.i.i12, 1048575
  %add.i14 = or i32 %and.i13, -18874368
  %8 = inttoptr i32 %add.i14 to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #4, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 429496000) #4
  %11 = ptrtoint ptr %regCDSP to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %regCDSP, align 4
  %and = and i32 %12, -2
  store i32 %and, ptr %regCDSP, align 4
  %conv3 = trunc i32 %and to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %13 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port.i.i, align 4
  %add.i.i16 = add i32 %14, 8
  %and.i17 = and i32 %add.i.i16, 1048575
  %add.i18 = or i32 %and.i17, -18874368
  %15 = inttoptr i32 %add.i18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %conv3) #4, !srcloc !25
  %16 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port.i.i, align 4
  %add.i.i20 = add i32 %17, 8
  %and.i21 = and i32 %add.i.i20, 1048575
  %add.i22 = or i32 %and.i21, -18874368
  %18 = inttoptr i32 %add.i22 to ptr
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %18) #4, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 429496000) #4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @vxp_reset_board(ptr nocapture noundef writeonly %_chip, i32 noundef %cold_reset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regCDSP = getelementptr inbounds %struct.snd_vxpocket, ptr %_chip, i32 0, i32 3
  %0 = ptrtoint ptr %regCDSP to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %regCDSP, align 4
  %regDIALOG = getelementptr inbounds %struct.snd_vxpocket, ptr %_chip, i32 0, i32 4
  %1 = ptrtoint ptr %regDIALOG to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %regDIALOG, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vxp_add_mic_controls(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vxp_dma_write(ptr nocapture noundef %chip, ptr nocapture noundef readonly %runtime, ptr nocapture noundef %pipe, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %port.i = getelementptr inbounds %struct.snd_vxpocket, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port.i, align 4
  %add.i = add i32 %1, 4
  %hw_ptr = getelementptr inbounds %struct.vx_pipe, ptr %pipe, i32 0, i32 9
  %2 = ptrtoint ptr %hw_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hw_ptr, align 8
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %runtime, i32 0, i32 50
  %4 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_area, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port.i, align 4
  %and.i.i = and i32 %7, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %8 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 2) #4, !srcloc !25
  %9 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port.i, align 4
  %add.i.i.i = add i32 %10, 2
  %and.i15.i = and i32 %add.i.i.i, 1048575
  %add.i16.i = or i32 %and.i15.i, -18874368
  %11 = inttoptr i32 %add.i16.i to ptr
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #4, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %13 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port.i, align 4
  %add.i.i18.i = add i32 %14, 2
  %and.i19.i = and i32 %add.i.i18.i, 1048575
  %add.i20.i = or i32 %and.i19.i, -18874368
  %15 = inttoptr i32 %add.i20.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 0) #4, !srcloc !25
  %regDIALOG.i = getelementptr inbounds %struct.snd_vxpocket, ptr %chip, i32 0, i32 4
  %16 = ptrtoint ptr %regDIALOG.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %regDIALOG.i, align 4
  %or4.i = or i32 %17, 10
  store i32 %or4.i, ptr %regDIALOG.i, align 4
  %conv6.i = trunc i32 %or4.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %18 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port.i, align 4
  %add.i.i22.i = add i32 %19, 13
  %and.i23.i = and i32 %add.i.i22.i, 1048575
  %add.i24.i = or i32 %and.i23.i, -18874368
  %20 = inttoptr i32 %add.i24.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %conv6.i) #4, !srcloc !25
  %add = add i32 %3, %count
  %buffer_bytes = getelementptr inbounds %struct.vx_pipe, ptr %pipe, i32 0, i32 7
  %21 = ptrtoint ptr %buffer_bytes to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %buffer_bytes, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %22)
  %cmp.not = icmp slt i32 %add, %22
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  %sub = sub i32 %22, %3
  %sub2 = sub i32 %count, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp350 = icmp sgt i32 %sub, 1
  br i1 %cmp350, label %do.body.lr.ph, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

do.body.lr.ph:                                    ; preds = %if.then
  %shr57 = lshr i32 %sub, 1
  %and = and i32 %add.i, 1048575
  %add4 = or i32 %and, -18874368
  %23 = inttoptr i32 %add4 to ptr
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %length.052 = phi i32 [ %shr57, %do.body.lr.ph ], [ %dec, %do.body.do.body_crit_edge ]
  %addr.051 = phi ptr [ %add.ptr, %do.body.lr.ph ], [ %incdec.ptr, %do.body.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !28
  tail call void @arm_heavy_mb() #4
  %24 = ptrtoint ptr %addr.051 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %addr.051, align 2
  %26 = tail call i16 @llvm.bswap.i16(i16 %25)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %23, i16 %26) #4, !srcloc !29
  %incdec.ptr = getelementptr i16, ptr %addr.051, i32 1
  %dec = add nsw i32 %length.052, -1
  %cmp3 = icmp ugt i32 %length.052, 1
  br i1 %cmp3, label %do.body.do.body_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

for.end:                                          ; preds = %do.body.for.end_crit_edge, %if.then.for.end_crit_edge
  %27 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dma_area, align 4
  %29 = ptrtoint ptr %hw_ptr to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %hw_ptr, align 8
  br label %if.end

if.end:                                           ; preds = %for.end, %entry.if.end_crit_edge
  %count.addr.0 = phi i32 [ %sub2, %for.end ], [ %count, %entry.if.end_crit_edge ]
  %addr.1 = phi ptr [ %28, %for.end ], [ %add.ptr, %entry.if.end_crit_edge ]
  %30 = ptrtoint ptr %hw_ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hw_ptr, align 8
  %add9 = add i32 %31, %count.addr.0
  store i32 %add9, ptr %hw_ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count.addr.0)
  %cmp1253 = icmp sgt i32 %count.addr.0, 1
  br i1 %cmp1253, label %do.body14.lr.ph, label %if.end.for.end23_crit_edge

if.end.for.end23_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end23

do.body14.lr.ph:                                  ; preds = %if.end
  %shr1056 = lshr i32 %count.addr.0, 1
  %and17 = and i32 %add.i, 1048575
  %add18 = or i32 %and17, -18874368
  %32 = inttoptr i32 %add18 to ptr
  br label %do.body14

do.body14:                                        ; preds = %do.body14.do.body14_crit_edge, %do.body14.lr.ph
  %addr.255 = phi ptr [ %addr.1, %do.body14.lr.ph ], [ %incdec.ptr20, %do.body14.do.body14_crit_edge ]
  %count.addr.154 = phi i32 [ %shr1056, %do.body14.lr.ph ], [ %dec22, %do.body14.do.body14_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  tail call void @arm_heavy_mb() #4
  %33 = ptrtoint ptr %addr.255 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %addr.255, align 2
  %35 = tail call i16 @llvm.bswap.i16(i16 %34)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %32, i16 %35) #4, !srcloc !29
  %incdec.ptr20 = getelementptr i16, ptr %addr.255, i32 1
  %dec22 = add nsw i32 %count.addr.154, -1
  %cmp12 = icmp ugt i32 %count.addr.154, 1
  br i1 %cmp12, label %do.body14.do.body14_crit_edge, label %do.body14.for.end23_crit_edge

do.body14.for.end23_crit_edge:                    ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end23

do.body14.do.body14_crit_edge:                    ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body14

for.end23:                                        ; preds = %do.body14.for.end23_crit_edge, %if.end.for.end23_crit_edge
  %36 = ptrtoint ptr %regDIALOG.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %regDIALOG.i, align 4
  %and.i = and i32 %37, -15
  store i32 %and.i, ptr %regDIALOG.i, align 4
  %conv.i = trunc i32 %and.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %38 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %port.i, align 4
  %add.i.i.i47 = add i32 %39, 13
  %and.i.i48 = and i32 %add.i.i.i47, 1048575
  %add.i.i49 = or i32 %and.i.i48, -18874368
  %40 = inttoptr i32 %add.i.i49 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 %conv.i) #4, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %41 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %port.i, align 4
  %and.i6.i = and i32 %42, 1048575
  %add.i7.i = or i32 %and.i6.i, -18874368
  %43 = inttoptr i32 %add.i7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %43, i8 0) #4, !srcloc !25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vxp_dma_read(ptr nocapture noundef %chip, ptr nocapture noundef readonly %runtime, ptr nocapture noundef %pipe, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %port.i = getelementptr inbounds %struct.snd_vxpocket, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port.i, align 4
  %add.i = add i32 %1, 4
  %hw_ptr = getelementptr inbounds %struct.vx_pipe, ptr %pipe, i32 0, i32 9
  %2 = ptrtoint ptr %hw_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hw_ptr, align 8
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %runtime, i32 0, i32 50
  %4 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_area, align 4
  %add.ptr1 = getelementptr i8, ptr %5, i32 %3
  %6 = and i32 %count, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end24, label %do.end, !prof !31

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 400, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end24:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %7 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port.i, align 4
  %and.i.i = and i32 %8, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %9 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 1) #4, !srcloc !25
  %10 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port.i, align 4
  %add.i.i.i = add i32 %11, 2
  %and.i15.i = and i32 %add.i.i.i, 1048575
  %add.i16.i = or i32 %and.i15.i, -18874368
  %12 = inttoptr i32 %add.i16.i to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #4, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %14 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port.i, align 4
  %add.i.i18.i = add i32 %15, 2
  %and.i19.i = and i32 %add.i.i18.i, 1048575
  %add.i20.i = or i32 %and.i19.i, -18874368
  %16 = inttoptr i32 %add.i20.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 0) #4, !srcloc !25
  %regDIALOG.i = getelementptr inbounds %struct.snd_vxpocket, ptr %chip, i32 0, i32 4
  %17 = ptrtoint ptr %regDIALOG.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %regDIALOG.i, align 4
  %or4.i = or i32 %18, 6
  store i32 %or4.i, ptr %regDIALOG.i, align 4
  %conv6.i = trunc i32 %or4.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %19 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port.i, align 4
  %add.i.i22.i = add i32 %20, 13
  %and.i23.i = and i32 %add.i.i22.i, 1048575
  %add.i24.i = or i32 %and.i23.i, -18874368
  %21 = inttoptr i32 %add.i24.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 %conv6.i) #4, !srcloc !25
  %add = add i32 %3, %count
  %buffer_bytes = getelementptr inbounds %struct.vx_pipe, ptr %pipe, i32 0, i32 7
  %22 = ptrtoint ptr %buffer_bytes to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %buffer_bytes, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %23)
  %cmp.not = icmp slt i32 %add, %23
  br i1 %cmp.not, label %if.end24.if.end35_crit_edge, label %if.then25

if.end24.if.end35_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

if.then25:                                        ; preds = %if.end24
  %sub = sub i32 %23, %3
  %sub27 = sub i32 %count, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp28105 = icmp sgt i32 %sub, 1
  br i1 %cmp28105, label %for.body.lr.ph, label %if.then25.for.end_crit_edge

if.then25.for.end_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then25
  %shr114 = lshr i32 %sub, 1
  %and = and i32 %add.i, 1048575
  %add29 = or i32 %and, -18874368
  %24 = inttoptr i32 %add29 to ptr
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %addr.0107 = phi ptr [ %add.ptr1, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %length.0106 = phi i32 [ %shr114, %for.body.lr.ph ], [ %dec, %for.body.for.body_crit_edge ]
  %25 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %24) #4, !srcloc !32
  %26 = tail call i16 @llvm.bswap.i16(i16 %25)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  %incdec.ptr = getelementptr i16, ptr %addr.0107, i32 1
  %27 = ptrtoint ptr %addr.0107 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %addr.0107, align 2
  %dec = add nsw i32 %length.0106, -1
  %cmp28 = icmp ugt i32 %length.0106, 1
  br i1 %cmp28, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then25.for.end_crit_edge
  %28 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dma_area, align 4
  %30 = ptrtoint ptr %hw_ptr to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %hw_ptr, align 8
  br label %if.end35

if.end35:                                         ; preds = %for.end, %if.end24.if.end35_crit_edge
  %addr.1 = phi ptr [ %29, %for.end ], [ %add.ptr1, %if.end24.if.end35_crit_edge ]
  %count.addr.0 = phi i32 [ %sub27, %for.end ], [ %count, %if.end24.if.end35_crit_edge ]
  %31 = ptrtoint ptr %hw_ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hw_ptr, align 8
  %add37 = add i32 %32, %count.addr.0
  store i32 %add37, ptr %hw_ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count.addr.0)
  %cmp40108 = icmp sgt i32 %count.addr.0, 3
  br i1 %cmp40108, label %for.body41.lr.ph, label %if.end35.for.end51_crit_edge

if.end35.for.end51_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  %.pre = and i32 %add.i, 1048575
  %.pre111 = or i32 %.pre, -18874368
  %.pre112 = inttoptr i32 %.pre111 to ptr
  br label %for.end51

for.body41.lr.ph:                                 ; preds = %if.end35
  %shr38113 = lshr i32 %count.addr.0, 1
  %and43 = and i32 %add.i, 1048575
  %add44 = or i32 %and43, -18874368
  %33 = inttoptr i32 %add44 to ptr
  br label %for.body41

for.body41:                                       ; preds = %for.body41.for.body41_crit_edge, %for.body41.lr.ph
  %count.addr.1110 = phi i32 [ %shr38113, %for.body41.lr.ph ], [ %dec50, %for.body41.for.body41_crit_edge ]
  %addr.2109 = phi ptr [ %addr.1, %for.body41.lr.ph ], [ %incdec.ptr48, %for.body41.for.body41_crit_edge ]
  %34 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %33) #4, !srcloc !32
  %35 = tail call i16 @llvm.bswap.i16(i16 %34)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %incdec.ptr48 = getelementptr i16, ptr %addr.2109, i32 1
  %36 = ptrtoint ptr %addr.2109 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %addr.2109, align 2
  %dec50 = add nsw i32 %count.addr.1110, -1
  %cmp40 = icmp ugt i32 %count.addr.1110, 2
  br i1 %cmp40, label %for.body41.for.body41_crit_edge, label %for.body41.for.end51_crit_edge

for.body41.for.end51_crit_edge:                   ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end51

for.body41.for.body41_crit_edge:                  ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body41

for.end51:                                        ; preds = %for.body41.for.end51_crit_edge, %if.end35.for.end51_crit_edge
  %.pre-phi = phi ptr [ %.pre112, %if.end35.for.end51_crit_edge ], [ %33, %for.body41.for.end51_crit_edge ]
  %addr.2.lcssa = phi ptr [ %addr.1, %if.end35.for.end51_crit_edge ], [ %incdec.ptr48, %for.body41.for.end51_crit_edge ]
  %37 = ptrtoint ptr %regDIALOG.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %regDIALOG.i, align 4
  %and52 = and i32 %38, -5
  store i32 %and52, ptr %regDIALOG.i, align 4
  %conv = trunc i32 %and52 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %39 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %port.i, align 4
  %add.i.i96 = add i32 %40, 13
  %and.i = and i32 %add.i.i96, 1048575
  %add.i97 = or i32 %and.i, -18874368
  %41 = inttoptr i32 %add.i97 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 %conv) #4, !srcloc !25
  %42 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %.pre-phi) #4, !srcloc !32
  %43 = tail call i16 @llvm.bswap.i16(i16 %42)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  %44 = ptrtoint ptr %addr.2.lcssa to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %addr.2.lcssa, align 2
  %45 = ptrtoint ptr %regDIALOG.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %regDIALOG.i, align 4
  %and61 = and i32 %46, -3
  store i32 %and61, ptr %regDIALOG.i, align 4
  %conv63 = trunc i32 %and61 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %47 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %port.i, align 4
  %add.i.i99 = add i32 %48, 13
  %and.i100 = and i32 %add.i.i99, 1048575
  %add.i101 = or i32 %and.i100, -18874368
  %49 = inttoptr i32 %add.i101 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %49, i8 %conv63) #4, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %50 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %port.i, align 4
  %and.i103 = and i32 %51, 1048575
  %add.i104 = or i32 %and.i103, -18874368
  %52 = inttoptr i32 %add.i104 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %52, i8 0) #4, !srcloc !25
  br label %cleanup

cleanup:                                          ; preds = %for.end51, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_vx_load_boot_image(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_vx_dsp_boot(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_vx_dsp_load(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__snd_printk(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_vx_check_reg_bit(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @snd_vxpocket_ops, !1, !"snd_vxpocket_ops", i1 false, i1 false}
!1 = !{!"../sound/pcmcia/vx/vxp_ops.c", i32 586, i32 25}
!2 = !{ptr @vxp_reg_offset, !3, !"vxp_reg_offset", i1 false, i1 false}
!3 = !{!"../sound/pcmcia/vx/vxp_ops.c", i32 18, i32 18}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/pcmcia/vx/vxp_ops.c", i32 257, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../sound/pcmcia/vx/vxp_ops.c", i32 87, i32 2}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../sound/pcmcia/vx/vxp_ops.c", i32 156, i32 2}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../sound/pcmcia/vx/vxp_ops.c", i32 173, i32 4}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../sound/pcmcia/vx/vxp_ops.c", i32 191, i32 2}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{i64 2154687543}
!25 = !{i64 4794357}
!26 = !{i64 4794752}
!27 = !{i64 2154687316}
!28 = !{i64 2154704430}
!29 = !{i64 4793934}
!30 = !{i64 2154704885}
!31 = !{!"branch_weights", i32 2000, i32 1}
!32 = !{i64 4794134}
!33 = !{i64 2154707474}
!34 = !{i64 2154708100}
!35 = !{i64 2154708819}
