; ModuleID = '/llk/IR_all_yes/drivers/net/fddi/skfp/hwt.c_pt.bc'
source_filename = "../drivers/net/fddi/skfp/hwt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.s_smc = type { %struct.s_smt_os, %struct.s_smt_hw, %struct.smt_config, %struct.smt_values, %struct.s_ecm, %struct.s_rmt, %struct.s_cfm, %struct.s_pcm, [2 x %struct.s_phy], %struct.s_queue, %struct.s_timer, %struct.s_srf, [14 x %struct.s_srf_evc], %struct.fddi_mib, %struct.s_ess }
%struct.s_smt_os = type { ptr, ptr, i32, [4 x i8], %struct.pci_dev, i32, [8 x i8], i32, i32, ptr, i32, i32, %struct.sk_buff_head, i32, i8, %struct.fddi_statistics, ptr, i32, i32, %struct.hw_modul, %struct.spinlock, [4 x i8] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.114, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.114 = type { ptr }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.fddi_statistics = type { %struct.net_device_stats, [8 x i8], i32, i32, i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i32, i32, i32, [6 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [6 x i8], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32] }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hw_modul = type { %struct.s_mbuf_pool, %struct.hwm_r, ptr, i16, i16, i16, i16, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.s_mbuf_pool = type { ptr, ptr }
%struct.hwm_r = type { i32, ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.s_smt_hw = type { ptr, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i8, %struct.fddi_addr, %struct.fddi_addr, %struct.fddi_addr, %struct.mac_parameter, %struct.mac_counter, i16, %struct.s_smt_fp }
%struct.fddi_addr = type { [6 x i8] }
%struct.mac_parameter = type { i32, i32 }
%struct.mac_counter = type { i32, i32 }
%struct.s_smt_fp = type { i16, i16, i16, i16, i16, i16, i16, %struct.err_st, %struct.fddi_mac_sf, [2 x ptr], [2 x ptr], [2 x %struct.s_smt_tx_queue], [2 x %struct.s_smt_rx_queue], %struct.s_smt_fifo_conf, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.115, %struct.fddi_addr, i32, i32, i32 }
%struct.err_st = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fddi_mac_sf = type { i8, %struct.fddi_addr, %struct.fddi_addr, [32 x i8] }
%struct.s_smt_tx_queue = type { ptr, ptr, ptr, i16, i16, ptr, ptr }
%struct.s_smt_rx_queue = type { ptr, ptr, ptr, i16, i16, ptr, ptr }
%struct.s_smt_fifo_conf = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.anon.115 = type { [32 x %struct.s_fpmc] }
%struct.s_fpmc = type { %struct.fddi_addr, i8, i8 }
%struct.smt_config = type { i8, i8, i8, i8, [1 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.smt_values = type { i32, i32, i32, [5 x i32], i32, i16, i16, i32, i32, %struct.smt_timer, [1 x i32] }
%struct.smt_timer = type { ptr, ptr, i32, i32, i16, i16 }
%struct.s_ecm = type { i8, i8, i8, i8, i32, [2 x i8], %struct.smt_timer }
%struct.s_rmt = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.smt_timer, %struct.smt_timer, %struct.smt_timer, i8, i8, i8, i8 }
%struct.s_cfm = type { i8, [3 x i8] }
%struct.s_pcm = type { [3 x i8] }
%struct.s_phy = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], [10 x i8], [10 x i32], %struct.smt_timer, %struct.smt_timer, %struct.smt_timer, i8, i8, i8, [1 x i8], i32, %struct.lem_counter, %struct.s_plc }
%struct.lem_counter = type { i16, i32, i16 }
%struct.s_plc = type { i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.s_queue = type { [64 x %struct.event_queue], ptr, ptr }
%struct.event_queue = type { i16, i16 }
%struct.s_timer = type { ptr, %struct.smt_timer }
%struct.s_srf = type { i32, i8, i8, i8, i32, i16 }
%struct.s_srf_evc = type { i8, i8, i8, i16, ptr, ptr }
%struct.fddi_mib = type { [8 x i8], %struct.smt_sid, i32, i32, i32, i32, i32, i16, %struct.smt_sid, i16, i16, i16, [32 x i8], [32 x i8], i16, i8, i8, i8, i8, i16, i16, i16, i16, i8, i32, [2 x i16], i16, i8, i16, i16, i16, i8, i8, [8 x i8], [8 x i8], %struct.SetCountType, %struct.smt_sid, [1 x %struct.fddi_mib_m], [2 x %struct.fddi_mib_a], [2 x %struct.fddi_mib_p], %struct.anon.117 }
%struct.SetCountType = type { i32, [8 x i8] }
%struct.smt_sid = type { [2 x i8], %struct.fddi_addr }
%struct.fddi_mib_m = type { i16, i32, i32, i8, i8, i8, i8, i16, %struct.fddi_addr, %struct.fddi_addr, %struct.fddi_addr, %struct.fddi_addr, i16, i16, i16, i16, %struct.fddi_addr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.fddi_mib_a = type { i16, i32, i32, i32, i32, i32, i32, i32 }
%struct.fddi_mib_p = type { i16, i16, i8, %struct.anon.116, i16, [4 x i8], i16, i8, i8, i16, i16, i16, i16, i8, i32, i32, i32, i32, i32, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8 }
%struct.anon.116 = type { i8, i8 }
%struct.anon.117 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.s_ess = type { i8, i8, i8, i8, ptr, i32, i32 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hwt_start(ptr nocapture noundef %smc, i32 noundef %time) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.umin.i32(i32 %time, i32 65000)
  %t_start = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 14
  %1 = ptrtoint ptr %t_start to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %t_start, align 8
  %t_stop = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 15
  %2 = ptrtoint ptr %t_stop to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %t_stop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  %hw = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %.op = mul nuw nsw i32 %0, 200
  %mul = select i1 %tobool.not, i32 200, i32 %.op
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %4, i32 288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %5 = tail call i32 @llvm.bswap.i32(i32 %mul) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #3, !srcloc !10
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 8
  %add.ptr8 = getelementptr i8, ptr %7, i32 296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8, i16 1024) #3, !srcloc !12
  %timer_activ = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 16
  %8 = ptrtoint ptr %timer_activ to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %timer_activ, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hwt_stop(ptr nocapture noundef %smc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 512) #3, !srcloc !12
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 8
  %add.ptr3 = getelementptr i8, ptr %3, i32 296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3, i16 256) #3, !srcloc !12
  %timer_activ = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 16
  %4 = ptrtoint ptr %timer_activ to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %timer_activ, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hwt_init(ptr nocapture noundef %smc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %t_start = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 14
  %0 = ptrtoint ptr %t_start to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %t_start, align 8
  %t_stop = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 15
  %1 = ptrtoint ptr %t_stop to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %t_stop, align 4
  %timer_activ = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 16
  %2 = ptrtoint ptr %timer_activ to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %timer_activ, align 8
  %hw.i.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %3 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 512) #3, !srcloc !12
  %5 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw.i.i, align 8
  %add.ptr3.i.i = getelementptr i8, ptr %6, i32 296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i.i, i16 256) #3, !srcloc !12
  %7 = ptrtoint ptr %timer_activ to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %timer_activ, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hwt_restart(ptr nocapture noundef %smc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %hw.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %0 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 512) #3, !srcloc !12
  %2 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw.i, align 8
  %add.ptr3.i = getelementptr i8, ptr %3, i32 296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i, i16 256) #3, !srcloc !12
  %timer_activ.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 16
  %4 = ptrtoint ptr %timer_activ.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %timer_activ.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hwt_read(ptr nocapture noundef %smc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %timer_activ = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 16
  %0 = ptrtoint ptr %timer_activ to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %timer_activ, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %if.then

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end20

if.then:                                          ; preds = %entry
  %hw = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 512) #3, !srcloc !12
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 8
  %add.ptr3.i = getelementptr i8, ptr %5, i32 296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i, i16 256) #3, !srcloc !12
  %6 = ptrtoint ptr %timer_activ to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %timer_activ, align 8
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %8, i32 292
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !13
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  %div = udiv i32 %10, 200
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 8
  %add.ptr4 = getelementptr i8, ptr %12, i32 8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  %conv6 = and i32 %div, 65535
  %t_start = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 14
  %14 = ptrtoint ptr %t_start to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %t_start, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv6)
  %cmp = icmp uge i32 %15, %conv6
  %16 = and i32 %13, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool10.not = icmp eq i32 %16, 0
  %or.cond = select i1 %cmp, i1 %tobool10.not, i1 false
  br i1 %or.cond, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 8
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 512) #3, !srcloc !12
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw, align 8
  %add.ptr3.i.i = getelementptr i8, ptr %20, i32 296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i.i, i16 256) #3, !srcloc !12
  %21 = ptrtoint ptr %timer_activ to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %timer_activ, align 8
  %22 = ptrtoint ptr %t_start to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %t_start, align 8
  br label %if.end20.sink.split

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %sub = sub i32 %15, %conv6
  br label %if.end20.sink.split

if.end20.sink.split:                              ; preds = %if.else, %if.then11
  %.sink = phi i32 [ %23, %if.then11 ], [ %sub, %if.else ]
  %t_stop = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 15
  %24 = ptrtoint ptr %t_stop to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.sink, ptr %t_stop, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %entry.if.end20_crit_edge
  %t_stop22 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 15
  %25 = ptrtoint ptr %t_stop22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %t_stop22, align 4
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hwt_quick_read(ptr nocapture noundef readonly %smc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 288
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 8
  %add.ptr3 = getelementptr i8, ptr %4, i32 296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3, i16 512) #3, !srcloc !12
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 8
  %add.ptr6 = getelementptr i8, ptr %6, i32 292
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #3, !srcloc !13
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 8
  %add.ptr10 = getelementptr i8, ptr %10, i32 288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %7) #3, !srcloc !10
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 8
  %add.ptr13 = getelementptr i8, ptr %12, i32 296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr13, i16 1024) #3, !srcloc !12
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 8
  %add.ptr16 = getelementptr i8, ptr %14, i32 288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %2) #3, !srcloc !10
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hwt_wait_time(ptr nocapture noundef readonly %smc, i32 noundef %start, i32 noundef %duration) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %timer_activ = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 16
  %0 = ptrtoint ptr %timer_activ to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %timer_activ, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 288
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 8
  %add.ptr3.i = getelementptr i8, ptr %6, i32 296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i, i16 512) #3, !srcloc !12
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 8
  %add.ptr6.i = getelementptr i8, ptr %8, i32 292
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 8
  %add.ptr10.i = getelementptr i8, ptr %11, i32 288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %9) #3, !srcloc !10
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 8
  %add.ptr13.i = getelementptr i8, ptr %13, i32 296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr13.i, i16 1024) #3, !srcloc !12
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 8
  %add.ptr16.i = getelementptr i8, ptr %15, i32 288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %4) #3, !srcloc !10
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 8
  %add.ptr.i60 = getelementptr i8, ptr %17, i32 288
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i60) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw, align 8
  %add.ptr3.i61 = getelementptr i8, ptr %20, i32 296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i61, i16 512) #3, !srcloc !12
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw, align 8
  %add.ptr6.i62 = getelementptr i8, ptr %22, i32 292
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i62) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  %24 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw, align 8
  %add.ptr10.i63 = getelementptr i8, ptr %25, i32 288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i63, i32 %23) #3, !srcloc !10
  %26 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw, align 8
  %add.ptr13.i64 = getelementptr i8, ptr %27, i32 296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr13.i64, i16 1024) #3, !srcloc !12
  %28 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw, align 8
  %add.ptr16.i65 = getelementptr i8, ptr %29, i32 288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i65, i32 %18) #3, !srcloc !10
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %23)
  %cmp3 = icmp eq i32 %9, %23
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %30 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %31, i32 288
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !13
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %duration)
  %cmp7 = icmp sgt i32 %33, %duration
  br i1 %cmp7, label %if.end.do.body_crit_edge, label %if.end.do.body17_crit_edge

if.end.do.body17_crit_edge:                       ; preds = %if.end
  br label %do.body17

if.end.do.body_crit_edge:                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.end.do.body_crit_edge
  %34 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw, align 8
  %add.ptr.i67 = getelementptr i8, ptr %35, i32 288
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  %37 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw, align 8
  %add.ptr3.i68 = getelementptr i8, ptr %38, i32 296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i68, i16 512) #3, !srcloc !12
  %39 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw, align 8
  %add.ptr6.i69 = getelementptr i8, ptr %40, i32 292
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i69) #3, !srcloc !13
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  %43 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw, align 8
  %add.ptr10.i70 = getelementptr i8, ptr %44, i32 288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i70, i32 %41) #3, !srcloc !10
  %45 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw, align 8
  %add.ptr13.i71 = getelementptr i8, ptr %46, i32 296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr13.i71, i16 1024) #3, !srcloc !12
  %47 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hw, align 8
  %add.ptr16.i72 = getelementptr i8, ptr %48, i32 288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i72, i32 %36) #3, !srcloc !10
  %sub = sub i32 %start, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp11 = icmp slt i32 %sub, 0
  %add = select i1 %cmp11, i32 %33, i32 0
  %spec.select = add i32 %add, %sub
  %cmp15.not = icmp sgt i32 %spec.select, %duration
  br i1 %cmp15.not, label %do.body.cleanup_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body17:                                        ; preds = %do.cond32.do.body17_crit_edge, %if.end.do.body17_crit_edge
  %diff.1 = phi i32 [ %diff.2, %do.cond32.do.body17_crit_edge ], [ %33, %if.end.do.body17_crit_edge ]
  %wrapped.0 = phi i32 [ %wrapped.1, %do.cond32.do.body17_crit_edge ], [ 0, %if.end.do.body17_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wrapped.0)
  %tobool.not = icmp eq i32 %wrapped.0, 0
  %49 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hw, align 8
  %add.ptr.i74 = getelementptr i8, ptr %50, i32 288
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i74) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  %52 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hw, align 8
  %add.ptr3.i75 = getelementptr i8, ptr %53, i32 296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i75, i16 512) #3
  %54 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hw, align 8
  %add.ptr6.i76 = getelementptr i8, ptr %55, i32 292
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i76) #3
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  %58 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hw, align 8
  %add.ptr10.i77 = getelementptr i8, ptr %59, i32 288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i77, i32 %56) #3
  %60 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hw, align 8
  %add.ptr13.i78 = getelementptr i8, ptr %61, i32 296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr13.i78, i16 1024) #3
  %62 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hw, align 8
  %add.ptr16.i79 = getelementptr i8, ptr %63, i32 288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i79, i32 %51) #3
  br i1 %tobool.not, label %if.then18, label %if.else25

if.then18:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %start)
  %cmp20.not = icmp ult i32 %57, %start
  %add23 = select i1 %cmp20.not, i32 0, i32 %33
  %spec.select56 = add i32 %add23, %diff.1
  %not.cmp20.not = xor i1 %cmp20.not, true
  br label %do.cond32

if.else25:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %start)
  %cmp27 = icmp uge i32 %57, %start
  br label %do.cond32

do.cond32:                                        ; preds = %if.else25, %if.then18
  %diff.2 = phi i32 [ %spec.select56, %if.then18 ], [ %diff.1, %if.else25 ]
  %wrapped.1.in = phi i1 [ %not.cmp20.not, %if.then18 ], [ %cmp27, %if.else25 ]
  %wrapped.1 = zext i1 %wrapped.1.in to i32
  %cmp33.not = icmp sgt i32 %diff.2, %duration
  br i1 %cmp33.not, label %do.cond32.cleanup_crit_edge, label %do.cond32.do.body17_crit_edge

do.cond32.do.body17_crit_edge:                    ; preds = %do.cond32
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body17

do.cond32.cleanup_crit_edge:                      ; preds = %do.cond32
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup:                                          ; preds = %do.cond32.cleanup_crit_edge, %do.body.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

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
!9 = !{i64 2148882174}
!10 = !{i64 692393}
!11 = !{i64 2148881624}
!12 = !{i64 691773}
!13 = !{i64 692811}
!14 = !{i64 2148880819}
