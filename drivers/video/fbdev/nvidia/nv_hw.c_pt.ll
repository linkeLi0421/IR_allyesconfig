; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/nvidia/nv_hw.c_pt.bc'
source_filename = "../drivers/video/fbdev/nvidia/nv_hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvidia_par = type { %struct._riva_hw_state, %struct._riva_hw_state, %struct._riva_hw_state, ptr, %struct.vgastate, [16 x i32], ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.NVFBLayout, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i32, [3 x %struct.nvidia_i2c_chan], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._riva_hw_state = type { [21 x i8], [65 x i8], [9 x i8], [5 x i8], i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vgastate = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.NVFBLayout = type { i32, i32, i32, i32 }
%struct.nvidia_i2c_chan = type { ptr, i32, %struct.i2c_adapter, %struct.i2c_algo_bit_data }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.nv10_fifo_info = type { i32, i32, i32, i32, i32 }
%struct.nv10_sim_state = type { i32, i32, i32, i8, i8, i32, i32, i8, i8, i8, i8, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@nForceUpdateArbitrationSettings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 735, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"nvidiafb: your nForce DIMMs are not arranged in optimal banks!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"nForceUpdateArbitrationSettings\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/video/fbdev/nvidia/nv_hw.c\00", [61 x i8] zeroinitializer }, align 32
@nForceUpdateArbitrationSettings._entry_ptr = internal global ptr @nForceUpdateArbitrationSettings._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 64]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 16, i64 576, i64 976]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 16, i64 416, i64 496]
@__sancov_gen_cov_switch_values.5 = internal global [5 x i64] [i64 3, i64 16, i64 425, i64 427, i64 493]
@__sancov_gen_cov_switch_values.6 = internal global [8 x i64] [i64 6, i64 16, i64 64, i64 144, i64 464, i64 656, i64 912, i64 976]
@__sancov_gen_cov_switch_values.7 = internal global [15 x i64] [i64 13, i64 16, i64 64, i64 144, i64 192, i64 288, i64 320, i64 352, i64 464, i64 528, i64 544, i64 576, i64 656, i64 912, i64 976]
@__sancov_gen_cov_switch_values.8 = internal global [8 x i64] [i64 6, i64 16, i64 64, i64 144, i64 464, i64 656, i64 912, i64 976]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 16, i64 352, i64 544, i64 576]
@__sancov_gen_cov_switch_values.10 = internal global [7 x i64] [i64 5, i64 16, i64 64, i64 144, i64 464, i64 656, i64 912]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 16, i64 656, i64 912]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 768, i64 816]
@___asan_gen_.13 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private constant [38 x i8] c"../drivers/video/fbdev/nvidia/nv_hw.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 734, i32 4 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @nForceUpdateArbitrationSettings._entry, ptr @nForceUpdateArbitrationSettings._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nForceUpdateArbitrationSettings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @NVLockUnlock(ptr nocapture noundef readonly %par, i32 noundef %Lock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !15
  tail call void @arm_heavy_mb() #6
  %PCIO = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 71
  %0 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %PCIO, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 31) #6, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !17
  tail call void @arm_heavy_mb() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %Lock)
  %tobool.not = icmp eq i32 %Lock, 0
  %conv = select i1 %tobool.not, i8 87, i8 -103
  %2 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %PCIO, align 8
  %add.ptr5 = getelementptr i8, ptr %3, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5, i8 %conv) #6, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !18
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %PCIO, align 8
  %add.ptr10 = getelementptr i8, ptr %5, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10, i8 17) #6, !srcloc !16
  %6 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %PCIO, align 8
  %add.ptr12 = getelementptr i8, ptr %7, i32 981
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr12) #6, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !20
  %9 = and i8 %8, 127
  %masksel = select i1 %tobool.not, i8 0, i8 -128
  %cr11.0 = or i8 %9, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !21
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %PCIO, align 8
  %add.ptr23 = getelementptr i8, ptr %11, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr23, i8 %cr11.0) #6, !srcloc !16
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @NVShowHideCursor(ptr nocapture noundef readonly %par, i32 noundef %ShowHide) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %CurrentState = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 3
  %0 = ptrtoint ptr %CurrentState to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %CurrentState, align 8
  %cursor1 = getelementptr inbounds %struct._riva_hw_state, ptr %1, i32 0, i32 34
  %2 = ptrtoint ptr %cursor1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cursor1, align 4
  %and = and i32 %3, 254
  %and3 = and i32 %ShowHide, 1
  %or = or i32 %and, %and3
  store i32 %or, ptr %cursor1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %PCIO = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 71
  %4 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %PCIO, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 49) #6, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !23
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %CurrentState to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %CurrentState, align 8
  %cursor110 = getelementptr inbounds %struct._riva_hw_state, ptr %7, i32 0, i32 34
  %8 = ptrtoint ptr %cursor110 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cursor110, align 4
  %conv = trunc i32 %9 to i8
  %10 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %PCIO, align 8
  %add.ptr12 = getelementptr i8, ptr %11, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12, i8 %conv) #6, !srcloc !16
  %Architecture = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 7
  %12 = ptrtoint ptr %Architecture to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %Architecture, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %13)
  %cmp = icmp eq i32 %13, 64
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %PRAMDAC = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 75
  %14 = ptrtoint ptr %PRAMDAC to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %PRAMDAC, align 8
  %add.ptr14 = getelementptr i8, ptr %15, i32 768
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #6, !srcloc !24
  %17 = ptrtoint ptr %PRAMDAC to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %PRAMDAC, align 8
  %add.ptr16 = getelementptr i8, ptr %18, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %16) #6, !srcloc !25
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and17 = and i32 %3, 1
  ret i32 %and17
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @NVCalcStateExt(ptr nocapture noundef readonly %par, ptr noundef %state, i32 noundef %bpp, i32 noundef %width, i32 noundef %hDisplaySize, i32 noundef %height, i32 noundef %dotClock, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %MClk.i205 = alloca i32, align 4
  %NVClk.i206 = alloca i32, align 4
  %fifo_data.i174 = alloca %struct.nv10_fifo_info, align 4
  %sim_data.i175 = alloca %struct.nv10_sim_state, align 4
  %MClk.i176 = alloca i32, align 4
  %NVClk.i177 = alloca i32, align 4
  %fifo_data.i = alloca %struct.nv10_fifo_info, align 4
  %sim_data.i = alloca %struct.nv10_sim_state, align 4
  %MClk.i164 = alloca i32, align 4
  %memctrl.i = alloca i32, align 4
  %uMClkPostDiv.i = alloca i32, align 4
  %dimm.i = alloca [3 x i32], align 4
  %MClk.i = alloca i32, align 4
  %NVClk.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bpp1 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 5
  %0 = ptrtoint ptr %bpp1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %bpp, ptr %bpp1, align 4
  %width2 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 6
  %1 = ptrtoint ptr %width2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %width, ptr %width2, align 4
  %height3 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 7
  %2 = ptrtoint ptr %height3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %height, ptr %height3, align 4
  %add = add i32 %bpp, 1
  %div = sdiv i32 %add, 8
  %twoStagePLL = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 32
  %3 = ptrtoint ptr %twoStagePLL to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %twoStagePLL, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %pll4 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 20
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %pllB = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 21
  %5 = ptrtoint ptr %pllB to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -2147482623, ptr %pllB, align 4
  %CrystalFreqKHz.i = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 19
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc27.i.for.body.i_crit_edge, %if.then
  %VClk.0 = phi i32 [ 0, %if.then ], [ %VClk.3, %for.inc27.i.for.body.i_crit_edge ]
  %P.058.i = phi i32 [ 0, %if.then ], [ %inc28.i, %for.inc27.i.for.body.i_crit_edge ]
  %DeltaOld.057.i = phi i32 [ -1, %if.then ], [ %DeltaOld.3.i, %for.inc27.i.for.body.i_crit_edge ]
  %shl.i = shl i32 %dotClock, %P.058.i
  %6 = add i32 %shl.i, -400000
  call void @__sanitizer_cov_trace_const_cmp4(i32 600001, i32 %6)
  %7 = icmp ult i32 %6, 600001
  br i1 %7, label %for.cond3.preheader.i, label %for.body.i.for.inc27.i_crit_edge

for.body.i.for.inc27.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc27.i

for.cond3.preheader.i:                            ; preds = %for.body.i
  %shl21.i = shl i32 %P.058.i, 16
  br label %for.body5.i

for.body5.i:                                      ; preds = %for.inc.i.for.body5.i_crit_edge, %for.cond3.preheader.i
  %VClk.1 = phi i32 [ %VClk.0, %for.cond3.preheader.i ], [ %VClk.2, %for.inc.i.for.body5.i_crit_edge ]
  %M.055.i = phi i32 [ 1, %for.cond3.preheader.i ], [ %inc.i, %for.inc.i.for.body5.i_crit_edge ]
  %DeltaOld.154.i = phi i32 [ %DeltaOld.057.i, %for.cond3.preheader.i ], [ %DeltaOld.2.i, %for.inc.i.for.body5.i_crit_edge ]
  %mul.i = mul i32 %M.055.i, %shl.i
  %8 = ptrtoint ptr %CrystalFreqKHz.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %CrystalFreqKHz.i, align 8
  %shl7.i = shl i32 %9, 2
  %div.i = udiv i32 %mul.i, %shl7.i
  %10 = add i32 %div.i, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 251, i32 %10)
  %11 = icmp ult i32 %10, 251
  br i1 %11, label %if.then11.i, label %for.body5.i.for.inc.i_crit_edge

for.body5.i.for.inc.i_crit_edge:                  ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then11.i:                                      ; preds = %for.body5.i
  %mul14.i = mul i32 %shl7.i, %div.i
  %div15.i = udiv i32 %mul14.i, %M.055.i
  %shr.i = lshr i32 %div15.i, %P.058.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %dotClock)
  %cmp16.i = icmp ugt i32 %shr.i, %dotClock
  %sub.i = sub i32 %shr.i, %dotClock
  %sub18.i = sub i32 %dotClock, %shr.i
  %DeltaNew.0.i = select i1 %cmp16.i, i32 %sub.i, i32 %sub18.i
  call void @__sanitizer_cov_trace_cmp4(i32 %DeltaNew.0.i, i32 %DeltaOld.154.i)
  %cmp19.i = icmp ult i32 %DeltaNew.0.i, %DeltaOld.154.i
  br i1 %cmp19.i, label %if.then20.i, label %if.then11.i.for.inc.i_crit_edge

if.then11.i.for.inc.i_crit_edge:                  ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then20.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #8
  %shl22.i = shl nuw nsw i32 %div.i, 8
  %or.i = or i32 %M.055.i, %shl21.i
  %or23.i = or i32 %or.i, %shl22.i
  %12 = ptrtoint ptr %pll4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or23.i, ptr %pll4, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then20.i, %if.then11.i.for.inc.i_crit_edge, %for.body5.i.for.inc.i_crit_edge
  %VClk.2 = phi i32 [ %shr.i, %if.then20.i ], [ %VClk.1, %if.then11.i.for.inc.i_crit_edge ], [ %VClk.1, %for.body5.i.for.inc.i_crit_edge ]
  %DeltaOld.2.i = phi i32 [ %DeltaNew.0.i, %if.then20.i ], [ %DeltaOld.154.i, %if.then11.i.for.inc.i_crit_edge ], [ %DeltaOld.154.i, %for.body5.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %M.055.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 14
  br i1 %exitcond.not.i, label %for.inc.i.for.inc27.i_crit_edge, label %for.inc.i.for.body5.i_crit_edge

for.inc.i.for.body5.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body5.i

for.inc.i.for.inc27.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc27.i

for.inc27.i:                                      ; preds = %for.inc.i.for.inc27.i_crit_edge, %for.body.i.for.inc27.i_crit_edge
  %VClk.3 = phi i32 [ %VClk.0, %for.body.i.for.inc27.i_crit_edge ], [ %VClk.2, %for.inc.i.for.inc27.i_crit_edge ]
  %DeltaOld.3.i = phi i32 [ %DeltaOld.057.i, %for.body.i.for.inc27.i_crit_edge ], [ %DeltaOld.2.i, %for.inc.i.for.inc27.i_crit_edge ]
  %inc28.i = add nuw nsw i32 %P.058.i, 1
  %exitcond60.not.i = icmp eq i32 %inc28.i, 7
  br i1 %exitcond60.not.i, label %for.inc27.i.if.end_crit_edge, label %for.inc27.i.for.body.i_crit_edge

for.inc27.i.for.body.i_crit_edge:                 ; preds = %for.inc27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc27.i.if.end_crit_edge:                     ; preds = %for.inc27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.else:                                          ; preds = %entry
  %CrystalFreqKHz.i152 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 19
  %13 = ptrtoint ptr %CrystalFreqKHz.i152 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %CrystalFreqKHz.i152, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 13500, i32 %14)
  %cmp.i = icmp eq i32 %14, 13500
  %..i = select i1 %cmp.i, i32 7, i32 8
  %.54.i = select i1 %cmp.i, i32 13, i32 14
  %15 = add i32 %dotClock, -128000
  call void @__sanitizer_cov_trace_const_cmp4(i32 222001, i32 %15)
  %16 = icmp ult i32 %15, 222001
  br i1 %16, label %if.else.for.body7.i_crit_edge, label %if.else.for.inc28.i_crit_edge

if.else.for.inc28.i_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc28.i

if.else.for.body7.i_crit_edge:                    ; preds = %if.else
  br label %for.body7.i

for.body7.i:                                      ; preds = %for.inc.i161.for.body7.i_crit_edge, %if.else.for.body7.i_crit_edge
  %VClk.4 = phi i32 [ %VClk.5, %for.inc.i161.for.body7.i_crit_edge ], [ 0, %if.else.for.body7.i_crit_edge ]
  %M.056.i = phi i32 [ %inc.i160, %for.inc.i161.for.body7.i_crit_edge ], [ %..i, %if.else.for.body7.i_crit_edge ]
  %DeltaOld.155.i = phi i32 [ %DeltaOld.2.i159, %for.inc.i161.for.body7.i_crit_edge ], [ -1, %if.else.for.body7.i_crit_edge ]
  %mul.i153 = mul i32 %M.056.i, %dotClock
  %17 = ptrtoint ptr %CrystalFreqKHz.i152 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %CrystalFreqKHz.i152, align 8
  %div.i154 = udiv i32 %mul.i153, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %div.i154)
  %cmp10.i = icmp ult i32 %div.i154, 256
  br i1 %cmp10.i, label %if.then11.i158, label %for.body7.i.for.inc.i161_crit_edge

for.body7.i.for.inc.i161_crit_edge:               ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i161

if.then11.i158:                                   ; preds = %for.body7.i
  %mul13.i = mul i32 %div.i154, %18
  %div14.i = udiv i32 %mul13.i, %M.056.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div14.i, i32 %dotClock)
  %cmp15.i = icmp ugt i32 %div14.i, %dotClock
  %sub.i155 = sub i32 %div14.i, %dotClock
  %sub18.i156 = sub i32 %dotClock, %div14.i
  %DeltaNew.0.i157 = select i1 %cmp15.i, i32 %sub.i155, i32 %sub18.i156
  call void @__sanitizer_cov_trace_cmp4(i32 %DeltaNew.0.i157, i32 %DeltaOld.155.i)
  %cmp20.i = icmp ult i32 %DeltaNew.0.i157, %DeltaOld.155.i
  br i1 %cmp20.i, label %if.then21.i, label %if.then11.i158.for.inc.i161_crit_edge

if.then11.i158.for.inc.i161_crit_edge:            ; preds = %if.then11.i158
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i161

if.then21.i:                                      ; preds = %if.then11.i158
  call void @__sanitizer_cov_trace_pc() #8
  %shl23.i = shl nuw nsw i32 %div.i154, 8
  %or24.i = or i32 %shl23.i, %M.056.i
  %19 = ptrtoint ptr %pll4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or24.i, ptr %pll4, align 4
  br label %for.inc.i161

for.inc.i161:                                     ; preds = %if.then21.i, %if.then11.i158.for.inc.i161_crit_edge, %for.body7.i.for.inc.i161_crit_edge
  %VClk.5 = phi i32 [ %div14.i, %if.then21.i ], [ %VClk.4, %if.then11.i158.for.inc.i161_crit_edge ], [ %VClk.4, %for.body7.i.for.inc.i161_crit_edge ]
  %DeltaOld.2.i159 = phi i32 [ %DeltaNew.0.i157, %if.then21.i ], [ %DeltaOld.155.i, %if.then11.i158.for.inc.i161_crit_edge ], [ %DeltaOld.155.i, %for.body7.i.for.inc.i161_crit_edge ]
  %inc.i160 = add nuw nsw i32 %M.056.i, 1
  %exitcond.not = icmp eq i32 %M.056.i, %.54.i
  br i1 %exitcond.not, label %for.inc.i161.for.inc28.i_crit_edge, label %for.inc.i161.for.body7.i_crit_edge

for.inc.i161.for.body7.i_crit_edge:               ; preds = %for.inc.i161
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body7.i

for.inc.i161.for.inc28.i_crit_edge:               ; preds = %for.inc.i161
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc28.i

for.inc28.i:                                      ; preds = %for.inc.i161.for.inc28.i_crit_edge, %if.else.for.inc28.i_crit_edge
  %VClk.6 = phi i32 [ 0, %if.else.for.inc28.i_crit_edge ], [ %VClk.5, %for.inc.i161.for.inc28.i_crit_edge ]
  %DeltaOld.3.i162 = phi i32 [ -1, %if.else.for.inc28.i_crit_edge ], [ %DeltaOld.2.i159, %for.inc.i161.for.inc28.i_crit_edge ]
  %shl.1.i = shl i32 %dotClock, 1
  %20 = add i32 %shl.1.i, -128000
  call void @__sanitizer_cov_trace_const_cmp4(i32 222001, i32 %20)
  %21 = icmp ult i32 %20, 222001
  br i1 %21, label %for.inc28.i.for.body7.1.i_crit_edge, label %for.inc28.i.for.inc28.1.i_crit_edge

for.inc28.i.for.inc28.1.i_crit_edge:              ; preds = %for.inc28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc28.1.i

for.inc28.i.for.body7.1.i_crit_edge:              ; preds = %for.inc28.i
  br label %for.body7.1.i

for.body7.1.i:                                    ; preds = %for.inc.1.i.for.body7.1.i_crit_edge, %for.inc28.i.for.body7.1.i_crit_edge
  %VClk.7 = phi i32 [ %VClk.8, %for.inc.1.i.for.body7.1.i_crit_edge ], [ %VClk.6, %for.inc28.i.for.body7.1.i_crit_edge ]
  %M.056.1.i = phi i32 [ %inc.1.i, %for.inc.1.i.for.body7.1.i_crit_edge ], [ %..i, %for.inc28.i.for.body7.1.i_crit_edge ]
  %DeltaOld.155.1.i = phi i32 [ %DeltaOld.2.1.i, %for.inc.1.i.for.body7.1.i_crit_edge ], [ %DeltaOld.3.i162, %for.inc28.i.for.body7.1.i_crit_edge ]
  %mul.1.i = mul i32 %M.056.1.i, %shl.1.i
  %22 = ptrtoint ptr %CrystalFreqKHz.i152 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %CrystalFreqKHz.i152, align 8
  %div.1.i = udiv i32 %mul.1.i, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %div.1.i)
  %cmp10.1.i = icmp ult i32 %div.1.i, 256
  br i1 %cmp10.1.i, label %if.then11.1.i, label %for.body7.1.i.for.inc.1.i_crit_edge

for.body7.1.i.for.inc.1.i_crit_edge:              ; preds = %for.body7.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i

if.then11.1.i:                                    ; preds = %for.body7.1.i
  %mul13.1.i = mul i32 %div.1.i, %23
  %div14.1.i = udiv i32 %mul13.1.i, %M.056.1.i
  %shr.1.i = lshr i32 %div14.1.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.1.i, i32 %dotClock)
  %cmp15.1.i = icmp ugt i32 %shr.1.i, %dotClock
  %sub.1.i = sub i32 %shr.1.i, %dotClock
  %sub18.1.i = sub i32 %dotClock, %shr.1.i
  %DeltaNew.0.1.i = select i1 %cmp15.1.i, i32 %sub.1.i, i32 %sub18.1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %DeltaNew.0.1.i, i32 %DeltaOld.155.1.i)
  %cmp20.1.i = icmp ult i32 %DeltaNew.0.1.i, %DeltaOld.155.1.i
  br i1 %cmp20.1.i, label %if.then21.1.i, label %if.then11.1.i.for.inc.1.i_crit_edge

if.then11.1.i.for.inc.1.i_crit_edge:              ; preds = %if.then11.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i

if.then21.1.i:                                    ; preds = %if.then11.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %shl23.1.i = shl nuw nsw i32 %div.1.i, 8
  %or.1.i = or i32 %M.056.1.i, %shl23.1.i
  %or24.1.i = or i32 %or.1.i, 65536
  %24 = ptrtoint ptr %pll4 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or24.1.i, ptr %pll4, align 4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then21.1.i, %if.then11.1.i.for.inc.1.i_crit_edge, %for.body7.1.i.for.inc.1.i_crit_edge
  %VClk.8 = phi i32 [ %shr.1.i, %if.then21.1.i ], [ %VClk.7, %if.then11.1.i.for.inc.1.i_crit_edge ], [ %VClk.7, %for.body7.1.i.for.inc.1.i_crit_edge ]
  %DeltaOld.2.1.i = phi i32 [ %DeltaNew.0.1.i, %if.then21.1.i ], [ %DeltaOld.155.1.i, %if.then11.1.i.for.inc.1.i_crit_edge ], [ %DeltaOld.155.1.i, %for.body7.1.i.for.inc.1.i_crit_edge ]
  %inc.1.i = add nuw nsw i32 %M.056.1.i, 1
  %exitcond216.not = icmp eq i32 %M.056.1.i, %.54.i
  br i1 %exitcond216.not, label %for.inc.1.i.for.inc28.1.i_crit_edge, label %for.inc.1.i.for.body7.1.i_crit_edge

for.inc.1.i.for.body7.1.i_crit_edge:              ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body7.1.i

for.inc.1.i.for.inc28.1.i_crit_edge:              ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc28.1.i

for.inc28.1.i:                                    ; preds = %for.inc.1.i.for.inc28.1.i_crit_edge, %for.inc28.i.for.inc28.1.i_crit_edge
  %VClk.9 = phi i32 [ %VClk.6, %for.inc28.i.for.inc28.1.i_crit_edge ], [ %VClk.8, %for.inc.1.i.for.inc28.1.i_crit_edge ]
  %DeltaOld.3.1.i = phi i32 [ %DeltaOld.3.i162, %for.inc28.i.for.inc28.1.i_crit_edge ], [ %DeltaOld.2.1.i, %for.inc.1.i.for.inc28.1.i_crit_edge ]
  %shl.2.i = shl i32 %dotClock, 2
  %25 = add i32 %shl.2.i, -128000
  call void @__sanitizer_cov_trace_const_cmp4(i32 222001, i32 %25)
  %26 = icmp ult i32 %25, 222001
  br i1 %26, label %for.inc28.1.i.for.body7.2.i_crit_edge, label %for.inc28.1.i.for.inc28.2.i_crit_edge

for.inc28.1.i.for.inc28.2.i_crit_edge:            ; preds = %for.inc28.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc28.2.i

for.inc28.1.i.for.body7.2.i_crit_edge:            ; preds = %for.inc28.1.i
  br label %for.body7.2.i

for.body7.2.i:                                    ; preds = %for.inc.2.i.for.body7.2.i_crit_edge, %for.inc28.1.i.for.body7.2.i_crit_edge
  %VClk.10 = phi i32 [ %VClk.11, %for.inc.2.i.for.body7.2.i_crit_edge ], [ %VClk.9, %for.inc28.1.i.for.body7.2.i_crit_edge ]
  %M.056.2.i = phi i32 [ %inc.2.i, %for.inc.2.i.for.body7.2.i_crit_edge ], [ %..i, %for.inc28.1.i.for.body7.2.i_crit_edge ]
  %DeltaOld.155.2.i = phi i32 [ %DeltaOld.2.2.i, %for.inc.2.i.for.body7.2.i_crit_edge ], [ %DeltaOld.3.1.i, %for.inc28.1.i.for.body7.2.i_crit_edge ]
  %mul.2.i = mul i32 %M.056.2.i, %shl.2.i
  %27 = ptrtoint ptr %CrystalFreqKHz.i152 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %CrystalFreqKHz.i152, align 8
  %div.2.i = udiv i32 %mul.2.i, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %div.2.i)
  %cmp10.2.i = icmp ult i32 %div.2.i, 256
  br i1 %cmp10.2.i, label %if.then11.2.i, label %for.body7.2.i.for.inc.2.i_crit_edge

for.body7.2.i.for.inc.2.i_crit_edge:              ; preds = %for.body7.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2.i

if.then11.2.i:                                    ; preds = %for.body7.2.i
  %mul13.2.i = mul i32 %div.2.i, %28
  %div14.2.i = udiv i32 %mul13.2.i, %M.056.2.i
  %shr.2.i = lshr i32 %div14.2.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.2.i, i32 %dotClock)
  %cmp15.2.i = icmp ugt i32 %shr.2.i, %dotClock
  %sub.2.i = sub i32 %shr.2.i, %dotClock
  %sub18.2.i = sub i32 %dotClock, %shr.2.i
  %DeltaNew.0.2.i = select i1 %cmp15.2.i, i32 %sub.2.i, i32 %sub18.2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %DeltaNew.0.2.i, i32 %DeltaOld.155.2.i)
  %cmp20.2.i = icmp ult i32 %DeltaNew.0.2.i, %DeltaOld.155.2.i
  br i1 %cmp20.2.i, label %if.then21.2.i, label %if.then11.2.i.for.inc.2.i_crit_edge

if.then11.2.i.for.inc.2.i_crit_edge:              ; preds = %if.then11.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2.i

if.then21.2.i:                                    ; preds = %if.then11.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %shl23.2.i = shl nuw nsw i32 %div.2.i, 8
  %or.2.i = or i32 %M.056.2.i, %shl23.2.i
  %or24.2.i = or i32 %or.2.i, 131072
  %29 = ptrtoint ptr %pll4 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or24.2.i, ptr %pll4, align 4
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then21.2.i, %if.then11.2.i.for.inc.2.i_crit_edge, %for.body7.2.i.for.inc.2.i_crit_edge
  %VClk.11 = phi i32 [ %shr.2.i, %if.then21.2.i ], [ %VClk.10, %if.then11.2.i.for.inc.2.i_crit_edge ], [ %VClk.10, %for.body7.2.i.for.inc.2.i_crit_edge ]
  %DeltaOld.2.2.i = phi i32 [ %DeltaNew.0.2.i, %if.then21.2.i ], [ %DeltaOld.155.2.i, %if.then11.2.i.for.inc.2.i_crit_edge ], [ %DeltaOld.155.2.i, %for.body7.2.i.for.inc.2.i_crit_edge ]
  %inc.2.i = add nuw nsw i32 %M.056.2.i, 1
  %exitcond218.not = icmp eq i32 %M.056.2.i, %.54.i
  br i1 %exitcond218.not, label %for.inc.2.i.for.inc28.2.i_crit_edge, label %for.inc.2.i.for.body7.2.i_crit_edge

for.inc.2.i.for.body7.2.i_crit_edge:              ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body7.2.i

for.inc.2.i.for.inc28.2.i_crit_edge:              ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc28.2.i

for.inc28.2.i:                                    ; preds = %for.inc.2.i.for.inc28.2.i_crit_edge, %for.inc28.1.i.for.inc28.2.i_crit_edge
  %VClk.12 = phi i32 [ %VClk.9, %for.inc28.1.i.for.inc28.2.i_crit_edge ], [ %VClk.11, %for.inc.2.i.for.inc28.2.i_crit_edge ]
  %DeltaOld.3.2.i = phi i32 [ %DeltaOld.3.1.i, %for.inc28.1.i.for.inc28.2.i_crit_edge ], [ %DeltaOld.2.2.i, %for.inc.2.i.for.inc28.2.i_crit_edge ]
  %shl.3.i = shl i32 %dotClock, 3
  %30 = add i32 %shl.3.i, -128000
  call void @__sanitizer_cov_trace_const_cmp4(i32 222001, i32 %30)
  %31 = icmp ult i32 %30, 222001
  br i1 %31, label %for.inc28.2.i.for.body7.3.i_crit_edge, label %for.inc28.2.i.for.inc28.3.i_crit_edge

for.inc28.2.i.for.inc28.3.i_crit_edge:            ; preds = %for.inc28.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc28.3.i

for.inc28.2.i.for.body7.3.i_crit_edge:            ; preds = %for.inc28.2.i
  br label %for.body7.3.i

for.body7.3.i:                                    ; preds = %for.inc.3.i.for.body7.3.i_crit_edge, %for.inc28.2.i.for.body7.3.i_crit_edge
  %VClk.13 = phi i32 [ %VClk.14, %for.inc.3.i.for.body7.3.i_crit_edge ], [ %VClk.12, %for.inc28.2.i.for.body7.3.i_crit_edge ]
  %M.056.3.i = phi i32 [ %inc.3.i, %for.inc.3.i.for.body7.3.i_crit_edge ], [ %..i, %for.inc28.2.i.for.body7.3.i_crit_edge ]
  %DeltaOld.155.3.i = phi i32 [ %DeltaOld.2.3.i, %for.inc.3.i.for.body7.3.i_crit_edge ], [ %DeltaOld.3.2.i, %for.inc28.2.i.for.body7.3.i_crit_edge ]
  %mul.3.i = mul i32 %M.056.3.i, %shl.3.i
  %32 = ptrtoint ptr %CrystalFreqKHz.i152 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %CrystalFreqKHz.i152, align 8
  %div.3.i = udiv i32 %mul.3.i, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %div.3.i)
  %cmp10.3.i = icmp ult i32 %div.3.i, 256
  br i1 %cmp10.3.i, label %if.then11.3.i, label %for.body7.3.i.for.inc.3.i_crit_edge

for.body7.3.i.for.inc.3.i_crit_edge:              ; preds = %for.body7.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3.i

if.then11.3.i:                                    ; preds = %for.body7.3.i
  %mul13.3.i = mul i32 %div.3.i, %33
  %div14.3.i = udiv i32 %mul13.3.i, %M.056.3.i
  %shr.3.i = lshr i32 %div14.3.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.3.i, i32 %dotClock)
  %cmp15.3.i = icmp ugt i32 %shr.3.i, %dotClock
  %sub.3.i = sub i32 %shr.3.i, %dotClock
  %sub18.3.i = sub i32 %dotClock, %shr.3.i
  %DeltaNew.0.3.i = select i1 %cmp15.3.i, i32 %sub.3.i, i32 %sub18.3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %DeltaNew.0.3.i, i32 %DeltaOld.155.3.i)
  %cmp20.3.i = icmp ult i32 %DeltaNew.0.3.i, %DeltaOld.155.3.i
  br i1 %cmp20.3.i, label %if.then21.3.i, label %if.then11.3.i.for.inc.3.i_crit_edge

if.then11.3.i.for.inc.3.i_crit_edge:              ; preds = %if.then11.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3.i

if.then21.3.i:                                    ; preds = %if.then11.3.i
  call void @__sanitizer_cov_trace_pc() #8
  %shl23.3.i = shl nuw nsw i32 %div.3.i, 8
  %or.3.i = or i32 %M.056.3.i, %shl23.3.i
  %or24.3.i = or i32 %or.3.i, 196608
  %34 = ptrtoint ptr %pll4 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or24.3.i, ptr %pll4, align 4
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then21.3.i, %if.then11.3.i.for.inc.3.i_crit_edge, %for.body7.3.i.for.inc.3.i_crit_edge
  %VClk.14 = phi i32 [ %shr.3.i, %if.then21.3.i ], [ %VClk.13, %if.then11.3.i.for.inc.3.i_crit_edge ], [ %VClk.13, %for.body7.3.i.for.inc.3.i_crit_edge ]
  %DeltaOld.2.3.i = phi i32 [ %DeltaNew.0.3.i, %if.then21.3.i ], [ %DeltaOld.155.3.i, %if.then11.3.i.for.inc.3.i_crit_edge ], [ %DeltaOld.155.3.i, %for.body7.3.i.for.inc.3.i_crit_edge ]
  %inc.3.i = add nuw nsw i32 %M.056.3.i, 1
  %exitcond220.not = icmp eq i32 %M.056.3.i, %.54.i
  br i1 %exitcond220.not, label %for.inc.3.i.for.inc28.3.i_crit_edge, label %for.inc.3.i.for.body7.3.i_crit_edge

for.inc.3.i.for.body7.3.i_crit_edge:              ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body7.3.i

for.inc.3.i.for.inc28.3.i_crit_edge:              ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc28.3.i

for.inc28.3.i:                                    ; preds = %for.inc.3.i.for.inc28.3.i_crit_edge, %for.inc28.2.i.for.inc28.3.i_crit_edge
  %VClk.15 = phi i32 [ %VClk.12, %for.inc28.2.i.for.inc28.3.i_crit_edge ], [ %VClk.14, %for.inc.3.i.for.inc28.3.i_crit_edge ]
  %DeltaOld.3.3.i = phi i32 [ %DeltaOld.3.2.i, %for.inc28.2.i.for.inc28.3.i_crit_edge ], [ %DeltaOld.2.3.i, %for.inc.3.i.for.inc28.3.i_crit_edge ]
  %shl.4.i = shl i32 %dotClock, 4
  %35 = add i32 %shl.4.i, -128000
  call void @__sanitizer_cov_trace_const_cmp4(i32 222001, i32 %35)
  %36 = icmp ult i32 %35, 222001
  br i1 %36, label %for.inc28.3.i.for.body7.4.i_crit_edge, label %for.inc28.3.i.if.end_crit_edge

for.inc28.3.i.if.end_crit_edge:                   ; preds = %for.inc28.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.inc28.3.i.for.body7.4.i_crit_edge:            ; preds = %for.inc28.3.i
  br label %for.body7.4.i

for.body7.4.i:                                    ; preds = %for.inc.4.i.for.body7.4.i_crit_edge, %for.inc28.3.i.for.body7.4.i_crit_edge
  %VClk.16 = phi i32 [ %VClk.17, %for.inc.4.i.for.body7.4.i_crit_edge ], [ %VClk.15, %for.inc28.3.i.for.body7.4.i_crit_edge ]
  %M.056.4.i = phi i32 [ %inc.4.i, %for.inc.4.i.for.body7.4.i_crit_edge ], [ %..i, %for.inc28.3.i.for.body7.4.i_crit_edge ]
  %DeltaOld.155.4.i = phi i32 [ %DeltaOld.2.4.i, %for.inc.4.i.for.body7.4.i_crit_edge ], [ %DeltaOld.3.3.i, %for.inc28.3.i.for.body7.4.i_crit_edge ]
  %mul.4.i = mul i32 %M.056.4.i, %shl.4.i
  %37 = ptrtoint ptr %CrystalFreqKHz.i152 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %CrystalFreqKHz.i152, align 8
  %div.4.i = udiv i32 %mul.4.i, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %div.4.i)
  %cmp10.4.i = icmp ult i32 %div.4.i, 256
  br i1 %cmp10.4.i, label %if.then11.4.i, label %for.body7.4.i.for.inc.4.i_crit_edge

for.body7.4.i.for.inc.4.i_crit_edge:              ; preds = %for.body7.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4.i

if.then11.4.i:                                    ; preds = %for.body7.4.i
  %mul13.4.i = mul i32 %div.4.i, %38
  %div14.4.i = udiv i32 %mul13.4.i, %M.056.4.i
  %shr.4.i = lshr i32 %div14.4.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.4.i, i32 %dotClock)
  %cmp15.4.i = icmp ugt i32 %shr.4.i, %dotClock
  %sub.4.i = sub i32 %shr.4.i, %dotClock
  %sub18.4.i = sub i32 %dotClock, %shr.4.i
  %DeltaNew.0.4.i = select i1 %cmp15.4.i, i32 %sub.4.i, i32 %sub18.4.i
  call void @__sanitizer_cov_trace_cmp4(i32 %DeltaNew.0.4.i, i32 %DeltaOld.155.4.i)
  %cmp20.4.i = icmp ult i32 %DeltaNew.0.4.i, %DeltaOld.155.4.i
  br i1 %cmp20.4.i, label %if.then21.4.i, label %if.then11.4.i.for.inc.4.i_crit_edge

if.then11.4.i.for.inc.4.i_crit_edge:              ; preds = %if.then11.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4.i

if.then21.4.i:                                    ; preds = %if.then11.4.i
  call void @__sanitizer_cov_trace_pc() #8
  %shl23.4.i = shl nuw nsw i32 %div.4.i, 8
  %or.4.i = or i32 %M.056.4.i, %shl23.4.i
  %or24.4.i = or i32 %or.4.i, 262144
  %39 = ptrtoint ptr %pll4 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or24.4.i, ptr %pll4, align 4
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %if.then21.4.i, %if.then11.4.i.for.inc.4.i_crit_edge, %for.body7.4.i.for.inc.4.i_crit_edge
  %VClk.17 = phi i32 [ %shr.4.i, %if.then21.4.i ], [ %VClk.16, %if.then11.4.i.for.inc.4.i_crit_edge ], [ %VClk.16, %for.body7.4.i.for.inc.4.i_crit_edge ]
  %DeltaOld.2.4.i = phi i32 [ %DeltaNew.0.4.i, %if.then21.4.i ], [ %DeltaOld.155.4.i, %if.then11.4.i.for.inc.4.i_crit_edge ], [ %DeltaOld.155.4.i, %for.body7.4.i.for.inc.4.i_crit_edge ]
  %inc.4.i = add nuw nsw i32 %M.056.4.i, 1
  %exitcond222.not = icmp eq i32 %M.056.4.i, %.54.i
  br i1 %exitcond222.not, label %for.inc.4.i.if.end_crit_edge, label %for.inc.4.i.for.body7.4.i_crit_edge

for.inc.4.i.for.body7.4.i_crit_edge:              ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body7.4.i

for.inc.4.i.if.end_crit_edge:                     ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %for.inc.4.i.if.end_crit_edge, %for.inc28.3.i.if.end_crit_edge, %for.inc27.i.if.end_crit_edge
  %VClk.19 = phi i32 [ %VClk.15, %for.inc28.3.i.if.end_crit_edge ], [ %VClk.17, %for.inc.4.i.if.end_crit_edge ], [ %VClk.3, %for.inc27.i.if.end_crit_edge ]
  %Architecture = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 7
  %40 = ptrtoint ptr %Architecture to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %Architecture, align 8
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values)
  switch i32 %41, label %if.end.sw.default_crit_edge [
    i32 4, label %sw.bb
    i32 64, label %sw.bb11
  ]

if.end.sw.default_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default

sw.bb:                                            ; preds = %if.end
  %mul = shl nsw i32 %div, 3
  %arbitration0 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 18
  %arbitration1 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %MClk.i) #6
  %43 = ptrtoint ptr %MClk.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %MClk.i, align 4, !annotation !26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %NVClk.i) #6
  %44 = ptrtoint ptr %NVClk.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %NVClk.i, align 4, !annotation !26
  call fastcc void @nvGetClocks(ptr noundef %par, ptr noundef nonnull %MClk.i, ptr noundef nonnull %NVClk.i) #6
  %PFB.i = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 61
  %45 = ptrtoint ptr %PFB.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %PFB.i, align 8
  %add.ptr.i = getelementptr i8, ptr %46, i32 516
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !24
  %PEXTDEV.i = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 64
  %48 = ptrtoint ptr %PEXTDEV.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %PEXTDEV.i, align 4
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #6, !srcloc !24
  %conv6.i = and i32 %47, 15
  %shr.i163 = lshr i32 %47, 4
  %and7.i = and i32 %shr.i163, 15
  %shr8.i = lshr i32 %47, 31
  %add.i = add nuw nsw i32 %and7.i, %shr8.i
  %51 = ptrtoint ptr %MClk.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %MClk.i, align 4
  %53 = ptrtoint ptr %NVClk.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %NVClk.i, align 4
  %conv3.i.i = and i32 %mul, 248
  %spec.select.i.i = add nuw nsw i32 %conv6.i, 13
  %div26.i.i = sdiv i32 10000000, %54
  %div29.i.i = sdiv i32 10000000, %VClk.19
  %mul33.i.i = mul i32 %VClk.19, %conv3.i.i
  %div34.i.i = sdiv i32 %mul33.i.i, 8
  %mul38.i.i = mul nuw nsw i32 %add.i, 3000000
  %div104.i.i = sdiv i32 %mul38.i.i, %52
  %add105.i.i = add nsw i32 %div29.i.i, %div26.i.i
  %add106.i.i = add nsw i32 %add105.i.i, %div104.i.i
  br label %if.end111.i.i

if.end111.i.i:                                    ; preds = %while.body.backedge.i.i, %sw.bb
  %mclk_extra.0270.i.i = phi i32 [ 3, %sw.bb ], [ %mclk_extra.0270.be.i.i, %while.body.backedge.i.i ]
  %add22.i.i = add i32 %spec.select.i.i, %mclk_extra.0270.i.i
  %mul23.i.i = mul i32 %add22.i.i, 1000000
  %div.i.i = sdiv i32 %mul23.i.i, %52
  %add107.i.i = add i32 %add106.i.i, %div.i.i
  %clwm.0.in.in.i.i = mul i32 %add107.i.i, %div34.i.i
  %clwm.0.in.i.i = sdiv i32 %clwm.0.in.in.i.i, 1000000
  %sub.i.i = add nsw i32 %clwm.0.in.i.i, -383
  %mul113.i.i = mul i32 %sub.i.i, %VClk.19
  %div114.i.i = sdiv i32 %mul113.i.i, %52
  %mul115.i.i = mul i32 %div114.i.i, %conv3.i.i
  %div116.i.i = sdiv i32 %mul115.i.i, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div116.i.i, i32 %sub.i.i)
  %cmp117.i.i = icmp slt i32 %div116.i.i, %sub.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 383999999, i32 %clwm.0.in.in.i.i)
  %cmp119.i.i = icmp sgt i32 %clwm.0.in.in.i.i, 383999999
  %or.cond.i.i = select i1 %cmp117.i.i, i1 %cmp119.i.i, i1 false
  br i1 %or.cond.i.i, label %if.then121.i.i, label %if.else142.i.i

if.then121.i.i:                                   ; preds = %if.end111.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mclk_extra.0270.i.i)
  %cmp123.i.i = icmp eq i32 %mclk_extra.0270.i.i, 0
  br i1 %cmp123.i.i, label %if.then121.i.i.nv4UpdateArbitrationSettings.exit_crit_edge, label %if.then121.i.i.while.body.backedge.i.i_crit_edge

if.then121.i.i.while.body.backedge.i.i_crit_edge: ; preds = %if.then121.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.backedge.i.i

if.then121.i.i.nv4UpdateArbitrationSettings.exit_crit_edge: ; preds = %if.then121.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nv4UpdateArbitrationSettings.exit

if.else142.i.i:                                   ; preds = %if.end111.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 518999999, i32 %clwm.0.in.in.i.i)
  %cmp143.i.i = icmp sgt i32 %clwm.0.in.in.i.i, 518999999
  br i1 %cmp143.i.i, label %if.end154.i.i, label %if.then.i

if.end154.i.i:                                    ; preds = %if.else142.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mclk_extra.0270.i.i)
  %cmp147.i.i = icmp eq i32 %mclk_extra.0270.i.i, 0
  br i1 %cmp147.i.i, label %if.end154.i.i.nv4UpdateArbitrationSettings.exit_crit_edge, label %if.end154.i.i.while.body.backedge.i.i_crit_edge

if.end154.i.i.while.body.backedge.i.i_crit_edge:  ; preds = %if.end154.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.backedge.i.i

if.end154.i.i.nv4UpdateArbitrationSettings.exit_crit_edge: ; preds = %if.end154.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nv4UpdateArbitrationSettings.exit

while.body.backedge.i.i:                          ; preds = %if.end154.i.i.while.body.backedge.i.i_crit_edge, %if.then121.i.i.while.body.backedge.i.i_crit_edge
  %mclk_extra.0270.be.i.i = add i32 %mclk_extra.0270.i.i, -1
  br label %if.end111.i.i

if.then.i:                                        ; preds = %if.else142.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %55 = tail call i32 @llvm.smax.i32(i32 %clwm.0.in.i.i, i32 383) #6
  %56 = add nuw nsw i32 %55, 1
  %57 = ptrtoint ptr %arbitration0 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 3, ptr %arbitration0, align 4
  %58 = lshr i32 %56, 3
  %59 = ptrtoint ptr %arbitration1 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %arbitration1, align 4
  br label %nv4UpdateArbitrationSettings.exit

nv4UpdateArbitrationSettings.exit:                ; preds = %if.then.i, %if.end154.i.i.nv4UpdateArbitrationSettings.exit_crit_edge, %if.then121.i.i.nv4UpdateArbitrationSettings.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %NVClk.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %MClk.i) #6
  %cursor0 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 33
  %60 = ptrtoint ptr %cursor0 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %cursor0, align 4
  %cursor1 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 34
  %and = and i32 %flags, 2
  %61 = or i32 %and, 188
  %62 = ptrtoint ptr %cursor1 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %cursor1, align 4
  %cursor2 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 35
  %63 = ptrtoint ptr %cursor2 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %cursor2, align 4
  %pllsel = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 26
  %64 = ptrtoint ptr %pllsel to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 268437248, ptr %pllsel, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  %FlatPanel = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 26
  %65 = ptrtoint ptr %FlatPanel to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %FlatPanel, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool12.not = icmp eq i32 %66, 0
  br i1 %tobool12.not, label %if.then13, label %sw.bb11.sw.default_crit_edge

sw.bb11.sw.default_crit_edge:                     ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default

if.then13:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  %PRAMDAC0 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 60
  %67 = ptrtoint ptr %PRAMDAC0 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %PRAMDAC0, align 4
  %add.ptr = getelementptr i8, ptr %68, i32 1408
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !24
  %and14 = and i32 %69, -268435713
  %control = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 40
  %70 = ptrtoint ptr %control to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %and14, ptr %control, align 4
  br label %sw.default

sw.default:                                       ; preds = %if.then13, %sw.bb11.sw.default_crit_edge, %if.end.sw.default_crit_edge
  %Chipset = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 9
  %71 = ptrtoint ptr %Chipset to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %Chipset, align 8
  %73 = trunc i32 %72 to i16
  %trunc = and i16 %73, -16
  %74 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.3)
  switch i16 %trunc, label %if.else25 [
    i16 576, label %sw.default.if.then22_crit_edge
    i16 976, label %sw.default.if.then22_crit_edge230
  ]

sw.default.if.then22_crit_edge230:                ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then22

sw.default.if.then22_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then22

if.then22:                                        ; preds = %sw.default.if.then22_crit_edge, %sw.default.if.then22_crit_edge230
  %arbitration023 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 18
  %75 = ptrtoint ptr %arbitration023 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 256, ptr %arbitration023, align 4
  %arbitration124 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 19
  %76 = ptrtoint ptr %arbitration124 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1152, ptr %arbitration124, align 4
  br label %if.end49

if.else25:                                        ; preds = %sw.default
  %77 = zext i16 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.4)
  switch i16 %73, label %if.else37 [
    i16 416, label %if.else25.if.then33_crit_edge
    i16 496, label %if.else25.if.then33_crit_edge231
  ]

if.else25.if.then33_crit_edge231:                 ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then33

if.else25.if.then33_crit_edge:                    ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then33

if.then33:                                        ; preds = %if.else25.if.then33_crit_edge, %if.else25.if.then33_crit_edge231
  %arbitration035 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 18
  %arbitration136 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %fifo_data.i) #6
  %78 = getelementptr inbounds %struct.nv10_fifo_info, ptr %fifo_data.i, i32 0, i32 2
  %79 = getelementptr inbounds %struct.nv10_fifo_info, ptr %fifo_data.i, i32 0, i32 4
  %80 = call ptr @memset(ptr %fifo_data.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sim_data.i) #6
  %81 = call ptr @memset(ptr %sim_data.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %MClk.i164) #6
  %82 = ptrtoint ptr %MClk.i164 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 -1, ptr %MClk.i164, align 4, !annotation !26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %memctrl.i) #6
  %83 = ptrtoint ptr %memctrl.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 -1, ptr %memctrl.i, align 4, !annotation !26
  %pci_dev.i = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 6
  %84 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pci_dev.i, align 4
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %bus.i, align 8
  %domain_nr.i.i = getelementptr inbounds %struct.pci_bus, ptr %87, i32 0, i32 16
  %88 = ptrtoint ptr %domain_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %domain_nr.i.i, align 8
  %and.i = and i32 %72, 4080
  call void @__sanitizer_cov_trace_const_cmp4(i32 416, i32 %and.i)
  %cmp.i165 = icmp eq i32 %and.i, 416
  br i1 %cmp.i165, label %if.then.i168, label %if.else.i

if.then.i168:                                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uMClkPostDiv.i) #6
  %90 = ptrtoint ptr %uMClkPostDiv.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 -1, ptr %uMClkPostDiv.i, align 4, !annotation !26
  %call1.i = tail call ptr @pci_get_domain_bus_and_slot(i32 noundef %89, i32 noundef 0, i32 noundef 3) #6
  %call2.i = call i32 @pci_read_config_dword(ptr noundef %call1.i, i32 noundef 108, ptr noundef nonnull %uMClkPostDiv.i) #6
  %91 = ptrtoint ptr %uMClkPostDiv.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %uMClkPostDiv.i, align 4
  %shr.i166 = lshr i32 %92, 8
  %and3.i = and i32 %shr.i166, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool.not.i = icmp eq i32 %and3.i, 0
  %spec.store.select.i = select i1 %tobool.not.i, i32 4, i32 %and3.i
  %div.i167 = udiv i32 400000, %spec.store.select.i
  %93 = ptrtoint ptr %MClk.i164 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %div.i167, ptr %MClk.i164, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uMClkPostDiv.i) #6
  br label %if.end8.i

if.else.i:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i = tail call ptr @pci_get_domain_bus_and_slot(i32 noundef %89, i32 noundef 0, i32 noundef 5) #6
  %call6.i = call i32 @pci_read_config_dword(ptr noundef %call5.i, i32 noundef 76, ptr noundef nonnull %MClk.i164) #6
  %94 = ptrtoint ptr %MClk.i164 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %MClk.i164, align 4
  %div7.i = udiv i32 %95, 1000
  store i32 %div7.i, ptr %MClk.i164, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else.i, %if.then.i168
  %dev.0.i = phi ptr [ %call1.i, %if.then.i168 ], [ %call5.i, %if.else.i ]
  call void @pci_dev_put(ptr noundef %dev.0.i) #6
  %PRAMDAC0.i = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 60
  %96 = ptrtoint ptr %PRAMDAC0.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %PRAMDAC0.i, align 4
  %add.ptr.i169 = getelementptr i8, ptr %97, i32 1280
  %98 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i169) #6, !srcloc !24
  %and11.i = and i32 %98, 255
  %shr12.i = lshr i32 %98, 8
  %and13.i = and i32 %shr12.i, 255
  %shr14.i = lshr i32 %98, 16
  %and15.i = and i32 %shr14.i, 15
  %CrystalFreqKHz.i170 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 19
  %99 = ptrtoint ptr %CrystalFreqKHz.i170 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %CrystalFreqKHz.i170, align 8
  %mul.i171 = mul i32 %and13.i, %100
  %div16.i = udiv i32 %mul.i171, %and11.i
  %shr17.i = lshr i32 %div16.i, %and15.i
  %div.tr = trunc i32 %div to i8
  %conv.i = shl i8 %div.tr, 3
  %pix_bpp.i = getelementptr inbounds %struct.nv10_sim_state, ptr %sim_data.i, i32 0, i32 9
  %101 = ptrtoint ptr %pix_bpp.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %conv.i, ptr %pix_bpp.i, align 2
  %enable_video.i = getelementptr inbounds %struct.nv10_sim_state, ptr %sim_data.i, i32 0, i32 7
  %102 = ptrtoint ptr %enable_video.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %enable_video.i, align 4
  %enable_mp.i = getelementptr inbounds %struct.nv10_sim_state, ptr %sim_data.i, i32 0, i32 11
  %103 = ptrtoint ptr %enable_mp.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %enable_mp.i, align 4
  %call18.i = call ptr @pci_get_domain_bus_and_slot(i32 noundef %89, i32 noundef 0, i32 noundef 1) #6
  %memory_type.i = getelementptr inbounds %struct.nv10_sim_state, ptr %sim_data.i, i32 0, i32 5
  %call19.i = call i32 @pci_read_config_dword(ptr noundef %call18.i, i32 noundef 124, ptr noundef %memory_type.i) #6
  call void @pci_dev_put(ptr noundef %call18.i) #6
  %104 = ptrtoint ptr %memory_type.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %memory_type.i, align 4
  %shr21.i = lshr i32 %105, 12
  %and22.i = and i32 %shr21.i, 1
  store i32 %and22.i, ptr %memory_type.i, align 4
  %memory_width.i = getelementptr inbounds %struct.nv10_sim_state, ptr %sim_data.i, i32 0, i32 6
  %106 = ptrtoint ptr %memory_width.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 64, ptr %memory_width.i, align 4
  %call24.i = call ptr @pci_get_domain_bus_and_slot(i32 noundef %89, i32 noundef 0, i32 noundef 3) #6
  %call25.i = call i32 @pci_read_config_dword(ptr noundef %call24.i, i32 noundef 0, ptr noundef nonnull %memctrl.i) #6
  call void @pci_dev_put(ptr noundef %call24.i) #6
  %107 = ptrtoint ptr %memctrl.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %memctrl.i, align 4
  %shr26.i = lshr i32 %108, 16
  store i32 %shr26.i, ptr %memctrl.i, align 4
  %trunc.i = trunc i32 %shr26.i to i16
  %109 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %109, ptr @__sancov_gen_cov_switch_values.5)
  switch i16 %trunc.i, label %if.end8.i.if.end61.i_crit_edge [
    i16 425, label %if.end8.i.if.then34.i_crit_edge
    i16 427, label %if.end8.i.if.then34.i_crit_edge232
    i16 493, label %if.end8.i.if.then34.i_crit_edge233
  ]

if.end8.i.if.then34.i_crit_edge233:               ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then34.i

if.end8.i.if.then34.i_crit_edge232:               ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then34.i

if.end8.i.if.then34.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then34.i

if.end8.i.if.end61.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61.i

if.then34.i:                                      ; preds = %if.end8.i.if.then34.i_crit_edge, %if.end8.i.if.then34.i_crit_edge232, %if.end8.i.if.then34.i_crit_edge233
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %dimm.i) #6
  %110 = ptrtoint ptr %dimm.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 -1, ptr %dimm.i, align 4, !annotation !26
  %111 = getelementptr inbounds [3 x i32], ptr %dimm.i, i32 0, i32 1
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 -1, ptr %111, align 4, !annotation !26
  %113 = getelementptr inbounds [3 x i32], ptr %dimm.i, i32 0, i32 2
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 -1, ptr %113, align 4, !annotation !26
  %call35.i = call ptr @pci_get_domain_bus_and_slot(i32 noundef %89, i32 noundef 0, i32 noundef 2) #6
  %call36.i = call i32 @pci_read_config_dword(ptr noundef %call35.i, i32 noundef 64, ptr noundef nonnull %dimm.i) #6
  %115 = ptrtoint ptr %dimm.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %dimm.i, align 4
  %shr38.i = lshr i32 %116, 8
  %and39.i = and i32 %shr38.i, 79
  store i32 %and39.i, ptr %dimm.i, align 4
  %call42.i = call i32 @pci_read_config_dword(ptr noundef %call35.i, i32 noundef 68, ptr noundef %111) #6
  %117 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %111, align 4
  %shr44.i = lshr i32 %118, 8
  %and45.i = and i32 %shr44.i, 79
  store i32 %and45.i, ptr %111, align 4
  %call48.i = call i32 @pci_read_config_dword(ptr noundef %call35.i, i32 noundef 72, ptr noundef %113) #6
  %119 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %113, align 4
  %shr50.i = lshr i32 %120, 8
  %and51.i = and i32 %shr50.i, 79
  store i32 %and51.i, ptr %113, align 4
  %121 = ptrtoint ptr %dimm.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %dimm.i, align 4
  %123 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %111, align 4
  %add.i172 = add i32 %124, %122
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i172, i32 %and51.i)
  %cmp56.not.i = icmp eq i32 %add.i172, %and51.i
  br i1 %cmp56.not.i, label %if.then34.i.if.end60.i_crit_edge, label %do.end.i

if.then34.i.if.end60.i_crit_edge:                 ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60.i

do.end.i:                                         ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #8
  %call59.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %if.end60.i

if.end60.i:                                       ; preds = %do.end.i, %if.then34.i.if.end60.i_crit_edge
  call void @pci_dev_put(ptr noundef %call35.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %dimm.i) #6
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.end60.i, %if.end8.i.if.end61.i_crit_edge
  %mem_latency.i = getelementptr inbounds %struct.nv10_sim_state, ptr %sim_data.i, i32 0, i32 4
  %125 = ptrtoint ptr %mem_latency.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 3, ptr %mem_latency.i, align 1
  %mem_aligned.i = getelementptr inbounds %struct.nv10_sim_state, ptr %sim_data.i, i32 0, i32 10
  %126 = ptrtoint ptr %mem_aligned.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 1, ptr %mem_aligned.i, align 1
  %mem_page_miss.i = getelementptr inbounds %struct.nv10_sim_state, ptr %sim_data.i, i32 0, i32 3
  %127 = ptrtoint ptr %mem_page_miss.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 10, ptr %mem_page_miss.i, align 4
  %gr_during_vid.i = getelementptr inbounds %struct.nv10_sim_state, ptr %sim_data.i, i32 0, i32 8
  %128 = ptrtoint ptr %gr_during_vid.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 0, ptr %gr_during_vid.i, align 1
  %129 = ptrtoint ptr %sim_data.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %VClk.19, ptr %sim_data.i, align 4
  %130 = ptrtoint ptr %MClk.i164 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %MClk.i164, align 4
  %mclk_khz.i = getelementptr inbounds %struct.nv10_sim_state, ptr %sim_data.i, i32 0, i32 1
  %132 = ptrtoint ptr %mclk_khz.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %mclk_khz.i, align 4
  %nvclk_khz.i = getelementptr inbounds %struct.nv10_sim_state, ptr %sim_data.i, i32 0, i32 2
  %133 = ptrtoint ptr %nvclk_khz.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %shr17.i, ptr %nvclk_khz.i, align 4
  call fastcc void @nv10CalcArbitration(ptr noundef nonnull %fifo_data.i, ptr noundef nonnull %sim_data.i) #6
  %134 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool62.not.i = icmp eq i32 %135, 0
  br i1 %tobool62.not.i, label %if.end61.i.nForceUpdateArbitrationSettings.exit_crit_edge, label %if.then63.i

if.end61.i.nForceUpdateArbitrationSettings.exit_crit_edge: ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nForceUpdateArbitrationSettings.exit

if.then63.i:                                      ; preds = %if.end61.i
  %136 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %137)
  %tobool66.not89.i = icmp ult i32 %137, 32
  br i1 %tobool66.not89.i, label %if.then63.i.while.end.i_crit_edge, label %while.body.preheader.i

if.then63.i.while.end.i_crit_edge:                ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.body.preheader.i:                           ; preds = %if.then63.i
  %shr64.i = ashr i32 %137, 4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.preheader.i
  %b.091.i = phi i32 [ %shr65.i, %while.body.i.while.body.i_crit_edge ], [ %shr64.i, %while.body.preheader.i ]
  %storemerge90.i = phi i32 [ %inc.i173, %while.body.i.while.body.i_crit_edge ], [ 0, %while.body.preheader.i ]
  %shr65.i = ashr i32 %b.091.i, 1
  %inc.i173 = add i32 %storemerge90.i, 1
  %tobool66.not.i = icmp ult i32 %b.091.i, 4
  br i1 %tobool66.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.then63.i.while.end.i_crit_edge
  %storemerge.lcssa.i = phi i32 [ 0, %if.then63.i.while.end.i_crit_edge ], [ %inc.i173, %while.body.i.while.end.i_crit_edge ]
  %138 = ptrtoint ptr %arbitration035 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %storemerge.lcssa.i, ptr %arbitration035, align 4
  %139 = ptrtoint ptr %fifo_data.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %fifo_data.i, align 4
  %shr67.i = ashr i32 %140, 3
  %141 = ptrtoint ptr %arbitration136 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %shr67.i, ptr %arbitration136, align 4
  br label %nForceUpdateArbitrationSettings.exit

nForceUpdateArbitrationSettings.exit:             ; preds = %while.end.i, %if.end61.i.nForceUpdateArbitrationSettings.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %memctrl.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %MClk.i164) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sim_data.i) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %fifo_data.i) #6
  br label %if.end49

if.else37:                                        ; preds = %if.else25
  %142 = ptrtoint ptr %Architecture to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %Architecture, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %143)
  %cmp39 = icmp ult i32 %143, 48
  %arbitration042 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 18
  %arbitration143 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 19
  br i1 %cmp39, label %if.then40, label %if.else44

if.then40:                                        ; preds = %if.else37
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %fifo_data.i174) #6
  %144 = getelementptr inbounds %struct.nv10_fifo_info, ptr %fifo_data.i174, i32 0, i32 4
  %145 = call ptr @memset(ptr %fifo_data.i174, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sim_data.i175) #6
  %146 = getelementptr inbounds i8, ptr %sim_data.i175, i32 12
  %147 = call ptr @memset(ptr %146, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %MClk.i176) #6
  %148 = ptrtoint ptr %MClk.i176 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 -1, ptr %MClk.i176, align 4, !annotation !26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %NVClk.i177) #6
  %149 = ptrtoint ptr %NVClk.i177 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 -1, ptr %NVClk.i177, align 4, !annotation !26
  call fastcc void @nvGetClocks(ptr noundef %par, ptr noundef nonnull %MClk.i176, ptr noundef nonnull %NVClk.i177) #6
  %PFB.i178 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 61
  %150 = ptrtoint ptr %PFB.i178 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %PFB.i178, align 8
  %add.ptr.i179 = getelementptr i8, ptr %151, i32 516
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i179) #6, !srcloc !24
  %div.tr210 = trunc i32 %div to i8
  %conv.i180 = shl i8 %div.tr210, 3
  %pix_bpp.i181 = getelementptr inbounds %struct.nv10_sim_state, ptr %sim_data.i175, i32 0, i32 9
  %153 = ptrtoint ptr %pix_bpp.i181 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %conv.i180, ptr %pix_bpp.i181, align 2
  %enable_video.i182 = getelementptr inbounds %struct.nv10_sim_state, ptr %sim_data.i175, i32 0, i32 7
  %154 = ptrtoint ptr %enable_video.i182 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 1, ptr %enable_video.i182, align 4
  %enable_mp.i183 = getelementptr inbounds %struct.nv10_sim_state, ptr %sim_data.i175, i32 0, i32 11
  %155 = ptrtoint ptr %enable_mp.i183 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 0, ptr %enable_mp.i183, align 4
  %156 = ptrtoint ptr %PFB.i178 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %PFB.i178, align 8
  %add.ptr2.i = getelementptr i8, ptr %157, i32 512
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #6, !srcloc !24
  %and.i184 = and i32 %158, 1
  %memory_type.i185 = getelementptr inbounds %struct.nv10_sim_state, ptr %sim_data.i175, i32 0, i32 5
  %159 = ptrtoint ptr %memory_type.i185 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %and.i184, ptr %memory_type.i185, align 4
  %PEXTDEV.i186 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 64
  %160 = ptrtoint ptr %PEXTDEV.i186 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %PEXTDEV.i186, align 4
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %161) #6, !srcloc !24
  %and6.i = and i32 %162, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %cond8.i = select i1 %tobool7.not.i, i32 64, i32 128
  %memory_width.i187 = getelementptr inbounds %struct.nv10_sim_state, ptr %sim_data.i175, i32 0, i32 6
  %163 = ptrtoint ptr %memory_width.i187 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %cond8.i, ptr %memory_width.i187, align 4
  %164 = trunc i32 %152 to i8
  %conv12.i = and i8 %164, 15
  %mem_latency.i188 = getelementptr inbounds %struct.nv10_sim_state, ptr %sim_data.i175, i32 0, i32 4
  %165 = ptrtoint ptr %mem_latency.i188 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %conv12.i, ptr %mem_latency.i188, align 1
  %mem_aligned.i189 = getelementptr inbounds %struct.nv10_sim_state, ptr %sim_data.i175, i32 0, i32 10
  %166 = ptrtoint ptr %mem_aligned.i189 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 1, ptr %mem_aligned.i189, align 1
  %shr.i190 = lshr i32 %152, 4
  %and13.i191 = and i32 %shr.i190, 15
  %shr14.i192 = lshr i32 %152, 31
  %add.i193 = add nuw nsw i32 %and13.i191, %shr14.i192
  %conv16.i = trunc i32 %add.i193 to i8
  %167 = ptrtoint ptr %146 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %conv16.i, ptr %146, align 4
  %gr_during_vid.i195 = getelementptr inbounds %struct.nv10_sim_state, ptr %sim_data.i175, i32 0, i32 8
  %168 = ptrtoint ptr %gr_during_vid.i195 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 0, ptr %gr_during_vid.i195, align 1
  %169 = ptrtoint ptr %sim_data.i175 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %VClk.19, ptr %sim_data.i175, align 4
  %170 = ptrtoint ptr %MClk.i176 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %MClk.i176, align 4
  %mclk_khz.i196 = getelementptr inbounds %struct.nv10_sim_state, ptr %sim_data.i175, i32 0, i32 1
  %172 = ptrtoint ptr %mclk_khz.i196 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %171, ptr %mclk_khz.i196, align 4
  %173 = ptrtoint ptr %NVClk.i177 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %NVClk.i177, align 4
  %nvclk_khz.i197 = getelementptr inbounds %struct.nv10_sim_state, ptr %sim_data.i175, i32 0, i32 2
  %175 = ptrtoint ptr %nvclk_khz.i197 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %174, ptr %nvclk_khz.i197, align 4
  call fastcc void @nv10CalcArbitration(ptr noundef nonnull %fifo_data.i174, ptr noundef nonnull %sim_data.i175) #6
  %176 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %144, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %tobool17.not.i = icmp eq i32 %177, 0
  br i1 %tobool17.not.i, label %if.then40.nv10UpdateArbitrationSettings.exit_crit_edge, label %if.then.i198

if.then40.nv10UpdateArbitrationSettings.exit_crit_edge: ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  br label %nv10UpdateArbitrationSettings.exit

if.then.i198:                                     ; preds = %if.then40
  %178 = getelementptr inbounds %struct.nv10_fifo_info, ptr %fifo_data.i174, i32 0, i32 2
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %178, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %180)
  %tobool20.not28.i = icmp ult i32 %180, 32
  br i1 %tobool20.not28.i, label %if.then.i198.while.end.i204_crit_edge, label %while.body.preheader.i199

if.then.i198.while.end.i204_crit_edge:            ; preds = %if.then.i198
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i204

while.body.preheader.i199:                        ; preds = %if.then.i198
  %shr18.i = ashr i32 %180, 4
  br label %while.body.i201

while.body.i201:                                  ; preds = %while.body.i201.while.body.i201_crit_edge, %while.body.preheader.i199
  %b.030.i = phi i32 [ %shr19.i, %while.body.i201.while.body.i201_crit_edge ], [ %shr18.i, %while.body.preheader.i199 ]
  %storemerge29.i = phi i32 [ %inc.i200, %while.body.i201.while.body.i201_crit_edge ], [ 0, %while.body.preheader.i199 ]
  %shr19.i = ashr i32 %b.030.i, 1
  %inc.i200 = add i32 %storemerge29.i, 1
  %tobool20.not.i = icmp ult i32 %b.030.i, 4
  br i1 %tobool20.not.i, label %while.body.i201.while.end.i204_crit_edge, label %while.body.i201.while.body.i201_crit_edge

while.body.i201.while.body.i201_crit_edge:        ; preds = %while.body.i201
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i201

while.body.i201.while.end.i204_crit_edge:         ; preds = %while.body.i201
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i204

while.end.i204:                                   ; preds = %while.body.i201.while.end.i204_crit_edge, %if.then.i198.while.end.i204_crit_edge
  %storemerge.lcssa.i202 = phi i32 [ 0, %if.then.i198.while.end.i204_crit_edge ], [ %inc.i200, %while.body.i201.while.end.i204_crit_edge ]
  %181 = ptrtoint ptr %arbitration042 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %storemerge.lcssa.i202, ptr %arbitration042, align 4
  %182 = ptrtoint ptr %fifo_data.i174 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %fifo_data.i174, align 4
  %shr21.i203 = ashr i32 %183, 3
  %184 = ptrtoint ptr %arbitration143 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %shr21.i203, ptr %arbitration143, align 4
  br label %nv10UpdateArbitrationSettings.exit

nv10UpdateArbitrationSettings.exit:               ; preds = %while.end.i204, %if.then40.nv10UpdateArbitrationSettings.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %NVClk.i177) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %MClk.i176) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sim_data.i175) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %fifo_data.i174) #6
  br label %if.end49

if.else44:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %MClk.i205) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %NVClk.i206) #6
  call fastcc void @nvGetClocks(ptr noundef %par, ptr noundef nonnull %MClk.i205, ptr noundef nonnull %NVClk.i206) #6
  %185 = ptrtoint ptr %arbitration042 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 4, ptr %arbitration042, align 4
  %186 = ptrtoint ptr %arbitration143 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 192, ptr %arbitration143, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %NVClk.i206) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %MClk.i205) #6
  br label %if.end49

if.end49:                                         ; preds = %if.else44, %nv10UpdateArbitrationSettings.exit, %nForceUpdateArbitrationSettings.exit, %if.then22
  %CursorStart = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 8
  %187 = ptrtoint ptr %CursorStart to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %CursorStart, align 4
  %shr = lshr i32 %188, 17
  %or50 = or i32 %shr, 128
  %cursor051 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 33
  %189 = ptrtoint ptr %cursor051 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %or50, ptr %cursor051, align 4
  %190 = load i32, ptr %CursorStart, align 4
  %191 = lshr i32 %190, 9
  %shl = and i32 %191, 8388604
  %cursor154 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 34
  %192 = ptrtoint ptr %cursor154 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %shl, ptr %cursor154, align 4
  %193 = load i32, ptr %CursorStart, align 4
  %shr56 = lshr i32 %193, 24
  %cursor257 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 35
  %194 = ptrtoint ptr %cursor257 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %shr56, ptr %cursor257, align 4
  %and58 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.end49.if.end63_crit_edge, label %if.then60

if.end49.if.end63_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.then60:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  %or62 = or i32 %shl, 2
  %195 = ptrtoint ptr %cursor154 to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %or62, ptr %cursor154, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then60, %if.end49.if.end63_crit_edge
  %pllsel64 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 26
  %196 = ptrtoint ptr %pllsel64 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 268437248, ptr %pllsel64, align 4
  %PFB = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 61
  %197 = ptrtoint ptr %PFB to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %PFB, align 8
  %add.ptr65 = getelementptr i8, ptr %198, i32 512
  %199 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr65) #6, !srcloc !24
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end63, %nv4UpdateArbitrationSettings.exit
  %.sink = phi i32 [ %199, %if.end63 ], [ 4372, %nv4UpdateArbitrationSettings.exit ]
  %config67 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 31
  %200 = ptrtoint ptr %config67 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %.sink, ptr %config67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %bpp)
  %cmp68 = icmp eq i32 %bpp, 16
  %cond69 = select i1 %cmp68, i32 1052928, i32 1048832
  %general70 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 27
  %201 = ptrtoint ptr %general70 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %cond69, ptr %general70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1280, i32 %hDisplaySize)
  %cmp71 = icmp slt i32 %hDisplaySize, 1280
  %cond72 = select i1 %cmp71, i32 4, i32 0
  %repaint173 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 10
  %202 = ptrtoint ptr %repaint173 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %cond72, ptr %repaint173, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %bpp)
  %cmp74.not = icmp eq i32 %bpp, 8
  br i1 %cmp74.not, label %sw.epilog.if.end78_crit_edge, label %if.then75

sw.epilog.if.end78_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78

if.then75:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %general76 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 27
  %203 = ptrtoint ptr %general76 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %general76, align 4
  %or77 = or i32 %204, 48
  store i32 %or77, ptr %general76, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then75, %sw.epilog.if.end78_crit_edge
  %div79 = sdiv i32 %width, 8
  %mul80 = mul i32 %div79, %div
  %and81 = lshr i32 %mul80, 3
  %205 = and i32 %and81, 224
  %repaint0 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 9
  %206 = ptrtoint ptr %repaint0 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %205, ptr %repaint0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %add)
  %cmp83 = icmp sgt i32 %add, 23
  %spec.select151 = select i1 %cmp83, i32 3, i32 %div
  %pixel = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 16
  %207 = ptrtoint ptr %pixel to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %spec.select151, ptr %pixel, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @NVLoadStateExt(ptr noundef %par, ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %PMC = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 66
  %0 = ptrtoint ptr %PMC to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %PMC, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !25
  %2 = ptrtoint ptr %PMC to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %PMC, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 -65281) #6, !srcloc !25
  %4 = ptrtoint ptr %PMC to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %PMC, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 -1) #6, !srcloc !25
  %PTIMER = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 65
  %6 = ptrtoint ptr %PTIMER to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %PTIMER, align 8
  %add.ptr5 = getelementptr i8, ptr %7, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 8) #6, !srcloc !25
  %8 = ptrtoint ptr %PTIMER to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %PTIMER, align 8
  %add.ptr7 = getelementptr i8, ptr %9, i32 2112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 3) #6, !srcloc !25
  %10 = ptrtoint ptr %PTIMER to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %PTIMER, align 8
  %add.ptr9 = getelementptr i8, ptr %11, i32 1280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 0) #6, !srcloc !25
  %12 = ptrtoint ptr %PTIMER to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %PTIMER, align 8
  %add.ptr11 = getelementptr i8, ptr %13, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 -1) #6, !srcloc !25
  %Architecture = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 7
  %14 = ptrtoint ptr %Architecture to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %Architecture, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp = icmp eq i32 %15, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %state, null
  br i1 %tobool.not, label %if.then.if.else260_crit_edge, label %if.then12

if.then.if.else260_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else260

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %config = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 31
  %16 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %config, align 4
  %PFB = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 61
  %18 = ptrtoint ptr %PFB to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %PFB, align 8
  %add.ptr13 = getelementptr i8, ptr %19, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %17) #6, !srcloc !25
  br label %if.end64

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %15)
  %cmp15 = icmp ult i32 %15, 64
  br i1 %cmp15, label %if.else.if.then17_crit_edge, label %lor.lhs.false

if.else.if.then17_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

lor.lhs.false:                                    ; preds = %if.else
  %Chipset = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 9
  %20 = ptrtoint ptr %Chipset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %Chipset, align 8
  %22 = trunc i32 %21 to i16
  %trunc1935 = and i16 %22, -16
  %23 = zext i16 %trunc1935 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.6)
  switch i16 %trunc1935, label %lor.lhs.false.if.end46_crit_edge [
    i16 64, label %lor.lhs.false.if.then17_crit_edge
    i16 144, label %lor.lhs.false.if.then45_crit_edge
    i16 464, label %lor.lhs.false.if.then45_crit_edge1966
    i16 656, label %lor.lhs.false.if.then45_crit_edge1967
    i16 912, label %lor.lhs.false.if.then45_crit_edge1968
    i16 976, label %lor.lhs.false.if.then45_crit_edge1969
  ]

lor.lhs.false.if.then45_crit_edge1969:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then45

lor.lhs.false.if.then45_crit_edge1968:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then45

lor.lhs.false.if.then45_crit_edge1967:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then45

lor.lhs.false.if.then45_crit_edge1966:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then45

lor.lhs.false.if.then45_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then45

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

lor.lhs.false.if.end46_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then17:                                        ; preds = %lor.lhs.false.if.then17_crit_edge, %if.else.if.then17_crit_edge
  %PFB19 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 61
  %FbMapSize = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 12
  %24 = ptrtoint ptr %PFB19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %PFB19, align 8
  %add.ptr20 = getelementptr i8, ptr %25, i32 576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 0) #6, !srcloc !25
  %26 = ptrtoint ptr %FbMapSize to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %FbMapSize, align 4
  %sub = add i32 %27, -1
  %28 = ptrtoint ptr %PFB19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %PFB19, align 8
  %add.ptr24 = getelementptr i8, ptr %29, i32 580
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %sub) #6, !srcloc !25
  %30 = ptrtoint ptr %PFB19 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %PFB19, align 8
  %add.ptr20.1 = getelementptr i8, ptr %31, i32 592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.1, i32 0) #6, !srcloc !25
  %32 = ptrtoint ptr %FbMapSize to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %FbMapSize, align 4
  %sub.1 = add i32 %33, -1
  %34 = ptrtoint ptr %PFB19 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %PFB19, align 8
  %add.ptr24.1 = getelementptr i8, ptr %35, i32 596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.1, i32 %sub.1) #6, !srcloc !25
  %36 = ptrtoint ptr %PFB19 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %PFB19, align 8
  %add.ptr20.2 = getelementptr i8, ptr %37, i32 608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.2, i32 0) #6, !srcloc !25
  %38 = ptrtoint ptr %FbMapSize to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %FbMapSize, align 4
  %sub.2 = add i32 %39, -1
  %40 = ptrtoint ptr %PFB19 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %PFB19, align 8
  %add.ptr24.2 = getelementptr i8, ptr %41, i32 612
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.2, i32 %sub.2) #6, !srcloc !25
  %42 = ptrtoint ptr %PFB19 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %PFB19, align 8
  %add.ptr20.3 = getelementptr i8, ptr %43, i32 624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.3, i32 0) #6, !srcloc !25
  %44 = ptrtoint ptr %FbMapSize to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %FbMapSize, align 4
  %sub.3 = add i32 %45, -1
  %46 = ptrtoint ptr %PFB19 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %PFB19, align 8
  %add.ptr24.3 = getelementptr i8, ptr %47, i32 628
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.3, i32 %sub.3) #6, !srcloc !25
  %48 = ptrtoint ptr %PFB19 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %PFB19, align 8
  %add.ptr20.4 = getelementptr i8, ptr %49, i32 640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.4, i32 0) #6, !srcloc !25
  %50 = ptrtoint ptr %FbMapSize to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %FbMapSize, align 4
  %sub.4 = add i32 %51, -1
  %52 = ptrtoint ptr %PFB19 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %PFB19, align 8
  %add.ptr24.4 = getelementptr i8, ptr %53, i32 644
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.4, i32 %sub.4) #6, !srcloc !25
  %54 = ptrtoint ptr %PFB19 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %PFB19, align 8
  %add.ptr20.5 = getelementptr i8, ptr %55, i32 656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.5, i32 0) #6, !srcloc !25
  %56 = ptrtoint ptr %FbMapSize to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %FbMapSize, align 4
  %sub.5 = add i32 %57, -1
  %58 = ptrtoint ptr %PFB19 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %PFB19, align 8
  %add.ptr24.5 = getelementptr i8, ptr %59, i32 660
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.5, i32 %sub.5) #6, !srcloc !25
  %60 = ptrtoint ptr %PFB19 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %PFB19, align 8
  %add.ptr20.6 = getelementptr i8, ptr %61, i32 672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.6, i32 0) #6, !srcloc !25
  %62 = ptrtoint ptr %FbMapSize to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %FbMapSize, align 4
  %sub.6 = add i32 %63, -1
  %64 = ptrtoint ptr %PFB19 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %PFB19, align 8
  %add.ptr24.6 = getelementptr i8, ptr %65, i32 676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.6, i32 %sub.6) #6, !srcloc !25
  %66 = ptrtoint ptr %PFB19 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %PFB19, align 8
  %add.ptr20.7 = getelementptr i8, ptr %67, i32 688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.7, i32 0) #6, !srcloc !25
  %68 = ptrtoint ptr %FbMapSize to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %FbMapSize, align 4
  %sub.7 = add i32 %69, -1
  %70 = ptrtoint ptr %PFB19 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %PFB19, align 8
  %add.ptr24.7 = getelementptr i8, ptr %71, i32 692
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.7, i32 %sub.7) #6, !srcloc !25
  br label %if.end64

if.then45:                                        ; preds = %lor.lhs.false.if.then45_crit_edge, %lor.lhs.false.if.then45_crit_edge1966, %lor.lhs.false.if.then45_crit_edge1967, %lor.lhs.false.if.then45_crit_edge1968, %lor.lhs.false.if.then45_crit_edge1969
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %lor.lhs.false.if.end46_crit_edge
  %regions.0 = phi i32 [ 15, %if.then45 ], [ 12, %lor.lhs.false.if.end46_crit_edge ]
  %PFB50 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 61
  %FbMapSize54 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 12
  br label %for.body49

for.body49:                                       ; preds = %for.body49.for.body49_crit_edge, %if.end46
  %i.11942 = phi i32 [ 0, %if.end46 ], [ %inc61, %for.body49.for.body49_crit_edge ]
  %72 = ptrtoint ptr %PFB50 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %PFB50, align 8
  %mul51 = shl i32 %i.11942, 4
  %add52 = add nuw nsw i32 %mul51, 1536
  %add.ptr53 = getelementptr i8, ptr %73, i32 %add52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 0) #6, !srcloc !25
  %74 = ptrtoint ptr %FbMapSize54 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %FbMapSize54, align 4
  %sub55 = add i32 %75, -1
  %76 = ptrtoint ptr %PFB50 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %PFB50, align 8
  %add58 = add nuw nsw i32 %mul51, 1540
  %add.ptr59 = getelementptr i8, ptr %77, i32 %add58
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 %sub55) #6, !srcloc !25
  %inc61 = add nuw nsw i32 %i.11942, 1
  %exitcond.not = icmp eq i32 %inc61, %regions.0
  br i1 %exitcond.not, label %for.body49.if.end64_crit_edge, label %for.body49.for.body49_crit_edge

for.body49.for.body49_crit_edge:                  ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body49

for.body49.if.end64_crit_edge:                    ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.end64:                                         ; preds = %for.body49.if.end64_crit_edge, %if.then17, %if.then12
  %78 = ptrtoint ptr %Architecture to i32
  call void @__asan_load4_noabort(i32 %78)
  %.pr = load i32, ptr %Architecture, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %.pr)
  %cmp66 = icmp ugt i32 %.pr, 63
  br i1 %cmp66, label %if.then67, label %if.end64.if.else260_crit_edge

if.end64.if.else260_crit_edge:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else260

if.then67:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  %PRAMIN = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 67
  %79 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %PRAMIN, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 -2147483632) #6, !srcloc !25
  %81 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %PRAMIN, align 8
  %add.ptr70 = getelementptr i8, ptr %82, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70, i32 1053186) #6, !srcloc !25
  %83 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %PRAMIN, align 8
  %add.ptr72 = getelementptr i8, ptr %84, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72, i32 -2147483631) #6, !srcloc !25
  %85 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %PRAMIN, align 8
  %add.ptr74 = getelementptr i8, ptr %86, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74, i32 1053188) #6, !srcloc !25
  %87 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %PRAMIN, align 8
  %add.ptr76 = getelementptr i8, ptr %88, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 -2147483630) #6, !srcloc !25
  %89 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %PRAMIN, align 8
  %add.ptr78 = getelementptr i8, ptr %90, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78, i32 1053190) #6, !srcloc !25
  %91 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %PRAMIN, align 8
  %add.ptr80 = getelementptr i8, ptr %92, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80, i32 -2147483629) #6, !srcloc !25
  %93 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %PRAMIN, align 8
  %add.ptr82 = getelementptr i8, ptr %94, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82, i32 1053192) #6, !srcloc !25
  %95 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %PRAMIN, align 8
  %add.ptr84 = getelementptr i8, ptr %96, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84, i32 -2147483628) #6, !srcloc !25
  %97 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %PRAMIN, align 8
  %add.ptr86 = getelementptr i8, ptr %98, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86, i32 1053194) #6, !srcloc !25
  %99 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %PRAMIN, align 8
  %add.ptr88 = getelementptr i8, ptr %100, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr88, i32 -2147483627) #6, !srcloc !25
  %101 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %PRAMIN, align 8
  %add.ptr90 = getelementptr i8, ptr %102, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90, i32 1053196) #6, !srcloc !25
  %103 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %PRAMIN, align 8
  %add.ptr92 = getelementptr i8, ptr %104, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92, i32 -2147483626) #6, !srcloc !25
  %105 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %PRAMIN, align 8
  %add.ptr94 = getelementptr i8, ptr %106, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94, i32 1053198) #6, !srcloc !25
  %107 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %PRAMIN, align 8
  %add.ptr96 = getelementptr i8, ptr %108, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr96, i32 -2147483625) #6, !srcloc !25
  %109 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %PRAMIN, align 8
  %add.ptr98 = getelementptr i8, ptr %110, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98, i32 1053200) #6, !srcloc !25
  %111 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %PRAMIN, align 8
  %add.ptr100 = getelementptr i8, ptr %112, i32 8192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr100, i32 12288) #6, !srcloc !25
  %FbMapSize101 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 12
  %113 = ptrtoint ptr %FbMapSize101 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %FbMapSize101, align 4
  %sub102 = add i32 %114, -1
  %115 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %PRAMIN, align 8
  %add.ptr104 = getelementptr i8, ptr %116, i32 8196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr104, i32 %sub102) #6, !srcloc !25
  %117 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %PRAMIN, align 8
  %add.ptr106 = getelementptr i8, ptr %118, i32 8200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr106, i32 2) #6, !srcloc !25
  %119 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %PRAMIN, align 8
  %add.ptr108 = getelementptr i8, ptr %120, i32 8224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr108, i32 34078818) #6, !srcloc !25
  %121 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %PRAMIN, align 8
  %add.ptr110 = getelementptr i8, ptr %122, i32 8228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr110, i32 0) #6, !srcloc !25
  %123 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %PRAMIN, align 8
  %add.ptr112 = getelementptr i8, ptr %124, i32 8232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr112, i32 4608) #6, !srcloc !25
  %125 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %PRAMIN, align 8
  %add.ptr114 = getelementptr i8, ptr %126, i32 8236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr114, i32 4608) #6, !srcloc !25
  %127 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %PRAMIN, align 8
  %add.ptr116 = getelementptr i8, ptr %128, i32 8240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr116, i32 0) #6, !srcloc !25
  %129 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %PRAMIN, align 8
  %add.ptr118 = getelementptr i8, ptr %130, i32 8244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr118, i32 0) #6, !srcloc !25
  %131 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %PRAMIN, align 8
  %add.ptr120 = getelementptr i8, ptr %132, i32 8256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr120, i32 34078787) #6, !srcloc !25
  %133 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %PRAMIN, align 8
  %add.ptr122 = getelementptr i8, ptr %134, i32 8260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr122, i32 0) #6, !srcloc !25
  %135 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %PRAMIN, align 8
  %add.ptr124 = getelementptr i8, ptr %136, i32 8264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr124, i32 0) #6, !srcloc !25
  %137 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %PRAMIN, align 8
  %add.ptr126 = getelementptr i8, ptr %138, i32 8268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr126, i32 0) #6, !srcloc !25
  %139 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %PRAMIN, align 8
  %add.ptr128 = getelementptr i8, ptr %140, i32 8272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr128, i32 0) #6, !srcloc !25
  %141 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %PRAMIN, align 8
  %add.ptr130 = getelementptr i8, ptr %142, i32 8276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr130, i32 0) #6, !srcloc !25
  %143 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %PRAMIN, align 8
  %add.ptr132 = getelementptr i8, ptr %144, i32 8288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr132, i32 34078788) #6, !srcloc !25
  %145 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %PRAMIN, align 8
  %add.ptr134 = getelementptr i8, ptr %146, i32 8292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr134, i32 33554432) #6, !srcloc !25
  %147 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %PRAMIN, align 8
  %add.ptr136 = getelementptr i8, ptr %148, i32 8296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr136, i32 0) #6, !srcloc !25
  %149 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %PRAMIN, align 8
  %add.ptr138 = getelementptr i8, ptr %150, i32 8300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr138, i32 0) #6, !srcloc !25
  %151 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %PRAMIN, align 8
  %add.ptr140 = getelementptr i8, ptr %152, i32 8304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr140, i32 0) #6, !srcloc !25
  %153 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %PRAMIN, align 8
  %add.ptr142 = getelementptr i8, ptr %154, i32 8308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr142, i32 0) #6, !srcloc !25
  %155 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %PRAMIN, align 8
  %add.ptr144 = getelementptr i8, ptr %156, i32 8320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr144, i32 34078745) #6, !srcloc !25
  %157 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %PRAMIN, align 8
  %add.ptr146 = getelementptr i8, ptr %158, i32 8324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr146, i32 0) #6, !srcloc !25
  %159 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %PRAMIN, align 8
  %add.ptr148 = getelementptr i8, ptr %160, i32 8328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr148, i32 0) #6, !srcloc !25
  %161 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %PRAMIN, align 8
  %add.ptr150 = getelementptr i8, ptr %162, i32 8332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr150, i32 0) #6, !srcloc !25
  %163 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %PRAMIN, align 8
  %add.ptr152 = getelementptr i8, ptr %164, i32 8336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr152, i32 0) #6, !srcloc !25
  %165 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %PRAMIN, align 8
  %add.ptr154 = getelementptr i8, ptr %166, i32 8340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr154, i32 0) #6, !srcloc !25
  %167 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %PRAMIN, align 8
  %add.ptr156 = getelementptr i8, ptr %168, i32 8352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr156, i32 34209884) #6, !srcloc !25
  %169 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %PRAMIN, align 8
  %add.ptr158 = getelementptr i8, ptr %170, i32 8356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr158, i32 0) #6, !srcloc !25
  %171 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %PRAMIN, align 8
  %add.ptr160 = getelementptr i8, ptr %172, i32 8360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr160, i32 0) #6, !srcloc !25
  %173 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %PRAMIN, align 8
  %add.ptr162 = getelementptr i8, ptr %174, i32 8364
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr162, i32 0) #6, !srcloc !25
  %175 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %PRAMIN, align 8
  %add.ptr164 = getelementptr i8, ptr %176, i32 8368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr164, i32 0) #6, !srcloc !25
  %177 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %PRAMIN, align 8
  %add.ptr166 = getelementptr i8, ptr %178, i32 8372
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr166, i32 0) #6, !srcloc !25
  %179 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %PRAMIN, align 8
  %add.ptr168 = getelementptr i8, ptr %180, i32 8384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr168, i32 34078879) #6, !srcloc !25
  %181 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %PRAMIN, align 8
  %add.ptr170 = getelementptr i8, ptr %182, i32 8388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr170, i32 0) #6, !srcloc !25
  %183 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %PRAMIN, align 8
  %add.ptr172 = getelementptr i8, ptr %184, i32 8392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr172, i32 4608) #6, !srcloc !25
  %185 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %PRAMIN, align 8
  %add.ptr174 = getelementptr i8, ptr %186, i32 8396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr174, i32 4608) #6, !srcloc !25
  %187 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %PRAMIN, align 8
  %add.ptr176 = getelementptr i8, ptr %188, i32 8400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr176, i32 0) #6, !srcloc !25
  %189 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %PRAMIN, align 8
  %add.ptr178 = getelementptr i8, ptr %190, i32 8404
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr178, i32 0) #6, !srcloc !25
  %191 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %PRAMIN, align 8
  %add.ptr180 = getelementptr i8, ptr %192, i32 8416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr180, i32 34078794) #6, !srcloc !25
  %193 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %PRAMIN, align 8
  %add.ptr182 = getelementptr i8, ptr %194, i32 8420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr182, i32 33554432) #6, !srcloc !25
  %195 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %PRAMIN, align 8
  %add.ptr184 = getelementptr i8, ptr %196, i32 8424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr184, i32 0) #6, !srcloc !25
  %197 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %PRAMIN, align 8
  %add.ptr186 = getelementptr i8, ptr %198, i32 8428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr186, i32 0) #6, !srcloc !25
  %199 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %PRAMIN, align 8
  %add.ptr188 = getelementptr i8, ptr %200, i32 8432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr188, i32 0) #6, !srcloc !25
  %201 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %PRAMIN, align 8
  %add.ptr190 = getelementptr i8, ptr %202, i32 8436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr190, i32 0) #6, !srcloc !25
  %203 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %PRAMIN, align 8
  %add.ptr192 = getelementptr i8, ptr %204, i32 8448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr192, i32 34078839) #6, !srcloc !25
  %205 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %PRAMIN, align 8
  %add.ptr194 = getelementptr i8, ptr %206, i32 8452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr194, i32 0) #6, !srcloc !25
  %207 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %PRAMIN, align 8
  %add.ptr196 = getelementptr i8, ptr %208, i32 8456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr196, i32 4608) #6, !srcloc !25
  %209 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %PRAMIN, align 8
  %add.ptr198 = getelementptr i8, ptr %210, i32 8460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr198, i32 4608) #6, !srcloc !25
  %211 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %PRAMIN, align 8
  %add.ptr200 = getelementptr i8, ptr %212, i32 8464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr200, i32 0) #6, !srcloc !25
  %213 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %PRAMIN, align 8
  %add.ptr202 = getelementptr i8, ptr %214, i32 8468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr202, i32 0) #6, !srcloc !25
  %215 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %PRAMIN, align 8
  %add.ptr204 = getelementptr i8, ptr %216, i32 8496
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr204, i32 12290) #6, !srcloc !25
  %217 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %PRAMIN, align 8
  %add.ptr206 = getelementptr i8, ptr %218, i32 8500
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr206, i32 32767) #6, !srcloc !25
  %FbUsableSize = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 13
  %219 = ptrtoint ptr %FbUsableSize to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %FbUsableSize, align 8
  %or = or i32 %220, 2
  %221 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %PRAMIN, align 8
  %add.ptr208 = getelementptr i8, ptr %222, i32 8504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr208, i32 %or) #6, !srcloc !25
  %223 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %PRAMIN, align 8
  %add.ptr210 = getelementptr i8, ptr %224, i32 8232
  %225 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr210) #6, !srcloc !24
  %or211 = or i32 %225, 16777216
  %226 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %PRAMIN, align 8
  %add.ptr213 = getelementptr i8, ptr %227, i32 8232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr213, i32 %or211) #6, !srcloc !25
  %228 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %PRAMIN, align 8
  %add.ptr215 = getelementptr i8, ptr %229, i32 8264
  %230 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr215) #6, !srcloc !24
  %or217 = or i32 %230, 16777216
  %231 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %PRAMIN, align 8
  %add.ptr219 = getelementptr i8, ptr %232, i32 8264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr219, i32 %or217) #6, !srcloc !25
  %233 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %PRAMIN, align 8
  %add.ptr221 = getelementptr i8, ptr %234, i32 8296
  %235 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr221) #6, !srcloc !24
  %or223 = or i32 %235, 16777216
  %236 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %PRAMIN, align 8
  %add.ptr225 = getelementptr i8, ptr %237, i32 8296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr225, i32 %or223) #6, !srcloc !25
  %238 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %PRAMIN, align 8
  %add.ptr227 = getelementptr i8, ptr %239, i32 8328
  %240 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr227) #6, !srcloc !24
  %or229 = or i32 %240, 16777216
  %241 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %PRAMIN, align 8
  %add.ptr231 = getelementptr i8, ptr %242, i32 8328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr231, i32 %or229) #6, !srcloc !25
  %243 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %PRAMIN, align 8
  %add.ptr233 = getelementptr i8, ptr %244, i32 8360
  %245 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr233) #6, !srcloc !24
  %or235 = or i32 %245, 16777216
  %246 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %PRAMIN, align 8
  %add.ptr237 = getelementptr i8, ptr %247, i32 8360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr237, i32 %or235) #6, !srcloc !25
  %248 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %PRAMIN, align 8
  %add.ptr239 = getelementptr i8, ptr %249, i32 8392
  %250 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr239) #6, !srcloc !24
  %or241 = or i32 %250, 16777216
  %251 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %PRAMIN, align 8
  %add.ptr243 = getelementptr i8, ptr %252, i32 8392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr243, i32 %or241) #6, !srcloc !25
  %253 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %PRAMIN, align 8
  %add.ptr245 = getelementptr i8, ptr %254, i32 8424
  %255 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr245) #6, !srcloc !24
  %or247 = or i32 %255, 16777216
  %256 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %PRAMIN, align 8
  %add.ptr249 = getelementptr i8, ptr %257, i32 8424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr249, i32 %or247) #6, !srcloc !25
  %258 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %PRAMIN, align 8
  %add.ptr251 = getelementptr i8, ptr %259, i32 8456
  %260 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr251) #6, !srcloc !24
  %or253 = or i32 %260, 16777216
  %261 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %PRAMIN, align 8
  %add.ptr255 = getelementptr i8, ptr %262, i32 8456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr255, i32 %or253) #6, !srcloc !25
  %263 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %PRAMIN, align 8
  %add.ptr257 = getelementptr i8, ptr %264, i32 8292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr257, i32 16777216) #6, !srcloc !25
  %265 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %PRAMIN, align 8
  %add.ptr259 = getelementptr i8, ptr %266, i32 8420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr259, i32 16777216) #6, !srcloc !25
  br label %if.end442

if.else260:                                       ; preds = %if.end64.if.else260_crit_edge, %if.then.if.else260_crit_edge
  %PRAMIN261 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 67
  %267 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %PRAMIN261, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %268, i32 -2147483632) #6, !srcloc !25
  %269 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr264 = getelementptr i8, ptr %270, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr264, i32 -2147413503) #6, !srcloc !25
  %271 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr266 = getelementptr i8, ptr %272, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr266, i32 -2147483631) #6, !srcloc !25
  %273 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr268 = getelementptr i8, ptr %274, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr268, i32 -2147413502) #6, !srcloc !25
  %275 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr270 = getelementptr i8, ptr %276, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr270, i32 -2147483630) #6, !srcloc !25
  %277 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr272 = getelementptr i8, ptr %278, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr272, i32 -2147413501) #6, !srcloc !25
  %279 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr274 = getelementptr i8, ptr %280, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr274, i32 -2147483629) #6, !srcloc !25
  %281 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr276 = getelementptr i8, ptr %282, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr276, i32 -2147413500) #6, !srcloc !25
  %283 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr278 = getelementptr i8, ptr %284, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr278, i32 -2147483628) #6, !srcloc !25
  %285 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr280 = getelementptr i8, ptr %286, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr280, i32 -2147413499) #6, !srcloc !25
  %287 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr282 = getelementptr i8, ptr %288, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr282, i32 -2147483627) #6, !srcloc !25
  %289 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr284 = getelementptr i8, ptr %290, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr284, i32 -2147413498) #6, !srcloc !25
  %291 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr286 = getelementptr i8, ptr %292, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr286, i32 -2147483626) #6, !srcloc !25
  %293 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr288 = getelementptr i8, ptr %294, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr288, i32 -2147413497) #6, !srcloc !25
  %295 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr290 = getelementptr i8, ptr %296, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr290, i32 -2147483625) #6, !srcloc !25
  %297 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr292 = getelementptr i8, ptr %298, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr292, i32 -2147413496) #6, !srcloc !25
  %299 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr294 = getelementptr i8, ptr %300, i32 8192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr294, i32 12288) #6, !srcloc !25
  %FbMapSize295 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 12
  %301 = ptrtoint ptr %FbMapSize295 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %FbMapSize295, align 4
  %sub296 = add i32 %302, -1
  %303 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr298 = getelementptr i8, ptr %304, i32 8196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr298, i32 %sub296) #6, !srcloc !25
  %305 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr300 = getelementptr i8, ptr %306, i32 8200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr300, i32 2) #6, !srcloc !25
  %307 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr302 = getelementptr i8, ptr %308, i32 8204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr302, i32 2) #6, !srcloc !25
  %309 = ptrtoint ptr %Architecture to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %Architecture, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %310)
  %cmp304 = icmp ugt i32 %310, 15
  %311 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr307 = getelementptr i8, ptr %312, i32 8208
  br i1 %cmp304, label %if.then305, label %if.else308

if.then305:                                       ; preds = %if.else260
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr307, i32 16810082) #6, !srcloc !25
  br label %if.end311

if.else308:                                       ; preds = %if.else260
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr307, i32 16810050) #6, !srcloc !25
  br label %if.end311

if.end311:                                        ; preds = %if.else308, %if.then305
  %313 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr313 = getelementptr i8, ptr %314, i32 8212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr313, i32 0) #6, !srcloc !25
  %315 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr315 = getelementptr i8, ptr %316, i32 8216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr315, i32 301994496) #6, !srcloc !25
  %317 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr317 = getelementptr i8, ptr %318, i32 8220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr317, i32 0) #6, !srcloc !25
  %319 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr319 = getelementptr i8, ptr %320, i32 8224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr319, i32 16810051) #6, !srcloc !25
  %321 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr321 = getelementptr i8, ptr %322, i32 8228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr321, i32 0) #6, !srcloc !25
  %323 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr323 = getelementptr i8, ptr %324, i32 8232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr323, i32 0) #6, !srcloc !25
  %325 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr325 = getelementptr i8, ptr %326, i32 8236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr325, i32 0) #6, !srcloc !25
  %327 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr327 = getelementptr i8, ptr %328, i32 8240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr327, i32 16810052) #6, !srcloc !25
  %329 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr329 = getelementptr i8, ptr %330, i32 8244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr329, i32 2) #6, !srcloc !25
  %331 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr331 = getelementptr i8, ptr %332, i32 8248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr331, i32 0) #6, !srcloc !25
  %333 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr333 = getelementptr i8, ptr %334, i32 8252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr333, i32 0) #6, !srcloc !25
  %335 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr335 = getelementptr i8, ptr %336, i32 8256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr335, i32 16810009) #6, !srcloc !25
  %337 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr337 = getelementptr i8, ptr %338, i32 8260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr337, i32 0) #6, !srcloc !25
  %339 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr339 = getelementptr i8, ptr %340, i32 8264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr339, i32 0) #6, !srcloc !25
  %341 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr341 = getelementptr i8, ptr %342, i32 8268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr341, i32 0) #6, !srcloc !25
  %343 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr343 = getelementptr i8, ptr %344, i32 8272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr343, i32 16818268) #6, !srcloc !25
  %345 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr345 = getelementptr i8, ptr %346, i32 8276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr345, i32 0) #6, !srcloc !25
  %347 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr347 = getelementptr i8, ptr %348, i32 8280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr347, i32 0) #6, !srcloc !25
  %349 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr349 = getelementptr i8, ptr %350, i32 8284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr349, i32 0) #6, !srcloc !25
  %WaitVSyncPossible = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 49
  %351 = ptrtoint ptr %WaitVSyncPossible to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %WaitVSyncPossible, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %352)
  %tobool350.not = icmp eq i32 %352, 0
  %353 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr356 = getelementptr i8, ptr %354, i32 8288
  br i1 %tobool350.not, label %if.else354, label %if.then351

if.then351:                                       ; preds = %if.end311
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr356, i32 16810143) #6, !srcloc !25
  br label %if.end357

if.else354:                                       ; preds = %if.end311
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr356, i32 16810079) #6, !srcloc !25
  br label %if.end357

if.end357:                                        ; preds = %if.else354, %if.then351
  %355 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr359 = getelementptr i8, ptr %356, i32 8292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr359, i32 0) #6, !srcloc !25
  %357 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr361 = getelementptr i8, ptr %358, i32 8296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr361, i32 301994496) #6, !srcloc !25
  %359 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr363 = getelementptr i8, ptr %360, i32 8300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr363, i32 0) #6, !srcloc !25
  %361 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr365 = getelementptr i8, ptr %362, i32 8304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr365, i32 16810058) #6, !srcloc !25
  %363 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr367 = getelementptr i8, ptr %364, i32 8308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr367, i32 2) #6, !srcloc !25
  %365 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr369 = getelementptr i8, ptr %366, i32 8312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr369, i32 0) #6, !srcloc !25
  %367 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr371 = getelementptr i8, ptr %368, i32 8316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr371, i32 0) #6, !srcloc !25
  %369 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr373 = getelementptr i8, ptr %370, i32 8320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr373, i32 16875639) #6, !srcloc !25
  %371 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr375 = getelementptr i8, ptr %372, i32 8324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr375, i32 0) #6, !srcloc !25
  %373 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr377 = getelementptr i8, ptr %374, i32 8328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr377, i32 301994496) #6, !srcloc !25
  %375 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr379 = getelementptr i8, ptr %376, i32 8332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr379, i32 0) #6, !srcloc !25
  %377 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr381 = getelementptr i8, ptr %378, i32 8336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr381, i32 12290) #6, !srcloc !25
  %379 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr383 = getelementptr i8, ptr %380, i32 8340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr383, i32 32767) #6, !srcloc !25
  %FbUsableSize384 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 13
  %381 = ptrtoint ptr %FbUsableSize384 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %FbUsableSize384, align 8
  %or385 = or i32 %382, 2
  %383 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr387 = getelementptr i8, ptr %384, i32 8344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr387, i32 %or385) #6, !srcloc !25
  %385 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr389 = getelementptr i8, ptr %386, i32 8348
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr389, i32 2) #6, !srcloc !25
  %387 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr391 = getelementptr i8, ptr %388, i32 8208
  %389 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr391) #6, !srcloc !24
  %or393 = or i32 %389, 524288
  %390 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr395 = getelementptr i8, ptr %391, i32 8208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr395, i32 %or393) #6, !srcloc !25
  %392 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr397 = getelementptr i8, ptr %393, i32 8224
  %394 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr397) #6, !srcloc !24
  %or399 = or i32 %394, 524288
  %395 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr401 = getelementptr i8, ptr %396, i32 8224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr401, i32 %or399) #6, !srcloc !25
  %397 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr403 = getelementptr i8, ptr %398, i32 8240
  %399 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr403) #6, !srcloc !24
  %or405 = or i32 %399, 524288
  %400 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr407 = getelementptr i8, ptr %401, i32 8240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr407, i32 %or405) #6, !srcloc !25
  %402 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr409 = getelementptr i8, ptr %403, i32 8256
  %404 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr409) #6, !srcloc !24
  %or411 = or i32 %404, 524288
  %405 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr413 = getelementptr i8, ptr %406, i32 8256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr413, i32 %or411) #6, !srcloc !25
  %407 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr415 = getelementptr i8, ptr %408, i32 8272
  %409 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr415) #6, !srcloc !24
  %or417 = or i32 %409, 524288
  %410 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr419 = getelementptr i8, ptr %411, i32 8272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr419, i32 %or417) #6, !srcloc !25
  %412 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr421 = getelementptr i8, ptr %413, i32 8288
  %414 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr421) #6, !srcloc !24
  %or423 = or i32 %414, 524288
  %415 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr425 = getelementptr i8, ptr %416, i32 8288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr425, i32 %or423) #6, !srcloc !25
  %417 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr427 = getelementptr i8, ptr %418, i32 8304
  %419 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr427) #6, !srcloc !24
  %or429 = or i32 %419, 524288
  %420 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr431 = getelementptr i8, ptr %421, i32 8304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr431, i32 %or429) #6, !srcloc !25
  %422 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr433 = getelementptr i8, ptr %423, i32 8320
  %424 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr433) #6, !srcloc !24
  %or435 = or i32 %424, 524288
  %425 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr437 = getelementptr i8, ptr %426, i32 8320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr437, i32 %or435) #6, !srcloc !25
  %427 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr439 = getelementptr i8, ptr %428, i32 8244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr439, i32 1) #6, !srcloc !25
  %429 = ptrtoint ptr %PRAMIN261 to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %PRAMIN261, align 8
  %add.ptr441 = getelementptr i8, ptr %430, i32 8308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr441, i32 1) #6, !srcloc !25
  br label %if.end442

if.end442:                                        ; preds = %if.end357, %if.then67
  %431 = ptrtoint ptr %Architecture to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load i32, ptr %Architecture, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %432)
  %cmp444 = icmp ult i32 %432, 16
  br i1 %cmp444, label %if.then445, label %if.else488

if.then445:                                       ; preds = %if.end442
  %Chipset446 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 9
  %433 = ptrtoint ptr %Chipset446 to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load i32, ptr %Chipset446, align 8
  %and447 = and i32 %434, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and447)
  %cmp448 = icmp eq i32 %and447, 32
  br i1 %cmp448, label %if.then449, label %if.then445.if.end462_crit_edge

if.then445.if.end462_crit_edge:                   ; preds = %if.then445
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end462

if.then449:                                       ; preds = %if.then445
  call void @__sanitizer_cov_trace_pc() #8
  %PRAMIN450 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 67
  %435 = ptrtoint ptr %PRAMIN450 to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %PRAMIN450, align 8
  %add.ptr451 = getelementptr i8, ptr %436, i32 8336
  %437 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr451) #6, !srcloc !24
  %or453 = or i32 %437, 131072
  %438 = ptrtoint ptr %PRAMIN450 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %PRAMIN450, align 8
  %add.ptr455 = getelementptr i8, ptr %439, i32 8336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr455, i32 %or453) #6, !srcloc !25
  %440 = ptrtoint ptr %PRAMIN450 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %PRAMIN450, align 8
  %add.ptr457 = getelementptr i8, ptr %441, i32 8344
  %442 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr457) #6, !srcloc !24
  %FbAddress = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 10
  %443 = ptrtoint ptr %FbAddress to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load i32, ptr %FbAddress, align 4
  %add459 = add i32 %444, %442
  %445 = ptrtoint ptr %PRAMIN450 to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %PRAMIN450, align 8
  %add.ptr461 = getelementptr i8, ptr %446, i32 8344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr461, i32 %add459) #6, !srcloc !25
  br label %if.end462

if.end462:                                        ; preds = %if.then449, %if.then445.if.end462_crit_edge
  %PGRAPH = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 63
  %447 = ptrtoint ptr %PGRAPH to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %PGRAPH, align 8
  %add.ptr463 = getelementptr i8, ptr %448, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr463, i32 511) #6, !srcloc !25
  %449 = ptrtoint ptr %PGRAPH to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %PGRAPH, align 8
  %add.ptr465 = getelementptr i8, ptr %450, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr465, i32 305184768) #6, !srcloc !25
  %451 = ptrtoint ptr %PGRAPH to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %PGRAPH, align 8
  %add.ptr467 = getelementptr i8, ptr %452, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr467, i32 1913721089) #6, !srcloc !25
  %453 = ptrtoint ptr %PGRAPH to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %PGRAPH, align 8
  %add.ptr469 = getelementptr i8, ptr %454, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr469, i32 299233393) #6, !srcloc !25
  %455 = ptrtoint ptr %PGRAPH to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %PGRAPH, align 8
  %add.ptr471 = getelementptr i8, ptr %456, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr471, i32 327473) #6, !srcloc !25
  %457 = ptrtoint ptr %PGRAPH to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %PGRAPH, align 8
  %add.ptr473 = getelementptr i8, ptr %458, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr473, i32 1074069297) #6, !srcloc !25
  %459 = ptrtoint ptr %PGRAPH to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %PGRAPH, align 8
  %add.ptr475 = getelementptr i8, ptr %460, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr475, i32 0) #6, !srcloc !25
  %461 = ptrtoint ptr %PGRAPH to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %PGRAPH, align 8
  %add.ptr477 = getelementptr i8, ptr %462, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr477, i32 -1) #6, !srcloc !25
  %463 = ptrtoint ptr %PGRAPH to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %PGRAPH, align 8
  %add.ptr479 = getelementptr i8, ptr %464, i32 368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr479, i32 268501248) #6, !srcloc !25
  %465 = ptrtoint ptr %PGRAPH to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %PGRAPH, align 8
  %add.ptr481 = getelementptr i8, ptr %466, i32 1808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr481, i32 -1) #6, !srcloc !25
  %467 = ptrtoint ptr %PGRAPH to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %PGRAPH, align 8
  %add.ptr483 = getelementptr i8, ptr %468, i32 1824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr483, i32 1) #6, !srcloc !25
  %469 = ptrtoint ptr %PGRAPH to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %PGRAPH, align 8
  %add.ptr485 = getelementptr i8, ptr %470, i32 2064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr485, i32 0) #6, !srcloc !25
  %471 = ptrtoint ptr %PGRAPH to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %PGRAPH, align 8
  %add.ptr487 = getelementptr i8, ptr %472, i32 1544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr487, i32 -1) #6, !srcloc !25
  br label %if.end1001

if.else488:                                       ; preds = %if.end442
  %PGRAPH489 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 63
  %473 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr490 = getelementptr i8, ptr %474, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr490, i32 -1) #6, !srcloc !25
  %475 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr492 = getelementptr i8, ptr %476, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr492, i32 0) #6, !srcloc !25
  %477 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr494 = getelementptr i8, ptr %478, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr494, i32 0) #6, !srcloc !25
  %479 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr496 = getelementptr i8, ptr %480, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr496, i32 -1) #6, !srcloc !25
  %481 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr498 = getelementptr i8, ptr %482, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr498, i32 268501248) #6, !srcloc !25
  %483 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr500 = getelementptr i8, ptr %484, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr500, i32 -1) #6, !srcloc !25
  %485 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr502 = getelementptr i8, ptr %486, i32 1824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr502, i32 1) #6, !srcloc !25
  %487 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr504 = getelementptr i8, ptr %488, i32 1808
  %489 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr504) #6, !srcloc !24
  %and506 = and i32 %489, 524032
  %490 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr508 = getelementptr i8, ptr %491, i32 1808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr508, i32 %and506) #6, !srcloc !25
  %492 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr510 = getelementptr i8, ptr %493, i32 1808
  %494 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr510) #6, !srcloc !24
  %or512 = or i32 %494, 131328
  %495 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr514 = getelementptr i8, ptr %496, i32 1808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr514, i32 %or512) #6, !srcloc !25
  %497 = ptrtoint ptr %Architecture to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load i32, ptr %Architecture, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %498)
  %cmp516 = icmp eq i32 %498, 16
  br i1 %cmp516, label %if.then517, label %if.else554

if.then517:                                       ; preds = %if.else488
  %499 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr519 = getelementptr i8, ptr %500, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr519, i32 1148672) #6, !srcloc !25
  %501 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr521 = getelementptr i8, ptr %502, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr521, i32 618661904) #6, !srcloc !25
  %503 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr523 = getelementptr i8, ptr %504, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr523, i32 1440612400) #6, !srcloc !25
  %PFB527 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 61
  br label %for.body526

for.body526:                                      ; preds = %for.body526.for.body526_crit_edge, %if.then517
  %i.21951 = phi i32 [ 0, %if.then517 ], [ %inc536, %for.body526.for.body526_crit_edge ]
  %505 = ptrtoint ptr %PFB527 to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %PFB527, align 8
  %add528 = add nuw nsw i32 %i.21951, 144
  %arrayidx = getelementptr i32, ptr %506, i32 %add528
  %507 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #6, !srcloc !24
  %508 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %PGRAPH489, align 8
  %add532 = add nuw nsw i32 %i.21951, 704
  %arrayidx533 = getelementptr i32, ptr %509, i32 %add532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx533, i32 %507) #6, !srcloc !25
  %inc536 = add nuw nsw i32 %i.21951, 1
  %exitcond1959.not = icmp eq i32 %inc536, 32
  br i1 %exitcond1959.not, label %for.end537, label %for.body526.for.body526_crit_edge

for.body526.for.body526_crit_edge:                ; preds = %for.body526
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body526

for.end537:                                       ; preds = %for.body526
  call void @__sanitizer_cov_trace_pc() #8
  %510 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr539 = getelementptr i8, ptr %511, i32 1600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr539, i32 0) #6, !srcloc !25
  %512 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr541 = getelementptr i8, ptr %513, i32 1604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr541, i32 0) #6, !srcloc !25
  %FbMapSize542 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 12
  %514 = ptrtoint ptr %FbMapSize542 to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load i32, ptr %FbMapSize542, align 4
  %sub543 = add i32 %515, -1
  %516 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr545 = getelementptr i8, ptr %517, i32 1668
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr545, i32 %sub543) #6, !srcloc !25
  %518 = ptrtoint ptr %FbMapSize542 to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load i32, ptr %FbMapSize542, align 4
  %sub547 = add i32 %519, -1
  %520 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr549 = getelementptr i8, ptr %521, i32 1672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr549, i32 %sub547) #6, !srcloc !25
  %522 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr551 = getelementptr i8, ptr %523, i32 2064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr551, i32 0) #6, !srcloc !25
  %524 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr553 = getelementptr i8, ptr %525, i32 1544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr553, i32 -1) #6, !srcloc !25
  br label %if.end1001

if.else554:                                       ; preds = %if.else488
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %498)
  %cmp556 = icmp ugt i32 %498, 63
  br i1 %cmp556, label %if.then557, label %if.else677

if.then557:                                       ; preds = %if.else554
  %526 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr559 = getelementptr i8, ptr %527, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr559, i32 1074956224) #6, !srcloc !25
  %528 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr561 = getelementptr i8, ptr %529, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr561, i32 1625194577) #6, !srcloc !25
  %530 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr563 = getelementptr i8, ptr %531, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr563, i32 32768) #6, !srcloc !25
  %532 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr565 = getelementptr i8, ptr %533, i32 1552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr565, i32 12467295) #6, !srcloc !25
  %534 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr567 = getelementptr i8, ptr %535, i32 3012
  %536 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr567) #6, !srcloc !24
  %or569 = or i32 %536, 32768
  %537 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %537)
  %538 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr571 = getelementptr i8, ptr %538, i32 3012
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr571, i32 %or569) #6, !srcloc !25
  %REGS = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 57
  %539 = ptrtoint ptr %REGS to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load ptr, ptr %REGS, align 8
  %add.ptr572 = getelementptr i8, ptr %540, i32 5440
  %541 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr572) #6, !srcloc !24
  %and574 = and i32 %541, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and574)
  %tobool575.not = icmp eq i32 %and574, 0
  br i1 %tobool575.not, label %if.then557.if.end586_crit_edge, label %for.cond577.preheader

if.then557.if.end586_crit_edge:                   ; preds = %if.then557
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end586

for.cond577.preheader:                            ; preds = %if.then557
  %and5781944 = and i32 %541, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5781944)
  %tobool579.not1945 = icmp eq i32 %and5781944, 0
  br i1 %tobool579.not1945, label %for.cond577.preheader.for.inc581_crit_edge, label %for.cond577.preheader.for.end583_crit_edge

for.cond577.preheader.for.end583_crit_edge:       ; preds = %for.cond577.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end583

for.cond577.preheader.for.inc581_crit_edge:       ; preds = %for.cond577.preheader
  br label %for.inc581

for.inc581:                                       ; preds = %for.inc581.for.inc581_crit_edge, %for.cond577.preheader.for.inc581_crit_edge
  %j.01947 = phi i32 [ %542, %for.inc581.for.inc581_crit_edge ], [ %and574, %for.cond577.preheader.for.inc581_crit_edge ]
  %i.31946 = phi i32 [ %inc582, %for.inc581.for.inc581_crit_edge ], [ 0, %for.cond577.preheader.for.inc581_crit_edge ]
  %542 = lshr i32 %j.01947, 1
  %inc582 = add i32 %i.31946, 1
  %543 = and i32 %j.01947, 2
  %tobool579.not = icmp eq i32 %543, 0
  br i1 %tobool579.not, label %for.inc581.for.inc581_crit_edge, label %for.inc581.for.end583_crit_edge

for.inc581.for.end583_crit_edge:                  ; preds = %for.inc581
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end583

for.inc581.for.inc581_crit_edge:                  ; preds = %for.inc581
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc581

for.end583:                                       ; preds = %for.inc581.for.end583_crit_edge, %for.cond577.preheader.for.end583_crit_edge
  %i.3.lcssa = phi i32 [ 0, %for.cond577.preheader.for.end583_crit_edge ], [ %inc582, %for.inc581.for.end583_crit_edge ]
  %544 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr585 = getelementptr i8, ptr %545, i32 20480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr585, i32 %i.3.lcssa) #6, !srcloc !25
  br label %if.end586

if.end586:                                        ; preds = %for.end583, %if.then557.if.end586_crit_edge
  %Chipset587 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 9
  %546 = ptrtoint ptr %Chipset587 to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load i32, ptr %Chipset587, align 8
  %and588 = and i32 %547, 65520
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %and588)
  %cmp589 = icmp eq i32 %and588, 64
  %548 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %PGRAPH489, align 8
  br i1 %cmp589, label %if.then590, label %if.else595

if.then590:                                       ; preds = %if.end586
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr592 = getelementptr i8, ptr %549, i32 2480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr592, i32 -2094526465) #6, !srcloc !25
  %550 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr594 = getelementptr i8, ptr %551, i32 2484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr594, i32 160) #6, !srcloc !25
  br label %if.end600

if.else595:                                       ; preds = %if.end586
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr597 = getelementptr i8, ptr %549, i32 2080
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr597, i32 -2094526721) #6, !srcloc !25
  %552 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr599 = getelementptr i8, ptr %553, i32 2084
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr599, i32 160) #6, !srcloc !25
  br label %if.end600

if.end600:                                        ; preds = %if.else595, %if.then590
  %554 = ptrtoint ptr %Chipset587 to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load i32, ptr %Chipset587, align 8
  %556 = trunc i32 %555 to i16
  %trunc = and i16 %556, -16
  %557 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %557, ptr @__sancov_gen_cov_switch_values.7)
  switch i16 %trunc, label %if.end600.sw.epilog_crit_edge [
    i16 64, label %if.end600.sw.bb_crit_edge
    i16 528, label %if.end600.sw.bb_crit_edge1970
    i16 192, label %if.end600.sw.bb613_crit_edge
    i16 288, label %if.end600.sw.bb613_crit_edge1971
    i16 352, label %if.end600.sw.bb618_crit_edge
    i16 464, label %if.end600.sw.bb618_crit_edge1972
    i16 576, label %if.end600.sw.bb618_crit_edge1973
    i16 976, label %if.end600.sw.bb618_crit_edge1974
    i16 320, label %sw.bb642
    i16 544, label %sw.bb647
    i16 144, label %if.end600.sw.bb658_crit_edge
    i16 656, label %if.end600.sw.bb658_crit_edge1975
    i16 912, label %if.end600.sw.bb658_crit_edge1976
  ]

if.end600.sw.bb658_crit_edge1976:                 ; preds = %if.end600
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb658

if.end600.sw.bb658_crit_edge1975:                 ; preds = %if.end600
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb658

if.end600.sw.bb658_crit_edge:                     ; preds = %if.end600
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb658

if.end600.sw.bb618_crit_edge1974:                 ; preds = %if.end600
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb618

if.end600.sw.bb618_crit_edge1973:                 ; preds = %if.end600
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb618

if.end600.sw.bb618_crit_edge1972:                 ; preds = %if.end600
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb618

if.end600.sw.bb618_crit_edge:                     ; preds = %if.end600
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb618

if.end600.sw.bb613_crit_edge1971:                 ; preds = %if.end600
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb613

if.end600.sw.bb613_crit_edge:                     ; preds = %if.end600
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb613

if.end600.sw.bb_crit_edge1970:                    ; preds = %if.end600
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end600.sw.bb_crit_edge:                        ; preds = %if.end600
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end600.sw.epilog_crit_edge:                    ; preds = %if.end600
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end600.sw.bb_crit_edge, %if.end600.sw.bb_crit_edge1970
  %558 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr604 = getelementptr i8, ptr %559, i32 2488
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr604, i32 7922534) #6, !srcloc !25
  %560 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr606 = getelementptr i8, ptr %561, i32 2492
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr606, i32 332) #6, !srcloc !25
  %PFB607 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 61
  %562 = ptrtoint ptr %PFB607 to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load ptr, ptr %PFB607, align 8
  %add.ptr608 = getelementptr i8, ptr %563, i32 828
  %564 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr608) #6, !srcloc !24
  %and610 = and i32 %564, -32769
  %565 = ptrtoint ptr %PFB607 to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load ptr, ptr %PFB607, align 8
  %add.ptr612 = getelementptr i8, ptr %566, i32 828
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr612, i32 %and610) #6, !srcloc !25
  br label %sw.epilog

sw.bb613:                                         ; preds = %if.end600.sw.bb613_crit_edge, %if.end600.sw.bb613_crit_edge1971
  %567 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr615 = getelementptr i8, ptr %568, i32 2088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr615, i32 7706367) #6, !srcloc !25
  %569 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr617 = getelementptr i8, ptr %570, i32 2092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr617, i32 264) #6, !srcloc !25
  br label %sw.epilog

sw.bb618:                                         ; preds = %if.end600.sw.bb618_crit_edge, %if.end600.sw.bb618_crit_edge1972, %if.end600.sw.bb618_crit_edge1973, %if.end600.sw.bb618_crit_edge1974
  %PFB619 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 61
  %571 = ptrtoint ptr %PFB619 to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load ptr, ptr %PFB619, align 8
  %add.ptr620 = getelementptr i8, ptr %572, i32 524
  %573 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr620) #6, !srcloc !24
  %574 = ptrtoint ptr %PMC to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load ptr, ptr %PMC, align 4
  %add.ptr623 = getelementptr i8, ptr %575, i32 5888
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr623, i32 %573) #6, !srcloc !25
  %576 = ptrtoint ptr %PMC to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load ptr, ptr %PMC, align 4
  %add.ptr625 = getelementptr i8, ptr %577, i32 5892
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr625, i32 0) #6, !srcloc !25
  %578 = ptrtoint ptr %PMC to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load ptr, ptr %PMC, align 4
  %add.ptr627 = getelementptr i8, ptr %579, i32 5896
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr627, i32 0) #6, !srcloc !25
  %580 = ptrtoint ptr %PFB619 to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load ptr, ptr %PFB619, align 8
  %add.ptr629 = getelementptr i8, ptr %581, i32 524
  %582 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr629) #6, !srcloc !24
  %583 = ptrtoint ptr %PMC to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load ptr, ptr %PMC, align 4
  %add.ptr632 = getelementptr i8, ptr %584, i32 5900
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr632, i32 %582) #6, !srcloc !25
  %585 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr634 = getelementptr i8, ptr %586, i32 2144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr634, i32 0) #6, !srcloc !25
  %587 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr636 = getelementptr i8, ptr %588, i32 2148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr636, i32 0) #6, !srcloc !25
  %PRAMDAC = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 75
  %589 = ptrtoint ptr %PRAMDAC to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load ptr, ptr %PRAMDAC, align 8
  %add.ptr637 = getelementptr i8, ptr %590, i32 1544
  %591 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr637) #6, !srcloc !24
  %or639 = or i32 %591, 1048576
  %592 = ptrtoint ptr %PRAMDAC to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load ptr, ptr %PRAMDAC, align 8
  %add.ptr641 = getelementptr i8, ptr %593, i32 1544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr641, i32 %or639) #6, !srcloc !25
  br label %sw.epilog

sw.bb642:                                         ; preds = %if.end600
  call void @__sanitizer_cov_trace_pc() #8
  %594 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr644 = getelementptr i8, ptr %595, i32 2088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr644, i32 7523191) #6, !srcloc !25
  %596 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr646 = getelementptr i8, ptr %597, i32 2092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr646, i32 264) #6, !srcloc !25
  br label %sw.epilog

sw.bb647:                                         ; preds = %if.end600
  call void @__sanitizer_cov_trace_pc() #8
  %598 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr649 = getelementptr i8, ptr %599, i32 2144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr649, i32 0) #6, !srcloc !25
  %600 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr651 = getelementptr i8, ptr %601, i32 2148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr651, i32 0) #6, !srcloc !25
  %PRAMDAC652 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 75
  %602 = ptrtoint ptr %PRAMDAC652 to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load ptr, ptr %PRAMDAC652, align 8
  %add.ptr653 = getelementptr i8, ptr %603, i32 1544
  %604 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr653) #6, !srcloc !24
  %or655 = or i32 %604, 1048576
  %605 = ptrtoint ptr %PRAMDAC652 to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load ptr, ptr %PRAMDAC652, align 8
  %add.ptr657 = getelementptr i8, ptr %606, i32 1544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr657, i32 %or655) #6, !srcloc !25
  br label %sw.epilog

sw.bb658:                                         ; preds = %if.end600.sw.bb658_crit_edge, %if.end600.sw.bb658_crit_edge1975, %if.end600.sw.bb658_crit_edge1976
  %PRAMDAC659 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 75
  %607 = ptrtoint ptr %PRAMDAC659 to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load ptr, ptr %PRAMDAC659, align 8
  %add.ptr660 = getelementptr i8, ptr %608, i32 1544
  %609 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr660) #6, !srcloc !24
  %or662 = or i32 %609, 1048576
  %610 = ptrtoint ptr %PRAMDAC659 to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load ptr, ptr %PRAMDAC659, align 8
  %add.ptr664 = getelementptr i8, ptr %611, i32 1544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr664, i32 %or662) #6, !srcloc !25
  %612 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr666 = getelementptr i8, ptr %613, i32 2088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr666, i32 126027280) #6, !srcloc !25
  %614 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr668 = getelementptr i8, ptr %615, i32 2092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr668, i32 362) #6, !srcloc !25
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb658, %sw.bb647, %sw.bb642, %sw.bb618, %sw.bb613, %sw.bb, %if.end600.sw.epilog_crit_edge
  %616 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr670 = getelementptr i8, ptr %617, i32 2872
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr670, i32 805304320) #6, !srcloc !25
  %618 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr672 = getelementptr i8, ptr %619, i32 2876
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr672, i32 24576) #6, !srcloc !25
  %620 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr674 = getelementptr i8, ptr %621, i32 812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr674, i32 16777216) #6, !srcloc !25
  %622 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr676 = getelementptr i8, ptr %623, i32 544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr676, i32 4608) #6, !srcloc !25
  br label %if.end741

if.else677:                                       ; preds = %if.else554
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %498)
  %cmp679 = icmp eq i32 %498, 48
  %624 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr682 = getelementptr i8, ptr %625, i32 132
  br i1 %cmp679, label %if.then680, label %if.else695

if.then680:                                       ; preds = %if.else677
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr682, i32 1074824960) #6, !srcloc !25
  %626 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr684 = getelementptr i8, ptr %627, i32 2192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr684, i32 1310720) #6, !srcloc !25
  %628 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr686 = getelementptr i8, ptr %629, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr686, i32 -267516879) #6, !srcloc !25
  %630 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr688 = getelementptr i8, ptr %631, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr688, i32 32768) #6, !srcloc !25
  %632 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr690 = getelementptr i8, ptr %633, i32 1552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr690, i32 -263512266) #6, !srcloc !25
  %634 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr692 = getelementptr i8, ptr %635, i32 2944
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr692, i32 268621960) #6, !srcloc !25
  %636 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr694 = getelementptr i8, ptr %637, i32 2952
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr694, i32 1660878975) #6, !srcloc !25
  br label %if.end741

if.else695:                                       ; preds = %if.else677
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr682, i32 1148672) #6, !srcloc !25
  %638 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr699 = getelementptr i8, ptr %639, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr699, i32 -233962447) #6, !srcloc !25
  %640 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr701 = getelementptr i8, ptr %641, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr701, i32 0) #6, !srcloc !25
  %642 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr703 = getelementptr i8, ptr %643, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr703, i32 64) #6, !srcloc !25
  %Chipset704 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 9
  %644 = ptrtoint ptr %Chipset704 to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load i32, ptr %Chipset704, align 8
  %and705 = and i32 %645, 4080
  call void @__sanitizer_cov_trace_const_cmp4(i32 591, i32 %and705)
  %cmp706 = icmp ugt i32 %and705, 591
  %646 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %646)
  %647 = load ptr, ptr %PGRAPH489, align 8
  br i1 %cmp706, label %if.then707, label %if.else720

if.then707:                                       ; preds = %if.else695
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr709 = getelementptr i8, ptr %647, i32 2192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr709, i32 524288) #6, !srcloc !25
  %648 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %648)
  %649 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr711 = getelementptr i8, ptr %649, i32 1552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr711, i32 810229686) #6, !srcloc !25
  %650 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr713 = getelementptr i8, ptr %651, i32 2944
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr713, i32 414722176) #6, !srcloc !25
  %652 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %652)
  %653 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr715 = getelementptr i8, ptr %653, i32 2948
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr715, i32 1140850688) #6, !srcloc !25
  %654 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %654)
  %655 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr717 = getelementptr i8, ptr %655, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr717, i32 1073741952) #6, !srcloc !25
  %656 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %656)
  %657 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr719 = getelementptr i8, ptr %657, i32 2952
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr719, i32 255) #6, !srcloc !25
  br label %if.end741

if.else720:                                       ; preds = %if.else695
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr722 = getelementptr i8, ptr %647, i32 2176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr722, i32 524288) #6, !srcloc !25
  %658 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr724 = getelementptr i8, ptr %659, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr724, i32 5) #6, !srcloc !25
  %660 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %660)
  %661 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr726 = getelementptr i8, ptr %661, i32 2944
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr726, i32 1170907656) #6, !srcloc !25
  %662 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %662)
  %663 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr728 = getelementptr i8, ptr %663, i32 2948
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr728, i32 603979776) #6, !srcloc !25
  %664 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %664)
  %665 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr730 = getelementptr i8, ptr %665, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr730, i32 64) #6, !srcloc !25
  %666 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %666)
  %667 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr732 = getelementptr i8, ptr %667, i32 1872
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr732, i32 14680120) #6, !srcloc !25
  %668 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %668)
  %669 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr734 = getelementptr i8, ptr %669, i32 1876
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr734, i32 48) #6, !srcloc !25
  %670 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %670)
  %671 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr736 = getelementptr i8, ptr %671, i32 1872
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr736, i32 14745656) #6, !srcloc !25
  %672 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %672)
  %673 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr738 = getelementptr i8, ptr %673, i32 1876
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr738, i32 48) #6, !srcloc !25
  br label %if.end741

if.end741:                                        ; preds = %if.else720, %if.then707, %if.then680, %sw.epilog
  %674 = ptrtoint ptr %Architecture to i32
  call void @__asan_load4_noabort(i32 %674)
  %675 = load i32, ptr %Architecture, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %675)
  %cmp743 = icmp ult i32 %675, 64
  br i1 %cmp743, label %if.end741.if.then748_crit_edge, label %lor.lhs.false744

if.end741.if.then748_crit_edge:                   ; preds = %if.end741
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then748

lor.lhs.false744:                                 ; preds = %if.end741
  %Chipset745 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 9
  %676 = ptrtoint ptr %Chipset745 to i32
  call void @__asan_load4_noabort(i32 %676)
  %677 = load i32, ptr %Chipset745, align 8
  %678 = trunc i32 %677 to i16
  %trunc1936 = and i16 %678, -16
  %679 = zext i16 %trunc1936 to i64
  call void @__sanitizer_cov_trace_switch(i64 %679, ptr @__sancov_gen_cov_switch_values.8)
  switch i16 %trunc1936, label %for.cond819.preheader [
    i16 64, label %lor.lhs.false744.if.then748_crit_edge
    i16 144, label %lor.lhs.false744.if.then793_crit_edge
    i16 464, label %lor.lhs.false744.if.then793_crit_edge1977
    i16 656, label %lor.lhs.false744.if.then793_crit_edge1978
    i16 912, label %lor.lhs.false744.if.then793_crit_edge1979
    i16 976, label %lor.lhs.false744.if.then793_crit_edge1980
  ]

lor.lhs.false744.if.then793_crit_edge1980:        ; preds = %lor.lhs.false744
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then793

lor.lhs.false744.if.then793_crit_edge1979:        ; preds = %lor.lhs.false744
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then793

lor.lhs.false744.if.then793_crit_edge1978:        ; preds = %lor.lhs.false744
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then793

lor.lhs.false744.if.then793_crit_edge1977:        ; preds = %lor.lhs.false744
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then793

lor.lhs.false744.if.then793_crit_edge:            ; preds = %lor.lhs.false744
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then793

lor.lhs.false744.if.then748_crit_edge:            ; preds = %lor.lhs.false744
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then748

for.cond819.preheader:                            ; preds = %lor.lhs.false744
  %PFB822 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 61
  br label %for.body821

if.then748:                                       ; preds = %lor.lhs.false744.if.then748_crit_edge, %if.end741.if.then748_crit_edge
  %PFB752 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 61
  br label %for.body751

for.body751:                                      ; preds = %for.body751.for.body751_crit_edge, %if.then748
  %i.41950 = phi i32 [ 0, %if.then748 ], [ %inc771, %for.body751.for.body751_crit_edge ]
  %680 = ptrtoint ptr %PFB752 to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load ptr, ptr %PFB752, align 8
  %mul753 = shl i32 %i.41950, 2
  %add754 = add nuw nsw i32 %mul753, 576
  %add.ptr755 = getelementptr i8, ptr %681, i32 %add754
  %682 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr755) #6, !srcloc !24
  %683 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %683)
  %684 = load ptr, ptr %PGRAPH489, align 8
  %add759 = add nuw nsw i32 %mul753, 2304
  %add.ptr760 = getelementptr i8, ptr %684, i32 %add759
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr760, i32 %682) #6, !srcloc !25
  %685 = ptrtoint ptr %PFB752 to i32
  call void @__asan_load4_noabort(i32 %685)
  %686 = load ptr, ptr %PFB752, align 8
  %add.ptr764 = getelementptr i8, ptr %686, i32 %add754
  %687 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr764) #6, !srcloc !24
  %688 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %688)
  %689 = load ptr, ptr %PGRAPH489, align 8
  %add768 = add nuw nsw i32 %mul753, 26880
  %add.ptr769 = getelementptr i8, ptr %689, i32 %add768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr769, i32 %687) #6, !srcloc !25
  %inc771 = add nuw nsw i32 %i.41950, 1
  %exitcond1958.not = icmp eq i32 %inc771, 32
  br i1 %exitcond1958.not, label %for.body751.if.end856_crit_edge, label %for.body751.for.body751_crit_edge

for.body751.for.body751_crit_edge:                ; preds = %for.body751
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body751

for.body751.if.end856_crit_edge:                  ; preds = %for.body751
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end856

if.then793:                                       ; preds = %lor.lhs.false744.if.then793_crit_edge, %lor.lhs.false744.if.then793_crit_edge1977, %lor.lhs.false744.if.then793_crit_edge1978, %lor.lhs.false744.if.then793_crit_edge1979, %lor.lhs.false744.if.then793_crit_edge1980
  %PFB797 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 61
  br label %for.body796

for.body796:                                      ; preds = %for.body796.for.body796_crit_edge, %if.then793
  %i.51948 = phi i32 [ 0, %if.then793 ], [ %inc816, %for.body796.for.body796_crit_edge ]
  %690 = ptrtoint ptr %PFB797 to i32
  call void @__asan_load4_noabort(i32 %690)
  %691 = load ptr, ptr %PFB797, align 8
  %mul798 = shl i32 %i.51948, 2
  %add799 = add nuw nsw i32 %mul798, 1536
  %add.ptr800 = getelementptr i8, ptr %691, i32 %add799
  %692 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr800) #6, !srcloc !24
  %693 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %693)
  %694 = load ptr, ptr %PGRAPH489, align 8
  %add804 = add nuw nsw i32 %mul798, 3328
  %add.ptr805 = getelementptr i8, ptr %694, i32 %add804
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr805, i32 %692) #6, !srcloc !25
  %695 = ptrtoint ptr %PFB797 to i32
  call void @__asan_load4_noabort(i32 %695)
  %696 = load ptr, ptr %PFB797, align 8
  %add.ptr809 = getelementptr i8, ptr %696, i32 %add799
  %697 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr809) #6, !srcloc !24
  %698 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %698)
  %699 = load ptr, ptr %PGRAPH489, align 8
  %add813 = add nuw nsw i32 %mul798, 26880
  %add.ptr814 = getelementptr i8, ptr %699, i32 %add813
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr814, i32 %697) #6, !srcloc !25
  %inc816 = add nuw nsw i32 %i.51948, 1
  %exitcond1956.not = icmp eq i32 %inc816, 60
  br i1 %exitcond1956.not, label %for.body796.if.end856_crit_edge, label %for.body796.for.body796_crit_edge

for.body796.for.body796_crit_edge:                ; preds = %for.body796
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body796

for.body796.if.end856_crit_edge:                  ; preds = %for.body796
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end856

for.body821:                                      ; preds = %for.inc852.for.body821_crit_edge, %for.cond819.preheader
  %i.61949 = phi i32 [ 0, %for.cond819.preheader ], [ %inc853, %for.inc852.for.body821_crit_edge ]
  %700 = ptrtoint ptr %PFB822 to i32
  call void @__asan_load4_noabort(i32 %700)
  %701 = load ptr, ptr %PFB822, align 8
  %mul823 = shl i32 %i.61949, 2
  %add824 = add nuw nsw i32 %mul823, 1536
  %add.ptr825 = getelementptr i8, ptr %701, i32 %add824
  %702 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr825) #6, !srcloc !24
  %703 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %703)
  %704 = load ptr, ptr %PGRAPH489, align 8
  %add829 = add nuw nsw i32 %mul823, 2304
  %add.ptr830 = getelementptr i8, ptr %704, i32 %add829
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr830, i32 %702) #6, !srcloc !25
  %705 = ptrtoint ptr %Chipset745 to i32
  call void @__asan_load4_noabort(i32 %705)
  %706 = load i32, ptr %Chipset745, align 8
  %707 = trunc i32 %706 to i16
  %trunc1938 = and i16 %707, -16
  %708 = zext i16 %trunc1938 to i64
  call void @__sanitizer_cov_trace_switch(i64 %708, ptr @__sancov_gen_cov_switch_values.9)
  switch i16 %trunc1938, label %if.then841 [
    i16 352, label %for.body821.for.inc852_crit_edge
    i16 544, label %for.body821.for.inc852_crit_edge1981
    i16 576, label %for.body821.for.inc852_crit_edge1982
  ]

for.body821.for.inc852_crit_edge1982:             ; preds = %for.body821
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc852

for.body821.for.inc852_crit_edge1981:             ; preds = %for.body821
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc852

for.body821.for.inc852_crit_edge:                 ; preds = %for.body821
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc852

if.then841:                                       ; preds = %for.body821
  call void @__sanitizer_cov_trace_pc() #8
  %709 = ptrtoint ptr %PFB822 to i32
  call void @__asan_load4_noabort(i32 %709)
  %710 = load ptr, ptr %PFB822, align 8
  %add.ptr845 = getelementptr i8, ptr %710, i32 %add824
  %711 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr845) #6, !srcloc !24
  %712 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %712)
  %713 = load ptr, ptr %PGRAPH489, align 8
  %add849 = add nuw nsw i32 %mul823, 26880
  %add.ptr850 = getelementptr i8, ptr %713, i32 %add849
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr850, i32 %711) #6, !srcloc !25
  br label %for.inc852

for.inc852:                                       ; preds = %if.then841, %for.body821.for.inc852_crit_edge, %for.body821.for.inc852_crit_edge1981, %for.body821.for.inc852_crit_edge1982
  %inc853 = add nuw nsw i32 %i.61949, 1
  %exitcond1957.not = icmp eq i32 %inc853, 48
  br i1 %exitcond1957.not, label %for.inc852.if.end856_crit_edge, label %for.inc852.for.body821_crit_edge

for.inc852.for.body821_crit_edge:                 ; preds = %for.inc852
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body821

for.inc852.if.end856_crit_edge:                   ; preds = %for.inc852
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end856

if.end856:                                        ; preds = %for.inc852.if.end856_crit_edge, %for.body796.if.end856_crit_edge, %for.body751.if.end856_crit_edge
  %714 = ptrtoint ptr %Architecture to i32
  call void @__asan_load4_noabort(i32 %714)
  %715 = load i32, ptr %Architecture, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %715)
  %cmp858 = icmp ugt i32 %715, 63
  br i1 %cmp858, label %if.then859, label %if.else958

if.then859:                                       ; preds = %if.end856
  %Chipset860 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 9
  %716 = ptrtoint ptr %Chipset860 to i32
  call void @__asan_load4_noabort(i32 %716)
  %717 = load i32, ptr %Chipset860, align 8
  %718 = trunc i32 %717 to i16
  %trunc1937 = and i16 %718, -16
  %719 = zext i16 %trunc1937 to i64
  call void @__sanitizer_cov_trace_switch(i64 %719, ptr @__sancov_gen_cov_switch_values.10)
  switch i16 %trunc1937, label %if.else923 [
    i16 64, label %if.then863
    i16 144, label %if.then859.if.then912_crit_edge
    i16 464, label %if.then859.if.then912_crit_edge1983
    i16 656, label %if.then859.if.then912_crit_edge1984
    i16 912, label %if.then859.if.then912_crit_edge1985
  ]

if.then859.if.then912_crit_edge1985:              ; preds = %if.then859
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then912

if.then859.if.then912_crit_edge1984:              ; preds = %if.then859
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then912

if.then859.if.then912_crit_edge1983:              ; preds = %if.then859
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then912

if.then859.if.then912_crit_edge:                  ; preds = %if.then859
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then912

if.then863:                                       ; preds = %if.then859
  call void @__sanitizer_cov_trace_pc() #8
  %PFB864 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 61
  %720 = ptrtoint ptr %PFB864 to i32
  call void @__asan_load4_noabort(i32 %720)
  %721 = load ptr, ptr %PFB864, align 8
  %add.ptr865 = getelementptr i8, ptr %721, i32 512
  %722 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr865) #6, !srcloc !24
  %723 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %723)
  %724 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr868 = getelementptr i8, ptr %724, i32 2468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr868, i32 %722) #6, !srcloc !25
  %725 = ptrtoint ptr %PFB864 to i32
  call void @__asan_load4_noabort(i32 %725)
  %726 = load ptr, ptr %PFB864, align 8
  %add.ptr870 = getelementptr i8, ptr %726, i32 516
  %727 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr870) #6, !srcloc !24
  %728 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %728)
  %729 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr873 = getelementptr i8, ptr %729, i32 2472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr873, i32 %727) #6, !srcloc !25
  %730 = ptrtoint ptr %PFB864 to i32
  call void @__asan_load4_noabort(i32 %730)
  %731 = load ptr, ptr %PFB864, align 8
  %add.ptr875 = getelementptr i8, ptr %731, i32 512
  %732 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr875) #6, !srcloc !24
  %733 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %733)
  %734 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr878 = getelementptr i8, ptr %734, i32 27044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr878, i32 %732) #6, !srcloc !25
  %735 = ptrtoint ptr %PFB864 to i32
  call void @__asan_load4_noabort(i32 %735)
  %736 = load ptr, ptr %PFB864, align 8
  %add.ptr880 = getelementptr i8, ptr %736, i32 516
  %737 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr880) #6, !srcloc !24
  %738 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %738)
  %739 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr883 = getelementptr i8, ptr %739, i32 27048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr883, i32 %737) #6, !srcloc !25
  %740 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %740)
  %741 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr885 = getelementptr i8, ptr %741, i32 2080
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr885, i32 0) #6, !srcloc !25
  %742 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %742)
  %743 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr887 = getelementptr i8, ptr %743, i32 2084
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr887, i32 0) #6, !srcloc !25
  %FbMapSize888 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 12
  %744 = ptrtoint ptr %FbMapSize888 to i32
  call void @__asan_load4_noabort(i32 %744)
  %745 = load i32, ptr %FbMapSize888, align 4
  %sub889 = add i32 %745, -1
  %746 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %746)
  %747 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr891 = getelementptr i8, ptr %747, i32 2148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr891, i32 %sub889) #6, !srcloc !25
  %748 = ptrtoint ptr %FbMapSize888 to i32
  call void @__asan_load4_noabort(i32 %748)
  %749 = load i32, ptr %FbMapSize888, align 4
  %sub893 = add i32 %749, -1
  %750 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %750)
  %751 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr895 = getelementptr i8, ptr %751, i32 2152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr895, i32 %sub893) #6, !srcloc !25
  br label %if.end995

if.then912:                                       ; preds = %if.then859.if.then912_crit_edge, %if.then859.if.then912_crit_edge1983, %if.then859.if.then912_crit_edge1984, %if.then859.if.then912_crit_edge1985
  %PFB913 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 61
  %752 = ptrtoint ptr %PFB913 to i32
  call void @__asan_load4_noabort(i32 %752)
  %753 = load ptr, ptr %PFB913, align 8
  %add.ptr914 = getelementptr i8, ptr %753, i32 512
  %754 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr914) #6, !srcloc !24
  %755 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %755)
  %756 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr917 = getelementptr i8, ptr %756, i32 3568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr917, i32 %754) #6, !srcloc !25
  %757 = ptrtoint ptr %PFB913 to i32
  call void @__asan_load4_noabort(i32 %757)
  %758 = load ptr, ptr %PFB913, align 8
  %add.ptr919 = getelementptr i8, ptr %758, i32 516
  %759 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr919) #6, !srcloc !24
  %760 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %760)
  %761 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr922 = getelementptr i8, ptr %761, i32 3572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr922, i32 %759) #6, !srcloc !25
  br label %if.end934

if.else923:                                       ; preds = %if.then859
  call void @__sanitizer_cov_trace_pc() #8
  %PFB924 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 61
  %762 = ptrtoint ptr %PFB924 to i32
  call void @__asan_load4_noabort(i32 %762)
  %763 = load ptr, ptr %PFB924, align 8
  %add.ptr925 = getelementptr i8, ptr %763, i32 512
  %764 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr925) #6, !srcloc !24
  %765 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %765)
  %766 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr928 = getelementptr i8, ptr %766, i32 2544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr928, i32 %764) #6, !srcloc !25
  %767 = ptrtoint ptr %PFB924 to i32
  call void @__asan_load4_noabort(i32 %767)
  %768 = load ptr, ptr %PFB924, align 8
  %add.ptr930 = getelementptr i8, ptr %768, i32 516
  %769 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr930) #6, !srcloc !24
  %770 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %770)
  %771 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr933 = getelementptr i8, ptr %771, i32 2548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr933, i32 %769) #6, !srcloc !25
  br label %if.end934

if.end934:                                        ; preds = %if.else923, %if.then912
  %PFB935 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 61
  %772 = ptrtoint ptr %PFB935 to i32
  call void @__asan_load4_noabort(i32 %772)
  %773 = load ptr, ptr %PFB935, align 8
  %add.ptr936 = getelementptr i8, ptr %773, i32 512
  %774 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr936) #6, !srcloc !24
  %775 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %775)
  %776 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr939 = getelementptr i8, ptr %776, i32 27120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr939, i32 %774) #6, !srcloc !25
  %777 = ptrtoint ptr %PFB935 to i32
  call void @__asan_load4_noabort(i32 %777)
  %778 = load ptr, ptr %PFB935, align 8
  %add.ptr941 = getelementptr i8, ptr %778, i32 516
  %779 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr941) #6, !srcloc !24
  %780 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %780)
  %781 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr944 = getelementptr i8, ptr %781, i32 27124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr944, i32 %779) #6, !srcloc !25
  %782 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %782)
  %783 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr946 = getelementptr i8, ptr %783, i32 2112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr946, i32 0) #6, !srcloc !25
  %784 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %784)
  %785 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr948 = getelementptr i8, ptr %785, i32 2116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr948, i32 0) #6, !srcloc !25
  %FbMapSize949 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 12
  %786 = ptrtoint ptr %FbMapSize949 to i32
  call void @__asan_load4_noabort(i32 %786)
  %787 = load i32, ptr %FbMapSize949, align 4
  %sub950 = add i32 %787, -1
  %788 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %788)
  %789 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr952 = getelementptr i8, ptr %789, i32 2208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr952, i32 %sub950) #6, !srcloc !25
  %790 = ptrtoint ptr %FbMapSize949 to i32
  call void @__asan_load4_noabort(i32 %790)
  %791 = load i32, ptr %FbMapSize949, align 4
  %sub954 = add i32 %791, -1
  %792 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %792)
  %793 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr956 = getelementptr i8, ptr %793, i32 2212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr956, i32 %sub954) #6, !srcloc !25
  br label %if.end995

if.else958:                                       ; preds = %if.end856
  call void @__sanitizer_cov_trace_pc() #8
  %PFB959 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 61
  %794 = ptrtoint ptr %PFB959 to i32
  call void @__asan_load4_noabort(i32 %794)
  %795 = load ptr, ptr %PFB959, align 8
  %add.ptr960 = getelementptr i8, ptr %795, i32 512
  %796 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr960) #6, !srcloc !24
  %797 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %797)
  %798 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr963 = getelementptr i8, ptr %798, i32 2468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr963, i32 %796) #6, !srcloc !25
  %799 = ptrtoint ptr %PFB959 to i32
  call void @__asan_load4_noabort(i32 %799)
  %800 = load ptr, ptr %PFB959, align 8
  %add.ptr965 = getelementptr i8, ptr %800, i32 516
  %801 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr965) #6, !srcloc !24
  %802 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %802)
  %803 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr968 = getelementptr i8, ptr %803, i32 2472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr968, i32 %801) #6, !srcloc !25
  %804 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %804)
  %805 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr970 = getelementptr i8, ptr %805, i32 1872
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr970, i32 15335424) #6, !srcloc !25
  %806 = ptrtoint ptr %PFB959 to i32
  call void @__asan_load4_noabort(i32 %806)
  %807 = load ptr, ptr %PFB959, align 8
  %add.ptr972 = getelementptr i8, ptr %807, i32 512
  %808 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr972) #6, !srcloc !24
  %809 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %809)
  %810 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr975 = getelementptr i8, ptr %810, i32 1876
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr975, i32 %808) #6, !srcloc !25
  %811 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %811)
  %812 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr977 = getelementptr i8, ptr %812, i32 1872
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr977, i32 15335428) #6, !srcloc !25
  %813 = ptrtoint ptr %PFB959 to i32
  call void @__asan_load4_noabort(i32 %813)
  %814 = load ptr, ptr %PFB959, align 8
  %add.ptr979 = getelementptr i8, ptr %814, i32 516
  %815 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr979) #6, !srcloc !24
  %816 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %816)
  %817 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr982 = getelementptr i8, ptr %817, i32 1876
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr982, i32 %815) #6, !srcloc !25
  %818 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %818)
  %819 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr984 = getelementptr i8, ptr %819, i32 2080
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr984, i32 0) #6, !srcloc !25
  %820 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %820)
  %821 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr986 = getelementptr i8, ptr %821, i32 2084
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr986, i32 0) #6, !srcloc !25
  %FbMapSize987 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 12
  %822 = ptrtoint ptr %FbMapSize987 to i32
  call void @__asan_load4_noabort(i32 %822)
  %823 = load i32, ptr %FbMapSize987, align 4
  %sub988 = add i32 %823, -1
  %824 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %824)
  %825 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr990 = getelementptr i8, ptr %825, i32 2148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr990, i32 %sub988) #6, !srcloc !25
  %826 = ptrtoint ptr %FbMapSize987 to i32
  call void @__asan_load4_noabort(i32 %826)
  %827 = load i32, ptr %FbMapSize987, align 4
  %sub992 = add i32 %827, -1
  %828 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %828)
  %829 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr994 = getelementptr i8, ptr %829, i32 2152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr994, i32 %sub992) #6, !srcloc !25
  br label %if.end995

if.end995:                                        ; preds = %if.else958, %if.end934, %if.then863
  %830 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %830)
  %831 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr997 = getelementptr i8, ptr %831, i32 2848
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr997, i32 0) #6, !srcloc !25
  %832 = ptrtoint ptr %PGRAPH489 to i32
  call void @__asan_load4_noabort(i32 %832)
  %833 = load ptr, ptr %PGRAPH489, align 8
  %add.ptr999 = getelementptr i8, ptr %833, i32 2820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr999, i32 -1) #6, !srcloc !25
  br label %if.end1001

if.end1001:                                       ; preds = %if.end995, %for.end537, %if.end462
  %PGRAPH1002 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 63
  %834 = ptrtoint ptr %PGRAPH1002 to i32
  call void @__asan_load4_noabort(i32 %834)
  %835 = load ptr, ptr %PGRAPH1002, align 8
  %add.ptr1003 = getelementptr i8, ptr %835, i32 1340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1003, i32 0) #6, !srcloc !25
  %836 = ptrtoint ptr %PGRAPH1002 to i32
  call void @__asan_load4_noabort(i32 %836)
  %837 = load ptr, ptr %PGRAPH1002, align 8
  %add.ptr1005 = getelementptr i8, ptr %837, i32 1344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1005, i32 0) #6, !srcloc !25
  %838 = ptrtoint ptr %PGRAPH1002 to i32
  call void @__asan_load4_noabort(i32 %838)
  %839 = load ptr, ptr %PGRAPH1002, align 8
  %add.ptr1007 = getelementptr i8, ptr %839, i32 1348
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1007, i32 32767) #6, !srcloc !25
  %840 = ptrtoint ptr %PGRAPH1002 to i32
  call void @__asan_load4_noabort(i32 %840)
  %841 = load ptr, ptr %PGRAPH1002, align 8
  %add.ptr1009 = getelementptr i8, ptr %841, i32 1352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1009, i32 32767) #6, !srcloc !25
  %PFIFO = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 62
  %842 = ptrtoint ptr %PFIFO to i32
  call void @__asan_load4_noabort(i32 %842)
  %843 = load ptr, ptr %PFIFO, align 4
  %add.ptr1010 = getelementptr i8, ptr %843, i32 1280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1010, i32 0) #6, !srcloc !25
  %844 = ptrtoint ptr %PFIFO to i32
  call void @__asan_load4_noabort(i32 %844)
  %845 = load ptr, ptr %PFIFO, align 4
  %add.ptr1012 = getelementptr i8, ptr %845, i32 1284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1012, i32 1) #6, !srcloc !25
  %846 = ptrtoint ptr %PFIFO to i32
  call void @__asan_load4_noabort(i32 %846)
  %847 = load ptr, ptr %PFIFO, align 4
  %add.ptr1014 = getelementptr i8, ptr %847, i32 4608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1014, i32 0) #6, !srcloc !25
  %848 = ptrtoint ptr %PFIFO to i32
  call void @__asan_load4_noabort(i32 %848)
  %849 = load ptr, ptr %PFIFO, align 4
  %add.ptr1016 = getelementptr i8, ptr %849, i32 4688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1016, i32 0) #6, !srcloc !25
  %850 = ptrtoint ptr %Architecture to i32
  call void @__asan_load4_noabort(i32 %850)
  %851 = load i32, ptr %Architecture, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %851)
  %cmp1018 = icmp ugt i32 %851, 63
  %852 = ptrtoint ptr %PFIFO to i32
  call void @__asan_load4_noabort(i32 %852)
  %853 = load ptr, ptr %PFIFO, align 4
  %add.ptr1021 = getelementptr i8, ptr %853, i32 4612
  br i1 %cmp1018, label %if.then1019, label %if.else1022

if.then1019:                                      ; preds = %if.end1001
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1021, i32 65536) #6, !srcloc !25
  br label %if.end1025

if.else1022:                                      ; preds = %if.end1001
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1021, i32 256) #6, !srcloc !25
  br label %if.end1025

if.end1025:                                       ; preds = %if.else1022, %if.then1019
  %854 = ptrtoint ptr %PFIFO to i32
  call void @__asan_load4_noabort(i32 %854)
  %855 = load ptr, ptr %PFIFO, align 4
  %add.ptr1027 = getelementptr i8, ptr %855, i32 4672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1027, i32 0) #6, !srcloc !25
  %856 = ptrtoint ptr %PFIFO to i32
  call void @__asan_load4_noabort(i32 %856)
  %857 = load ptr, ptr %PFIFO, align 4
  %add.ptr1029 = getelementptr i8, ptr %857, i32 4676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1029, i32 0) #6, !srcloc !25
  %858 = ptrtoint ptr %Architecture to i32
  call void @__asan_load4_noabort(i32 %858)
  %859 = load i32, ptr %Architecture, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %859)
  %cmp1031 = icmp ugt i32 %859, 63
  %860 = ptrtoint ptr %PFIFO to i32
  call void @__asan_load4_noabort(i32 %860)
  %861 = load ptr, ptr %PFIFO, align 4
  %add.ptr1034 = getelementptr i8, ptr %861, i32 4652
  br i1 %cmp1031, label %if.then1032, label %if.else1035

if.then1032:                                      ; preds = %if.end1025
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1034, i32 4627) #6, !srcloc !25
  br label %if.end1038

if.else1035:                                      ; preds = %if.end1025
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1034, i32 4617) #6, !srcloc !25
  br label %if.end1038

if.end1038:                                       ; preds = %if.else1035, %if.then1032
  %862 = ptrtoint ptr %PFIFO to i32
  call void @__asan_load4_noabort(i32 %862)
  %863 = load ptr, ptr %PFIFO, align 4
  %add.ptr1040 = getelementptr i8, ptr %863, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1040, i32 0) #6, !srcloc !25
  %864 = ptrtoint ptr %PFIFO to i32
  call void @__asan_load4_noabort(i32 %864)
  %865 = load ptr, ptr %PFIFO, align 4
  %add.ptr1042 = getelementptr i8, ptr %865, i32 4176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1042, i32 0) #6, !srcloc !25
  %866 = ptrtoint ptr %PFIFO to i32
  call void @__asan_load4_noabort(i32 %866)
  %867 = load ptr, ptr %PFIFO, align 4
  %add.ptr1044 = getelementptr i8, ptr %867, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1044, i32 50331904) #6, !srcloc !25
  %868 = ptrtoint ptr %PFIFO to i32
  call void @__asan_load4_noabort(i32 %868)
  %869 = load ptr, ptr %PFIFO, align 4
  %add.ptr1046 = getelementptr i8, ptr %869, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1046, i32 272) #6, !srcloc !25
  %870 = ptrtoint ptr %PFIFO to i32
  call void @__asan_load4_noabort(i32 %870)
  %871 = load ptr, ptr %PFIFO, align 4
  %add.ptr1048 = getelementptr i8, ptr %871, i32 536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1048, i32 274) #6, !srcloc !25
  %872 = ptrtoint ptr %PFIFO to i32
  call void @__asan_load4_noabort(i32 %872)
  %873 = load ptr, ptr %PFIFO, align 4
  %add.ptr1050 = getelementptr i8, ptr %873, i32 1292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1050, i32 65535) #6, !srcloc !25
  %874 = ptrtoint ptr %PFIFO to i32
  call void @__asan_load4_noabort(i32 %874)
  %875 = load ptr, ptr %PFIFO, align 4
  %add.ptr1052 = getelementptr i8, ptr %875, i32 4696
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1052, i32 65535) #6, !srcloc !25
  %876 = ptrtoint ptr %PFIFO to i32
  call void @__asan_load4_noabort(i32 %876)
  %877 = load ptr, ptr %PFIFO, align 4
  %add.ptr1054 = getelementptr i8, ptr %877, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1054, i32 0) #6, !srcloc !25
  %878 = ptrtoint ptr %PFIFO to i32
  call void @__asan_load4_noabort(i32 %878)
  %879 = load ptr, ptr %PFIFO, align 4
  %add.ptr1056 = getelementptr i8, ptr %879, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1056, i32 -1) #6, !srcloc !25
  %880 = ptrtoint ptr %PFIFO to i32
  call void @__asan_load4_noabort(i32 %880)
  %881 = load ptr, ptr %PFIFO, align 4
  %add.ptr1058 = getelementptr i8, ptr %881, i32 4180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1058, i32 1) #6, !srcloc !25
  %882 = ptrtoint ptr %PFIFO to i32
  call void @__asan_load4_noabort(i32 %882)
  %883 = load ptr, ptr %PFIFO, align 4
  %add.ptr1060 = getelementptr i8, ptr %883, i32 4656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1060, i32 0) #6, !srcloc !25
  %884 = ptrtoint ptr %PFIFO to i32
  call void @__asan_load4_noabort(i32 %884)
  %885 = load ptr, ptr %PFIFO, align 4
  %add.ptr1062 = getelementptr i8, ptr %885, i32 4736
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1062, i32 0) #6, !srcloc !25
  %886 = ptrtoint ptr %PFIFO to i32
  call void @__asan_load4_noabort(i32 %886)
  %887 = load ptr, ptr %PFIFO, align 4
  %add.ptr1064 = getelementptr i8, ptr %887, i32 4644
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1064, i32 -2146500488) #6, !srcloc !25
  %888 = ptrtoint ptr %PFIFO to i32
  call void @__asan_load4_noabort(i32 %888)
  %889 = load ptr, ptr %PFIFO, align 4
  %add.ptr1066 = getelementptr i8, ptr %889, i32 4640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1066, i32 1) #6, !srcloc !25
  %890 = ptrtoint ptr %PFIFO to i32
  call void @__asan_load4_noabort(i32 %890)
  %891 = load ptr, ptr %PFIFO, align 4
  %add.ptr1068 = getelementptr i8, ptr %891, i32 4608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1068, i32 1) #6, !srcloc !25
  %892 = ptrtoint ptr %PFIFO to i32
  call void @__asan_load4_noabort(i32 %892)
  %893 = load ptr, ptr %PFIFO, align 4
  %add.ptr1070 = getelementptr i8, ptr %893, i32 4688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1070, i32 1) #6, !srcloc !25
  %894 = ptrtoint ptr %PFIFO to i32
  call void @__asan_load4_noabort(i32 %894)
  %895 = load ptr, ptr %PFIFO, align 4
  %add.ptr1072 = getelementptr i8, ptr %895, i32 4692
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1072, i32 1) #6, !srcloc !25
  %896 = ptrtoint ptr %PFIFO to i32
  call void @__asan_load4_noabort(i32 %896)
  %897 = load ptr, ptr %PFIFO, align 4
  %add.ptr1074 = getelementptr i8, ptr %897, i32 1280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1074, i32 1) #6, !srcloc !25
  %tobool1075.not = icmp eq ptr %state, null
  br i1 %tobool1075.not, label %if.end1038.cleanup_crit_edge, label %if.end1077

if.end1038.cleanup_crit_edge:                     ; preds = %if.end1038
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end1077:                                       ; preds = %if.end1038
  %898 = ptrtoint ptr %Architecture to i32
  call void @__asan_load4_noabort(i32 %898)
  %899 = load i32, ptr %Architecture, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %899)
  %cmp1079 = icmp ugt i32 %899, 15
  br i1 %cmp1079, label %if.then1080, label %if.end1077.do.body1176_crit_edge

if.end1077.do.body1176_crit_edge:                 ; preds = %if.end1077
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body1176

if.then1080:                                      ; preds = %if.end1077
  %twoHeads = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 31
  %900 = ptrtoint ptr %twoHeads to i32
  call void @__asan_load4_noabort(i32 %900)
  %901 = load i32, ptr %twoHeads, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %901)
  %tobool1081.not = icmp eq i32 %901, 0
  br i1 %tobool1081.not, label %if.then1080.if.end1086_crit_edge, label %if.then1082

if.then1080.if.end1086_crit_edge:                 ; preds = %if.then1080
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1086

if.then1082:                                      ; preds = %if.then1080
  call void @__sanitizer_cov_trace_pc() #8
  %head = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 29
  %902 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %902)
  %903 = load i32, ptr %head, align 4
  %PCRTC0 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 58
  %904 = ptrtoint ptr %PCRTC0 to i32
  call void @__asan_load4_noabort(i32 %904)
  %905 = load ptr, ptr %PCRTC0, align 4
  %add.ptr1083 = getelementptr i8, ptr %905, i32 2144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1083, i32 %903) #6, !srcloc !25
  %head2 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 30
  %906 = ptrtoint ptr %head2 to i32
  call void @__asan_load4_noabort(i32 %906)
  %907 = load i32, ptr %head2, align 4
  %908 = ptrtoint ptr %PCRTC0 to i32
  call void @__asan_load4_noabort(i32 %908)
  %909 = load ptr, ptr %PCRTC0, align 4
  %add.ptr1085 = getelementptr i8, ptr %909, i32 10336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1085, i32 %907) #6, !srcloc !25
  br label %if.end1086

if.end1086:                                       ; preds = %if.then1082, %if.then1080.if.end1086_crit_edge
  %PRAMDAC1087 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 75
  %910 = ptrtoint ptr %PRAMDAC1087 to i32
  call void @__asan_load4_noabort(i32 %910)
  %911 = load ptr, ptr %PRAMDAC1087, align 8
  %add.ptr1088 = getelementptr i8, ptr %911, i32 1028
  %912 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1088) #6, !srcloc !24
  %or1090 = or i32 %912, 33554432
  %913 = ptrtoint ptr %PRAMDAC1087 to i32
  call void @__asan_load4_noabort(i32 %913)
  %914 = load ptr, ptr %PRAMDAC1087, align 8
  %add.ptr1092 = getelementptr i8, ptr %914, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1092, i32 %or1090) #6, !srcloc !25
  %915 = ptrtoint ptr %PMC to i32
  call void @__asan_load4_noabort(i32 %915)
  %916 = load ptr, ptr %PMC, align 4
  %add.ptr1094 = getelementptr i8, ptr %916, i32 34564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1094, i32 1) #6, !srcloc !25
  %917 = ptrtoint ptr %PMC to i32
  call void @__asan_load4_noabort(i32 %917)
  %918 = load ptr, ptr %PMC, align 4
  %add.ptr1096 = getelementptr i8, ptr %918, i32 33088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1096, i32 0) #6, !srcloc !25
  %919 = ptrtoint ptr %PMC to i32
  call void @__asan_load4_noabort(i32 %919)
  %920 = load ptr, ptr %PMC, align 4
  %add.ptr1098 = getelementptr i8, ptr %920, i32 35104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1098, i32 0) #6, !srcloc !25
  %921 = ptrtoint ptr %PMC to i32
  call void @__asan_load4_noabort(i32 %921)
  %922 = load ptr, ptr %PMC, align 4
  %add.ptr1100 = getelementptr i8, ptr %922, i32 35108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1100, i32 0) #6, !srcloc !25
  %FbMapSize1101 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 12
  %923 = ptrtoint ptr %FbMapSize1101 to i32
  call void @__asan_load4_noabort(i32 %923)
  %924 = load i32, ptr %FbMapSize1101, align 4
  %sub1102 = add i32 %924, -1
  %925 = ptrtoint ptr %PMC to i32
  call void @__asan_load4_noabort(i32 %925)
  %926 = load ptr, ptr %PMC, align 4
  %add.ptr1104 = getelementptr i8, ptr %926, i32 35080
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1104, i32 %sub1102) #6, !srcloc !25
  %927 = ptrtoint ptr %FbMapSize1101 to i32
  call void @__asan_load4_noabort(i32 %927)
  %928 = load i32, ptr %FbMapSize1101, align 4
  %sub1106 = add i32 %928, -1
  %929 = ptrtoint ptr %PMC to i32
  call void @__asan_load4_noabort(i32 %929)
  %930 = load ptr, ptr %PMC, align 4
  %add.ptr1108 = getelementptr i8, ptr %930, i32 35084
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1108, i32 %sub1106) #6, !srcloc !25
  %931 = ptrtoint ptr %PMC to i32
  call void @__asan_load4_noabort(i32 %931)
  %932 = load ptr, ptr %PMC, align 4
  %add.ptr1110 = getelementptr i8, ptr %932, i32 5512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1110, i32 0) #6, !srcloc !25
  %cursorConfig = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 32
  %933 = ptrtoint ptr %cursorConfig to i32
  call void @__asan_load4_noabort(i32 %933)
  %934 = load i32, ptr %cursorConfig, align 4
  %PCRTC = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 59
  %935 = ptrtoint ptr %PCRTC to i32
  call void @__asan_load4_noabort(i32 %935)
  %936 = load ptr, ptr %PCRTC, align 8
  %add.ptr1111 = getelementptr i8, ptr %936, i32 2064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1111, i32 %934) #6, !srcloc !25
  %displayV = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 38
  %937 = ptrtoint ptr %displayV to i32
  call void @__asan_load4_noabort(i32 %937)
  %938 = load i32, ptr %displayV, align 4
  %sub1112 = add i32 %938, -3
  %939 = ptrtoint ptr %PCRTC to i32
  call void @__asan_load4_noabort(i32 %939)
  %940 = load ptr, ptr %PCRTC, align 8
  %add.ptr1114 = getelementptr i8, ptr %940, i32 2096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1114, i32 %sub1112) #6, !srcloc !25
  %941 = ptrtoint ptr %displayV to i32
  call void @__asan_load4_noabort(i32 %941)
  %942 = load i32, ptr %displayV, align 4
  %sub1116 = add i32 %942, -1
  %943 = ptrtoint ptr %PCRTC to i32
  call void @__asan_load4_noabort(i32 %943)
  %944 = load ptr, ptr %PCRTC, align 8
  %add.ptr1118 = getelementptr i8, ptr %944, i32 2100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1118, i32 %sub1116) #6, !srcloc !25
  %FlatPanel = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 26
  %945 = ptrtoint ptr %FlatPanel to i32
  call void @__asan_load4_noabort(i32 %945)
  %946 = load i32, ptr %FlatPanel, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %946)
  %tobool1119.not = icmp eq i32 %946, 0
  br i1 %tobool1119.not, label %if.end1086.do.body1164_crit_edge, label %if.then1120

if.end1086.do.body1164_crit_edge:                 ; preds = %if.end1086
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body1164

if.then1120:                                      ; preds = %if.end1086
  %Chipset1121 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 9
  %947 = ptrtoint ptr %Chipset1121 to i32
  call void @__asan_load4_noabort(i32 %947)
  %948 = load i32, ptr %Chipset1121, align 8
  %and1122 = and i32 %948, 4080
  call void @__sanitizer_cov_trace_const_cmp4(i32 272, i32 %and1122)
  %cmp1123 = icmp eq i32 %and1122, 272
  br i1 %cmp1123, label %if.then1124, label %if.else1127

if.then1124:                                      ; preds = %if.then1120
  call void @__sanitizer_cov_trace_pc() #8
  %dither = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 13
  %949 = ptrtoint ptr %dither to i32
  call void @__asan_load4_noabort(i32 %949)
  %950 = load i32, ptr %dither, align 4
  %951 = ptrtoint ptr %PRAMDAC1087 to i32
  call void @__asan_load4_noabort(i32 %951)
  %952 = load ptr, ptr %PRAMDAC1087, align 8
  %add.ptr1126 = getelementptr i8, ptr %952, i32 1320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1126, i32 %950) #6, !srcloc !25
  br label %do.body

if.else1127:                                      ; preds = %if.then1120
  %953 = ptrtoint ptr %twoHeads to i32
  call void @__asan_load4_noabort(i32 %953)
  %954 = load i32, ptr %twoHeads, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %954)
  %tobool1129.not = icmp eq i32 %954, 0
  br i1 %tobool1129.not, label %if.else1127.do.body_crit_edge, label %if.then1130

if.else1127.do.body_crit_edge:                    ; preds = %if.else1127
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then1130:                                      ; preds = %if.else1127
  call void @__sanitizer_cov_trace_pc() #8
  %dither1131 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 13
  %955 = ptrtoint ptr %dither1131 to i32
  call void @__asan_load4_noabort(i32 %955)
  %956 = load i32, ptr %dither1131, align 4
  %957 = ptrtoint ptr %PRAMDAC1087 to i32
  call void @__asan_load4_noabort(i32 %957)
  %958 = load ptr, ptr %PRAMDAC1087, align 8
  %add.ptr1133 = getelementptr i8, ptr %958, i32 2108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1133, i32 %956) #6, !srcloc !25
  br label %do.body

do.body:                                          ; preds = %if.then1130, %if.else1127.do.body_crit_edge, %if.then1124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  tail call void @arm_heavy_mb() #6
  %PCIO = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 71
  %959 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %959)
  %960 = load ptr, ptr %PCIO, align 8
  %add.ptr1136 = getelementptr i8, ptr %960, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1136, i8 83) #6, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !28
  tail call void @arm_heavy_mb() #6
  %timingH = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 36
  %961 = ptrtoint ptr %timingH to i32
  call void @__asan_load4_noabort(i32 %961)
  %962 = load i32, ptr %timingH, align 4
  %conv = trunc i32 %962 to i8
  %963 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %963)
  %964 = load ptr, ptr %PCIO, align 8
  %add.ptr1141 = getelementptr i8, ptr %964, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1141, i8 %conv) #6, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  tail call void @arm_heavy_mb() #6
  %965 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %965)
  %966 = load ptr, ptr %PCIO, align 8
  %add.ptr1146 = getelementptr i8, ptr %966, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1146, i8 84) #6, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !30
  tail call void @arm_heavy_mb() #6
  %timingV = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 37
  %967 = ptrtoint ptr %timingV to i32
  call void @__asan_load4_noabort(i32 %967)
  %968 = load i32, ptr %timingV, align 4
  %conv1150 = trunc i32 %968 to i8
  %969 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %969)
  %970 = load ptr, ptr %PCIO, align 8
  %add.ptr1152 = getelementptr i8, ptr %970, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1152, i8 %conv1150) #6, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  %971 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %971)
  %972 = load ptr, ptr %PCIO, align 8
  %add.ptr1157 = getelementptr i8, ptr %972, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1157, i8 33) #6, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !32
  tail call void @arm_heavy_mb() #6
  %973 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %973)
  %974 = load ptr, ptr %PCIO, align 8
  %add.ptr1162 = getelementptr i8, ptr %974, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1162, i8 -6) #6, !srcloc !16
  br label %do.body1164

do.body1164:                                      ; preds = %do.body, %if.end1086.do.body1164_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !33
  tail call void @arm_heavy_mb() #6
  %PCIO1167 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 71
  %975 = ptrtoint ptr %PCIO1167 to i32
  call void @__asan_load4_noabort(i32 %975)
  %976 = load ptr, ptr %PCIO1167, align 8
  %add.ptr1168 = getelementptr i8, ptr %976, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1168, i8 65) #6, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %extra = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 14
  %977 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %977)
  %978 = load i32, ptr %extra, align 4
  %conv1172 = trunc i32 %978 to i8
  %979 = ptrtoint ptr %PCIO1167 to i32
  call void @__asan_load4_noabort(i32 %979)
  %980 = load ptr, ptr %PCIO1167, align 8
  %add.ptr1174 = getelementptr i8, ptr %980, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1174, i8 %conv1172) #6, !srcloc !16
  br label %do.body1176

do.body1176:                                      ; preds = %do.body1164, %if.end1077.do.body1176_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !35
  tail call void @arm_heavy_mb() #6
  %PCIO1179 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 71
  %981 = ptrtoint ptr %PCIO1179 to i32
  call void @__asan_load4_noabort(i32 %981)
  %982 = load ptr, ptr %PCIO1179, align 8
  %add.ptr1180 = getelementptr i8, ptr %982, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1180, i8 25) #6, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  tail call void @arm_heavy_mb() #6
  %repaint0 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 9
  %983 = ptrtoint ptr %repaint0 to i32
  call void @__asan_load4_noabort(i32 %983)
  %984 = load i32, ptr %repaint0, align 4
  %conv1184 = trunc i32 %984 to i8
  %985 = ptrtoint ptr %PCIO1179 to i32
  call void @__asan_load4_noabort(i32 %985)
  %986 = load ptr, ptr %PCIO1179, align 8
  %add.ptr1186 = getelementptr i8, ptr %986, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1186, i8 %conv1184) #6, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  tail call void @arm_heavy_mb() #6
  %987 = ptrtoint ptr %PCIO1179 to i32
  call void @__asan_load4_noabort(i32 %987)
  %988 = load ptr, ptr %PCIO1179, align 8
  %add.ptr1191 = getelementptr i8, ptr %988, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1191, i8 26) #6, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %repaint1 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 10
  %989 = ptrtoint ptr %repaint1 to i32
  call void @__asan_load4_noabort(i32 %989)
  %990 = load i32, ptr %repaint1, align 4
  %conv1195 = trunc i32 %990 to i8
  %991 = ptrtoint ptr %PCIO1179 to i32
  call void @__asan_load4_noabort(i32 %991)
  %992 = load ptr, ptr %PCIO1179, align 8
  %add.ptr1197 = getelementptr i8, ptr %992, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1197, i8 %conv1195) #6, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %993 = ptrtoint ptr %PCIO1179 to i32
  call void @__asan_load4_noabort(i32 %993)
  %994 = load ptr, ptr %PCIO1179, align 8
  %add.ptr1202 = getelementptr i8, ptr %994, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1202, i8 37) #6, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  tail call void @arm_heavy_mb() #6
  %screen = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 11
  %995 = ptrtoint ptr %screen to i32
  call void @__asan_load4_noabort(i32 %995)
  %996 = load i32, ptr %screen, align 4
  %conv1206 = trunc i32 %996 to i8
  %997 = ptrtoint ptr %PCIO1179 to i32
  call void @__asan_load4_noabort(i32 %997)
  %998 = load ptr, ptr %PCIO1179, align 8
  %add.ptr1208 = getelementptr i8, ptr %998, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1208, i8 %conv1206) #6, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  tail call void @arm_heavy_mb() #6
  %999 = ptrtoint ptr %PCIO1179 to i32
  call void @__asan_load4_noabort(i32 %999)
  %1000 = load ptr, ptr %PCIO1179, align 8
  %add.ptr1213 = getelementptr i8, ptr %1000, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1213, i8 40) #6, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !42
  tail call void @arm_heavy_mb() #6
  %pixel = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 16
  %1001 = ptrtoint ptr %pixel to i32
  call void @__asan_load4_noabort(i32 %1001)
  %1002 = load i32, ptr %pixel, align 4
  %conv1217 = trunc i32 %1002 to i8
  %1003 = ptrtoint ptr %PCIO1179 to i32
  call void @__asan_load4_noabort(i32 %1003)
  %1004 = load ptr, ptr %PCIO1179, align 8
  %add.ptr1219 = getelementptr i8, ptr %1004, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1219, i8 %conv1217) #6, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !43
  tail call void @arm_heavy_mb() #6
  %1005 = ptrtoint ptr %PCIO1179 to i32
  call void @__asan_load4_noabort(i32 %1005)
  %1006 = load ptr, ptr %PCIO1179, align 8
  %add.ptr1224 = getelementptr i8, ptr %1006, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1224, i8 45) #6, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %horiz = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 17
  %1007 = ptrtoint ptr %horiz to i32
  call void @__asan_load4_noabort(i32 %1007)
  %1008 = load i32, ptr %horiz, align 4
  %conv1228 = trunc i32 %1008 to i8
  %1009 = ptrtoint ptr %PCIO1179 to i32
  call void @__asan_load4_noabort(i32 %1009)
  %1010 = load ptr, ptr %PCIO1179, align 8
  %add.ptr1230 = getelementptr i8, ptr %1010, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1230, i8 %conv1228) #6, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %1011 = ptrtoint ptr %PCIO1179 to i32
  call void @__asan_load4_noabort(i32 %1011)
  %1012 = load ptr, ptr %PCIO1179, align 8
  %add.ptr1235 = getelementptr i8, ptr %1012, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1235, i8 28) #6, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %fifo = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 15
  %1013 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %1013)
  %1014 = load i32, ptr %fifo, align 4
  %conv1239 = trunc i32 %1014 to i8
  %1015 = ptrtoint ptr %PCIO1179 to i32
  call void @__asan_load4_noabort(i32 %1015)
  %1016 = load ptr, ptr %PCIO1179, align 8
  %add.ptr1241 = getelementptr i8, ptr %1016, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1241, i8 %conv1239) #6, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  tail call void @arm_heavy_mb() #6
  %1017 = ptrtoint ptr %PCIO1179 to i32
  call void @__asan_load4_noabort(i32 %1017)
  %1018 = load ptr, ptr %PCIO1179, align 8
  %add.ptr1246 = getelementptr i8, ptr %1018, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1246, i8 27) #6, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  tail call void @arm_heavy_mb() #6
  %arbitration0 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 18
  %1019 = ptrtoint ptr %arbitration0 to i32
  call void @__asan_load4_noabort(i32 %1019)
  %1020 = load i32, ptr %arbitration0, align 4
  %conv1250 = trunc i32 %1020 to i8
  %1021 = ptrtoint ptr %PCIO1179 to i32
  call void @__asan_load4_noabort(i32 %1021)
  %1022 = load ptr, ptr %PCIO1179, align 8
  %add.ptr1252 = getelementptr i8, ptr %1022, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1252, i8 %conv1250) #6, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %1023 = ptrtoint ptr %PCIO1179 to i32
  call void @__asan_load4_noabort(i32 %1023)
  %1024 = load ptr, ptr %PCIO1179, align 8
  %add.ptr1257 = getelementptr i8, ptr %1024, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1257, i8 32) #6, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  tail call void @arm_heavy_mb() #6
  %arbitration1 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 19
  %1025 = ptrtoint ptr %arbitration1 to i32
  call void @__asan_load4_noabort(i32 %1025)
  %1026 = load i32, ptr %arbitration1, align 4
  %conv1261 = trunc i32 %1026 to i8
  %1027 = ptrtoint ptr %PCIO1179 to i32
  call void @__asan_load4_noabort(i32 %1027)
  %1028 = load ptr, ptr %PCIO1179, align 8
  %add.ptr1263 = getelementptr i8, ptr %1028, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1263, i8 %conv1261) #6, !srcloc !16
  %1029 = ptrtoint ptr %Architecture to i32
  call void @__asan_load4_noabort(i32 %1029)
  %1030 = load i32, ptr %Architecture, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %1030)
  %cmp1265 = icmp ugt i32 %1030, 47
  br i1 %cmp1265, label %do.body1268, label %do.body1176.do.body1282_crit_edge

do.body1176.do.body1282_crit_edge:                ; preds = %do.body1176
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body1282

do.body1268:                                      ; preds = %do.body1176
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %1031 = ptrtoint ptr %PCIO1179 to i32
  call void @__asan_load4_noabort(i32 %1031)
  %1032 = load ptr, ptr %PCIO1179, align 8
  %add.ptr1272 = getelementptr i8, ptr %1032, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1272, i8 71) #6, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  tail call void @arm_heavy_mb() #6
  %1033 = ptrtoint ptr %arbitration1 to i32
  call void @__asan_load4_noabort(i32 %1033)
  %1034 = load i32, ptr %arbitration1, align 4
  %shr1277 = lshr i32 %1034, 8
  %conv1278 = trunc i32 %shr1277 to i8
  %1035 = ptrtoint ptr %PCIO1179 to i32
  call void @__asan_load4_noabort(i32 %1035)
  %1036 = load ptr, ptr %PCIO1179, align 8
  %add.ptr1280 = getelementptr i8, ptr %1036, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1280, i8 %conv1278) #6, !srcloc !16
  br label %do.body1282

do.body1282:                                      ; preds = %do.body1268, %do.body1176.do.body1282_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  %1037 = ptrtoint ptr %PCIO1179 to i32
  call void @__asan_load4_noabort(i32 %1037)
  %1038 = load ptr, ptr %PCIO1179, align 8
  %add.ptr1286 = getelementptr i8, ptr %1038, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1286, i8 48) #6, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %cursor0 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 33
  %1039 = ptrtoint ptr %cursor0 to i32
  call void @__asan_load4_noabort(i32 %1039)
  %1040 = load i32, ptr %cursor0, align 4
  %conv1290 = trunc i32 %1040 to i8
  %1041 = ptrtoint ptr %PCIO1179 to i32
  call void @__asan_load4_noabort(i32 %1041)
  %1042 = load ptr, ptr %PCIO1179, align 8
  %add.ptr1292 = getelementptr i8, ptr %1042, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1292, i8 %conv1290) #6, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %1043 = ptrtoint ptr %PCIO1179 to i32
  call void @__asan_load4_noabort(i32 %1043)
  %1044 = load ptr, ptr %PCIO1179, align 8
  %add.ptr1297 = getelementptr i8, ptr %1044, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1297, i8 49) #6, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %cursor1 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 34
  %1045 = ptrtoint ptr %cursor1 to i32
  call void @__asan_load4_noabort(i32 %1045)
  %1046 = load i32, ptr %cursor1, align 4
  %conv1301 = trunc i32 %1046 to i8
  %1047 = ptrtoint ptr %PCIO1179 to i32
  call void @__asan_load4_noabort(i32 %1047)
  %1048 = load ptr, ptr %PCIO1179, align 8
  %add.ptr1303 = getelementptr i8, ptr %1048, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1303, i8 %conv1301) #6, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %1049 = ptrtoint ptr %PCIO1179 to i32
  call void @__asan_load4_noabort(i32 %1049)
  %1050 = load ptr, ptr %PCIO1179, align 8
  %add.ptr1308 = getelementptr i8, ptr %1050, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1308, i8 47) #6, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %cursor2 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 35
  %1051 = ptrtoint ptr %cursor2 to i32
  call void @__asan_load4_noabort(i32 %1051)
  %1052 = load i32, ptr %cursor2, align 4
  %conv1312 = trunc i32 %1052 to i8
  %1053 = ptrtoint ptr %PCIO1179 to i32
  call void @__asan_load4_noabort(i32 %1053)
  %1054 = load ptr, ptr %PCIO1179, align 8
  %add.ptr1314 = getelementptr i8, ptr %1054, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1314, i8 %conv1312) #6, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %1055 = ptrtoint ptr %PCIO1179 to i32
  call void @__asan_load4_noabort(i32 %1055)
  %1056 = load ptr, ptr %PCIO1179, align 8
  %add.ptr1319 = getelementptr i8, ptr %1056, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1319, i8 57) #6, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  tail call void @arm_heavy_mb() #6
  %interlace = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 8
  %1057 = ptrtoint ptr %interlace to i32
  call void @__asan_load4_noabort(i32 %1057)
  %1058 = load i32, ptr %interlace, align 4
  %conv1323 = trunc i32 %1058 to i8
  %1059 = ptrtoint ptr %PCIO1179 to i32
  call void @__asan_load4_noabort(i32 %1059)
  %1060 = load ptr, ptr %PCIO1179, align 8
  %add.ptr1325 = getelementptr i8, ptr %1060, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1325, i8 %conv1323) #6, !srcloc !16
  %FlatPanel1326 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 26
  %1061 = ptrtoint ptr %FlatPanel1326 to i32
  call void @__asan_load4_noabort(i32 %1061)
  %1062 = load i32, ptr %FlatPanel1326, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1062)
  %tobool1327.not = icmp eq i32 %1062, 0
  br i1 %tobool1327.not, label %if.then1328, label %if.else1352

if.then1328:                                      ; preds = %do.body1282
  %1063 = ptrtoint ptr %Architecture to i32
  call void @__asan_load4_noabort(i32 %1063)
  %1064 = load i32, ptr %Architecture, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %1064)
  %cmp1330 = icmp ugt i32 %1064, 63
  br i1 %cmp1330, label %if.then1332, label %if.then1328.if.end1334_crit_edge

if.then1328.if.end1334_crit_edge:                 ; preds = %if.then1328
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1334

if.then1332:                                      ; preds = %if.then1328
  call void @__sanitizer_cov_trace_pc() #8
  %control = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 40
  %1065 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %1065)
  %1066 = load i32, ptr %control, align 4
  %PRAMDAC0 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 60
  %1067 = ptrtoint ptr %PRAMDAC0 to i32
  call void @__asan_load4_noabort(i32 %1067)
  %1068 = load ptr, ptr %PRAMDAC0, align 4
  %add.ptr1333 = getelementptr i8, ptr %1068, i32 1408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1333, i32 %1066) #6, !srcloc !25
  br label %if.end1334

if.end1334:                                       ; preds = %if.then1332, %if.then1328.if.end1334_crit_edge
  %pllsel = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 26
  %1069 = ptrtoint ptr %pllsel to i32
  call void @__asan_load4_noabort(i32 %1069)
  %1070 = load i32, ptr %pllsel, align 4
  %PRAMDAC01335 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 60
  %1071 = ptrtoint ptr %PRAMDAC01335 to i32
  call void @__asan_load4_noabort(i32 %1071)
  %1072 = load ptr, ptr %PRAMDAC01335, align 4
  %add.ptr1336 = getelementptr i8, ptr %1072, i32 1292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1336, i32 %1070) #6, !srcloc !25
  %vpll = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 22
  %1073 = ptrtoint ptr %vpll to i32
  call void @__asan_load4_noabort(i32 %1073)
  %1074 = load i32, ptr %vpll, align 4
  %1075 = ptrtoint ptr %PRAMDAC01335 to i32
  call void @__asan_load4_noabort(i32 %1075)
  %1076 = load ptr, ptr %PRAMDAC01335, align 4
  %add.ptr1338 = getelementptr i8, ptr %1076, i32 1288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1338, i32 %1074) #6, !srcloc !25
  %twoHeads1339 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 31
  %1077 = ptrtoint ptr %twoHeads1339 to i32
  call void @__asan_load4_noabort(i32 %1077)
  %1078 = load i32, ptr %twoHeads1339, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1078)
  %tobool1340.not = icmp eq i32 %1078, 0
  br i1 %tobool1340.not, label %if.end1334.if.end1344_crit_edge, label %if.then1341

if.end1334.if.end1344_crit_edge:                  ; preds = %if.end1334
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1344

if.then1341:                                      ; preds = %if.end1334
  call void @__sanitizer_cov_trace_pc() #8
  %vpll2 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 23
  %1079 = ptrtoint ptr %vpll2 to i32
  call void @__asan_load4_noabort(i32 %1079)
  %1080 = load i32, ptr %vpll2, align 4
  %1081 = ptrtoint ptr %PRAMDAC01335 to i32
  call void @__asan_load4_noabort(i32 %1081)
  %1082 = load ptr, ptr %PRAMDAC01335, align 4
  %add.ptr1343 = getelementptr i8, ptr %1082, i32 1312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1343, i32 %1080) #6, !srcloc !25
  br label %if.end1344

if.end1344:                                       ; preds = %if.then1341, %if.end1334.if.end1344_crit_edge
  %twoStagePLL = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 32
  %1083 = ptrtoint ptr %twoStagePLL to i32
  call void @__asan_load4_noabort(i32 %1083)
  %1084 = load i32, ptr %twoStagePLL, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1084)
  %tobool1345.not = icmp eq i32 %1084, 0
  br i1 %tobool1345.not, label %if.end1344.if.end1358_crit_edge, label %if.then1346

if.end1344.if.end1358_crit_edge:                  ; preds = %if.end1344
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1358

if.then1346:                                      ; preds = %if.end1344
  call void @__sanitizer_cov_trace_pc() #8
  %vpllB = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 24
  %1085 = ptrtoint ptr %vpllB to i32
  call void @__asan_load4_noabort(i32 %1085)
  %1086 = load i32, ptr %vpllB, align 4
  %1087 = ptrtoint ptr %PRAMDAC01335 to i32
  call void @__asan_load4_noabort(i32 %1087)
  %1088 = load ptr, ptr %PRAMDAC01335, align 4
  %add.ptr1348 = getelementptr i8, ptr %1088, i32 1400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1348, i32 %1086) #6, !srcloc !25
  %vpll2B = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 25
  %1089 = ptrtoint ptr %vpll2B to i32
  call void @__asan_load4_noabort(i32 %1089)
  %1090 = load i32, ptr %vpll2B, align 4
  %1091 = ptrtoint ptr %PRAMDAC01335 to i32
  call void @__asan_load4_noabort(i32 %1091)
  %1092 = load ptr, ptr %PRAMDAC01335, align 4
  %add.ptr1350 = getelementptr i8, ptr %1092, i32 1404
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1350, i32 %1090) #6, !srcloc !25
  br label %if.end1358

if.else1352:                                      ; preds = %do.body1282
  call void @__sanitizer_cov_trace_pc() #8
  %scale = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 12
  %1093 = ptrtoint ptr %scale to i32
  call void @__asan_load4_noabort(i32 %1093)
  %1094 = load i32, ptr %scale, align 4
  %PRAMDAC1353 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 75
  %1095 = ptrtoint ptr %PRAMDAC1353 to i32
  call void @__asan_load4_noabort(i32 %1095)
  %1096 = load ptr, ptr %PRAMDAC1353, align 8
  %add.ptr1354 = getelementptr i8, ptr %1096, i32 2120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1354, i32 %1094) #6, !srcloc !25
  %crtcSync = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 39
  %1097 = ptrtoint ptr %crtcSync to i32
  call void @__asan_load4_noabort(i32 %1097)
  %1098 = load i32, ptr %crtcSync, align 4
  %PanelTweak = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 36
  %1099 = ptrtoint ptr %PanelTweak to i32
  call void @__asan_load4_noabort(i32 %1099)
  %1100 = load i32, ptr %PanelTweak, align 8
  %add1355 = add i32 %1100, %1098
  %1101 = ptrtoint ptr %PRAMDAC1353 to i32
  call void @__asan_load4_noabort(i32 %1101)
  %1102 = load ptr, ptr %PRAMDAC1353, align 8
  %add.ptr1357 = getelementptr i8, ptr %1102, i32 2088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1357, i32 %add1355) #6, !srcloc !25
  br label %if.end1358

if.end1358:                                       ; preds = %if.else1352, %if.then1346, %if.end1344.if.end1358_crit_edge
  %general = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 27
  %1103 = ptrtoint ptr %general to i32
  call void @__asan_load4_noabort(i32 %1103)
  %1104 = load i32, ptr %general, align 4
  %PRAMDAC1359 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 75
  %1105 = ptrtoint ptr %PRAMDAC1359 to i32
  call void @__asan_load4_noabort(i32 %1105)
  %1106 = load ptr, ptr %PRAMDAC1359, align 8
  %add.ptr1360 = getelementptr i8, ptr %1106, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1360, i32 %1104) #6, !srcloc !25
  %PCRTC1361 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 59
  %1107 = ptrtoint ptr %PCRTC1361 to i32
  call void @__asan_load4_noabort(i32 %1107)
  %1108 = load ptr, ptr %PCRTC1361, align 8
  %add.ptr1362 = getelementptr i8, ptr %1108, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1362, i32 0) #6, !srcloc !25
  %1109 = ptrtoint ptr %PCRTC1361 to i32
  call void @__asan_load4_noabort(i32 %1109)
  %1110 = load ptr, ptr %PCRTC1361, align 8
  %add.ptr1364 = getelementptr i8, ptr %1110, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1364, i32 1) #6, !srcloc !25
  br label %cleanup

cleanup:                                          ; preds = %if.end1358, %if.end1038.cleanup_crit_edge
  %state.sink = phi ptr [ %state, %if.end1358 ], [ null, %if.end1038.cleanup_crit_edge ]
  %CurrentState1365 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 3
  %1111 = ptrtoint ptr %CurrentState1365 to i32
  call void @__asan_store4_noabort(i32 %1111)
  store ptr %state.sink, ptr %CurrentState1365, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @NVUnloadStateExt(ptr noundef readonly %par, ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  %PCIO = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 71
  %0 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %PCIO, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 25) #6, !srcloc !16
  %2 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %PCIO, align 8
  %add.ptr2 = getelementptr i8, ptr %3, i32 981
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2) #6, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  %conv = zext i8 %4 to i32
  %repaint0 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 9
  %5 = ptrtoint ptr %repaint0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %repaint0, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %PCIO, align 8
  %add.ptr7 = getelementptr i8, ptr %7, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr7, i8 26) #6, !srcloc !16
  %8 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %PCIO, align 8
  %add.ptr11 = getelementptr i8, ptr %9, i32 981
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr11) #6, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  %conv15 = zext i8 %10 to i32
  %repaint1 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 10
  %11 = ptrtoint ptr %repaint1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv15, ptr %repaint1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %PCIO, align 8
  %add.ptr19 = getelementptr i8, ptr %13, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr19, i8 37) #6, !srcloc !16
  %14 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %PCIO, align 8
  %add.ptr23 = getelementptr i8, ptr %15, i32 981
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr23) #6, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  %conv27 = zext i8 %16 to i32
  %screen = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 11
  %17 = ptrtoint ptr %screen to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv27, ptr %screen, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %PCIO, align 8
  %add.ptr31 = getelementptr i8, ptr %19, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr31, i8 40) #6, !srcloc !16
  %20 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %PCIO, align 8
  %add.ptr35 = getelementptr i8, ptr %21, i32 981
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr35) #6, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  %conv39 = zext i8 %22 to i32
  %pixel = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 16
  %23 = ptrtoint ptr %pixel to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv39, ptr %pixel, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %24 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %PCIO, align 8
  %add.ptr43 = getelementptr i8, ptr %25, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr43, i8 45) #6, !srcloc !16
  %26 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %PCIO, align 8
  %add.ptr47 = getelementptr i8, ptr %27, i32 981
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr47) #6, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %conv51 = zext i8 %28 to i32
  %horiz = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 17
  %29 = ptrtoint ptr %horiz to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv51, ptr %horiz, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  %30 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %PCIO, align 8
  %add.ptr55 = getelementptr i8, ptr %31, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr55, i8 28) #6, !srcloc !16
  %32 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %PCIO, align 8
  %add.ptr59 = getelementptr i8, ptr %33, i32 981
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr59) #6, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %conv63 = zext i8 %34 to i32
  %fifo = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 15
  %35 = ptrtoint ptr %fifo to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv63, ptr %fifo, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %36 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %PCIO, align 8
  %add.ptr67 = getelementptr i8, ptr %37, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr67, i8 27) #6, !srcloc !16
  %38 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %PCIO, align 8
  %add.ptr71 = getelementptr i8, ptr %39, i32 981
  %40 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr71) #6, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  %conv75 = zext i8 %40 to i32
  %arbitration0 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 18
  %41 = ptrtoint ptr %arbitration0 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv75, ptr %arbitration0, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %42 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %PCIO, align 8
  %add.ptr79 = getelementptr i8, ptr %43, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr79, i8 32) #6, !srcloc !16
  %44 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %PCIO, align 8
  %add.ptr83 = getelementptr i8, ptr %45, i32 981
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr83) #6, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  %conv87 = zext i8 %46 to i32
  %arbitration1 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 19
  %47 = ptrtoint ptr %arbitration1 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv87, ptr %arbitration1, align 4
  %Architecture = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 7
  %48 = ptrtoint ptr %Architecture to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %Architecture, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %49)
  %cmp = icmp ugt i32 %49, 47
  br i1 %cmp, label %do.body89, label %entry.do.body102_crit_edge

entry.do.body102_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body102

do.body89:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  tail call void @arm_heavy_mb() #6
  %50 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %PCIO, align 8
  %add.ptr92 = getelementptr i8, ptr %51, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr92, i8 71) #6, !srcloc !16
  %52 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %PCIO, align 8
  %add.ptr96 = getelementptr i8, ptr %53, i32 981
  %54 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr96) #6, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  %55 = and i8 %54, 1
  %and = zext i8 %55 to i32
  %shl = shl nuw nsw i32 %and, 8
  %56 = ptrtoint ptr %arbitration1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arbitration1, align 4
  %or = or i32 %shl, %57
  store i32 %or, ptr %arbitration1, align 4
  br label %do.body102

do.body102:                                       ; preds = %do.body89, %entry.do.body102_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  tail call void @arm_heavy_mb() #6
  %58 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %PCIO, align 8
  %add.ptr105 = getelementptr i8, ptr %59, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr105, i8 48) #6, !srcloc !16
  %60 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %PCIO, align 8
  %add.ptr109 = getelementptr i8, ptr %61, i32 981
  %62 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr109) #6, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  %conv113 = zext i8 %62 to i32
  %cursor0 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 33
  %63 = ptrtoint ptr %cursor0 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %conv113, ptr %cursor0, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  %64 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %PCIO, align 8
  %add.ptr117 = getelementptr i8, ptr %65, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr117, i8 49) #6, !srcloc !16
  %66 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %PCIO, align 8
  %add.ptr121 = getelementptr i8, ptr %67, i32 981
  %68 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr121) #6, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  %conv125 = zext i8 %68 to i32
  %cursor1 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 34
  %69 = ptrtoint ptr %cursor1 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %conv125, ptr %cursor1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  tail call void @arm_heavy_mb() #6
  %70 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %PCIO, align 8
  %add.ptr129 = getelementptr i8, ptr %71, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr129, i8 47) #6, !srcloc !16
  %72 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %PCIO, align 8
  %add.ptr133 = getelementptr i8, ptr %73, i32 981
  %74 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr133) #6, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  %conv137 = zext i8 %74 to i32
  %cursor2 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 35
  %75 = ptrtoint ptr %cursor2 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %conv137, ptr %cursor2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %76 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %PCIO, align 8
  %add.ptr141 = getelementptr i8, ptr %77, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr141, i8 57) #6, !srcloc !16
  %78 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %PCIO, align 8
  %add.ptr145 = getelementptr i8, ptr %79, i32 981
  %80 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr145) #6, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  %conv149 = zext i8 %80 to i32
  %interlace = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 8
  %81 = ptrtoint ptr %interlace to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %conv149, ptr %interlace, align 4
  %PRAMDAC0 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 60
  %82 = ptrtoint ptr %PRAMDAC0 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %PRAMDAC0, align 4
  %add.ptr150 = getelementptr i8, ptr %83, i32 1288
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr150) #6, !srcloc !24
  %vpll = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 22
  %85 = ptrtoint ptr %vpll to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %vpll, align 4
  %twoHeads = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 31
  %86 = ptrtoint ptr %twoHeads to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %twoHeads, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool.not = icmp eq i32 %87, 0
  br i1 %tobool.not, label %do.body102.if.end156_crit_edge, label %if.then152

do.body102.if.end156_crit_edge:                   ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end156

if.then152:                                       ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #8
  %88 = ptrtoint ptr %PRAMDAC0 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %PRAMDAC0, align 4
  %add.ptr154 = getelementptr i8, ptr %89, i32 1312
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr154) #6, !srcloc !24
  %vpll2 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 23
  %91 = ptrtoint ptr %vpll2 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %vpll2, align 4
  br label %if.end156

if.end156:                                        ; preds = %if.then152, %do.body102.if.end156_crit_edge
  %twoStagePLL = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 32
  %92 = ptrtoint ptr %twoStagePLL to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %twoStagePLL, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool157.not = icmp eq i32 %93, 0
  br i1 %tobool157.not, label %if.end156.if.end165_crit_edge, label %if.then158

if.end156.if.end165_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end165

if.then158:                                       ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #8
  %94 = ptrtoint ptr %PRAMDAC0 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %PRAMDAC0, align 4
  %add.ptr160 = getelementptr i8, ptr %95, i32 1400
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr160) #6, !srcloc !24
  %vpllB = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 24
  %97 = ptrtoint ptr %vpllB to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %vpllB, align 4
  %98 = ptrtoint ptr %PRAMDAC0 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %PRAMDAC0, align 4
  %add.ptr163 = getelementptr i8, ptr %99, i32 1404
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr163) #6, !srcloc !24
  %vpll2B = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 25
  %101 = ptrtoint ptr %vpll2B to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %vpll2B, align 4
  br label %if.end165

if.end165:                                        ; preds = %if.then158, %if.end156.if.end165_crit_edge
  %102 = ptrtoint ptr %PRAMDAC0 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %PRAMDAC0, align 4
  %add.ptr167 = getelementptr i8, ptr %103, i32 1292
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr167) #6, !srcloc !24
  %pllsel = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 26
  %105 = ptrtoint ptr %pllsel to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %pllsel, align 4
  %PRAMDAC = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 75
  %106 = ptrtoint ptr %PRAMDAC to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %PRAMDAC, align 8
  %add.ptr169 = getelementptr i8, ptr %107, i32 1536
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr169) #6, !srcloc !24
  %general = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 27
  %109 = ptrtoint ptr %general to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %general, align 4
  %110 = ptrtoint ptr %PRAMDAC to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %PRAMDAC, align 8
  %add.ptr172 = getelementptr i8, ptr %111, i32 2120
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr172) #6, !srcloc !24
  %scale = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 12
  %113 = ptrtoint ptr %scale to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %scale, align 4
  %PFB = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 61
  %114 = ptrtoint ptr %PFB to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %PFB, align 8
  %add.ptr174 = getelementptr i8, ptr %115, i32 512
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr174) #6, !srcloc !24
  %config = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 31
  %117 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %config, align 4
  %118 = ptrtoint ptr %Architecture to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %Architecture, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %119)
  %cmp177 = icmp ugt i32 %119, 63
  br i1 %cmp177, label %land.lhs.true, label %if.end165.if.end184_crit_edge

if.end165.if.end184_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end184

land.lhs.true:                                    ; preds = %if.end165
  %FlatPanel = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 26
  %120 = ptrtoint ptr %FlatPanel to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %FlatPanel, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool179.not = icmp eq i32 %121, 0
  br i1 %tobool179.not, label %if.then180, label %land.lhs.true.if.end184thread-pre-split_crit_edge

land.lhs.true.if.end184thread-pre-split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end184thread-pre-split

if.then180:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %122 = ptrtoint ptr %PRAMDAC0 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %PRAMDAC0, align 4
  %add.ptr182 = getelementptr i8, ptr %123, i32 1408
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr182) #6, !srcloc !24
  %control = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 40
  %125 = ptrtoint ptr %control to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %control, align 4
  br label %if.end184thread-pre-split

if.end184thread-pre-split:                        ; preds = %if.then180, %land.lhs.true.if.end184thread-pre-split_crit_edge
  %126 = ptrtoint ptr %Architecture to i32
  call void @__asan_load4_noabort(i32 %126)
  %.pr = load i32, ptr %Architecture, align 8
  br label %if.end184

if.end184:                                        ; preds = %if.end184thread-pre-split, %if.end165.if.end184_crit_edge
  %127 = phi i32 [ %.pr, %if.end184thread-pre-split ], [ %119, %if.end165.if.end184_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %127)
  %cmp186 = icmp ugt i32 %127, 15
  br i1 %cmp186, label %if.then188, label %if.end184.if.end268_crit_edge

if.end184.if.end268_crit_edge:                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end268

if.then188:                                       ; preds = %if.end184
  %128 = ptrtoint ptr %twoHeads to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %twoHeads, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool190.not = icmp eq i32 %129, 0
  br i1 %tobool190.not, label %if.then188.do.body210_crit_edge, label %if.then191

if.then188.do.body210_crit_edge:                  ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body210

if.then191:                                       ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #8
  %PCRTC0 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 58
  %130 = ptrtoint ptr %PCRTC0 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %PCRTC0, align 4
  %add.ptr192 = getelementptr i8, ptr %131, i32 2144
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr192) #6, !srcloc !24
  %head = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 29
  %133 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %head, align 4
  %134 = ptrtoint ptr %PCRTC0 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %PCRTC0, align 4
  %add.ptr195 = getelementptr i8, ptr %135, i32 10336
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr195) #6, !srcloc !24
  %head2 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 30
  %137 = ptrtoint ptr %head2 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %head2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %138 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %PCIO, align 8
  %add.ptr200 = getelementptr i8, ptr %139, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr200, i8 68) #6, !srcloc !16
  %140 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %PCIO, align 8
  %add.ptr204 = getelementptr i8, ptr %141, i32 981
  %142 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr204) #6, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  %conv208 = zext i8 %142 to i32
  %crtcOwner = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 28
  %143 = ptrtoint ptr %crtcOwner to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %conv208, ptr %crtcOwner, align 4
  br label %do.body210

do.body210:                                       ; preds = %if.then191, %if.then188.do.body210_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  %144 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %PCIO, align 8
  %add.ptr213 = getelementptr i8, ptr %145, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr213, i8 65) #6, !srcloc !16
  %146 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %PCIO, align 8
  %add.ptr217 = getelementptr i8, ptr %147, i32 981
  %148 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr217) #6, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  %conv221 = zext i8 %148 to i32
  %extra = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 14
  %149 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %conv221, ptr %extra, align 4
  %PCRTC = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 59
  %150 = ptrtoint ptr %PCRTC to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %PCRTC, align 8
  %add.ptr222 = getelementptr i8, ptr %151, i32 2064
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr222) #6, !srcloc !24
  %cursorConfig = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 32
  %153 = ptrtoint ptr %cursorConfig to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %152, ptr %cursorConfig, align 4
  %Chipset = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 9
  %154 = ptrtoint ptr %Chipset to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %Chipset, align 8
  %and224 = and i32 %155, 4080
  call void @__sanitizer_cov_trace_const_cmp4(i32 272, i32 %and224)
  %cmp225 = icmp eq i32 %and224, 272
  br i1 %cmp225, label %if.then227, label %if.else

if.then227:                                       ; preds = %do.body210
  call void @__sanitizer_cov_trace_pc() #8
  %156 = ptrtoint ptr %PRAMDAC to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %PRAMDAC, align 8
  %add.ptr229 = getelementptr i8, ptr %157, i32 1320
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr229) #6, !srcloc !24
  br label %if.end239.sink.split

if.else:                                          ; preds = %do.body210
  %159 = ptrtoint ptr %twoHeads to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %twoHeads, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool232.not = icmp eq i32 %160, 0
  br i1 %tobool232.not, label %if.else.if.end239_crit_edge, label %if.then233

if.else.if.end239_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end239

if.then233:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %161 = ptrtoint ptr %PRAMDAC to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %PRAMDAC, align 8
  %add.ptr235 = getelementptr i8, ptr %162, i32 2108
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr235) #6, !srcloc !24
  br label %if.end239.sink.split

if.end239.sink.split:                             ; preds = %if.then233, %if.then227
  %.sink = phi i32 [ %163, %if.then233 ], [ %158, %if.then227 ]
  %dither237 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 13
  %164 = ptrtoint ptr %dither237 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %.sink, ptr %dither237, align 4
  br label %if.end239

if.end239:                                        ; preds = %if.end239.sink.split, %if.else.if.end239_crit_edge
  %FlatPanel240 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 26
  %165 = ptrtoint ptr %FlatPanel240 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %FlatPanel240, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %tobool241.not = icmp eq i32 %166, 0
  br i1 %tobool241.not, label %if.end239.if.end268_crit_edge, label %do.body243

if.end239.if.end268_crit_edge:                    ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end268

do.body243:                                       ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  tail call void @arm_heavy_mb() #6
  %167 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %PCIO, align 8
  %add.ptr246 = getelementptr i8, ptr %168, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr246, i8 83) #6, !srcloc !16
  %169 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %PCIO, align 8
  %add.ptr250 = getelementptr i8, ptr %170, i32 981
  %171 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr250) #6, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %conv254 = zext i8 %171 to i32
  %timingH = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 36
  %172 = ptrtoint ptr %timingH to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %conv254, ptr %timingH, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %173 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %PCIO, align 8
  %add.ptr258 = getelementptr i8, ptr %174, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr258, i8 84) #6, !srcloc !16
  %175 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %PCIO, align 8
  %add.ptr262 = getelementptr i8, ptr %176, i32 981
  %177 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr262) #6, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  %conv266 = zext i8 %177 to i32
  %timingV = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 37
  %178 = ptrtoint ptr %timingV to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %conv266, ptr %timingV, align 4
  br label %if.end268

if.end268:                                        ; preds = %do.body243, %if.end239.if.end268_crit_edge, %if.end184.if.end268_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @NVSetStartAddress(ptr nocapture noundef readonly %par, i32 noundef %start) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %PCRTC = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 59
  %0 = ptrtoint ptr %PCRTC to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %PCRTC, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %start) #6, !srcloc !25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvGetClocks(ptr nocapture noundef readonly %par, ptr nocapture noundef writeonly %MClk, ptr nocapture noundef writeonly %NVClk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %Architecture = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 7
  %0 = ptrtoint ptr %Architecture to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %Architecture, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %1)
  %cmp = icmp ugt i32 %1, 63
  br i1 %cmp, label %if.then, label %if.else41

if.then:                                          ; preds = %entry
  %PMC = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 66
  %2 = ptrtoint ptr %PMC to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %PMC, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 16416
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !24
  %shr = lshr i32 %4, 16
  %and = and i32 %shr, 7
  %5 = ptrtoint ptr %PMC to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %PMC, align 4
  %add.ptr2 = getelementptr i8, ptr %6, i32 16420
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #6, !srcloc !24
  %and4 = and i32 %7, 255
  %shr5 = lshr i32 %7, 8
  %and6 = and i32 %shr5, 255
  %Chipset = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 9
  %8 = ptrtoint ptr %Chipset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %Chipset, align 8
  %10 = trunc i32 %9 to i16
  %trunc = and i16 %10, -16
  %11 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.11)
  switch i16 %trunc, label %if.else [
    i16 656, label %if.then.if.end_crit_edge
    i16 912, label %if.then.if.end_crit_edge276
  ]

if.then.if.end_crit_edge276:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %shr13 = lshr i32 %7, 16
  %and14 = and i32 %shr13, 255
  %shr15 = lshr i32 %7, 24
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.if.end_crit_edge, %if.then.if.end_crit_edge276
  %MB.0 = phi i32 [ %and14, %if.else ], [ 1, %if.then.if.end_crit_edge ], [ 1, %if.then.if.end_crit_edge276 ]
  %NB.0 = phi i32 [ %shr15, %if.else ], [ 1, %if.then.if.end_crit_edge ], [ 1, %if.then.if.end_crit_edge276 ]
  %mul = mul nuw nsw i32 %NB.0, %and6
  %CrystalFreqKHz = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 19
  %12 = ptrtoint ptr %CrystalFreqKHz to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %CrystalFreqKHz, align 8
  %mul17 = mul i32 %mul, %13
  %mul18 = mul nuw nsw i32 %MB.0, %and4
  %div = udiv i32 %mul17, %mul18
  %shr19 = lshr i32 %div, %and
  %14 = ptrtoint ptr %MClk to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shr19, ptr %MClk, align 4
  %15 = ptrtoint ptr %PMC to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %PMC, align 4
  %add.ptr21 = getelementptr i8, ptr %16, i32 16384
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #6, !srcloc !24
  %shr23 = lshr i32 %17, 16
  %and24 = and i32 %shr23, 7
  %18 = ptrtoint ptr %PMC to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %PMC, align 4
  %add.ptr26 = getelementptr i8, ptr %19, i32 16388
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #6, !srcloc !24
  %and28 = and i32 %20, 255
  %shr29 = lshr i32 %20, 8
  %and30 = and i32 %shr29, 255
  %shr31 = lshr i32 %20, 16
  %and32 = and i32 %shr31, 255
  %shr33 = lshr i32 %20, 24
  %21 = ptrtoint ptr %CrystalFreqKHz to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %CrystalFreqKHz, align 8
  %mul35 = mul i32 %22, %shr33
  %mul37 = mul i32 %mul35, %and30
  %mul38 = mul nuw nsw i32 %and32, %and28
  %div39 = udiv i32 %mul37, %mul38
  %shr40 = lshr i32 %div39, %and24
  br label %if.end174

if.else41:                                        ; preds = %entry
  %twoStagePLL = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 32
  %23 = ptrtoint ptr %twoStagePLL to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %twoStagePLL, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not = icmp eq i32 %24, 0
  br i1 %tobool.not, label %if.else92, label %if.then42

if.then42:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #8
  %PRAMDAC0 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 60
  %25 = ptrtoint ptr %PRAMDAC0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %PRAMDAC0, align 4
  %add.ptr43 = getelementptr i8, ptr %26, i32 1284
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43) #6, !srcloc !24
  %and45 = and i32 %27, 255
  %shr46 = lshr i32 %27, 8
  %and47 = and i32 %shr46, 255
  %shr48 = lshr i32 %27, 16
  %and49 = and i32 %shr48, 15
  %28 = ptrtoint ptr %PRAMDAC0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %PRAMDAC0, align 4
  %add.ptr51 = getelementptr i8, ptr %29, i32 1396
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51) #6, !srcloc !24
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %tobool54.not = icmp sgt i32 %30, -1
  %and56 = and i32 %30, 255
  %shr57 = lshr i32 %30, 8
  %and58 = and i32 %shr57, 255
  %MB.1 = select i1 %tobool54.not, i32 1, i32 %and56
  %NB.1 = select i1 %tobool54.not, i32 1, i32 %and58
  %CrystalFreqKHz62 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 19
  %31 = ptrtoint ptr %CrystalFreqKHz62 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %CrystalFreqKHz62, align 8
  %mul61 = mul i32 %32, %and47
  %mul63 = mul i32 %mul61, %NB.1
  %mul64 = mul nuw nsw i32 %MB.1, %and45
  %div65 = udiv i32 %mul63, %mul64
  %shr66 = lshr i32 %div65, %and49
  %33 = ptrtoint ptr %MClk to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %shr66, ptr %MClk, align 4
  %34 = ptrtoint ptr %PRAMDAC0 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %PRAMDAC0, align 4
  %add.ptr68 = getelementptr i8, ptr %35, i32 1280
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr68) #6, !srcloc !24
  %and70 = and i32 %36, 255
  %shr71 = lshr i32 %36, 8
  %and72 = and i32 %shr71, 255
  %shr73 = lshr i32 %36, 16
  %and74 = and i32 %shr73, 15
  %37 = ptrtoint ptr %PRAMDAC0 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %PRAMDAC0, align 4
  %add.ptr76 = getelementptr i8, ptr %38, i32 1392
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr76) #6, !srcloc !24
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %39)
  %tobool79.not = icmp sgt i32 %39, -1
  %and81 = and i32 %39, 255
  %shr82 = lshr i32 %39, 8
  %and83 = and i32 %shr82, 255
  %MB.2 = select i1 %tobool79.not, i32 1, i32 %and81
  %NB.2 = select i1 %tobool79.not, i32 1, i32 %and83
  %40 = ptrtoint ptr %CrystalFreqKHz62 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %CrystalFreqKHz62, align 8
  %mul86 = mul i32 %41, %and72
  %mul88 = mul i32 %mul86, %NB.2
  %mul89 = mul nuw nsw i32 %MB.2, %and70
  %div90 = udiv i32 %mul88, %mul89
  %shr91 = lshr i32 %div90, %and74
  br label %if.end174

if.else92:                                        ; preds = %if.else41
  %Chipset93 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 9
  %42 = ptrtoint ptr %Chipset93 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %Chipset93, align 8
  %and94 = and i32 %43, 4080
  %44 = zext i32 %and94 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %and94, label %if.else147 [
    i32 768, label %if.else92.if.then100_crit_edge
    i32 816, label %if.else92.if.then100_crit_edge277
  ]

if.else92.if.then100_crit_edge277:                ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then100

if.else92.if.then100_crit_edge:                   ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then100

if.then100:                                       ; preds = %if.else92.if.then100_crit_edge, %if.else92.if.then100_crit_edge277
  %PRAMDAC0101 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 60
  %45 = ptrtoint ptr %PRAMDAC0101 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %PRAMDAC0101, align 4
  %add.ptr102 = getelementptr i8, ptr %46, i32 1284
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr102) #6, !srcloc !24
  %and104 = and i32 %47, 15
  %shr105 = lshr i32 %47, 8
  %and106 = and i32 %shr105, 255
  %shr107 = lshr i32 %47, 16
  %and108 = and i32 %shr107, 7
  %and109 = and i32 %47, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  %shr112 = lshr i32 %47, 4
  %and113 = and i32 %shr112, 7
  %shr114 = lshr i32 %47, 19
  %and115 = and i32 %shr114, 31
  %MB.3 = select i1 %tobool110.not, i32 1, i32 %and113
  %NB.3 = select i1 %tobool110.not, i32 1, i32 %and115
  %CrystalFreqKHz119 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 19
  %48 = ptrtoint ptr %CrystalFreqKHz119 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %CrystalFreqKHz119, align 8
  %mul118 = mul i32 %and106, %49
  %mul120 = mul i32 %mul118, %NB.3
  %mul121 = mul nuw nsw i32 %MB.3, %and104
  %div122 = udiv i32 %mul120, %mul121
  %shr123 = lshr i32 %div122, %and108
  %50 = ptrtoint ptr %MClk to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %shr123, ptr %MClk, align 4
  %51 = ptrtoint ptr %PRAMDAC0101 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %PRAMDAC0101, align 4
  %add.ptr125 = getelementptr i8, ptr %52, i32 1280
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr125) #6, !srcloc !24
  %and127 = and i32 %53, 15
  %shr128 = lshr i32 %53, 8
  %and129 = and i32 %shr128, 255
  %shr130 = lshr i32 %53, 16
  %and131 = and i32 %shr130, 7
  %and132 = and i32 %53, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132)
  %tobool133.not = icmp eq i32 %and132, 0
  %shr135 = lshr i32 %53, 4
  %and136 = and i32 %shr135, 7
  %shr137 = lshr i32 %53, 19
  %and138 = and i32 %shr137, 31
  %MB.4 = select i1 %tobool133.not, i32 1, i32 %and136
  %NB.4 = select i1 %tobool133.not, i32 1, i32 %and138
  %54 = ptrtoint ptr %CrystalFreqKHz119 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %CrystalFreqKHz119, align 8
  %mul141 = mul i32 %and129, %55
  %mul143 = mul i32 %mul141, %NB.4
  %mul144 = mul nuw nsw i32 %MB.4, %and127
  %div145 = udiv i32 %mul143, %mul144
  %shr146 = lshr i32 %div145, %and131
  br label %if.end174

if.else147:                                       ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #8
  %PRAMDAC0148 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 60
  %56 = ptrtoint ptr %PRAMDAC0148 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %PRAMDAC0148, align 4
  %add.ptr149 = getelementptr i8, ptr %57, i32 1284
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr149) #6, !srcloc !24
  %and151 = and i32 %58, 255
  %shr152 = lshr i32 %58, 8
  %and153 = and i32 %shr152, 255
  %shr154 = lshr i32 %58, 16
  %and155 = and i32 %shr154, 15
  %CrystalFreqKHz156 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 19
  %59 = ptrtoint ptr %CrystalFreqKHz156 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %CrystalFreqKHz156, align 8
  %mul157 = mul i32 %and153, %60
  %div158 = udiv i32 %mul157, %and151
  %shr159 = lshr i32 %div158, %and155
  %61 = ptrtoint ptr %MClk to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %shr159, ptr %MClk, align 4
  %62 = ptrtoint ptr %PRAMDAC0148 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %PRAMDAC0148, align 4
  %add.ptr161 = getelementptr i8, ptr %63, i32 1280
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr161) #6, !srcloc !24
  %and163 = and i32 %64, 255
  %shr164 = lshr i32 %64, 8
  %and165 = and i32 %shr164, 255
  %shr166 = lshr i32 %64, 16
  %and167 = and i32 %shr166, 15
  %65 = ptrtoint ptr %CrystalFreqKHz156 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %CrystalFreqKHz156, align 8
  %mul169 = mul i32 %and165, %66
  %div170 = udiv i32 %mul169, %and163
  %shr171 = lshr i32 %div170, %and167
  br label %if.end174

if.end174:                                        ; preds = %if.else147, %if.then100, %if.then42, %if.end
  %shr91.sink = phi i32 [ %shr91, %if.then42 ], [ %shr171, %if.else147 ], [ %shr146, %if.then100 ], [ %shr40, %if.end ]
  %67 = ptrtoint ptr %NVClk to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %shr91.sink, ptr %NVClk, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_domain_bus_and_slot(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nv10CalcArbitration(ptr nocapture noundef writeonly %fifo, ptr nocapture noundef readonly %arb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %valid = getelementptr inbounds %struct.nv10_fifo_info, ptr %fifo, i32 0, i32 4
  %0 = ptrtoint ptr %valid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %valid, align 4
  %1 = ptrtoint ptr %arb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arb, align 4
  %mclk_khz = getelementptr inbounds %struct.nv10_sim_state, ptr %arb, i32 0, i32 1
  %3 = ptrtoint ptr %mclk_khz to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mclk_khz, align 4
  %nvclk_khz = getelementptr inbounds %struct.nv10_sim_state, ptr %arb, i32 0, i32 2
  %5 = ptrtoint ptr %nvclk_khz to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nvclk_khz, align 4
  %mem_page_miss = getelementptr inbounds %struct.nv10_sim_state, ptr %arb, i32 0, i32 3
  %7 = ptrtoint ptr %mem_page_miss to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mem_page_miss, align 4
  %conv = zext i8 %8 to i32
  %memory_width = getelementptr inbounds %struct.nv10_sim_state, ptr %arb, i32 0, i32 6
  %9 = ptrtoint ptr %memory_width to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %memory_width, align 4
  %enable_video = getelementptr inbounds %struct.nv10_sim_state, ptr %arb, i32 0, i32 7
  %11 = ptrtoint ptr %enable_video to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %enable_video, align 4
  %pix_bpp = getelementptr inbounds %struct.nv10_sim_state, ptr %arb, i32 0, i32 9
  %13 = ptrtoint ptr %pix_bpp to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pix_bpp, align 2
  %conv2 = zext i8 %14 to i32
  %enable_mp = getelementptr inbounds %struct.nv10_sim_state, ptr %arb, i32 0, i32 11
  %15 = ptrtoint ptr %enable_mp to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %enable_mp, align 4
  %memory_type = getelementptr inbounds %struct.nv10_sim_state, ptr %arb, i32 0, i32 5
  %17 = ptrtoint ptr %memory_type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %memory_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp = icmp eq i32 %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %10)
  %cmp11 = icmp eq i32 %10, 64
  %. = select i1 %cmp11, i32 22, i32 20
  %.273 = select i1 %cmp11, i32 20, i32 19
  %mclks.0 = select i1 %cmp, i32 %., i32 %.273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %10)
  %cmp27 = icmp eq i32 %10, 128
  %or.cond285 = select i1 %tobool.not, i1 %cmp27, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %14)
  %cmp33 = icmp eq i8 %14, 32
  %cond35 = select i1 %cmp33, i32 8, i32 4
  %cond = select i1 %cmp33, i32 31, i32 42
  %mclk_extra.0 = select i1 %or.cond285, i32 %cond, i32 %cond35
  %min_mclk_extra.0 = select i1 %or.cond285, i32 17, i32 18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool41.not = icmp eq i8 %16, 0
  %add43 = add nuw nsw i32 %mclks.0, 4
  %spec.select = select i1 %tobool41.not, i32 %mclks.0, i32 %add43
  %add50 = add nuw nsw i32 %spec.select, %mclk_extra.0
  %mul51 = mul nuw nsw i32 %add50, 1000000
  %div52 = sdiv i32 %mul51, %4
  %mul54 = mul nuw nsw i32 %spec.select, 1000000
  %div55 = sdiv i32 %mul54, %4
  %div61 = sdiv i32 9000000, %6
  %div64 = sdiv i32 4000000, %2
  %add65 = add nsw i32 %div64, %div61
  %add66 = add nsw i32 %add65, %div55
  %video_lwm = getelementptr inbounds %struct.nv10_fifo_info, ptr %fifo, i32 0, i32 1
  %19 = ptrtoint ptr %video_lwm to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1024, ptr %video_lwm, align 4
  %video_burst_size = getelementptr inbounds %struct.nv10_fifo_info, ptr %fifo, i32 0, i32 3
  %20 = ptrtoint ptr %video_burst_size to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 512, ptr %video_burst_size, align 4
  %mul72 = mul i32 %2, %conv2
  %div73 = sdiv i32 %mul72, 8
  %spec.select274 = select i1 %tobool41.not, i32 2, i32 3
  %mul81 = mul nuw nsw i32 %conv, 2000000
  %mul84 = mul nuw nsw i32 %conv, 1000000
  %mul86 = mul nuw nsw i32 %mul84, %spec.select274
  %factor = shl nsw i32 %div52, 1
  %add89 = add i32 %add65, %factor
  %add107 = add nsw i32 %add65, %div52
  %21 = and i32 %10, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %21)
  %22 = icmp ne i32 %21, 64
  %mul116 = mul i32 %div73, 100
  %mul117 = mul i32 %6, 816
  call void @__sanitizer_cov_trace_cmp4(i32 %mul116, i32 %mul117)
  %cmp118.not = icmp sge i32 %mul116, %mul117
  %mul123 = mul i32 %6, 784
  call void @__sanitizer_cov_trace_cmp4(i32 %mul116, i32 %mul123)
  %cmp124.not = icmp slt i32 %mul116, %mul123
  %brmerge = select i1 %22, i1 true, i1 %cmp118.not
  br label %while.body

while.body:                                       ; preds = %while.body.backedge, %entry
  %min_mclk_extra.1289 = phi i32 [ %min_mclk_extra.0, %entry ], [ %min_mclk_extra.1289.be, %while.body.backedge ]
  %cbs.0288 = phi i32 [ 512, %entry ], [ %cbs.0288.be, %while.body.backedge ]
  %mul57 = mul i32 %min_mclk_extra.1289, 1000000
  %div58 = sdiv i32 %mul57, %4
  br i1 %tobool.not, label %if.else94, label %if.then71

if.then71:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %div82 = sdiv i32 %mul81, %4
  %div87 = sdiv i32 %mul86, %4
  %add90 = add i32 %add89, %div82
  %add91 = add i32 %add90, %div87
  %mul92 = mul i32 %add91, %div73
  %div93 = sdiv i32 %mul92, 1000000
  %inc = add nsw i32 %div93, 1
  br label %if.end130

if.else94:                                        ; preds = %while.body
  %div105 = sdiv i32 %mul86, %4
  %add108 = add i32 %add107, %div105
  %mul109 = mul i32 %add108, %div73
  %div110 = sdiv i32 %mul109, 1000000
  %inc111 = add nsw i32 %div110, 1
  %inc111.mux = select i1 %22, i32 %inc111, i32 4095
  br i1 %brmerge, label %if.else94.if.end130_crit_edge, label %if.else121

if.else94.if.end130_crit_edge:                    ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end130

if.else121:                                       ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #8
  %spec.select276 = select i1 %cmp124.not, i32 %cbs.0288, i32 512
  %spec.select277 = select i1 %cmp124.not, i32 %inc111, i32 1024
  br label %if.end130

if.end130:                                        ; preds = %if.else121, %if.else94.if.end130_crit_edge, %if.then71
  %cbs.1 = phi i32 [ %cbs.0288, %if.then71 ], [ %cbs.0288, %if.else94.if.end130_crit_edge ], [ %spec.select276, %if.else121 ]
  %clwm.0 = phi i32 [ %inc, %if.then71 ], [ %inc111.mux, %if.else94.if.end130_crit_edge ], [ %spec.select277, %if.else121 ]
  %div131.lhs.trunc = trunc i32 %clwm.0 to i16
  %div131284 = sdiv i16 %div131.lhs.trunc, 8
  %div131.sext = sext i16 %div131284 to i32
  %mul132 = shl nsw i32 %div131.sext, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul132, i32 %clwm.0)
  %cmp133 = icmp slt i32 %mul132, %clwm.0
  %add136 = add nsw i32 %clwm.0, 8
  %spec.select278 = select i1 %cmp133, i32 %add136, i32 %clwm.0
  %add138 = add i32 %cbs.1, -1024
  %sub = add i32 %add138, %spec.select278
  %add139 = add i32 %add66, %div58
  %mul140 = mul i32 %add139, %2
  %div141 = sdiv i32 %mul140, 1000000
  %mul142 = mul nsw i32 %div141, %conv2
  %div143 = sdiv i32 %mul142, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div143, i32 %sub)
  %cmp144 = icmp slt i32 %div143, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp147 = icmp sgt i32 %sub, 0
  %or.cond = and i1 %cmp144, %cmp147
  br i1 %or.cond, label %if.then149, label %if.else162

if.then149:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %min_mclk_extra.1289)
  %cmp151 = icmp eq i32 %min_mclk_extra.1289, 0
  br i1 %cmp151, label %if.then153, label %if.else160

if.then153:                                       ; preds = %if.then149
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %cbs.1)
  %cmp154 = icmp slt i32 %cbs.1, 33
  %div158 = sdiv i32 %cbs.1, 2
  br i1 %cmp154, label %if.then153.while.end_crit_edge, label %if.then153.while.body.backedge_crit_edge

if.then153.while.body.backedge_crit_edge:         ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.backedge

if.then153.while.end_crit_edge:                   ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.else160:                                       ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #8
  %dec = add i32 %min_mclk_extra.1289, -1
  br label %while.body.backedge

if.else162:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %spec.select278)
  %cmp163 = icmp sgt i32 %spec.select278, 1023
  br i1 %cmp163, label %if.end174, label %if.else162.while.end_crit_edge

if.else162.while.end_crit_edge:                   ; preds = %if.else162
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end174:                                        ; preds = %if.else162
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %min_mclk_extra.1289)
  %cmp167 = icmp eq i32 %min_mclk_extra.1289, 0
  %dec171 = add i32 %min_mclk_extra.1289, -1
  br i1 %cmp167, label %if.end174.while.end_crit_edge, label %if.end174.while.body.backedge_crit_edge

if.end174.while.body.backedge_crit_edge:          ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.backedge

if.end174.while.end_crit_edge:                    ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.backedge:                              ; preds = %if.end174.while.body.backedge_crit_edge, %if.else160, %if.then153.while.body.backedge_crit_edge
  %min_mclk_extra.1289.be = phi i32 [ %dec171, %if.end174.while.body.backedge_crit_edge ], [ %dec, %if.else160 ], [ 0, %if.then153.while.body.backedge_crit_edge ]
  %cbs.0288.be = phi i32 [ %cbs.1, %if.end174.while.body.backedge_crit_edge ], [ %cbs.1, %if.else160 ], [ %div158, %if.then153.while.body.backedge_crit_edge ]
  br label %while.body

while.end:                                        ; preds = %if.end174.while.end_crit_edge, %if.else162.while.end_crit_edge, %if.then153.while.end_crit_edge
  %23 = phi i32 [ 0, %if.end174.while.end_crit_edge ], [ 0, %if.then153.while.end_crit_edge ], [ 1, %if.else162.while.end_crit_edge ]
  %graphics_burst_size = getelementptr inbounds %struct.nv10_fifo_info, ptr %fifo, i32 0, i32 2
  %add176.le = sub i32 1032, %cbs.1
  %24 = tail call i32 @llvm.smax.i32(i32 %spec.select278, i32 %add176.le)
  %25 = ptrtoint ptr %valid to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %23, ptr %valid, align 4
  %26 = ptrtoint ptr %fifo to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %24, ptr %fifo, align 4
  %27 = ptrtoint ptr %graphics_burst_size to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %cbs.1, ptr %graphics_burst_size, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/nvidia/nv_hw.c", i32 734, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @nForceUpdateArbitrationSettings._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @nForceUpdateArbitrationSettings._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i64 2156270894}
!16 = !{i64 5029514}
!17 = !{i64 2156271309}
!18 = !{i64 2156271710}
!19 = !{i64 5029909}
!20 = !{i64 2156272123}
!21 = !{i64 2156272428}
!22 = !{i64 2156272815}
!23 = !{i64 2156273246}
!24 = !{i64 5030129}
!25 = !{i64 5029711}
!26 = !{!"auto-init"}
!27 = !{i64 2156314676}
!28 = !{i64 2156315086}
!29 = !{i64 2156315486}
!30 = !{i64 2156315896}
!31 = !{i64 2156316296}
!32 = !{i64 2156316686}
!33 = !{i64 2156317076}
!34 = !{i64 2156317482}
!35 = !{i64 2156317880}
!36 = !{i64 2156318292}
!37 = !{i64 2156318693}
!38 = !{i64 2156319105}
!39 = !{i64 2156319506}
!40 = !{i64 2156319914}
!41 = !{i64 2156320313}
!42 = !{i64 2156320719}
!43 = !{i64 2156321117}
!44 = !{i64 2156321523}
!45 = !{i64 2156321921}
!46 = !{i64 2156322325}
!47 = !{i64 2156322722}
!48 = !{i64 2156323142}
!49 = !{i64 2156323547}
!50 = !{i64 2156323967}
!51 = !{i64 2156324377}
!52 = !{i64 2156324807}
!53 = !{i64 2156325217}
!54 = !{i64 2156325627}
!55 = !{i64 2156326027}
!56 = !{i64 2156326437}
!57 = !{i64 2156326837}
!58 = !{i64 2156327247}
!59 = !{i64 2156327647}
!60 = !{i64 2156328061}
!61 = !{i64 2156329500}
!62 = !{i64 2156329917}
!63 = !{i64 2156330224}
!64 = !{i64 2156330641}
!65 = !{i64 2156330948}
!66 = !{i64 2156331365}
!67 = !{i64 2156331672}
!68 = !{i64 2156332089}
!69 = !{i64 2156332396}
!70 = !{i64 2156332813}
!71 = !{i64 2156333120}
!72 = !{i64 2156333537}
!73 = !{i64 2156333844}
!74 = !{i64 2156334261}
!75 = !{i64 2156334568}
!76 = !{i64 2156334985}
!77 = !{i64 2156335297}
!78 = !{i64 2156335714}
!79 = !{i64 2156336021}
!80 = !{i64 2156336438}
!81 = !{i64 2156336745}
!82 = !{i64 2156337162}
!83 = !{i64 2156337469}
!84 = !{i64 2156337886}
!85 = !{i64 2156338193}
!86 = !{i64 2156338610}
!87 = !{i64 2156339730}
!88 = !{i64 2156340147}
!89 = !{i64 2156340454}
!90 = !{i64 2156340871}
!91 = !{i64 2156341395}
!92 = !{i64 2156341812}
!93 = !{i64 2156342119}
!94 = !{i64 2156342536}
