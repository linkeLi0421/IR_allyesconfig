; ModuleID = '/llk/IR_all_yes/drivers/net/fddi/skfp/drvfbi.c_pt.bc'
source_filename = "../drivers/net/fddi/skfp/drvfbi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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

@oem_id = dso_local constant { [13 x i8], [19 x i8] } { [13 x i8] c"xPOS_ID:xxxx\00", [19 x i8] zeroinitializer }, align 32
@mac1_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016SMT PANIC: code: %d, msg: %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mac1_irq\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/net/fddi/skfp/drvfbi.c\00", [33 x i8] zeroinitializer }, align 32
@mac1_irq._entry_ptr = internal global ptr @mac1_irq._entry, section ".printk_index", align 4
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ST1L.FM_SPCEPDx parity error\00", [35 x i8] zeroinitializer }, align 32
@mac1_irq._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mac1_irq._entry_ptr.5 = internal global ptr @mac1_irq._entry.4, section ".printk_index", align 4
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ST1L.FM_STBURx tx buffer underrun\00", [62 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.7 = private unnamed_addr constant [7 x i8] c"oem_id\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 55, i32 14 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 190, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private constant [34 x i8] c"../drivers/net/fddi/skfp/drvfbi.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 198, i32 3 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @mac1_irq._entry, ptr @mac1_irq._entry.4, ptr @mac1_irq._entry_ptr, ptr @mac1_irq._entry_ptr.5, ptr @oem_id, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.6], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oem_id to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac1_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac1_irq._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @card_stop(ptr noundef %smc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %wdog_used.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 6
  %0 = ptrtoint ptr %wdog_used.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %wdog_used.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not.i = icmp eq i16 %1, 0
  br i1 %tobool.not.i, label %entry.smt_stop_watchdog.exit_crit_edge, label %if.then.i

entry.smt_stop_watchdog.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %smt_stop_watchdog.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %hw.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %2 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 512) #6, !srcloc !23
  br label %smt_stop_watchdog.exit

smt_stop_watchdog.exit:                           ; preds = %if.then.i, %entry.smt_stop_watchdog.exit_crit_edge
  %hw = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %mac_ring_is_up = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 24
  %4 = ptrtoint ptr %mac_ring_is_up to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %mac_ring_is_up, align 8
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %6, i32 1088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 0) #6, !srcloc !23
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 8
  %add.ptr4 = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !24
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4, i8 16) #6, !srcloc !25
  %call = tail call i32 @hwt_quick_read(ptr noundef %smc) #6
  tail call void @hwt_wait_time(ptr noundef %smc, i32 noundef %call, i32 noundef 125000) #6
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 8
  %add.ptr7 = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !24
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr7, i8 1) #6, !srcloc !25
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 8
  %add.ptr10 = getelementptr i8, ptr %12, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !24
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10, i8 2) #6, !srcloc !25
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 8
  %add.ptr13 = getelementptr i8, ptr %14, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !24
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr13, i8 21) #6, !srcloc !25
  %hw_state = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 11
  %15 = ptrtoint ptr %hw_state to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %hw_state, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwt_wait_time(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hwt_quick_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mac1_irq(ptr noundef %smc, i16 noundef zeroext %stu, i16 noundef zeroext %stl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  br label %again

again:                                            ; preds = %if.then17.again_crit_edge, %entry
  %tobool39.not52 = phi i1 [ false, %if.then17.again_crit_edge ], [ true, %entry ]
  %stl.addr.0 = phi i16 [ %7, %if.then17.again_crit_edge ], [ %stl, %entry ]
  %stu.addr.0 = phi i16 [ %9, %if.then17.again_crit_edge ], [ %stu, %entry ]
  %conv = zext i16 %stl.addr.0 to i32
  %and = and i32 %conv, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %again.if.end_crit_edge, label %do.end

again.if.end_crit_edge:                           ; preds = %again
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %again
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 134, ptr noundef nonnull @.str.3) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %again.if.end_crit_edge
  %and2 = and i32 %conv, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end10_crit_edge, label %do.end7

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 133, ptr noundef nonnull @.str.6) #9
  br label %if.end10

if.end10:                                         ; preds = %do.end7, %if.end.if.end10_crit_edge
  %0 = and i16 %stu.addr.0, -26624
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %tobool13.not = icmp eq i16 %0, 0
  %and15 = and i32 %conv, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %or.cond = select i1 %tobool13.not, i1 %tobool16.not, i1 false
  br i1 %or.cond, label %if.end33, label %if.then17

if.then17:                                        ; preds = %if.end10
  tail call void @formac_tx_restart(ptr noundef %smc) #6
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %2, i32 1024
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 8
  %add.ptr21 = getelementptr i8, ptr %5, i32 1028
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr21) #6, !srcloc !26
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  %8 = and i16 %3, -8961
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool27.not = icmp eq i16 %8, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool30.not = icmp eq i16 %6, 0
  %or.cond51 = select i1 %tobool27.not, i1 %tobool30.not, i1 false
  br i1 %or.cond51, label %if.then17.if.then40_crit_edge, label %if.then17.again_crit_edge

if.then17.again_crit_edge:                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %again

if.then17.if.then40_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then40

if.end33:                                         ; preds = %if.end10
  %10 = and i16 %stu.addr.0, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool36.not = icmp eq i16 %10, 0
  %tobool39.not = and i1 %tobool39.not52, %tobool36.not
  br i1 %tobool39.not, label %if.end33.if.end41_crit_edge, label %if.end33.if.then40_crit_edge

if.end33.if.then40_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then40

if.end33.if.end41_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then40:                                        ; preds = %if.end33.if.then40_crit_edge, %if.then17.if.then40_crit_edge
  tail call void @llc_restart_tx(ptr noundef %smc) #6
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end33.if.end41_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @formac_tx_restart(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @llc_restart_tx(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @plc1_irq(ptr noundef %smc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 988
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #6, !srcloc !26
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  %conv = zext i16 %3 to i32
  tail call void @plc_irq(ptr noundef %smc, i32 noundef 1, i32 noundef %conv) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @plc_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @plc2_irq(ptr noundef %smc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 1628
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #6, !srcloc !26
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  %conv = zext i16 %3 to i32
  tail call void @plc_irq(ptr noundef %smc, i32 noundef 0, i32 noundef %conv) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @timer_irq(ptr noundef %smc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @hwt_restart(ptr noundef %smc) #6
  %t_start = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 14
  %0 = ptrtoint ptr %t_start to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %t_start, align 8
  %t_stop = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 15
  %2 = ptrtoint ptr %t_stop to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %t_stop, align 4
  tail call void @smt_timer_done(ptr noundef %smc) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwt_restart(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @smt_timer_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @pcm_get_s_port(ptr nocapture noundef readnone %smc) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @read_address(ptr nocapture noundef %smc, ptr noundef readonly %mac_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %fddi_phys_addr = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 21
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 256
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  %idxprom.i = zext i8 %2 to i32
  %arrayidx.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1
  %5 = ptrtoint ptr %fddi_phys_addr to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %fddi_phys_addr, align 1
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 8
  %add.ptr.1 = getelementptr i8, ptr %7, i32 257
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.1) #6, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  %idxprom.i.1 = zext i8 %8 to i32
  %arrayidx.i.1 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.1
  %9 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i.1, align 1
  %arrayidx.1 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 21, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %arrayidx.1, align 1
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 8
  %add.ptr.2 = getelementptr i8, ptr %13, i32 258
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.2) #6, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  %idxprom.i.2 = zext i8 %14 to i32
  %arrayidx.i.2 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.2
  %15 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i.2, align 1
  %arrayidx.2 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 21, i32 0, i32 2
  %17 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %arrayidx.2, align 1
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 8
  %add.ptr.3 = getelementptr i8, ptr %19, i32 259
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.3) #6, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  %idxprom.i.3 = zext i8 %20 to i32
  %arrayidx.i.3 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.3
  %21 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i.3, align 1
  %arrayidx.3 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 21, i32 0, i32 3
  %23 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %arrayidx.3, align 1
  %24 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw, align 8
  %add.ptr.4 = getelementptr i8, ptr %25, i32 260
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.4) #6, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  %idxprom.i.4 = zext i8 %26 to i32
  %arrayidx.i.4 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.4
  %27 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i.4, align 1
  %arrayidx.4 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 21, i32 0, i32 4
  %29 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %arrayidx.4, align 1
  %30 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw, align 8
  %add.ptr.5 = getelementptr i8, ptr %31, i32 261
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.5) #6, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  %idxprom.i.5 = zext i8 %32 to i32
  %arrayidx.i.5 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.5
  %33 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i.5, align 1
  %arrayidx.5 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 21, i32 0, i32 5
  %35 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %arrayidx.5, align 1
  %36 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw, align 8
  %add.ptr26 = getelementptr i8, ptr %37, i32 264
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr26) #6, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  %39 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw, align 8
  %add.ptr30 = getelementptr i8, ptr %40, i32 265
  %41 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr30) #6, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  %pmd_type = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 1, i32 10
  %42 = ptrtoint ptr %pmd_type to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %38, ptr %pmd_type, align 1
  %pmd_type36 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 8, i32 0, i32 10
  %43 = ptrtoint ptr %pmd_type36 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %38, ptr %pmd_type36, align 1
  %arrayidx41 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 1, i32 10, i32 1
  %44 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %41, ptr %arrayidx41, align 1
  %arrayidx45 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 0, i32 10, i32 1
  %45 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %41, ptr %arrayidx45, align 1
  %tobool.not = icmp eq ptr %mac_addr, null
  br i1 %tobool.not, label %if.end, label %for.cond46.preheader

for.cond46.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %fddi_canon_addr = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 20
  %fddi_home_addr = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 19
  %46 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %mac_addr, align 1
  %48 = ptrtoint ptr %fddi_canon_addr to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %fddi_canon_addr, align 1
  %49 = load i8, ptr %mac_addr, align 1
  %idxprom.i204 = zext i8 %49 to i32
  %arrayidx.i205 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i204
  %50 = ptrtoint ptr %arrayidx.i205 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.i205, align 1
  %52 = ptrtoint ptr %fddi_home_addr to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %fddi_home_addr, align 1
  %arrayidx50.1 = getelementptr i8, ptr %mac_addr, i32 1
  %53 = ptrtoint ptr %arrayidx50.1 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx50.1, align 1
  %arrayidx53.1 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 20, i32 0, i32 1
  %55 = ptrtoint ptr %arrayidx53.1 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %arrayidx53.1, align 1
  %56 = load i8, ptr %arrayidx50.1, align 1
  %idxprom.i204.1 = zext i8 %56 to i32
  %arrayidx.i205.1 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i204.1
  %57 = ptrtoint ptr %arrayidx.i205.1 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.i205.1, align 1
  %arrayidx91.1 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 19, i32 0, i32 1
  %59 = ptrtoint ptr %arrayidx91.1 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %arrayidx91.1, align 1
  %arrayidx50.2 = getelementptr i8, ptr %mac_addr, i32 2
  %60 = ptrtoint ptr %arrayidx50.2 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx50.2, align 1
  %arrayidx53.2 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 20, i32 0, i32 2
  %62 = ptrtoint ptr %arrayidx53.2 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %arrayidx53.2, align 1
  %63 = load i8, ptr %arrayidx50.2, align 1
  %idxprom.i204.2 = zext i8 %63 to i32
  %arrayidx.i205.2 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i204.2
  %64 = ptrtoint ptr %arrayidx.i205.2 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx.i205.2, align 1
  %arrayidx91.2 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 19, i32 0, i32 2
  %66 = ptrtoint ptr %arrayidx91.2 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %arrayidx91.2, align 1
  %arrayidx50.3 = getelementptr i8, ptr %mac_addr, i32 3
  %67 = ptrtoint ptr %arrayidx50.3 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx50.3, align 1
  %arrayidx53.3 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 20, i32 0, i32 3
  %69 = ptrtoint ptr %arrayidx53.3 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %arrayidx53.3, align 1
  %70 = load i8, ptr %arrayidx50.3, align 1
  %idxprom.i204.3 = zext i8 %70 to i32
  %arrayidx.i205.3 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i204.3
  %71 = ptrtoint ptr %arrayidx.i205.3 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx.i205.3, align 1
  %arrayidx91.3 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 19, i32 0, i32 3
  %73 = ptrtoint ptr %arrayidx91.3 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %arrayidx91.3, align 1
  %arrayidx50.4 = getelementptr i8, ptr %mac_addr, i32 4
  %74 = ptrtoint ptr %arrayidx50.4 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx50.4, align 1
  %arrayidx53.4 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 20, i32 0, i32 4
  %76 = ptrtoint ptr %arrayidx53.4 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %arrayidx53.4, align 1
  %77 = load i8, ptr %arrayidx50.4, align 1
  %idxprom.i204.4 = zext i8 %77 to i32
  %arrayidx.i205.4 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i204.4
  %78 = ptrtoint ptr %arrayidx.i205.4 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx.i205.4, align 1
  %arrayidx91.4 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 19, i32 0, i32 4
  %80 = ptrtoint ptr %arrayidx91.4 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %arrayidx91.4, align 1
  %arrayidx50.5 = getelementptr i8, ptr %mac_addr, i32 5
  %81 = ptrtoint ptr %arrayidx50.5 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx50.5, align 1
  %arrayidx53.5 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 20, i32 0, i32 5
  %83 = ptrtoint ptr %arrayidx53.5 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %arrayidx53.5, align 1
  %84 = load i8, ptr %arrayidx50.5, align 1
  %idxprom.i204.5 = zext i8 %84 to i32
  %arrayidx.i205.5 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i204.5
  %85 = ptrtoint ptr %arrayidx.i205.5 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx.i205.5, align 1
  %arrayidx91.5 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 19, i32 0, i32 5
  %87 = ptrtoint ptr %arrayidx91.5 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %arrayidx91.5, align 1
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %fddi_home_addr96 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 19
  %88 = call ptr @memcpy(ptr %fddi_home_addr96, ptr %fddi_phys_addr, i32 6)
  %fddi_canon_addr142 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 20
  %89 = ptrtoint ptr %fddi_phys_addr to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %fddi_phys_addr, align 1
  %idxprom.i206 = zext i8 %90 to i32
  %arrayidx.i207 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i206
  %91 = ptrtoint ptr %arrayidx.i207 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx.i207, align 1
  %93 = ptrtoint ptr %fddi_canon_addr142 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %fddi_canon_addr142, align 1
  %94 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx.1, align 1
  %idxprom.i206.1 = zext i8 %95 to i32
  %arrayidx.i207.1 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i206.1
  %96 = ptrtoint ptr %arrayidx.i207.1 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx.i207.1, align 1
  %arrayidx144.1 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 20, i32 0, i32 1
  %98 = ptrtoint ptr %arrayidx144.1 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %97, ptr %arrayidx144.1, align 1
  %99 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx.2, align 1
  %idxprom.i206.2 = zext i8 %100 to i32
  %arrayidx.i207.2 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i206.2
  %101 = ptrtoint ptr %arrayidx.i207.2 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx.i207.2, align 1
  %arrayidx144.2 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 20, i32 0, i32 2
  %103 = ptrtoint ptr %arrayidx144.2 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %102, ptr %arrayidx144.2, align 1
  %104 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx.3, align 1
  %idxprom.i206.3 = zext i8 %105 to i32
  %arrayidx.i207.3 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i206.3
  %106 = ptrtoint ptr %arrayidx.i207.3 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx.i207.3, align 1
  %arrayidx144.3 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 20, i32 0, i32 3
  %108 = ptrtoint ptr %arrayidx144.3 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %107, ptr %arrayidx144.3, align 1
  %109 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx.4, align 1
  %idxprom.i206.4 = zext i8 %110 to i32
  %arrayidx.i207.4 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i206.4
  %111 = ptrtoint ptr %arrayidx.i207.4 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx.i207.4, align 1
  %arrayidx144.4 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 20, i32 0, i32 4
  %113 = ptrtoint ptr %arrayidx144.4 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %112, ptr %arrayidx144.4, align 1
  %114 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx.5, align 1
  %idxprom.i206.5 = zext i8 %115 to i32
  %arrayidx.i207.5 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i206.5
  %116 = ptrtoint ptr %arrayidx.i207.5 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx.i207.5, align 1
  %arrayidx144.5 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 20, i32 0, i32 5
  %118 = ptrtoint ptr %arrayidx144.5 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %117, ptr %arrayidx144.5, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.cond46.preheader
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @init_board(ptr noundef %smc, ptr noundef %mac_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %wdog_used.i.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 6
  %0 = ptrtoint ptr %wdog_used.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %wdog_used.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not.i.i = icmp eq i16 %1, 0
  br i1 %tobool.not.i.i, label %entry.smt_stop_watchdog.exit.i_crit_edge, label %if.then.i.i

entry.smt_stop_watchdog.exit.i_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %smt_stop_watchdog.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %hw.i.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %2 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 512) #6, !srcloc !23
  br label %smt_stop_watchdog.exit.i

smt_stop_watchdog.exit.i:                         ; preds = %if.then.i.i, %entry.smt_stop_watchdog.exit.i_crit_edge
  %hw.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %4 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 1088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 0) #6, !srcloc !23
  %6 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw.i, align 8
  %add.ptr3.i = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !24
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i, i8 16) #6, !srcloc !25
  %call.i = tail call i32 @hwt_quick_read(ptr noundef %smc) #6
  tail call void @hwt_wait_time(ptr noundef %smc, i32 noundef %call.i, i32 noundef 125000) #6
  %8 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw.i, align 8
  %add.ptr6.i = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !24
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i, i8 1) #6, !srcloc !25
  %10 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw.i, align 8
  %add.ptr9.i = getelementptr i8, ptr %11, i32 4
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr9.i) #6, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  %13 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw.i, align 8
  %add.ptr13.i = getelementptr i8, ptr %14, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !24
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr13.i, i8 2) #6, !srcloc !25
  %15 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw.i, align 8
  %add.ptr16.i = getelementptr i8, ptr %16, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !24
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr16.i, i8 2) #6, !srcloc !25
  %17 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw.i, align 8
  %add.ptr19.i = getelementptr i8, ptr %18, i32 390
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr19.i) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  %20 = or i16 %19, 249
  %21 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw.i, align 8
  %add.ptr25.i = getelementptr i8, ptr %22, i32 390
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr25.i, i16 %20) #6, !srcloc !23
  %23 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw.i, align 8
  %add.ptr28.i = getelementptr i8, ptr %24, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !24
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr28.i, i8 1) #6, !srcloc !25
  %25 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw.i, align 8
  %add.ptr31.i = getelementptr i8, ptr %26, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !24
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr31.i, i8 40) #6, !srcloc !25
  %27 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw.i, align 8
  %add.ptr34.i = getelementptr i8, ptr %28, i32 392
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr34.i) #6, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  %30 = and i8 %29, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %30)
  %switch.selectcmp.i = icmp eq i8 %30, 32
  %31 = zext i1 %switch.selectcmp.i to i32
  %hw_is_64bit44.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 12
  %32 = ptrtoint ptr %hw_is_64bit44.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %hw_is_64bit44.i, align 8
  br i1 %switch.selectcmp.i, label %smt_stop_watchdog.exit.i.card_start.exit_crit_edge, label %if.then47.i

smt_stop_watchdog.exit.i.card_start.exit_crit_edge: ; preds = %smt_stop_watchdog.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %card_start.exit

if.then47.i:                                      ; preds = %smt_stop_watchdog.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw.i, align 8
  %add.ptr50.i = getelementptr i8, ptr %34, i32 544
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !30
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50.i, i32 402653184) #6, !srcloc !31
  %35 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw.i, align 8
  %add.ptr53.i = getelementptr i8, ptr %36, i32 672
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !30
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53.i, i32 402653184) #6, !srcloc !31
  %37 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw.i, align 8
  %add.ptr56.i = getelementptr i8, ptr %38, i32 736
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !30
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56.i, i32 402653184) #6, !srcloc !31
  br label %card_start.exit

card_start.exit:                                  ; preds = %if.then47.i, %smt_stop_watchdog.exit.i.card_start.exit_crit_edge
  %39 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw.i, align 8
  %add.ptr60.i = getelementptr i8, ptr %40, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !24
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr60.i, i8 2) #6, !srcloc !25
  %41 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw.i, align 8
  %add.ptr63.i = getelementptr i8, ptr %42, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !24
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr63.i, i8 25) #6, !srcloc !25
  %43 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw.i, align 8
  %add.ptr66.i = getelementptr i8, ptr %44, i32 304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !30
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66.i, i32 -1069890961) #6, !srcloc !31
  %is_imask.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 8
  %45 = ptrtoint ptr %is_imask.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 8368179, ptr %is_imask.i, align 4
  %hw_state.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 11
  %46 = ptrtoint ptr %hw_state.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %hw_state.i, align 2
  %47 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hw.i, align 8
  %add.ptr71.i = getelementptr i8, ptr %48, i32 272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !30
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71.i, i32 0) #6, !srcloc !31
  tail call void @read_address(ptr noundef %smc, ptr noundef %mac_addr)
  %49 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hw.i, align 8
  %add.ptr = getelementptr i8, ptr %50, i32 5
  %51 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  %52 = lshr i8 %51, 3
  %.lobit = and i8 %52, 1
  %53 = xor i8 %.lobit, 1
  %54 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 1
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %53, ptr %54, align 1
  %56 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hw.i, align 8
  %add.ptr5 = getelementptr i8, ptr %57, i32 5
  %58 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr5) #6, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  %59 = lshr i8 %58, 2
  %.lobit23 = and i8 %59, 1
  %60 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 27
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %.lobit23, ptr %60, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sm_pm_bypass_req(ptr nocapture noundef readonly %smc, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sas = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %sas to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sas, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end:                                           ; preds = %entry
  %2 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %if.end.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb2
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %hw = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %4, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !24
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 2) #6, !srcloc !25
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %hw3 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %5 = ptrtoint ptr %hw3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw3, align 8
  %add.ptr5 = getelementptr i8, ptr %6, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !24
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5, i8 1) #6, !srcloc !25
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb, %if.end.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sm_pm_bypass_present(ptr nocapture noundef readonly %smc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 5
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  %3 = lshr i8 %2, 2
  %.lobit = and i8 %3, 1
  %4 = zext i8 %.lobit to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @plc_clear_irq(ptr nocapture noundef %smc, i32 noundef %p) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pcm_state_change(ptr nocapture noundef readonly %smc, i32 noundef %plc, i32 noundef %p_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx2.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx2.i, align 4
  %y.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 8
  %2 = ptrtoint ptr %y.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %y.i, align 4
  %fddiPORTPCMState.i = getelementptr inbounds %struct.fddi_mib_p, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %fddiPORTPCMState.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fddiPORTPCMState.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %5)
  %cmp13.i = icmp eq i16 %5, 8
  %..i = select i1 %cmp13.i, i8 32, i8 16
  %fddiPORTPCMState23.i = getelementptr inbounds %struct.fddi_mib_p, ptr %1, i32 0, i32 23
  %6 = ptrtoint ptr %fddiPORTPCMState23.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %fddiPORTPCMState23.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %7)
  %cmp25.i = icmp eq i16 %7, 8
  %led_state.1.off0.i.v = select i1 %cmp25.i, i8 2, i8 1
  %led_state.1.off0.i = or i8 %led_state.1.off0.i.v, %..i
  %hw.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %8 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw.i, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !24
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %led_state.1.off0.i) #6, !srcloc !25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rmt_indication(ptr nocapture noundef readonly %smc, i32 noundef %i) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i)
  %tobool.not = icmp eq i32 %i, 0
  %spec.select = select i1 %tobool.not, i8 8, i8 4
  %hw.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %0 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !24
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %spec.select) #6, !srcloc !25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @llc_recover_tx(ptr nocapture noundef %smc) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @driver_get_bia(ptr nocapture noundef readonly %smc, ptr nocapture noundef writeonly %bia_addr) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fddi_phys_addr = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 21
  %0 = ptrtoint ptr %fddi_phys_addr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fddi_phys_addr, align 1
  %idxprom.i = zext i8 %1 to i32
  %arrayidx.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  %4 = ptrtoint ptr %bia_addr to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %bia_addr, align 1
  %arrayidx.1 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 21, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.1, align 1
  %idxprom.i.1 = zext i8 %6 to i32
  %arrayidx.i.1 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.1
  %7 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i.1, align 1
  %arrayidx23.1 = getelementptr [6 x i8], ptr %bia_addr, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx23.1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %arrayidx23.1, align 1
  %arrayidx.2 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 21, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.2, align 1
  %idxprom.i.2 = zext i8 %11 to i32
  %arrayidx.i.2 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.2
  %12 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i.2, align 1
  %arrayidx23.2 = getelementptr [6 x i8], ptr %bia_addr, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx23.2 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx23.2, align 1
  %arrayidx.3 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 21, i32 0, i32 3
  %15 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.3, align 1
  %idxprom.i.3 = zext i8 %16 to i32
  %arrayidx.i.3 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.3
  %17 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i.3, align 1
  %arrayidx23.3 = getelementptr [6 x i8], ptr %bia_addr, i32 0, i32 3
  %19 = ptrtoint ptr %arrayidx23.3 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %arrayidx23.3, align 1
  %arrayidx.4 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 21, i32 0, i32 4
  %20 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.4, align 1
  %idxprom.i.4 = zext i8 %21 to i32
  %arrayidx.i.4 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.4
  %22 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i.4, align 1
  %arrayidx23.4 = getelementptr [6 x i8], ptr %bia_addr, i32 0, i32 4
  %24 = ptrtoint ptr %arrayidx23.4 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx23.4, align 1
  %arrayidx.5 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 21, i32 0, i32 5
  %25 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.5, align 1
  %idxprom.i.5 = zext i8 %26 to i32
  %arrayidx.i.5 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.5
  %27 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i.5, align 1
  %arrayidx23.5 = getelementptr [6 x i8], ptr %bia_addr, i32 0, i32 5
  %29 = ptrtoint ptr %arrayidx23.5 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %arrayidx23.5, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smt_start_watchdog(ptr nocapture noundef readonly %smc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %wdog_used = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 6
  %0 = ptrtoint ptr %wdog_used to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %wdog_used, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %hw = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 1024) #6, !srcloc !23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mac_do_pci_fix(ptr nocapture noundef %smc) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @oem_id, !1, !"oem_id", i1 false, i1 false}
!1 = !{!"../drivers/net/fddi/skfp/drvfbi.c", i32 55, i32 14}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/fddi/skfp/drvfbi.c", i32 190, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mac1_irq._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @mac1_irq._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @mac1_irq._entry.4, !10, !"_entry", i1 false, i1 false}
!10 = !{!"../drivers/net/fddi/skfp/drvfbi.c", i32 198, i32 3}
!11 = !{ptr @mac1_irq._entry_ptr.5, !10, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{i64 2148888882}
!23 = !{i64 699031}
!24 = !{i64 2148888458}
!25 = !{i64 699454}
!26 = !{i64 699231}
!27 = !{i64 2148887465}
!28 = !{i64 699849}
!29 = !{i64 2148886853}
!30 = !{i64 2148889432}
!31 = !{i64 699651}
