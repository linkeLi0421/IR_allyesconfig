; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/aquantia/atlantic/aq_hw_utils.c_pt.bc'
source_filename = "../drivers/net/ethernet/aquantia/atlantic/aq_hw_utils.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.aq_hw_s = type { %struct.atomic_t, i8, ptr, ptr, ptr, %struct.aq_hw_link_status_s, %struct.hw_atl_utils_mbox, %struct.hw_atl_stats_s, %struct.aq_stats_s, i64, i32, i32, i32, i32, %struct.atomic_t, i32, i32, i32, i32, %struct.hw_atl_utils_fw_rpc, i64, i16, ptr }
%struct.aq_hw_link_status_s = type { i32, i8, i32, i32 }
%struct.hw_atl_utils_mbox = type { %struct.hw_atl_utils_mbox_header, %struct.hw_atl_stats_s, %struct.hw_atl_info }
%struct.hw_atl_utils_mbox_header = type { i32, i32, i32 }
%struct.hw_atl_info = type { [6 x i8], i16, i16, i8, i8, [4 x %struct.hw_atl_cable_diag], %struct.hw_atl_ptp_offset, [12 x i8], i32, i32, i32, [7 x i32], [3 x i32], [7 x i32], i32, [12 x i32], i32, i32, i32, i32, [3 x i32], [18 x i32], [4 x i16] }
%struct.hw_atl_cable_diag = type { i8, i8, i8, i8 }
%struct.hw_atl_ptp_offset = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.hw_atl_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.aq_stats_s = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.atomic_t = type { i32 }
%struct.hw_atl_utils_fw_rpc = type { i32, %union.anon.0 }
%union.anon.0 = type { %struct.offload_info }
%struct.offload_info = type { i32, i32, [6 x i8], [2 x i8], %struct.offload_ip_info, %struct.offload_port_info, %struct.offload_ka_info, %struct.offload_rr_info, [0 x i8] }
%struct.offload_ip_info = type { i8, i8, i8, i8, i32, i32, i32, i32 }
%struct.offload_port_info = type { i16, i16, i32, i32 }
%struct.offload_ka_info = type { i16, i16, i32, i32, i32, i32 }
%struct.offload_rr_info = type { i32, i32, i32, i32 }
%struct.aq_hw_caps_s = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.aq_nic_cfg_s = type { ptr, i64, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, %struct.aq_fc_info, i32, i32, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, [8 x i8], [8 x i32], i32, [8 x i32], %struct.aq_rss_parameters, i32 }
%struct.aq_fc_info = type { i32, i32 }
%struct.aq_rss_parameters = type { i16, i16, i16, [10 x i32], [64 x i8] }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aq_hw_write_reg_bit(ptr noundef %aq_hw, i32 noundef %addr, i32 noundef %msk, i32 noundef %shift, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %msk)
  %tobool.not = icmp eq i32 %msk, -1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %xor = xor i32 %msk, -1
  %mmio.i = getelementptr inbounds %struct.aq_hw_s, ptr %aq_hw, i32 0, i32 4
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 %addr
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp.i = icmp eq i32 %2, -1
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then.aq_hw_read_reg.exit_crit_edge

if.then.aq_hw_read_reg.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %aq_hw_read_reg.exit

land.lhs.true.i:                                  ; preds = %if.then
  %3 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio.i, align 8
  %aq_nic_cfg.i = getelementptr inbounds %struct.aq_hw_s, ptr %aq_hw, i32 0, i32 2
  %5 = ptrtoint ptr %aq_nic_cfg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %aq_nic_cfg.i, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %hw_alive_check_addr.i = getelementptr inbounds %struct.aq_hw_caps_s, ptr %8, i32 0, i32 13
  %9 = ptrtoint ptr %hw_alive_check_addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hw_alive_check_addr.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %4, i32 %10
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #5, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp9.i = icmp eq i32 %11, -1
  br i1 %cmp9.i, label %land.lhs.true.i.do.body.i.i_crit_edge, label %land.lhs.true.i.aq_hw_read_reg.exit_crit_edge

land.lhs.true.i.aq_hw_read_reg.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %aq_hw_read_reg.exit

land.lhs.true.i.do.body.i.i_crit_edge:            ; preds = %land.lhs.true.i
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %atomic_cmpxchg.exit.i.i.do.body.i.i_crit_edge, %land.lhs.true.i.do.body.i.i_crit_edge
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %aq_hw, i32 noundef 4) #5
  %12 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %aq_hw, align 4
  %or.i.i = or i32 %13, 1073741824
  %call.i.i1.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %aq_hw, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !12
  tail call void @llvm.prefetch.p0(ptr %aq_hw, i32 1, i32 3, i32 1) #5
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %do.body.i.i
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %aq_hw, ptr %aq_hw, i32 %13, i32 %or.i.i, ptr elementtype(i32) %aq_hw) #5, !srcloc !13
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %14, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %atomic_cmpxchg.exit.i.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i.i.i.i

atomic_cmpxchg.exit.i.i:                          ; preds = %do.body.i.i.i.i.i
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %14, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !14
  %cmp.not.i.i = icmp eq i32 %asmresult3.i.i.i.i.i, %13
  br i1 %cmp.not.i.i, label %atomic_cmpxchg.exit.i.i.aq_hw_read_reg.exit_crit_edge, label %atomic_cmpxchg.exit.i.i.do.body.i.i_crit_edge

atomic_cmpxchg.exit.i.i.do.body.i.i_crit_edge:    ; preds = %atomic_cmpxchg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

atomic_cmpxchg.exit.i.i.aq_hw_read_reg.exit_crit_edge: ; preds = %atomic_cmpxchg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %aq_hw_read_reg.exit

aq_hw_read_reg.exit:                              ; preds = %atomic_cmpxchg.exit.i.i.aq_hw_read_reg.exit_crit_edge, %land.lhs.true.i.aq_hw_read_reg.exit_crit_edge, %if.then.aq_hw_read_reg.exit_crit_edge
  %15 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  %and = and i32 %15, %xor
  %shl = shl i32 %val, %shift
  %or = or i32 %and, %shl
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %or)
  %cmp.not = icmp eq i32 %15, %or
  br i1 %cmp.not, label %aq_hw_read_reg.exit.if.end2_crit_edge, label %if.then1

aq_hw_read_reg.exit.if.end2_crit_edge:            ; preds = %aq_hw_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2

if.then1:                                         ; preds = %aq_hw_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !15
  tail call void @arm_heavy_mb() #5
  %16 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %17 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i12 = getelementptr i8, ptr %18, i32 %addr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %16) #5, !srcloc !16
  br label %if.end2

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !15
  tail call void @arm_heavy_mb() #5
  %19 = tail call i32 @llvm.bswap.i32(i32 %val) #5
  %mmio.i13 = getelementptr inbounds %struct.aq_hw_s, ptr %aq_hw, i32 0, i32 4
  %20 = ptrtoint ptr %mmio.i13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio.i13, align 8
  %add.ptr.i14 = getelementptr i8, ptr %21, i32 %addr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 %19) #5, !srcloc !16
  br label %if.end2

if.end2:                                          ; preds = %if.else, %if.then1, %aq_hw_read_reg.exit.if.end2_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_hw_read_reg(ptr noundef %hw, i32 noundef %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio = getelementptr inbounds %struct.aq_hw_s, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio, align 8
  %aq_nic_cfg = getelementptr inbounds %struct.aq_hw_s, ptr %hw, i32 0, i32 2
  %5 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %aq_nic_cfg, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %hw_alive_check_addr = getelementptr inbounds %struct.aq_hw_caps_s, ptr %8, i32 0, i32 13
  %9 = ptrtoint ptr %hw_alive_check_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hw_alive_check_addr, align 4
  %add.ptr5 = getelementptr i8, ptr %4, i32 %10
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #5, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp9 = icmp eq i32 %11, -1
  br i1 %cmp9, label %land.lhs.true.do.body.i_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true.do.body.i_crit_edge:                ; preds = %land.lhs.true
  br label %do.body.i

do.body.i:                                        ; preds = %atomic_cmpxchg.exit.i.do.body.i_crit_edge, %land.lhs.true.do.body.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %hw, i32 noundef 4) #5
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %hw, align 4
  %or.i = or i32 %13, 1073741824
  %call.i.i1.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %hw, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !12
  tail call void @llvm.prefetch.p0(ptr %hw, i32 1, i32 3, i32 1) #5
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %do.body.i
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %hw, ptr %hw, i32 %13, i32 %or.i, ptr elementtype(i32) %hw) #5, !srcloc !13
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %14, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %atomic_cmpxchg.exit.i, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i.i.i

atomic_cmpxchg.exit.i:                            ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %14, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !14
  %cmp.not.i = icmp eq i32 %asmresult3.i.i.i.i, %13
  br i1 %cmp.not.i, label %atomic_cmpxchg.exit.i.if.end_crit_edge, label %atomic_cmpxchg.exit.i.do.body.i_crit_edge

atomic_cmpxchg.exit.i.do.body.i_crit_edge:        ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

atomic_cmpxchg.exit.i.if.end_crit_edge:           ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %atomic_cmpxchg.exit.i.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %15 = tail call i32 @llvm.bswap.i32(i32 %2)
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aq_hw_write_reg(ptr nocapture noundef readonly %hw, i32 noundef %reg, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !15
  tail call void @arm_heavy_mb() #5
  %0 = tail call i32 @llvm.bswap.i32(i32 %value)
  %mmio = getelementptr inbounds %struct.aq_hw_s, ptr %hw, i32 0, i32 4
  %1 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mmio, align 8
  %add.ptr = getelementptr i8, ptr %2, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #5, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_hw_read_reg_bit(ptr noundef %aq_hw, i32 noundef %addr, i32 noundef %msk, i32 noundef %shift) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio.i = getelementptr inbounds %struct.aq_hw_s, ptr %aq_hw, i32 0, i32 4
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 %addr
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp.i = icmp eq i32 %2, -1
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.aq_hw_read_reg.exit_crit_edge

entry.aq_hw_read_reg.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %aq_hw_read_reg.exit

land.lhs.true.i:                                  ; preds = %entry
  %3 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio.i, align 8
  %aq_nic_cfg.i = getelementptr inbounds %struct.aq_hw_s, ptr %aq_hw, i32 0, i32 2
  %5 = ptrtoint ptr %aq_nic_cfg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %aq_nic_cfg.i, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %hw_alive_check_addr.i = getelementptr inbounds %struct.aq_hw_caps_s, ptr %8, i32 0, i32 13
  %9 = ptrtoint ptr %hw_alive_check_addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hw_alive_check_addr.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %4, i32 %10
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #5, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp9.i = icmp eq i32 %11, -1
  br i1 %cmp9.i, label %land.lhs.true.i.do.body.i.i_crit_edge, label %land.lhs.true.i.aq_hw_read_reg.exit_crit_edge

land.lhs.true.i.aq_hw_read_reg.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %aq_hw_read_reg.exit

land.lhs.true.i.do.body.i.i_crit_edge:            ; preds = %land.lhs.true.i
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %atomic_cmpxchg.exit.i.i.do.body.i.i_crit_edge, %land.lhs.true.i.do.body.i.i_crit_edge
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %aq_hw, i32 noundef 4) #5
  %12 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %aq_hw, align 4
  %or.i.i = or i32 %13, 1073741824
  %call.i.i1.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %aq_hw, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !12
  tail call void @llvm.prefetch.p0(ptr %aq_hw, i32 1, i32 3, i32 1) #5
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %do.body.i.i
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %aq_hw, ptr %aq_hw, i32 %13, i32 %or.i.i, ptr elementtype(i32) %aq_hw) #5, !srcloc !13
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %14, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %atomic_cmpxchg.exit.i.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i.i.i.i

atomic_cmpxchg.exit.i.i:                          ; preds = %do.body.i.i.i.i.i
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %14, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !14
  %cmp.not.i.i = icmp eq i32 %asmresult3.i.i.i.i.i, %13
  br i1 %cmp.not.i.i, label %atomic_cmpxchg.exit.i.i.aq_hw_read_reg.exit_crit_edge, label %atomic_cmpxchg.exit.i.i.do.body.i.i_crit_edge

atomic_cmpxchg.exit.i.i.do.body.i.i_crit_edge:    ; preds = %atomic_cmpxchg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

atomic_cmpxchg.exit.i.i.aq_hw_read_reg.exit_crit_edge: ; preds = %atomic_cmpxchg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %aq_hw_read_reg.exit

aq_hw_read_reg.exit:                              ; preds = %atomic_cmpxchg.exit.i.i.aq_hw_read_reg.exit_crit_edge, %land.lhs.true.i.aq_hw_read_reg.exit_crit_edge, %entry.aq_hw_read_reg.exit_crit_edge
  %15 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  %and = and i32 %15, %msk
  %shr = lshr i32 %and, %shift
  ret i32 %shr
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @aq_hw_read_reg64(ptr noundef %hw, i32 noundef %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio1 = getelementptr inbounds %struct.aq_hw_s, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %mmio1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio1, align 8
  %add.ptr2 = getelementptr i8, ptr %1, i32 %reg
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  %add.ptr.i20 = getelementptr i32, ptr %add.ptr2, i32 1
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  %4 = zext i32 %3 to i64
  %5 = zext i32 %2 to i64
  %6 = shl nuw i64 %5, 32
  %7 = or i64 %6, %4
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %7)
  %cmp = icmp eq i64 %7, -1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

land.lhs.true:                                    ; preds = %entry
  %aq_nic_cfg = getelementptr inbounds %struct.aq_hw_s, ptr %hw, i32 0, i32 2
  %mmio4 = getelementptr inbounds %struct.aq_hw_s, ptr %hw, i32 0, i32 4
  %8 = ptrtoint ptr %mmio4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio4, align 8
  %10 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %aq_nic_cfg, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %hw_alive_check_addr = getelementptr inbounds %struct.aq_hw_caps_s, ptr %13, i32 0, i32 13
  %14 = ptrtoint ptr %hw_alive_check_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hw_alive_check_addr, align 4
  %add.ptr7 = getelementptr i8, ptr %9, i32 %15
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #5, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp10 = icmp eq i32 %16, -1
  br i1 %cmp10, label %land.lhs.true.do.body.i_crit_edge, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

land.lhs.true.do.body.i_crit_edge:                ; preds = %land.lhs.true
  br label %do.body.i

do.body.i:                                        ; preds = %atomic_cmpxchg.exit.i.do.body.i_crit_edge, %land.lhs.true.do.body.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %hw, i32 noundef 4) #5
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %hw, align 4
  %or.i = or i32 %18, 1073741824
  %call.i.i1.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %hw, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !12
  tail call void @llvm.prefetch.p0(ptr %hw, i32 1, i32 3, i32 1) #5
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %do.body.i
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %hw, ptr %hw, i32 %18, i32 %or.i, ptr elementtype(i32) %hw) #5, !srcloc !13
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %19, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %atomic_cmpxchg.exit.i, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i.i.i

atomic_cmpxchg.exit.i:                            ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %19, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !14
  %cmp.not.i = icmp eq i32 %asmresult3.i.i.i.i, %18
  br i1 %cmp.not.i, label %atomic_cmpxchg.exit.i.if.end12_crit_edge, label %atomic_cmpxchg.exit.i.do.body.i_crit_edge

atomic_cmpxchg.exit.i.do.body.i_crit_edge:        ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

atomic_cmpxchg.exit.i.if.end12_crit_edge:         ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.end12:                                         ; preds = %atomic_cmpxchg.exit.i.if.end12_crit_edge, %land.lhs.true.if.end12_crit_edge, %entry.if.end12_crit_edge
  %20 = tail call i64 @llvm.bswap.i64(i64 %7) #5
  ret i64 %20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aq_hw_write_reg64(ptr nocapture noundef readonly %hw, i32 noundef %reg, i64 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio1 = getelementptr inbounds %struct.aq_hw_s, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %mmio1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio1, align 8
  %add.ptr2 = getelementptr i8, ptr %1, i32 %reg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %conv.i7 = trunc i64 %value to i32
  %2 = tail call i32 @llvm.bswap.i32(i32 %conv.i7) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %shr.i8 = lshr i64 %value, 32
  %conv3.i9 = trunc i64 %shr.i8 to i32
  %3 = tail call i32 @llvm.bswap.i32(i32 %conv3.i9) #5
  %add.ptr.i10 = getelementptr i8, ptr %add.ptr2, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 %3) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_hw_err_from_flags(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %hw, i32 noundef 4) #5
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %hw, align 4
  %and.i = and i32 %1, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.err_exit_crit_edge

entry.err_exit_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_exit

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i6 = tail call zeroext i1 @__kasan_check_read(ptr noundef %hw, i32 noundef 4) #5
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %hw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i8.not.inv = icmp slt i32 %3, 0
  %spec.select = select i1 %tobool.i8.not.inv, i32 -5, i32 0
  br label %err_exit

err_exit:                                         ; preds = %if.end, %entry.err_exit_crit_edge
  %err.0 = phi i32 [ -6, %entry.err_exit_crit_edge ], [ %spec.select, %if.end ]
  ret i32 %err.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @aq_hw_num_tcs(ptr nocapture noundef readonly %hw) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_nic_cfg = getelementptr inbounds %struct.aq_hw_s, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_nic_cfg, align 8
  %tc_mode = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %tc_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tc_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %switch.selectcmp = icmp eq i32 %3, 1
  %switch.select = select i1 %switch.selectcmp, i32 4, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %switch.selectcmp2 = icmp eq i32 %3, 0
  %switch.select3 = select i1 %switch.selectcmp2, i32 8, i32 %switch.select
  ret i32 %switch.select3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @aq_hw_q_per_tc(ptr nocapture noundef readonly %hw) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_nic_cfg = getelementptr inbounds %struct.aq_hw_s, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_nic_cfg, align 8
  %tc_mode = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %tc_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tc_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %switch.selectcmp = icmp eq i32 %3, 1
  %switch.select = select i1 %switch.selectcmp, i32 8, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %switch.selectcmp2 = icmp eq i32 %3, 0
  %switch.select3 = select i1 %switch.selectcmp2, i32 4, i32 %switch.select
  ret i32 %switch.select3
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

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
!9 = !{i64 2986015}
!10 = !{i64 2156579006}
!11 = !{i64 2156579667}
!12 = !{i64 2148321215}
!13 = !{i64 703128, i64 703152, i64 703173, i64 703190, i64 703207}
!14 = !{i64 2148321441}
!15 = !{i64 2156579903}
!16 = !{i64 2985597}
!17 = !{i64 2156580769}
