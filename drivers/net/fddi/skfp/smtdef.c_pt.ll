; ModuleID = '/llk/IR_all_yes/drivers/net/fddi/skfp/smtdef.c_pt.bc'
source_filename = "../drivers/net/fddi/skfp/smtdef.c"
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

@man_data = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"xxxSK-NET FDDI SMT 7.3 - V2.8.8\00", [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SK-NET FDDI V2.0 Userdata\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.1 = private unnamed_addr constant [9 x i8] c"man_data\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 152, i32 19 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [34 x i8] c"../drivers/net/fddi/skfp/smtdef.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 184, i32 31 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @man_data, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @man_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smt_reset_defaults(ptr noundef %smc, i32 noundef %level) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level)
  %cmp.i = icmp eq i32 %level, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr2.i = getelementptr i8, ptr %smc, i32 3540
  %0 = call ptr @memset(ptr %add.ptr2.i, i32 0, i32 1940)
  %fddiSMTManufacturerData.c151.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 12
  %1 = call ptr @memcpy(ptr %fddiSMTManufacturerData.c151.i, ptr @man_data, i32 32)
  %fddiSMTUserData.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 13
  %2 = call ptr @memcpy(ptr %fddiSMTUserData.i, ptr @.str, i32 26)
  br label %if.end6.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %fddiSMTRemoteDisconnectFlag.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 31
  %3 = ptrtoint ptr %fddiSMTRemoteDisconnectFlag.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %fddiSMTRemoteDisconnectFlag.i, align 2
  %fddiSMTPeerWrapFlag.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 32
  %4 = ptrtoint ptr %fddiSMTPeerWrapFlag.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %fddiSMTPeerWrapFlag.i, align 1
  %fddiSMTManufacturerData.c.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 12
  %5 = call ptr @memcpy(ptr %fddiSMTManufacturerData.c.i, ptr @man_data, i32 32)
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else.i, %if.then.i
  %6 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 9
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 2, ptr %6, align 2
  %8 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 10
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 2, ptr %8, align 4
  %10 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 11
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 2, ptr %10, align 2
  %fddiSMTMIBVersionId.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 14
  %12 = ptrtoint ptr %fddiSMTMIBVersionId.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %fddiSMTMIBVersionId.i, align 4
  %fddiSMTMac_Ct.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 15
  %13 = ptrtoint ptr %fddiSMTMac_Ct.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %fddiSMTMac_Ct.i, align 2
  %fddiSMTConnectionPolicy.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 21
  %14 = ptrtoint ptr %fddiSMTConnectionPolicy.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -32735, ptr %fddiSMTConnectionPolicy.i, align 2
  %fddiSMTAvailablePaths.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 18
  %15 = ptrtoint ptr %fddiSMTAvailablePaths.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 3, ptr %fddiSMTAvailablePaths.i, align 1
  %fddiSMTConfigCapabilities.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 19
  %16 = ptrtoint ptr %fddiSMTConfigCapabilities.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %fddiSMTConfigCapabilities.i, align 2
  %fddiSMTTT_Notify.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 22
  %17 = ptrtoint ptr %fddiSMTTT_Notify.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 10, ptr %fddiSMTTT_Notify.i, align 4
  %fddiSMTStatRptPolicy.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 23
  %18 = ptrtoint ptr %fddiSMTStatRptPolicy.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %fddiSMTStatRptPolicy.i, align 2
  %fddiSMTTrace_MaxExpiration.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 24
  %19 = ptrtoint ptr %fddiSMTTrace_MaxExpiration.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 87500000, ptr %fddiSMTTrace_MaxExpiration.i, align 4
  %fddiSMTMACIndexes.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 26
  %20 = ptrtoint ptr %fddiSMTMACIndexes.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %fddiSMTMACIndexes.i, align 4
  %fddiSMTStationStatus.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 30
  %21 = ptrtoint ptr %fddiSMTStationStatus.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 1, ptr %fddiSMTStationStatus.i, align 4
  %m.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37
  %fddiMACIndex.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 15
  %22 = ptrtoint ptr %fddiMACIndex.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %fddiMACIndex.i, align 4
  %23 = ptrtoint ptr %m.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %m.i, align 4
  %fddiMACRequestedPaths.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 13
  %24 = ptrtoint ptr %fddiMACRequestedPaths.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 7, ptr %fddiMACRequestedPaths.i, align 4
  %fddiMACAvailablePaths.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 6
  %25 = ptrtoint ptr %fddiMACAvailablePaths.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %fddiMACAvailablePaths.i, align 1
  %fddiMACCurrentPath.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 7
  %26 = ptrtoint ptr %fddiMACCurrentPath.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 3, ptr %fddiMACCurrentPath.i, align 4
  %fddiMACT_MaxCapabilitiy.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 1
  %27 = ptrtoint ptr %fddiMACT_MaxCapabilitiy.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -2062500, ptr %fddiMACT_MaxCapabilitiy.i, align 4
  %fddiMACTVXCapabilitiy.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 2
  %28 = ptrtoint ptr %fddiMACTVXCapabilitiy.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -65000, ptr %fddiMACTVXCapabilitiy.i, align 4
  br i1 %cmp.i, label %if.then20.i, label %for.inc.critedge.i

if.then20.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  %fddiMACTvxValue.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 24
  %29 = ptrtoint ptr %fddiMACTvxValue.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -33750, ptr %fddiMACTvxValue.i, align 4
  %fddiMACTvxValueMIB.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 23
  %30 = ptrtoint ptr %fddiMACTvxValueMIB.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -33750, ptr %fddiMACTvxValueMIB.i, align 4
  %fddiMACT_Req.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 19
  %31 = ptrtoint ptr %fddiMACT_Req.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -2062500, ptr %fddiMACT_Req.i, align 4
  %fddiMACT_ReqMIB.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 18
  %32 = ptrtoint ptr %fddiMACT_ReqMIB.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -2062500, ptr %fddiMACT_ReqMIB.i, align 4
  %fddiMACT_Max.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 22
  %33 = ptrtoint ptr %fddiMACT_Max.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -2062500, ptr %fddiMACT_Max.i, align 4
  %fddiMACT_MaxMIB.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 21
  %34 = ptrtoint ptr %fddiMACT_MaxMIB.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -2062500, ptr %fddiMACT_MaxMIB.i, align 4
  %fddiMACT_Min.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 17
  %35 = ptrtoint ptr %fddiMACT_Min.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -50000, ptr %fddiMACT_Min.i, align 4
  %fddiMACHardwarePresent.c.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 58
  %36 = ptrtoint ptr %fddiMACHardwarePresent.c.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %fddiMACHardwarePresent.c.i, align 1
  %fddiMACMA_UnitdataEnable.c.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 59
  %37 = ptrtoint ptr %fddiMACMA_UnitdataEnable.c.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %fddiMACMA_UnitdataEnable.c.i, align 4
  %fddiMACFrameErrorThreshold.c.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 48
  %38 = ptrtoint ptr %fddiMACFrameErrorThreshold.c.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %fddiMACFrameErrorThreshold.c.i, align 4
  %fddiMACNotCopiedThreshold.c.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 50
  %39 = ptrtoint ptr %fddiMACNotCopiedThreshold.c.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 1, ptr %fddiMACNotCopiedThreshold.c.i, align 4
  %arrayidx45.c.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 38, i32 0
  %40 = ptrtoint ptr %arrayidx45.c.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 1, ptr %arrayidx45.c.i, align 4
  %fddiPATHTVXLowerBound.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 38, i32 0, i32 5
  %41 = ptrtoint ptr %fddiPATHTVXLowerBound.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -33750, ptr %fddiPATHTVXLowerBound.i, align 4
  %fddiPATHT_MaxLowerBound.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 38, i32 0, i32 6
  %42 = ptrtoint ptr %fddiPATHT_MaxLowerBound.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -2062500, ptr %fddiPATHT_MaxLowerBound.i, align 4
  %fddiPATHMaxT_Req.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 38, i32 0, i32 7
  %43 = ptrtoint ptr %fddiPATHMaxT_Req.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -2062500, ptr %fddiPATHMaxT_Req.i, align 4
  %arrayidx45.1155.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 38, i32 1
  %44 = ptrtoint ptr %arrayidx45.1155.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 2, ptr %arrayidx45.1155.i, align 4
  %fddiPATHTVXLowerBound.1.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 38, i32 1, i32 5
  %45 = ptrtoint ptr %fddiPATHTVXLowerBound.1.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -33750, ptr %fddiPATHTVXLowerBound.1.i, align 4
  %fddiPATHT_MaxLowerBound.1.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 38, i32 1, i32 6
  %46 = ptrtoint ptr %fddiPATHT_MaxLowerBound.1.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -2062500, ptr %fddiPATHT_MaxLowerBound.1.i, align 4
  %fddiPATHMaxT_Req.1.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 38, i32 1, i32 7
  %47 = ptrtoint ptr %fddiPATHMaxT_Req.1.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -2062500, ptr %fddiPATHMaxT_Req.1.i, align 4
  %arrayidx61.c161.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 0
  %48 = ptrtoint ptr %arrayidx61.c161.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %arrayidx61.c161.i, align 4
  %fddiPORTLer_Alarm.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 39, i32 0, i32 21
  %49 = ptrtoint ptr %fddiPORTLer_Alarm.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 8, ptr %fddiPORTLer_Alarm.i, align 2
  %fddiPORTLer_Cutoff.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 39, i32 0, i32 20
  %50 = ptrtoint ptr %fddiPORTLer_Cutoff.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 7, ptr %fddiPORTLer_Cutoff.i, align 1
  br label %if.end71.i

for.inc.critedge.i:                               ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  %fddiMACHardwarePresent.c156.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 58
  %51 = ptrtoint ptr %fddiMACHardwarePresent.c156.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %fddiMACHardwarePresent.c156.i, align 1
  %fddiMACMA_UnitdataEnable.c157.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 59
  %52 = ptrtoint ptr %fddiMACMA_UnitdataEnable.c157.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %fddiMACMA_UnitdataEnable.c157.i, align 4
  %fddiMACFrameErrorThreshold.c158.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 48
  %53 = ptrtoint ptr %fddiMACFrameErrorThreshold.c158.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 1, ptr %fddiMACFrameErrorThreshold.c158.i, align 4
  %fddiMACNotCopiedThreshold.c159.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 50
  %54 = ptrtoint ptr %fddiMACNotCopiedThreshold.c159.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 1, ptr %fddiMACNotCopiedThreshold.c159.i, align 4
  %arrayidx45.c160.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 38, i32 0
  %55 = ptrtoint ptr %arrayidx45.c160.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 1, ptr %arrayidx45.c160.i, align 4
  %arrayidx45.1.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 38, i32 1
  %56 = ptrtoint ptr %arrayidx45.1.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 2, ptr %arrayidx45.1.i, align 4
  %arrayidx61.c.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 0
  %57 = ptrtoint ptr %arrayidx61.c.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %arrayidx61.c.i, align 4
  br label %if.end71.i

if.end71.i:                                       ; preds = %for.inc.critedge.i, %if.then20.i
  %58 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 25, i32 0
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 1, ptr %58, align 2
  %60 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 39, i32 0, i32 10
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 1, ptr %60, align 4
  %62 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 39, i32 0, i32 26
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %62, align 4
  %arrayidx72.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 39, i32 0, i32 5, i32 1
  %64 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %arrayidx72.i, align 1
  %arrayidx74.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 39, i32 0, i32 5, i32 2
  %65 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %arrayidx74.i, align 2
  %arrayidx76.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 39, i32 0, i32 5, i32 3
  %66 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %arrayidx76.i, align 1
  %fddiPORTAvailablePaths.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 39, i32 0, i32 7
  %67 = ptrtoint ptr %fddiPORTAvailablePaths.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %fddiPORTAvailablePaths.i, align 4
  %fddiPORTPMDClass.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 39, i32 0, i32 9
  %68 = ptrtoint ptr %fddiPORTPMDClass.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 0, ptr %fddiPORTPMDClass.i, align 2
  %arrayidx61.1.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 1
  %69 = ptrtoint ptr %arrayidx61.1.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %arrayidx61.1.i, align 4
  %arrayidx65.1.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 25, i32 1
  %70 = ptrtoint ptr %arrayidx65.1.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 2, ptr %arrayidx65.1.i, align 2
  %fddiPORTIndex.1.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 39, i32 1, i32 10
  %71 = ptrtoint ptr %fddiPORTIndex.1.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 2, ptr %fddiPORTIndex.1.i, align 4
  %fddiPORTHardwarePresent.1.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 39, i32 1, i32 26
  %72 = ptrtoint ptr %fddiPORTHardwarePresent.1.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 1, ptr %fddiPORTHardwarePresent.1.i, align 4
  br i1 %cmp.i, label %if.then70.1.i, label %if.end71.i.smt_init_mib.exit_crit_edge

if.end71.i.smt_init_mib.exit_crit_edge:           ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %smt_init_mib.exit

if.then70.1.i:                                    ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #6
  %fddiPORTLer_Alarm.1.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 39, i32 1, i32 21
  %73 = ptrtoint ptr %fddiPORTLer_Alarm.1.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 8, ptr %fddiPORTLer_Alarm.1.i, align 2
  %fddiPORTLer_Cutoff.1.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 39, i32 1, i32 20
  %74 = ptrtoint ptr %fddiPORTLer_Cutoff.1.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 7, ptr %fddiPORTLer_Cutoff.1.i, align 1
  br label %smt_init_mib.exit

smt_init_mib.exit:                                ; preds = %if.then70.1.i, %if.end71.i.smt_init_mib.exit_crit_edge
  %arrayidx72.1.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 39, i32 1, i32 5, i32 1
  %75 = ptrtoint ptr %arrayidx72.1.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %arrayidx72.1.i, align 1
  %arrayidx74.1.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 39, i32 1, i32 5, i32 2
  %76 = ptrtoint ptr %arrayidx74.1.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %arrayidx74.1.i, align 2
  %arrayidx76.1.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 39, i32 1, i32 5, i32 3
  %77 = ptrtoint ptr %arrayidx76.1.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %arrayidx76.1.i, align 1
  %fddiPORTAvailablePaths.1.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 39, i32 1, i32 7
  %78 = ptrtoint ptr %fddiPORTAvailablePaths.1.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %fddiPORTAvailablePaths.1.i, align 4
  %fddiPORTPMDClass.1.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 39, i32 1, i32 9
  %79 = ptrtoint ptr %fddiPORTPMDClass.1.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 0, ptr %fddiPORTPMDClass.1.i, align 2
  %fddiMACTvxValueMIB.i.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 23
  %80 = ptrtoint ptr %fddiMACTvxValueMIB.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %fddiMACTvxValueMIB.i.i, align 4
  %fddiPATHTVXLowerBound.i.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 38, i32 0, i32 5
  %82 = ptrtoint ptr %fddiPATHTVXLowerBound.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %fddiPATHTVXLowerBound.i.i, align 4
  %fddiMACTvxValue.i.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 24
  %84 = tail call i32 @llvm.umin.i32(i32 %83, i32 %81) #4
  %85 = ptrtoint ptr %fddiMACTvxValue.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %fddiMACTvxValue.i.i, align 4
  %fddiMACT_MaxMIB.i.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 21
  %86 = ptrtoint ptr %fddiMACT_MaxMIB.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %fddiMACT_MaxMIB.i.i, align 4
  %fddiPATHT_MaxLowerBound.i.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 38, i32 0, i32 6
  %88 = ptrtoint ptr %fddiPATHT_MaxLowerBound.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %fddiPATHT_MaxLowerBound.i.i, align 4
  %fddiMACT_Max.i.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 22
  %90 = tail call i32 @llvm.umax.i32(i32 %89, i32 %87) #4
  %91 = ptrtoint ptr %fddiMACT_Max.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %fddiMACT_Max.i.i, align 4
  %fddiMACT_ReqMIB.i.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 18
  %92 = ptrtoint ptr %fddiMACT_ReqMIB.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %fddiMACT_ReqMIB.i.i, align 4
  %fddiPATHMaxT_Req.i.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 38, i32 0, i32 7
  %94 = ptrtoint ptr %fddiPATHMaxT_Req.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %fddiPATHMaxT_Req.i.i, align 4
  %fddiMACT_Req.i.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 19
  %96 = tail call i32 @llvm.umax.i32(i32 %95, i32 %93) #4
  %97 = ptrtoint ptr %fddiMACT_Req.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %fddiMACT_Req.i.i, align 4
  %smc_version = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 18
  %98 = ptrtoint ptr %smc_version to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 1, ptr %smc_version, align 8
  %call = tail call i32 @smt_get_time() #4
  %last_tok_time = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 3, i32 10
  %99 = ptrtoint ptr %last_tok_time to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %call, ptr %last_tok_time, align 4
  %s = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2
  %100 = ptrtoint ptr %s to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %s, align 4
  %build_ring_map = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 2
  %101 = ptrtoint ptr %build_ring_map to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 1, ptr %build_ring_map, align 2
  %sas = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 1
  %102 = ptrtoint ptr %sas to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %sas, align 1
  %numphys = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 3
  %103 = ptrtoint ptr %numphys to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 2, ptr %numphys, align 1
  %pcm_tb_min = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 5
  %104 = ptrtoint ptr %pcm_tb_min to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 5000, ptr %pcm_tb_min, align 4
  %pcm_tb_max = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 6
  %105 = ptrtoint ptr %pcm_tb_max to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 50000, ptr %pcm_tb_max, align 4
  %pcm_c_min = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 7
  %106 = ptrtoint ptr %pcm_c_min to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 1600, ptr %pcm_c_min, align 4
  %pcm_t_out = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 8
  %107 = ptrtoint ptr %pcm_t_out to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 105000, ptr %pcm_t_out, align 4
  %pcm_tl_min = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 9
  %108 = ptrtoint ptr %pcm_tl_min to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 30, ptr %pcm_tl_min, align 4
  %pcm_lc_short = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 10
  %109 = ptrtoint ptr %pcm_lc_short to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 55000, ptr %pcm_lc_short, align 4
  %pcm_lc_medium = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 11
  %110 = ptrtoint ptr %pcm_lc_medium to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 520000, ptr %pcm_lc_medium, align 4
  %pcm_lc_long = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 12
  %111 = ptrtoint ptr %pcm_lc_long to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 5050000, ptr %pcm_lc_long, align 4
  %pcm_lc_extended = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 13
  %112 = ptrtoint ptr %pcm_lc_extended to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 50050000, ptr %pcm_lc_extended, align 4
  %pcm_t_next_9 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 14
  %113 = ptrtoint ptr %pcm_t_next_9 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 210000, ptr %pcm_t_next_9, align 4
  %pcm_ns_max = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 15
  %114 = ptrtoint ptr %pcm_ns_max to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 1310, ptr %pcm_ns_max, align 4
  %ecm_i_max = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 16
  %115 = ptrtoint ptr %ecm_i_max to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 25000, ptr %ecm_i_max, align 4
  %ecm_in_max = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 17
  %116 = ptrtoint ptr %ecm_in_max to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 40000, ptr %ecm_in_max, align 4
  %ecm_td_min = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 18
  %117 = ptrtoint ptr %ecm_td_min to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 5000, ptr %ecm_td_min, align 4
  %ecm_test_done = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 19
  %118 = ptrtoint ptr %ecm_test_done to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 1000000, ptr %ecm_test_done, align 4
  %ecm_check_poll = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 20
  %119 = ptrtoint ptr %ecm_check_poll to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 1000000, ptr %ecm_check_poll, align 4
  %rmt_t_non_op = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 21
  %120 = ptrtoint ptr %rmt_t_non_op to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 1000000, ptr %rmt_t_non_op, align 4
  %rmt_t_stuck = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 22
  %121 = ptrtoint ptr %rmt_t_stuck to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 8000000, ptr %rmt_t_stuck, align 4
  %rmt_t_direct = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 23
  %122 = ptrtoint ptr %rmt_t_direct to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 370000, ptr %rmt_t_direct, align 4
  %rmt_t_jam = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 24
  %123 = ptrtoint ptr %rmt_t_jam to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 370000, ptr %rmt_t_jam, align 4
  %rmt_t_announce = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 25
  %124 = ptrtoint ptr %rmt_t_announce to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 2500000, ptr %rmt_t_announce, align 4
  %rmt_t_poll = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 26
  %125 = ptrtoint ptr %rmt_t_poll to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 50000, ptr %rmt_t_poll, align 4
  %rmt_dup_mac_behavior = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 27
  %126 = ptrtoint ptr %rmt_dup_mac_behavior to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %rmt_dup_mac_behavior, align 4
  %mac_d_max = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 28
  %127 = ptrtoint ptr %mac_d_max to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 1617, ptr %mac_d_max, align 4
  %lct_short = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 29
  %128 = ptrtoint ptr %lct_short to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 1, ptr %lct_short, align 4
  %lct_medium = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 30
  %129 = ptrtoint ptr %lct_medium to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 3, ptr %lct_medium, align 4
  %lct_long = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 31
  %130 = ptrtoint ptr %lct_long to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 5, ptr %lct_long, align 4
  %lct_extended = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 32
  %131 = ptrtoint ptr %lct_extended to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 50, ptr %lct_extended, align 4
  br i1 %cmp.i, label %if.then, label %smt_init_mib.exit.if.end13_crit_edge

smt_init_mib.exit.if.end13_crit_edge:             ; preds = %smt_init_mib.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then:                                          ; preds = %smt_init_mib.exit
  call void @__sanitizer_cov_trace_pc() #6
  %ess = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 14
  %132 = ptrtoint ptr %ess to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 0, ptr %ess, align 8
  %fddiESSPayload = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 2
  %133 = ptrtoint ptr %fddiESSPayload to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %fddiESSPayload, align 4
  %fddiESSOverhead = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 3
  %134 = ptrtoint ptr %fddiESSOverhead to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 0, ptr %fddiESSOverhead, align 4
  %fddiESSMaxTNeg = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 4
  %135 = ptrtoint ptr %fddiESSMaxTNeg to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 -312500, ptr %fddiESSMaxTNeg, align 4
  %fddiESSMinSegmentSize = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 5
  %136 = ptrtoint ptr %fddiESSMinSegmentSize to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 1, ptr %fddiESSMinSegmentSize, align 4
  %fddiESSCategory = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 6
  %137 = ptrtoint ptr %fddiESSCategory to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 1, ptr %fddiESSCategory, align 4
  %fddiESSSynchTxMode = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 7
  %138 = ptrtoint ptr %fddiESSSynchTxMode to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 0, ptr %fddiESSSynchTxMode, align 4
  %raf_act_timer_poll = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 14, i32 2
  %139 = ptrtoint ptr %raf_act_timer_poll to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 0, ptr %raf_act_timer_poll, align 2
  %timer_count = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 14, i32 3
  %140 = ptrtoint ptr %timer_count to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 7, ptr %timer_count, align 1
  %pci_fix_value = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 13
  %141 = ptrtoint ptr %pci_fix_value to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 0, ptr %pci_fix_value, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then, %smt_init_mib.exit.if.end13_crit_edge
  %142 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 14, i32 1
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 0, ptr %142, align 1
  %144 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 14, i32 4
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr null, ptr %144, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smt_get_time() local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @smt_set_mac_opvalues(ptr nocapture noundef %smc) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fddiMACTvxValueMIB = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 23
  %0 = ptrtoint ptr %fddiMACTvxValueMIB to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fddiMACTvxValueMIB, align 4
  %fddiPATHTVXLowerBound = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 38, i32 0, i32 5
  %2 = ptrtoint ptr %fddiPATHTVXLowerBound to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fddiPATHTVXLowerBound, align 4
  %fddiMACTvxValue = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 24
  %4 = ptrtoint ptr %fddiMACTvxValue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fddiMACTvxValue, align 4
  %6 = tail call i32 @llvm.umin.i32(i32 %3, i32 %1)
  %7 = ptrtoint ptr %fddiMACTvxValue to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %fddiMACTvxValue, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %6)
  %cmp1.i = icmp ne i32 %5, %6
  %fddiMACT_MaxMIB = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 21
  %8 = ptrtoint ptr %fddiMACT_MaxMIB to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fddiMACT_MaxMIB, align 4
  %fddiPATHT_MaxLowerBound = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 38, i32 0, i32 6
  %10 = ptrtoint ptr %fddiPATHT_MaxLowerBound to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fddiPATHT_MaxLowerBound, align 4
  %fddiMACT_Max = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 22
  %12 = ptrtoint ptr %fddiMACT_Max to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fddiMACT_Max, align 4
  %14 = tail call i32 @llvm.umax.i32(i32 %11, i32 %9)
  %15 = ptrtoint ptr %fddiMACT_Max to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %fddiMACT_Max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %14)
  %cmp1.i40 = icmp ne i32 %13, %14
  %or48 = or i1 %cmp1.i, %cmp1.i40
  %fddiMACT_ReqMIB = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 18
  %16 = ptrtoint ptr %fddiMACT_ReqMIB to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fddiMACT_ReqMIB, align 4
  %fddiPATHMaxT_Req = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 38, i32 0, i32 7
  %18 = ptrtoint ptr %fddiPATHMaxT_Req to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fddiPATHMaxT_Req, align 4
  %fddiMACT_Req = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 19
  %20 = ptrtoint ptr %fddiMACT_Req to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fddiMACT_Req, align 4
  %22 = tail call i32 @llvm.umax.i32(i32 %19, i32 %17)
  %23 = ptrtoint ptr %fddiMACT_Req to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %fddiMACT_Req, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %22)
  %cmp1.i46 = icmp ne i32 %21, %22
  %or2649 = or i1 %or48, %cmp1.i46
  %or26 = zext i1 %or2649 to i32
  ret i32 %or26
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @smt_fixup_mib(ptr nocapture noundef %smc) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sas = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %sas to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sas, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %entry.sw.epilog_crit_edge [
    i8 1, label %entry.sw.epilog.sink.split_crit_edge
    i8 0, label %sw.bb1
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb1, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i8 [ 2, %sw.bb1 ], [ %1, %entry.sw.epilog.sink.split_crit_edge ]
  %fddiSMTNonMaster_Ct3 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 16
  %3 = ptrtoint ptr %fddiSMTNonMaster_Ct3 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %.sink, ptr %fddiSMTNonMaster_Ct3, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %fddiSMTMaster_Ct = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 17
  %4 = ptrtoint ptr %fddiSMTMaster_Ct to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %fddiSMTMaster_Ct, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/fddi/skfp/smtdef.c", i32 184, i32 31}
!2 = !{ptr @man_data, !3, !"man_data", i1 false, i1 false}
!3 = !{!"../drivers/net/fddi/skfp/smtdef.c", i32 152, i32 19}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
