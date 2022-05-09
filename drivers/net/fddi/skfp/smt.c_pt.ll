; ModuleID = '/llk/IR_all_yes/drivers/net/fddi/skfp/smt.c_pt.bc'
source_filename = "../drivers/net/fddi/skfp/smt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fddi_addr = type { [6 x i8] }
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
%struct.s_mbuf = type { ptr, i16, i32, i32, [4504 x i8] }
%struct.smt_header = type { %struct.fddi_addr, %struct.fddi_addr, i8, i8, i16, i32, %struct.smt_sid, i16, i16 }
%struct.smt_nif = type { %struct.smt_header, %struct.smt_p_una, %struct.smt_p_sde, %struct.smt_p_state, %struct.smt_p_fsc }
%struct.smt_p_una = type { %struct.smt_para, i16, %struct.fddi_addr }
%struct.smt_para = type { i16, i16 }
%struct.smt_p_sde = type { %struct.smt_para, i8, i8, i8, i8 }
%struct.smt_p_state = type { %struct.smt_para, i16, i8, i8 }
%struct.smt_p_fsc = type { %struct.smt_para, i16, i16, i16, i16 }
%struct.smt_rdf = type { %struct.smt_header, %struct.smt_p_reason, %struct.smt_p_version, %struct.smt_p_refused }
%struct.smt_p_reason = type { %struct.smt_para, i32 }
%struct.smt_p_version = type { %struct.smt_para, i16, i8, i8, [1 x i16], i16 }
%struct.smt_p_refused = type { %struct.smt_para, i32, %struct.smt_header }
%struct.smt_ecf = type { %struct.smt_header, %struct.smt_p_echo }
%struct.smt_p_echo = type { %struct.smt_para, [4454 x i8] }
%struct.smt_sif_config = type { %struct.smt_header, %struct.smt_p_timestamp, %struct.smt_p_sde, %struct.smt_p_version, %struct.smt_p_state, %struct.smt_p_policy, %struct.smt_p_latency, %struct.smt_p_neighbor, %struct.smt_p_setcount, %struct.smt_p_path }
%struct.smt_p_timestamp = type { %struct.smt_para, [8 x i8] }
%struct.smt_p_policy = type { %struct.smt_para, i16, i16 }
%struct.smt_p_latency = type { %struct.smt_para, i16, i16, i16, i16 }
%struct.smt_p_neighbor = type { %struct.smt_para, i16, i16, %struct.fddi_addr, %struct.fddi_addr }
%struct.smt_p_setcount = type { %struct.smt_para, i32, [8 x i8] }
%struct.smt_p_path = type { %struct.smt_para, [2 x %struct.smt_phy_rec], %struct.smt_mac_rec }
%struct.smt_phy_rec = type { i16, i8, i8, i8, i8, i16 }
%struct.smt_mac_rec = type { %struct.fddi_addr, i16 }
%struct.smt_sif_operation = type { %struct.smt_header, %struct.smt_p_timestamp, %struct.smt_p_mac_status, %struct.smt_p_mac_counter, %struct.smt_p_mac_fnc, %struct.smp_p_manufacturer, %struct.smp_p_user, %struct.smt_p_setcount, [0 x %struct.smt_p_lem] }
%struct.smt_p_mac_status = type { %struct.smt_para, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.smt_p_mac_counter = type { %struct.smt_para, i16, i16, i32, i32 }
%struct.smt_p_mac_fnc = type { %struct.smt_para, i16, i16, i32 }
%struct.smp_p_manufacturer = type { %struct.smt_para, [32 x i8] }
%struct.smp_p_user = type { %struct.smt_para, [32 x i8] }
%struct.smt_p_lem = type { %struct.smt_para, i16, i16, i8, i8, i8, i8, i32, i32 }

@fddi_broadcast = external dso_local constant %struct.fddi_addr, align 1
@SMT_Unknown = internal constant { %struct.fddi_addr, [26 x i8] } { %struct.fddi_addr { [6 x i8] c"\00\00\1F\00\00\00" }, [26 x i8] zeroinitializer }, align 32
@plist_nif = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 1, i16 2, i16 3, i16 0], [24 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@switch.table.smt_send_sif_config = internal constant { [6 x i16], [20 x i8] } { [6 x i16] [i16 1, i16 1, i16 1, i16 2, i16 1, i16 2], [20 x i8] zeroinitializer }, align 32
@switch.table.smt_action = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 7, i32 10, i32 11, i32 1, i32 2], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 65, i64 66, i64 67, i64 79]
@__sancov_gen_cov_switch_values.1 = internal global [12 x i64] [i64 10, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 255]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.4 = internal global [7 x i64] [i64 5, i64 16, i64 7, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.5 = internal global [7 x i64] [i64 5, i64 16, i64 7, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.7 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.8 = private unnamed_addr constant [12 x i8] c"SMT_Unknown\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 44, i32 31 }
@___asan_gen_.11 = private unnamed_addr constant [10 x i8] c"plist_nif\00", align 1
@___asan_gen_.12 = private constant [31 x i8] c"../drivers/net/fddi/skfp/smt.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 142, i32 22 }
@___asan_gen_.14 = private unnamed_addr constant [33 x i8] c"switch.table.smt_send_sif_config\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [24 x i8] c"switch.table.smt_action\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @SMT_Unknown, ptr @plist_nif, ptr @switch.table.smt_send_sif_config, ptr @switch.table.smt_action], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SMT_Unknown to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plist_nif to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.smt_send_sif_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.smt_action to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smt_agent_init(ptr noundef %smc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fddiMACSMTAddress = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 16
  %fddi_home_addr = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 19
  %0 = call ptr @memcpy(ptr %fddiMACSMTAddress, ptr %fddi_home_addr, i32 6)
  %fddiSMTStationId = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 8
  %1 = ptrtoint ptr %fddiSMTStationId to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %fddiSMTStationId, align 2
  %arrayidx6 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 8, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %arrayidx6, align 1
  %sid_node = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 8, i32 1
  tail call void @driver_get_bia(ptr noundef %smc, ptr noundef %sid_node) #6
  %3 = ptrtoint ptr %sid_node to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sid_node, align 1
  %idxprom.i = zext i8 %4 to i32
  %arrayidx.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 1
  store i8 %6, ptr %sid_node, align 1
  %arrayidx12.1 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 8, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx12.1, align 1
  %idxprom.i.1 = zext i8 %8 to i32
  %arrayidx.i.1 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.1
  %9 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i.1, align 1
  store i8 %10, ptr %arrayidx12.1, align 1
  %arrayidx12.2 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 8, i32 1, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx12.2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx12.2, align 1
  %idxprom.i.2 = zext i8 %12 to i32
  %arrayidx.i.2 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.2
  %13 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i.2, align 1
  store i8 %14, ptr %arrayidx12.2, align 1
  %arrayidx12.3 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 8, i32 1, i32 0, i32 3
  %15 = ptrtoint ptr %arrayidx12.3 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx12.3, align 1
  %idxprom.i.3 = zext i8 %16 to i32
  %arrayidx.i.3 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.3
  %17 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i.3, align 1
  store i8 %18, ptr %arrayidx12.3, align 1
  %arrayidx12.4 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 8, i32 1, i32 0, i32 4
  %19 = ptrtoint ptr %arrayidx12.4 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx12.4, align 1
  %idxprom.i.4 = zext i8 %20 to i32
  %arrayidx.i.4 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.4
  %21 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i.4, align 1
  store i8 %22, ptr %arrayidx12.4, align 1
  %arrayidx12.5 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 8, i32 1, i32 0, i32 5
  %23 = ptrtoint ptr %arrayidx12.5 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx12.5, align 1
  %idxprom.i.5 = zext i8 %24 to i32
  %arrayidx.i.5 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.5
  %25 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i.5, align 1
  store i8 %26, ptr %arrayidx12.5, align 1
  %27 = load i8, ptr %sid_node, align 2
  %fddiSMTManufacturerData = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 12
  %28 = ptrtoint ptr %fddiSMTManufacturerData to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %fddiSMTManufacturerData, align 4
  %arrayidx50 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 8, i32 1, i32 0, i32 1
  %29 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx50, align 1
  %arrayidx53 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 12, i32 1
  %31 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %arrayidx53, align 1
  %arrayidx58 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 8, i32 1, i32 0, i32 2
  %32 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx58, align 2
  %arrayidx61 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 12, i32 2
  %34 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %arrayidx61, align 2
  %smt_tid = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 3, i32 2
  %35 = ptrtoint ptr %smt_tid to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %smt_tid, align 4
  %fddiMACDupAddressTest = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 12
  %36 = ptrtoint ptr %fddiMACDupAddressTest to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %fddiMACDupAddressTest, align 2
  %fddiMACUNDA_Flag = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 54
  %37 = ptrtoint ptr %fddiMACUNDA_Flag to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %fddiMACUNDA_Flag, align 1
  %fddiMACUpstreamNbr.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 8
  %38 = call ptr @memcpy(ptr %fddiMACUpstreamNbr.i, ptr @SMT_Unknown, i32 6)
  %fddiMACDownstreamNbr.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 9
  %39 = call ptr @memcpy(ptr %fddiMACDownstreamNbr.i, ptr @SMT_Unknown, i32 6)
  %fddiMACOldUpstreamNbr.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 10
  %40 = call ptr @memcpy(ptr %fddiMACOldUpstreamNbr.i, ptr @SMT_Unknown, i32 6)
  %fddiMACOldDownstreamNbr.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 11
  %41 = call ptr @memcpy(ptr %fddiMACOldDownstreamNbr.i, ptr @SMT_Unknown, i32 6)
  %uglygep = getelementptr i8, ptr %smc, i32 3672
  %42 = call ptr @memset(ptr %uglygep, i32 0, i32 20)
  %please_reconnect = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 3, i32 6
  %43 = ptrtoint ptr %please_reconnect to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %please_reconnect, align 2
  %uniq_ticks = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 3, i32 5
  %44 = ptrtoint ptr %uniq_ticks to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %uniq_ticks, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_get_bia(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smt_agent_task(ptr noundef %smc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %smt_timer = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 3, i32 9
  tail call void @smt_timer_start(ptr noundef %smc, ptr noundef %smt_timer, i32 noundef 1000000, i32 noundef 262145) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smt_timer_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smt_emulate_token_ct(ptr nocapture noundef %smc, i32 noundef %mac_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @smt_get_time() #6
  %arrayidx = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 3, i32 10, i32 %mac_index
  %mac_ring_is_up = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 24
  %0 = ptrtoint ptr %mac_ring_is_up to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mac_ring_is_up, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %sub = sub i32 %call, %3
  %mul = mul i32 %sub, 100
  %div = udiv i32 %mul, 100
  %fddiMACToken_Ct = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 %mac_index, i32 35
  %4 = ptrtoint ptr %fddiMACToken_Ct to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fddiMACToken_Ct, align 4
  %add = add i32 %div, %5
  store i32 %add, ptr %fddiMACToken_Ct, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smt_get_time() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smt_event(ptr noundef %smc, i32 noundef %event) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sm = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 3
  %please_reconnect = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 3, i32 6
  %0 = ptrtoint ptr %please_reconnect to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %please_reconnect, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then:                                          ; preds = %entry
  %dec = add i16 %1, -1
  %2 = ptrtoint ptr %please_reconnect to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %dec, ptr %please_reconnect, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec)
  %cmp = icmp eq i16 %dec, 0
  br i1 %cmp, label %if.then6, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @queue_event(ptr noundef %smc, i32 noundef 1, i32 noundef 1) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event)
  %cmp8 = icmp eq i32 %event, 2
  br i1 %cmp8, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  tail call void @smt_timer_poll(ptr noundef %smc) #6
  tail call void @smt_start_watchdog(ptr noundef %smc) #6
  tail call void @ess_timer_poll(ptr noundef %smc) #6
  tail call void @smt_srf_event(ptr noundef %smc, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  %call = tail call i32 @smt_get_time() #6
  %smt_last_lem = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 3, i32 7
  %3 = ptrtoint ptr %smt_last_lem to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %smt_last_lem, align 4
  %sub = sub i32 %call, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 799, i32 %sub)
  %cmp13 = icmp ugt i32 %sub, 799
  br i1 %cmp13, label %if.then15, label %if.end11.if.end96_crit_edge

if.end11.if.end96_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end96

if.then15:                                        ; preds = %if.end11
  tail call void @sm_lem_evaluate(ptr noundef %smc) #6
  %5 = ptrtoint ptr %smt_last_lem to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call, ptr %smt_last_lem, align 4
  tail call void @mac_update_counter(ptr noundef %smc) #6
  %fddiMACLost_Ct = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 37
  %6 = ptrtoint ptr %fddiMACLost_Ct to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fddiMACLost_Ct, align 4
  %fddiMACOld_Lost_Ct = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 46
  %8 = ptrtoint ptr %fddiMACOld_Lost_Ct to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fddiMACOld_Lost_Ct, align 4
  %sub19 = sub i32 %7, %9
  %fddiMACError_Ct = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 36
  %10 = ptrtoint ptr %fddiMACError_Ct to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fddiMACError_Ct, align 4
  %fddiMACOld_Error_Ct = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 45
  %12 = ptrtoint ptr %fddiMACOld_Error_Ct to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fddiMACOld_Error_Ct, align 4
  %fddiMACFrame_Ct = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 32
  %14 = ptrtoint ptr %fddiMACFrame_Ct to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fddiMACFrame_Ct, align 4
  %fddiMACOld_Frame_Ct = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 43
  %16 = ptrtoint ptr %fddiMACOld_Frame_Ct to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fddiMACOld_Frame_Ct, align 4
  %sub21 = sub i32 %15, %17
  %add25 = add i32 %sub21, %sub19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add25)
  %tobool.not.i = icmp eq i32 %add25, 0
  br i1 %tobool.not.i, label %if.then15.div_ratio.exit_crit_edge, label %if.end3.i

if.then15.div_ratio.exit_crit_edge:               ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %div_ratio.exit

if.end3.i:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  %sub20 = sub i32 %11, %13
  %add = add i32 %sub20, %sub19
  %shl.i = shl i32 %add, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %add)
  %cmp.i = icmp ult i32 %shl.i, %add
  %.shl.i = select i1 %cmp.i, i32 -65536, i32 %shl.i
  %div.i = udiv i32 %.shl.i, %add25
  br label %div_ratio.exit

div_ratio.exit:                                   ; preds = %if.end3.i, %if.then15.div_ratio.exit_crit_edge
  %retval.0.i = phi i32 [ %div.i, %if.end3.i ], [ 0, %if.then15.div_ratio.exit_crit_edge ]
  %conv27 = trunc i32 %retval.0.i to i16
  %fddiMACFrameErrorRatio = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 49
  %18 = ptrtoint ptr %fddiMACFrameErrorRatio to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv27, ptr %fddiMACFrameErrorRatio, align 2
  %fddiMACFrameErrorThreshold = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 48
  %19 = ptrtoint ptr %fddiMACFrameErrorThreshold to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %fddiMACFrameErrorThreshold, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool28.not = icmp eq i16 %20, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp31.not = icmp ne i32 %11, %13
  %or.cond330 = select i1 %tobool28.not, i1 %cmp31.not, i1 false
  call void @__sanitizer_cov_trace_cmp2(i16 %20, i16 %conv27)
  %cmp37 = icmp ult i16 %20, %conv27
  %spec.select = select i1 %or.cond330, i1 true, i1 %cmp37
  %fddiMACFrameErrorFlag = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 55
  %21 = ptrtoint ptr %fddiMACFrameErrorFlag to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %fddiMACFrameErrorFlag, align 4
  %23 = zext i1 %spec.select to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %23)
  %cmp40.not = icmp eq i8 %22, %23
  br i1 %cmp40.not, label %div_ratio.exit.if.end43_crit_edge, label %if.then42

div_ratio.exit.if.end43_crit_edge:                ; preds = %div_ratio.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then42:                                        ; preds = %div_ratio.exit
  call void @__sanitizer_cov_trace_pc() #8
  %lor.ext = zext i1 %spec.select to i32
  tail call void @smt_srf_event(ptr noundef %smc, i32 noundef 7, i32 noundef 1, i32 noundef %lor.ext) #6
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %div_ratio.exit.if.end43_crit_edge
  %fddiMACNotCopied_Ct = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 39
  %24 = ptrtoint ptr %fddiMACNotCopied_Ct to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fddiMACNotCopied_Ct, align 4
  %fddiMACOld_NotCopied_Ct = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 47
  %26 = ptrtoint ptr %fddiMACOld_NotCopied_Ct to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fddiMACOld_NotCopied_Ct, align 4
  %sub44 = sub i32 %25, %27
  %fddiMACCopied_Ct = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 33
  %28 = ptrtoint ptr %fddiMACCopied_Ct to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fddiMACCopied_Ct, align 4
  %fddiMACOld_Copied_Ct = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 44
  %30 = ptrtoint ptr %fddiMACOld_Copied_Ct to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fddiMACOld_Copied_Ct, align 4
  %sub45 = sub i32 %29, %31
  %add46 = add i32 %sub45, %sub44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add46)
  %tobool.not.i306 = icmp eq i32 %add46, 0
  br i1 %tobool.not.i306, label %if.end43.div_ratio.exit313_crit_edge, label %if.end3.i311

if.end43.div_ratio.exit313_crit_edge:             ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %div_ratio.exit313

if.end3.i311:                                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %shl.i307 = shl i32 %sub44, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i307, i32 %sub44)
  %cmp.i308 = icmp ult i32 %shl.i307, %sub44
  %.shl.i309 = select i1 %cmp.i308, i32 -65536, i32 %shl.i307
  %div.i310 = udiv i32 %.shl.i309, %add46
  %phi.cast332 = trunc i32 %div.i310 to i16
  br label %div_ratio.exit313

div_ratio.exit313:                                ; preds = %if.end3.i311, %if.end43.div_ratio.exit313_crit_edge
  %retval.0.i312 = phi i16 [ %phi.cast332, %if.end3.i311 ], [ 0, %if.end43.div_ratio.exit313_crit_edge ]
  %fddiMACNotCopiedRatio = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 51
  %32 = ptrtoint ptr %fddiMACNotCopiedRatio to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %retval.0.i312, ptr %fddiMACNotCopiedRatio, align 2
  %fddiMACNotCopiedThreshold = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 50
  %33 = ptrtoint ptr %fddiMACNotCopiedThreshold to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %fddiMACNotCopiedThreshold, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool49.not = icmp eq i16 %34, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp53.not = icmp ne i32 %25, %27
  %or.cond331 = select i1 %tobool49.not, i1 %cmp53.not, i1 false
  call void @__sanitizer_cov_trace_cmp2(i16 %retval.0.i312, i16 %34)
  %cmp60 = icmp ugt i16 %retval.0.i312, %34
  %narrow = select i1 %or.cond331, i1 true, i1 %cmp60
  %fddiMACNotCopiedFlag = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 56
  %35 = ptrtoint ptr %fddiMACNotCopiedFlag to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %fddiMACNotCopiedFlag, align 1
  %37 = zext i1 %narrow to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %37)
  %cmp65.not = icmp eq i8 %36, %37
  br i1 %cmp65.not, label %div_ratio.exit313.if.end68_crit_edge, label %if.then67

div_ratio.exit313.if.end68_crit_edge:             ; preds = %div_ratio.exit313
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

if.then67:                                        ; preds = %div_ratio.exit313
  call void @__sanitizer_cov_trace_pc() #8
  %38 = zext i1 %narrow to i32
  tail call void @smt_srf_event(ptr noundef %smc, i32 noundef 9, i32 noundef 1, i32 noundef %38) #6
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %div_ratio.exit313.if.end68_crit_edge
  %39 = ptrtoint ptr %fddiMACFrame_Ct to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fddiMACFrame_Ct, align 4
  %41 = ptrtoint ptr %fddiMACOld_Frame_Ct to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %fddiMACOld_Frame_Ct, align 4
  %42 = ptrtoint ptr %fddiMACCopied_Ct to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %fddiMACCopied_Ct, align 4
  %44 = ptrtoint ptr %fddiMACOld_Copied_Ct to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %fddiMACOld_Copied_Ct, align 4
  %45 = ptrtoint ptr %fddiMACError_Ct to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %fddiMACError_Ct, align 4
  %47 = ptrtoint ptr %fddiMACOld_Error_Ct to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %fddiMACOld_Error_Ct, align 4
  %48 = ptrtoint ptr %fddiMACLost_Ct to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %fddiMACLost_Ct, align 4
  %50 = ptrtoint ptr %fddiMACOld_Lost_Ct to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %fddiMACOld_Lost_Ct, align 4
  %51 = ptrtoint ptr %fddiMACNotCopied_Ct to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %fddiMACNotCopied_Ct, align 4
  %53 = ptrtoint ptr %fddiMACOld_NotCopied_Ct to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %fddiMACOld_NotCopied_Ct, align 4
  %arrayidx = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 0
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx, align 4
  %fddiPORTHardwarePresent = getelementptr inbounds %struct.fddi_mib_p, ptr %55, i32 0, i32 26
  %56 = ptrtoint ptr %fddiPORTHardwarePresent to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %fddiPORTHardwarePresent, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool82.not = icmp eq i8 %57, 0
  br i1 %tobool82.not, label %if.end68.for.inc_crit_edge, label %if.end84

if.end68.for.inc_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end84:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  %fddiPORTEBError_Ct = getelementptr inbounds %struct.fddi_mib_p, ptr %55, i32 0, i32 15
  %58 = ptrtoint ptr %fddiPORTEBError_Ct to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %fddiPORTEBError_Ct, align 4
  %fddiPORTOldEBError_Ct = getelementptr inbounds %struct.fddi_mib_p, ptr %55, i32 0, i32 16
  %60 = ptrtoint ptr %fddiPORTOldEBError_Ct to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %fddiPORTOldEBError_Ct, align 4
  %sub87 = sub i32 %59, %61
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub87)
  %cmp88 = icmp ugt i32 %sub87, 5
  %conv89 = zext i1 %cmp88 to i32
  %np = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 0, i32 1
  %62 = ptrtoint ptr %np to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %np, align 4
  %conv90 = zext i8 %63 to i32
  %add91 = add nuw nsw i32 %conv90, 1
  tail call void @smt_srf_event(ptr noundef %smc, i32 noundef 10, i32 noundef %add91, i32 noundef %conv89) #6
  %64 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx, align 4
  %fddiPORTEBError_Ct93 = getelementptr inbounds %struct.fddi_mib_p, ptr %65, i32 0, i32 15
  %66 = ptrtoint ptr %fddiPORTEBError_Ct93 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %fddiPORTEBError_Ct93, align 4
  %fddiPORTOldEBError_Ct95 = getelementptr inbounds %struct.fddi_mib_p, ptr %65, i32 0, i32 16
  %68 = ptrtoint ptr %fddiPORTOldEBError_Ct95 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %fddiPORTOldEBError_Ct95, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end84, %if.end68.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 1
  %69 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx.1, align 4
  %fddiPORTHardwarePresent.1 = getelementptr inbounds %struct.fddi_mib_p, ptr %70, i32 0, i32 26
  %71 = ptrtoint ptr %fddiPORTHardwarePresent.1 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %fddiPORTHardwarePresent.1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool82.not.1 = icmp eq i8 %72, 0
  br i1 %tobool82.not.1, label %for.inc.if.end96_crit_edge, label %if.end84.1

for.inc.if.end96_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end96

if.end84.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %fddiPORTEBError_Ct.1 = getelementptr inbounds %struct.fddi_mib_p, ptr %70, i32 0, i32 15
  %73 = ptrtoint ptr %fddiPORTEBError_Ct.1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %fddiPORTEBError_Ct.1, align 4
  %fddiPORTOldEBError_Ct.1 = getelementptr inbounds %struct.fddi_mib_p, ptr %70, i32 0, i32 16
  %75 = ptrtoint ptr %fddiPORTOldEBError_Ct.1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %fddiPORTOldEBError_Ct.1, align 4
  %sub87.1 = sub i32 %74, %76
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub87.1)
  %cmp88.1 = icmp ugt i32 %sub87.1, 5
  %conv89.1 = zext i1 %cmp88.1 to i32
  %np.1 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 1, i32 1
  %77 = ptrtoint ptr %np.1 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %np.1, align 4
  %conv90.1 = zext i8 %78 to i32
  %add91.1 = add nuw nsw i32 %conv90.1, 1
  tail call void @smt_srf_event(ptr noundef %smc, i32 noundef 10, i32 noundef %add91.1, i32 noundef %conv89.1) #6
  %79 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx.1, align 4
  %fddiPORTEBError_Ct93.1 = getelementptr inbounds %struct.fddi_mib_p, ptr %80, i32 0, i32 15
  %81 = ptrtoint ptr %fddiPORTEBError_Ct93.1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %fddiPORTEBError_Ct93.1, align 4
  %fddiPORTOldEBError_Ct95.1 = getelementptr inbounds %struct.fddi_mib_p, ptr %80, i32 0, i32 16
  %83 = ptrtoint ptr %fddiPORTOldEBError_Ct95.1 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %fddiPORTOldEBError_Ct95.1, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.end84.1, %for.inc.if.end96_crit_edge, %if.end11.if.end96_crit_edge
  %smt_last_notify = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 3, i32 8
  %84 = ptrtoint ptr %smt_last_notify to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %smt_last_notify, align 4
  %sub98 = sub i32 %call, %85
  %fddiSMTTT_Notify = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 22
  %86 = ptrtoint ptr %fddiSMTTT_Notify to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %fddiSMTTT_Notify, align 4
  %conv100 = zext i16 %87 to i32
  %mul = mul nuw nsw i32 %conv100, 100
  call void @__sanitizer_cov_trace_cmp4(i32 %sub98, i32 %mul)
  %cmp101.not = icmp ult i32 %sub98, %mul
  br i1 %cmp101.not, label %if.end96.if.end118_crit_edge, label %if.then103

if.end96.if.end118_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end118

if.then103:                                       ; preds = %if.end96
  %pend = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 3, i32 3
  %88 = ptrtoint ptr %pend to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %pend, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool106.not = icmp eq i32 %89, 0
  br i1 %tobool106.not, label %if.then107, label %if.then103.if.end112_crit_edge

if.then103.if.end112_crit_edge:                   ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end112

if.then107:                                       ; preds = %if.then103
  %smt_tid.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 3, i32 2
  %90 = ptrtoint ptr %smt_tid.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %smt_tid.promoted.i = load i32, ptr %smt_tid.i, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.then107
  %91 = phi i32 [ %inc.i, %while.cond.i.while.cond.i_crit_edge ], [ %smt_tid.promoted.i, %if.then107 ]
  %inc.i = add i32 %91, 1
  %xor.i = xor i32 %inc.i, 520780604
  %cmp.i314 = icmp eq i32 %xor.i, 0
  br i1 %cmp.i314, label %while.cond.i.while.cond.i_crit_edge, label %smt_get_tid.exit

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

smt_get_tid.exit:                                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  %92 = ptrtoint ptr %smt_tid.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %inc.i, ptr %smt_tid.i, align 4
  %and.i = and i32 %xor.i, 1073741823
  %93 = ptrtoint ptr %pend to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %and.i, ptr %pend, align 4
  br label %if.end112

if.end112:                                        ; preds = %smt_get_tid.exit, %if.then103.if.end112_crit_edge
  %94 = ptrtoint ptr %pend to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %pend, align 4
  tail call fastcc void @smt_send_nif(ptr noundef %smc, ptr noundef nonnull @fddi_broadcast, i32 noundef 79, i32 noundef %95, i32 noundef 2, i32 noundef 0)
  %96 = ptrtoint ptr %smt_last_notify to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %call, ptr %smt_last_notify, align 4
  br label %if.end118

if.end118:                                        ; preds = %if.end112, %if.end96.if.end118_crit_edge
  %97 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %sm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool120.not = icmp ne i32 %98, 0
  %sub124 = sub i32 %call, %98
  call void @__sanitizer_cov_trace_const_cmp4(i32 22800, i32 %sub124)
  %cmp125 = icmp ugt i32 %sub124, 22800
  %or.cond = select i1 %tobool120.not, i1 %cmp125, i1 false
  br i1 %or.cond, label %if.then127, label %if.end118.if.end151_crit_edge

if.end118.if.end151_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end151

if.then127:                                       ; preds = %if.end118
  %99 = ptrtoint ptr %sm to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %sm, align 4
  %fddiMACUpstreamNbr = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 8
  %100 = ptrtoint ptr %fddiMACUpstreamNbr to i32
  call void @__asan_loadN_noabort(i32 %100, i32 2)
  %101 = load i16, ptr %fddiMACUpstreamNbr, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %101)
  %cmp.i315 = icmp eq i16 %101, 0
  br i1 %cmp.i315, label %land.lhs.true.i, label %if.then127.if.then135_crit_edge

if.then127.if.then135_crit_edge:                  ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then135

land.lhs.true.i:                                  ; preds = %if.then127
  %arrayidx6.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 8, i32 0, i32 2
  %102 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_loadN_noabort(i32 %102, i32 2)
  %103 = load i16, ptr %arrayidx6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 7936, i16 %103)
  %cmp11.i = icmp eq i16 %103, 7936
  br i1 %cmp11.i, label %is_equal.exit, label %land.lhs.true.i.if.then135_crit_edge

land.lhs.true.i.if.then135_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then135

is_equal.exit:                                    ; preds = %land.lhs.true.i
  %arrayidx14.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 8, i32 0, i32 4
  %104 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_loadN_noabort(i32 %104, i32 2)
  %105 = load i16, ptr %arrayidx14.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %105)
  %cmp19.i.not = icmp eq i16 %105, 0
  br i1 %cmp19.i.not, label %is_equal.exit.if.end143_crit_edge, label %is_equal.exit.if.then135_crit_edge

is_equal.exit.if.then135_crit_edge:               ; preds = %is_equal.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then135

is_equal.exit.if.end143_crit_edge:                ; preds = %is_equal.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end143

if.then135:                                       ; preds = %is_equal.exit.if.then135_crit_edge, %land.lhs.true.i.if.then135_crit_edge, %if.then127.if.then135_crit_edge
  %fddiMACOldUpstreamNbr = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 10
  %106 = call ptr @memcpy(ptr %fddiMACOldUpstreamNbr, ptr %fddiMACUpstreamNbr, i32 6)
  br label %if.end143

if.end143:                                        ; preds = %if.then135, %is_equal.exit.if.end143_crit_edge
  %107 = call ptr @memcpy(ptr %fddiMACUpstreamNbr, ptr @SMT_Unknown, i32 6)
  %fddiMACUNDA_Flag = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 54
  %108 = ptrtoint ptr %fddiMACUNDA_Flag to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %fddiMACUNDA_Flag, align 1
  %fddiMACDA_Flag.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 53
  %109 = ptrtoint ptr %fddiMACDA_Flag.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %fddiMACDA_Flag.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %cmp.i316 = icmp ne i8 %110, 0
  %.pre.i = zext i1 %cmp.i316 to i8
  %fddiMACDuplicateAddressCond16.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 5
  %111 = ptrtoint ptr %fddiMACDuplicateAddressCond16.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %.pre.i, ptr %fddiMACDuplicateAddressCond16.i, align 2
  tail call void @smt_srf_event(ptr noundef %smc, i32 noundef 2, i32 noundef 1, i32 noundef 0) #6
  br label %if.end151

if.end151:                                        ; preds = %if.end143, %if.end118.if.end151_crit_edge
  %smt_tvd = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 3, i32 1
  %112 = ptrtoint ptr %smt_tvd to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %smt_tvd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool153.not = icmp ne i32 %113, 0
  %sub157 = sub i32 %call, %113
  call void @__sanitizer_cov_trace_const_cmp4(i32 22800, i32 %sub157)
  %cmp158 = icmp ugt i32 %sub157, 22800
  %or.cond305 = select i1 %tobool153.not, i1 %cmp158, i1 false
  br i1 %or.cond305, label %if.then160, label %if.end151.if.end182_crit_edge

if.end151.if.end182_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end182

if.then160:                                       ; preds = %if.end151
  %114 = ptrtoint ptr %smt_tvd to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %smt_tvd, align 4
  %fddiMACDownstreamNbr = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 9
  %115 = ptrtoint ptr %fddiMACDownstreamNbr to i32
  call void @__asan_loadN_noabort(i32 %115, i32 2)
  %116 = load i16, ptr %fddiMACDownstreamNbr, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %116)
  %cmp.i317 = icmp eq i16 %116, 0
  br i1 %cmp.i317, label %land.lhs.true.i320, label %if.then160.if.then169_crit_edge

if.then160.if.then169_crit_edge:                  ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then169

land.lhs.true.i320:                               ; preds = %if.then160
  %arrayidx6.i318 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 9, i32 0, i32 2
  %117 = ptrtoint ptr %arrayidx6.i318 to i32
  call void @__asan_loadN_noabort(i32 %117, i32 2)
  %118 = load i16, ptr %arrayidx6.i318, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 7936, i16 %118)
  %cmp11.i319 = icmp eq i16 %118, 7936
  br i1 %cmp11.i319, label %is_equal.exit325, label %land.lhs.true.i320.if.then169_crit_edge

land.lhs.true.i320.if.then169_crit_edge:          ; preds = %land.lhs.true.i320
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then169

is_equal.exit325:                                 ; preds = %land.lhs.true.i320
  %arrayidx14.i321 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 9, i32 0, i32 4
  %119 = ptrtoint ptr %arrayidx14.i321 to i32
  call void @__asan_loadN_noabort(i32 %119, i32 2)
  %120 = load i16, ptr %arrayidx14.i321, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %120)
  %cmp19.i322.not = icmp eq i16 %120, 0
  br i1 %cmp19.i322.not, label %is_equal.exit325.if.end177_crit_edge, label %is_equal.exit325.if.then169_crit_edge

is_equal.exit325.if.then169_crit_edge:            ; preds = %is_equal.exit325
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then169

is_equal.exit325.if.end177_crit_edge:             ; preds = %is_equal.exit325
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end177

if.then169:                                       ; preds = %is_equal.exit325.if.then169_crit_edge, %land.lhs.true.i320.if.then169_crit_edge, %if.then160.if.then169_crit_edge
  %fddiMACOldDownstreamNbr = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 11
  %121 = call ptr @memcpy(ptr %fddiMACOldDownstreamNbr, ptr %fddiMACDownstreamNbr, i32 6)
  br label %if.end177

if.end177:                                        ; preds = %if.then169, %is_equal.exit325.if.end177_crit_edge
  %122 = call ptr @memcpy(ptr %fddiMACDownstreamNbr, ptr @SMT_Unknown, i32 6)
  tail call void @smt_srf_event(ptr noundef %smc, i32 noundef 2, i32 noundef 1, i32 noundef 0) #6
  br label %if.end182

if.end182:                                        ; preds = %if.end177, %if.end151.if.end182_crit_edge
  %last_tok_time = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 3, i32 10
  %123 = ptrtoint ptr %last_tok_time to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %last_tok_time, align 4
  %sub189 = sub i32 %call, %124
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %sub189)
  %cmp190 = icmp ugt i32 %sub189, 200
  br i1 %cmp190, label %if.then192, label %if.end182.for.end196_crit_edge

if.end182.for.end196_crit_edge:                   ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end196

if.then192:                                       ; preds = %if.end182
  %call.i = tail call i32 @smt_get_time() #6
  %mac_ring_is_up.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 24
  %125 = ptrtoint ptr %mac_ring_is_up.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %mac_ring_is_up.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %126)
  %tobool.not.i326 = icmp eq i16 %126, 0
  br i1 %tobool.not.i326, label %if.then192.smt_emulate_token_ct.exit_crit_edge, label %if.then.i

if.then192.smt_emulate_token_ct.exit_crit_edge:   ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #8
  br label %smt_emulate_token_ct.exit

if.then.i:                                        ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #8
  %127 = ptrtoint ptr %last_tok_time to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %last_tok_time, align 4
  %sub.i = sub i32 %call.i, %128
  %mul.i = mul i32 %sub.i, 100
  %div.i327 = udiv i32 %mul.i, 100
  %fddiMACToken_Ct.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 35
  %129 = ptrtoint ptr %fddiMACToken_Ct.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %fddiMACToken_Ct.i, align 4
  %add.i = add i32 %div.i327, %130
  store i32 %add.i, ptr %fddiMACToken_Ct.i, align 4
  br label %smt_emulate_token_ct.exit

smt_emulate_token_ct.exit:                        ; preds = %if.then.i, %if.then192.smt_emulate_token_ct.exit_crit_edge
  %131 = ptrtoint ptr %last_tok_time to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %call.i, ptr %last_tok_time, align 4
  br label %for.end196

for.end196:                                       ; preds = %smt_emulate_token_ct.exit, %if.end182.for.end196_crit_edge
  %smt_timer = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 3, i32 9
  tail call void @smt_timer_start(ptr noundef %smc, ptr noundef %smt_timer, i32 noundef 1000000, i32 noundef 262145) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end196, %if.end7.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queue_event(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smt_timer_poll(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smt_start_watchdog(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ess_timer_poll(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smt_srf_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sm_lem_evaluate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mac_update_counter(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smt_get_tid(ptr nocapture noundef %smc) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %smt_tid = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %smt_tid to i32
  call void @__asan_load4_noabort(i32 %0)
  %smt_tid.promoted = load i32, ptr %smt_tid, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %1 = phi i32 [ %inc, %while.cond.while.cond_crit_edge ], [ %smt_tid.promoted, %entry ]
  %inc = add i32 %1, 1
  %xor = xor i32 %inc, 520780604
  %cmp = icmp eq i32 %xor, 0
  br i1 %cmp, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %smt_tid to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %inc, ptr %smt_tid, align 4
  %and = and i32 %xor, 1073741823
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smt_send_nif(ptr noundef %smc, ptr nocapture noundef readonly %dest, i32 noundef %fc, i32 noundef %tid, i32 noundef %type, i32 noundef %local) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @smt_get_mbuf(ptr noundef %smc) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %m_len.i = getelementptr inbounds %struct.s_mbuf, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %m_len.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 72, ptr %m_len.i, align 4
  %m_data.i = getelementptr inbounds %struct.s_mbuf, ptr %call.i, i32 0, i32 4
  %m_off.i = getelementptr inbounds %struct.s_mbuf, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %m_off.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %m_off.i, align 4
  %conv.i = sext i16 %2 to i32
  %add.ptr.i = getelementptr i8, ptr %m_data.i, i32 %conv.i
  %3 = call ptr @memcpy(ptr %add.ptr.i, ptr @fddi_broadcast, i32 6)
  %smt_class.i = getelementptr inbounds %struct.smt_header, ptr %add.ptr.i, i32 0, i32 2
  %4 = ptrtoint ptr %smt_class.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %smt_class.i, align 4
  %conv2.i = trunc i32 %type to i8
  %smt_type.i = getelementptr inbounds %struct.smt_header, ptr %add.ptr.i, i32 0, i32 3
  %5 = ptrtoint ptr %smt_type.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv2.i, ptr %smt_type.i, align 1
  %6 = getelementptr inbounds %struct.smt_header, ptr %add.ptr.i, i32 0, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1, ptr %6, align 2
  %smt_tid.i.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %smt_tid.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %smt_tid.promoted.i.i = load i32, ptr %smt_tid.i.i, align 4
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %if.end.i
  %9 = phi i32 [ %inc.i.i, %while.cond.i.i.while.cond.i.i_crit_edge ], [ %smt_tid.promoted.i.i, %if.end.i ]
  %inc.i.i = add i32 %9, 1
  %xor.i.i = xor i32 %inc.i.i, 520780604
  %cmp.i.i = icmp eq i32 %xor.i.i, 0
  br i1 %cmp.i.i, label %while.cond.i.i.while.cond.i.i_crit_edge, label %if.end

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i

if.end:                                           ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %smt_tid.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %inc.i.i, ptr %smt_tid.i.i, align 4
  %and.i.i = and i32 %xor.i.i, 1073741823
  %smt_tid.i = getelementptr inbounds %struct.smt_header, ptr %add.ptr.i, i32 0, i32 5
  %11 = ptrtoint ptr %smt_tid.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and.i.i, ptr %smt_tid.i, align 4
  %smt_pad.i = getelementptr inbounds %struct.smt_header, ptr %add.ptr.i, i32 0, i32 7
  %12 = ptrtoint ptr %smt_pad.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %smt_pad.i, align 4
  %smt_len.i = getelementptr inbounds %struct.smt_header, ptr %add.ptr.i, i32 0, i32 8
  %13 = ptrtoint ptr %smt_len.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 40, ptr %smt_len.i, align 2
  %14 = ptrtoint ptr %m_off.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %m_off.i, align 4
  %conv = sext i16 %15 to i32
  %add.ptr = getelementptr i8, ptr %m_data.i, i32 %conv
  %una = getelementptr inbounds %struct.smt_nif, ptr %add.ptr, i32 0, i32 1
  %16 = ptrtoint ptr %una to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %una, align 2
  %p_len.i = getelementptr inbounds %struct.smt_para, ptr %una, i32 0, i32 1
  %17 = ptrtoint ptr %p_len.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 8, ptr %p_len.i, align 2
  %una_pad.i = getelementptr inbounds %struct.smt_p_una, ptr %una, i32 0, i32 1
  %18 = ptrtoint ptr %una_pad.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %una_pad.i, align 2
  %una_node.i = getelementptr inbounds %struct.smt_p_una, ptr %una, i32 0, i32 2
  %fddiMACUpstreamNbr.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 8
  %19 = call ptr @memcpy(ptr %una_node.i, ptr %fddiMACUpstreamNbr.i, i32 6)
  %sde = getelementptr inbounds %struct.smt_nif, ptr %add.ptr, i32 0, i32 2
  %20 = ptrtoint ptr %sde to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 2, ptr %sde, align 2
  %p_len.i15 = getelementptr inbounds %struct.smt_para, ptr %sde, i32 0, i32 1
  %21 = ptrtoint ptr %p_len.i15 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 4, ptr %p_len.i15, align 2
  %fddiSMTNonMaster_Ct.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 16
  %22 = ptrtoint ptr %fddiSMTNonMaster_Ct.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %fddiSMTNonMaster_Ct.i, align 1
  %sde_non_master.i = getelementptr inbounds %struct.smt_p_sde, ptr %sde, i32 0, i32 3
  %24 = ptrtoint ptr %sde_non_master.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %sde_non_master.i, align 2
  %fddiSMTMaster_Ct.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 17
  %25 = ptrtoint ptr %fddiSMTMaster_Ct.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %fddiSMTMaster_Ct.i, align 4
  %sde_master.i = getelementptr inbounds %struct.smt_p_sde, ptr %sde, i32 0, i32 4
  %27 = ptrtoint ptr %sde_master.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %sde_master.i, align 1
  %sde_mac_count.i = getelementptr inbounds %struct.smt_p_sde, ptr %sde, i32 0, i32 2
  %28 = ptrtoint ptr %sde_mac_count.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %sde_mac_count.i, align 1
  %sde_type.i = getelementptr inbounds %struct.smt_p_sde, ptr %sde, i32 0, i32 1
  %29 = ptrtoint ptr %sde_type.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %sde_type.i, align 2
  %state = getelementptr inbounds %struct.smt_nif, ptr %add.ptr, i32 0, i32 3
  %30 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 3, ptr %state, align 2
  %p_len.i16 = getelementptr inbounds %struct.smt_para, ptr %state, i32 0, i32 1
  %31 = ptrtoint ptr %p_len.i16 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 4, ptr %p_len.i16, align 2
  %st_pad.i = getelementptr inbounds %struct.smt_p_state, ptr %state, i32 0, i32 1
  %32 = ptrtoint ptr %st_pad.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %st_pad.i, align 2
  %fddiSMTPeerWrapFlag.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 32
  %33 = ptrtoint ptr %fddiSMTPeerWrapFlag.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %fddiSMTPeerWrapFlag.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i17 = icmp ne i8 %34, 0
  %spec.select.i = zext i1 %tobool.not.i17 to i32
  %call.i18 = tail call i32 @pcm_status_twisted(ptr noundef %smc) #6
  %and.i = shl i32 %call.i18, 2
  %35 = and i32 %and.i, 4
  %36 = or i32 %35, %spec.select.i
  %37 = and i32 %and.i, 8
  %38 = or i32 %36, %37
  %call12.i = tail call i32 @pcm_rooted_station(ptr noundef %smc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  %top.3.v.i = select i1 %tobool13.not.i, i32 32, i32 48
  %top.3.i = or i32 %38, %top.3.v.i
  %fddiPATHSbaPayload.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 38, i32 0, i32 1
  %39 = ptrtoint ptr %fddiPATHSbaPayload.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fddiPATHSbaPayload.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.not.i = icmp eq i32 %40, 0
  %or19.i = or i32 %top.3.i, 64
  %top.4.i = select i1 %cmp.not.i, i32 %top.3.i, i32 %or19.i
  %conv.i19 = trunc i32 %top.4.i to i8
  %st_topology.i = getelementptr inbounds %struct.smt_p_state, ptr %state, i32 0, i32 2
  %41 = ptrtoint ptr %st_topology.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv.i19, ptr %st_topology.i, align 2
  %fddiMACDA_Flag.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 53
  %42 = ptrtoint ptr %fddiMACDA_Flag.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %fddiMACDA_Flag.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool24.not.i = icmp ne i8 %43, 0
  %cond.i = zext i1 %tobool24.not.i to i8
  %fddiMACUNDA_Flag.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 54
  %44 = ptrtoint ptr %fddiMACUNDA_Flag.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %fddiMACUNDA_Flag.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool29.not.i = icmp eq i8 %45, 0
  %cond30.i = select i1 %tobool29.not.i, i8 0, i8 2
  %or31.i = or i8 %cond30.i, %cond.i
  %st_dupl_addr.i = getelementptr inbounds %struct.smt_p_state, ptr %state, i32 0, i32 3
  %46 = ptrtoint ptr %st_dupl_addr.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %or31.i, ptr %st_dupl_addr.i, align 1
  %fsc = getelementptr inbounds %struct.smt_nif, ptr %add.ptr, i32 0, i32 4
  %47 = ptrtoint ptr %fsc to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 8203, ptr %fsc, align 2
  %p_len.i20 = getelementptr inbounds %struct.smt_para, ptr %fsc, i32 0, i32 1
  %48 = ptrtoint ptr %p_len.i20 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 8, ptr %p_len.i20, align 2
  %fsc_pad0.i = getelementptr inbounds %struct.smt_p_fsc, ptr %fsc, i32 0, i32 1
  %49 = ptrtoint ptr %fsc_pad0.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %fsc_pad0.i, align 2
  %fsc_mac_index.i = getelementptr inbounds %struct.smt_p_fsc, ptr %fsc, i32 0, i32 2
  %50 = ptrtoint ptr %fsc_mac_index.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 1, ptr %fsc_mac_index.i, align 2
  %fsc_pad1.i = getelementptr inbounds %struct.smt_p_fsc, ptr %fsc, i32 0, i32 3
  %51 = ptrtoint ptr %fsc_pad1.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 0, ptr %fsc_pad1.i, align 2
  %fsc_value.i = getelementptr inbounds %struct.smt_p_fsc, ptr %fsc, i32 0, i32 4
  %52 = ptrtoint ptr %fsc_value.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 0, ptr %fsc_value.i, align 2
  %53 = call ptr @memcpy(ptr %add.ptr, ptr %dest, i32 6)
  %smt_tid = getelementptr inbounds %struct.smt_header, ptr %add.ptr, i32 0, i32 5
  %54 = ptrtoint ptr %smt_tid to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %tid, ptr %smt_tid, align 4
  tail call void @smt_send_frame(ptr noundef %smc, ptr noundef nonnull %call.i, i32 noundef %fc, i32 noundef %local)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_dac(ptr noundef %smc, i32 noundef %report) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fddiMACUNDA_Flag = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 54
  %0 = ptrtoint ptr %fddiMACUNDA_Flag to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fddiMACUNDA_Flag, align 1
  %fddiMACDA_Flag = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 53
  %2 = ptrtoint ptr %fddiMACDA_Flag to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fddiMACDA_Flag, align 2
  %or23 = or i8 %3, %1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or23)
  %cmp = icmp ne i8 %or23, 0
  %conv5 = zext i1 %cmp to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %report)
  %tobool.not = icmp eq i32 %report, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %.pre = zext i1 %cmp to i8
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %fddiMACDuplicateAddressCond = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 5
  %4 = ptrtoint ptr %fddiMACDuplicateAddressCond to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fddiMACDuplicateAddressCond, align 2
  %6 = zext i1 %cmp to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %6)
  %cmp10.not = icmp eq i8 %5, %6
  br i1 %cmp10.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @smt_srf_event(ptr noundef %smc, i32 noundef 8, i32 noundef 1, i32 noundef %conv5) #6
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %conv12.pre-phi = phi i8 [ %.pre, %entry.if.else_crit_edge ], [ %6, %land.lhs.true.if.else_crit_edge ]
  %fddiMACDuplicateAddressCond16 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 5
  %7 = ptrtoint ptr %fddiMACDuplicateAddressCond16 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv12.pre-phi, ptr %fddiMACDuplicateAddressCond16, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smt_received_pack(ptr noundef %smc, ptr noundef %mb, i32 noundef %fs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %m_data = getelementptr inbounds %struct.s_mbuf, ptr %mb, i32 0, i32 4
  %0 = ptrtoint ptr %m_data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %m_data, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %sw.default [
    i8 65, label %entry.sw.epilog_crit_edge
    i8 66, label %entry.sw.epilog_crit_edge718
    i8 67, label %entry.sw.epilog_crit_edge719
    i8 79, label %entry.sw.epilog_crit_edge720
  ]

entry.sw.epilog_crit_edge720:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge719:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge718:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @smt_free_mbuf(ptr noundef %smc, ptr noundef %mb) #6
  br label %cleanup

sw.epilog:                                        ; preds = %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge718, %entry.sw.epilog_crit_edge719, %entry.sw.epilog_crit_edge720
  %fddiMACSMTCopied_Ct = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 41
  %3 = ptrtoint ptr %fddiMACSMTCopied_Ct to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fddiMACSMTCopied_Ct, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %fddiMACSMTCopied_Ct, align 4
  %m_off = getelementptr inbounds %struct.s_mbuf, ptr %mb, i32 0, i32 1
  %5 = ptrtoint ptr %m_off to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %m_off, align 4
  %conv3 = sext i16 %6 to i32
  %add.ptr = getelementptr i8, ptr %m_data, i32 %conv3
  %and = lshr i32 %fs, 7
  %and.lobit = and i32 %and, 1
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %add.ptr, align 1
  %idxprom.i.i = zext i8 %8 to i32
  %arrayidx.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i.i, align 1
  store i8 %10, ptr %add.ptr, align 1
  %incdec.ptr.i = getelementptr i8, ptr %add.ptr, i32 1
  %11 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %incdec.ptr.i, align 1
  %idxprom.i.1.i = zext i8 %12 to i32
  %arrayidx.i.1.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.1.i
  %13 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i.1.i, align 1
  store i8 %14, ptr %incdec.ptr.i, align 1
  %incdec.ptr.1.i = getelementptr i8, ptr %add.ptr, i32 2
  %15 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %incdec.ptr.1.i, align 1
  %idxprom.i.2.i = zext i8 %16 to i32
  %arrayidx.i.2.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.2.i
  %17 = ptrtoint ptr %arrayidx.i.2.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i.2.i, align 1
  store i8 %18, ptr %incdec.ptr.1.i, align 1
  %incdec.ptr.2.i = getelementptr i8, ptr %add.ptr, i32 3
  %19 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %incdec.ptr.2.i, align 1
  %idxprom.i.3.i = zext i8 %20 to i32
  %arrayidx.i.3.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.3.i
  %21 = ptrtoint ptr %arrayidx.i.3.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i.3.i, align 1
  store i8 %22, ptr %incdec.ptr.2.i, align 1
  %incdec.ptr.3.i = getelementptr i8, ptr %add.ptr, i32 4
  %23 = ptrtoint ptr %incdec.ptr.3.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %incdec.ptr.3.i, align 1
  %idxprom.i.4.i = zext i8 %24 to i32
  %arrayidx.i.4.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.4.i
  %25 = ptrtoint ptr %arrayidx.i.4.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i.4.i, align 1
  store i8 %26, ptr %incdec.ptr.3.i, align 1
  %incdec.ptr.4.i = getelementptr i8, ptr %add.ptr, i32 5
  %27 = ptrtoint ptr %incdec.ptr.4.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %incdec.ptr.4.i, align 1
  %idxprom.i.5.i = zext i8 %28 to i32
  %arrayidx.i.5.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.5.i
  %29 = ptrtoint ptr %arrayidx.i.5.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.i.5.i, align 1
  store i8 %30, ptr %incdec.ptr.4.i, align 1
  %incdec.ptr.5.i = getelementptr i8, ptr %add.ptr, i32 6
  %31 = ptrtoint ptr %incdec.ptr.5.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %incdec.ptr.5.i, align 1
  %idxprom.i.6.i = zext i8 %32 to i32
  %arrayidx.i.6.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.6.i
  %33 = ptrtoint ptr %arrayidx.i.6.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i.6.i, align 1
  store i8 %34, ptr %incdec.ptr.5.i, align 1
  %incdec.ptr.6.i = getelementptr i8, ptr %add.ptr, i32 7
  %35 = ptrtoint ptr %incdec.ptr.6.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %incdec.ptr.6.i, align 1
  %idxprom.i.7.i = zext i8 %36 to i32
  %arrayidx.i.7.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.7.i
  %37 = ptrtoint ptr %arrayidx.i.7.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i.7.i, align 1
  store i8 %38, ptr %incdec.ptr.6.i, align 1
  %incdec.ptr.7.i = getelementptr i8, ptr %add.ptr, i32 8
  %39 = ptrtoint ptr %incdec.ptr.7.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %incdec.ptr.7.i, align 1
  %idxprom.i.8.i = zext i8 %40 to i32
  %arrayidx.i.8.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.8.i
  %41 = ptrtoint ptr %arrayidx.i.8.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.i.8.i, align 1
  store i8 %42, ptr %incdec.ptr.7.i, align 1
  %incdec.ptr.8.i = getelementptr i8, ptr %add.ptr, i32 9
  %43 = ptrtoint ptr %incdec.ptr.8.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %incdec.ptr.8.i, align 1
  %idxprom.i.9.i = zext i8 %44 to i32
  %arrayidx.i.9.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.9.i
  %45 = ptrtoint ptr %arrayidx.i.9.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.i.9.i, align 1
  store i8 %46, ptr %incdec.ptr.8.i, align 1
  %incdec.ptr.9.i = getelementptr i8, ptr %add.ptr, i32 10
  %47 = ptrtoint ptr %incdec.ptr.9.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %incdec.ptr.9.i, align 1
  %idxprom.i.10.i = zext i8 %48 to i32
  %arrayidx.i.10.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.10.i
  %49 = ptrtoint ptr %arrayidx.i.10.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.i.10.i, align 1
  store i8 %50, ptr %incdec.ptr.9.i, align 1
  %incdec.ptr.10.i = getelementptr i8, ptr %add.ptr, i32 11
  %51 = ptrtoint ptr %incdec.ptr.10.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %incdec.ptr.10.i, align 1
  %idxprom.i.11.i = zext i8 %52 to i32
  %arrayidx.i.11.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.11.i
  %53 = ptrtoint ptr %arrayidx.i.11.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.i.11.i, align 1
  store i8 %54, ptr %incdec.ptr.10.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp slt i8 %10, 0
  br i1 %tobool.not, label %sw.epilog.if.end_crit_edge, label %land.lhs.true

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %sw.epilog
  %55 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %55, i32 2)
  %56 = load i16, ptr %add.ptr, align 1
  %fddiMACSMTAddress.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 16
  %57 = ptrtoint ptr %fddiMACSMTAddress.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %fddiMACSMTAddress.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %56, i16 %58)
  %cmp.i = icmp eq i16 %56, %58
  br i1 %cmp.i, label %land.lhs.true.i, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

land.lhs.true.i:                                  ; preds = %land.lhs.true
  %59 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 2)
  %60 = load i16, ptr %incdec.ptr.1.i, align 1
  %arrayidx14.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 16, i32 0, i32 2
  %61 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %arrayidx14.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %60, i16 %62)
  %cmp16.i = icmp eq i16 %60, %62
  br i1 %cmp16.i, label %is_my_addr.exit, label %land.lhs.true.i.if.then_crit_edge

land.lhs.true.i.if.then_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

is_my_addr.exit:                                  ; preds = %land.lhs.true.i
  %63 = ptrtoint ptr %incdec.ptr.3.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %64 = load i16, ptr %incdec.ptr.3.i, align 1
  %arrayidx26.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 16, i32 0, i32 4
  %65 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %arrayidx26.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %64, i16 %66)
  %cmp28.i.not = icmp eq i16 %64, %66
  br i1 %cmp28.i.not, label %is_my_addr.exit.if.end_crit_edge, label %is_my_addr.exit.if.then_crit_edge

is_my_addr.exit.if.then_crit_edge:                ; preds = %is_my_addr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

is_my_addr.exit.if.end_crit_edge:                 ; preds = %is_my_addr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %is_my_addr.exit.if.then_crit_edge, %land.lhs.true.i.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  tail call void @smt_free_mbuf(ptr noundef %smc, ptr noundef %mb) #6
  br label %cleanup

if.end:                                           ; preds = %is_my_addr.exit.if.end_crit_edge, %sw.epilog.if.end_crit_edge
  %m_len = getelementptr inbounds %struct.s_mbuf, ptr %mb, i32 0, i32 2
  %and9 = and i32 %fs, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end.if.end19_crit_edge, label %land.lhs.true11

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

land.lhs.true11:                                  ; preds = %if.end
  %67 = ptrtoint ptr %m_data to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %m_data, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 79, i8 %68)
  %cmp15 = icmp eq i8 %68, 79
  br i1 %cmp15, label %if.then17, label %land.lhs.true11.if.end19_crit_edge

land.lhs.true11.if.end19_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then17:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @smt_free_mbuf(ptr noundef %smc, ptr noundef %mb) #6
  br label %cleanup

if.end19:                                         ; preds = %land.lhs.true11.if.end19_crit_edge, %if.end.if.end19_crit_edge
  %smt_class = getelementptr inbounds %struct.smt_header, ptr %add.ptr, i32 0, i32 2
  %69 = ptrtoint ptr %smt_class to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %smt_class, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %70)
  %cmp21 = icmp eq i8 %70, 4
  %smt_len = getelementptr inbounds %struct.smt_header, ptr %add.ptr, i32 0, i32 8
  %71 = ptrtoint ptr %smt_len to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %smt_len, align 2
  br i1 %cmp21, label %land.lhs.true23, label %land.lhs.true31

land.lhs.true23:                                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp2(i16 4458, i16 %72)
  %cmp25 = icmp ugt i16 %72, 4458
  br i1 %cmp25, label %land.lhs.true23.if.then36_crit_edge, label %land.lhs.true23.sw.bb40_crit_edge

land.lhs.true23.sw.bb40_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb40

land.lhs.true23.if.then36_crit_edge:              ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then36

land.lhs.true31:                                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp2(i16 4332, i16 %72)
  %cmp34 = icmp ugt i16 %72, 4332
  br i1 %cmp34, label %land.lhs.true31.if.then36_crit_edge, label %if.end37

land.lhs.true31.if.then36_crit_edge:              ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then36

if.then36:                                        ; preds = %land.lhs.true31.if.then36_crit_edge, %land.lhs.true23.if.then36_crit_edge
  tail call void @smt_free_mbuf(ptr noundef %smc, ptr noundef %mb) #6
  br label %cleanup

if.end37:                                         ; preds = %land.lhs.true31
  %.off = add i8 %70, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %.off)
  %switch = icmp ult i8 %.off, 4
  br i1 %switch, label %if.end37.sw.bb40_crit_edge, label %sw.epilog53

if.end37.sw.bb40_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb40

sw.bb40:                                          ; preds = %if.end37.sw.bb40_crit_edge, %land.lhs.true23.sw.bb40_crit_edge
  %smt_version = getelementptr inbounds %struct.smt_header, ptr %add.ptr, i32 0, i32 4
  %73 = ptrtoint ptr %smt_version to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %smt_version, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %74)
  %cmp42.not = icmp eq i16 %74, 1
  br i1 %cmp42.not, label %sw.bb40.if.end60_crit_edge, label %sw.bb40.if.then55_crit_edge

sw.bb40.if.then55_crit_edge:                      ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then55

sw.bb40.if.end60_crit_edge:                       ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

sw.epilog53:                                      ; preds = %if.end37
  %smt_version47 = getelementptr inbounds %struct.smt_header, ptr %add.ptr, i32 0, i32 4
  %75 = ptrtoint ptr %smt_version47 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %smt_version47, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %76)
  %cmp49.not = icmp eq i16 %76, 2
  br i1 %cmp49.not, label %sw.epilog53.if.end60_crit_edge, label %sw.epilog53.if.then55_crit_edge

sw.epilog53.if.then55_crit_edge:                  ; preds = %sw.epilog53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then55

sw.epilog53.if.end60_crit_edge:                   ; preds = %sw.epilog53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.then55:                                        ; preds = %sw.epilog53.if.then55_crit_edge, %sw.bb40.if.then55_crit_edge
  %77 = ptrtoint ptr %m_data to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %m_data, align 4
  %conv59 = zext i8 %78 to i32
  tail call fastcc void @smt_send_rdf(ptr noundef %smc, ptr noundef %mb, i32 noundef %conv59, i32 noundef 2, i32 noundef %and.lobit)
  tail call void @smt_free_mbuf(ptr noundef %smc, ptr noundef %mb) #6
  br label %cleanup

if.end60:                                         ; preds = %sw.epilog53.if.end60_crit_edge, %sw.bb40.if.end60_crit_edge
  %smt_len61 = getelementptr inbounds %struct.smt_header, ptr %add.ptr, i32 0, i32 8
  %79 = ptrtoint ptr %smt_len61 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %smt_len61, align 2
  %conv62 = zext i16 %80 to i32
  %81 = ptrtoint ptr %m_len to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %m_len, align 4
  %sub = add i32 %82, -32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv62)
  %cmp64 = icmp ult i32 %sub, %conv62
  br i1 %cmp64, label %if.end60.if.then76_crit_edge, label %lor.lhs.false66

if.end60.if.then76_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then76

lor.lhs.false66:                                  ; preds = %if.end60
  %and69 = and i32 %conv62, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.end81, label %land.lhs.true71

land.lhs.true71:                                  ; preds = %lor.lhs.false66
  br i1 %cmp21, label %land.lhs.true71.sw.bb281_crit_edge, label %land.lhs.true71.if.then76_crit_edge

land.lhs.true71.if.then76_crit_edge:              ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then76

land.lhs.true71.sw.bb281_crit_edge:               ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb281

if.then76:                                        ; preds = %land.lhs.true71.if.then76_crit_edge, %if.end60.if.then76_crit_edge
  %83 = ptrtoint ptr %m_data to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %m_data, align 4
  %conv80 = zext i8 %84 to i32
  tail call fastcc void @smt_send_rdf(ptr noundef %smc, ptr noundef %mb, i32 noundef %conv80, i32 noundef 10, i32 noundef %and.lobit)
  tail call void @smt_free_mbuf(ptr noundef %smc, ptr noundef %mb) #6
  br label %cleanup

if.end81:                                         ; preds = %lor.lhs.false66
  %85 = zext i8 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %70, label %sw.default400 [
    i8 1, label %sw.bb84
    i8 2, label %sw.bb261
    i8 3, label %sw.bb271
    i8 4, label %if.end81.sw.bb281_crit_edge
    i8 5, label %sw.bb350
    i8 6, label %sw.bb353
    i8 -1, label %sw.bb357
    i8 8, label %if.end81.sw.bb368_crit_edge
    i8 9, label %if.end81.sw.bb368_crit_edge721
    i8 7, label %if.end81.if.end415_crit_edge
  ]

if.end81.if.end415_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end415

if.end81.sw.bb368_crit_edge721:                   ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb368

if.end81.sw.bb368_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb368

if.end81.sw.bb281_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb281

sw.bb84:                                          ; preds = %if.end81
  %call85 = tail call i32 @smt_check_para(ptr noundef %smc, ptr noundef %add.ptr, ptr noundef nonnull @plist_nif)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end89, label %sw.bb84.if.end415_crit_edge

sw.bb84.if.end415_crit_edge:                      ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end415

if.end89:                                         ; preds = %sw.bb84
  %smt_type = getelementptr inbounds %struct.smt_header, ptr %add.ptr, i32 0, i32 3
  %86 = ptrtoint ptr %smt_type to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %smt_type, align 1
  %88 = zext i8 %87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %87, label %if.end89.if.end415_crit_edge [
    i8 1, label %if.end89.sw.bb91_crit_edge
    i8 2, label %if.end89.sw.bb91_crit_edge722
    i8 3, label %sw.bb174
  ]

if.end89.sw.bb91_crit_edge722:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb91

if.end89.sw.bb91_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb91

if.end89.if.end415_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end415

sw.bb91:                                          ; preds = %if.end89.sw.bb91_crit_edge, %if.end89.sw.bb91_crit_edge722
  %and92 = and i32 %fs, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %land.lhs.true94, label %sw.bb91.if.end146_crit_edge

sw.bb91.if.end146_crit_edge:                      ; preds = %sw.bb91
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end146

land.lhs.true94:                                  ; preds = %sw.bb91
  %89 = ptrtoint ptr %m_data to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %m_data, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 79, i8 %90)
  %cmp98 = icmp eq i8 %90, 79
  br i1 %cmp98, label %land.lhs.true100, label %land.lhs.true94.if.end146_crit_edge

land.lhs.true94.if.end146_crit_edge:              ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end146

land.lhs.true100:                                 ; preds = %land.lhs.true94
  %91 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %91, i32 2)
  %92 = load i16, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %92)
  %cmp.i607 = icmp eq i16 %92, -1
  br i1 %cmp.i607, label %land.lhs.true.i608, label %land.lhs.true100.if.end146_crit_edge

land.lhs.true100.if.end146_crit_edge:             ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end146

land.lhs.true.i608:                               ; preds = %land.lhs.true100
  %93 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_loadN_noabort(i32 %93, i32 2)
  %94 = load i16, ptr %incdec.ptr.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %94)
  %cmp5.i = icmp eq i16 %94, -1
  br i1 %cmp5.i, label %is_broadcast.exit, label %land.lhs.true.i608.if.end146_crit_edge

land.lhs.true.i608.if.end146_crit_edge:           ; preds = %land.lhs.true.i608
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end146

is_broadcast.exit:                                ; preds = %land.lhs.true.i608
  %95 = ptrtoint ptr %incdec.ptr.3.i to i32
  call void @__asan_loadN_noabort(i32 %95, i32 2)
  %96 = load i16, ptr %incdec.ptr.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %96)
  %cmp10.i.not = icmp eq i16 %96, -1
  br i1 %cmp10.i.not, label %if.then104, label %is_broadcast.exit.if.end146_crit_edge

is_broadcast.exit.if.end146_crit_edge:            ; preds = %is_broadcast.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end146

if.then104:                                       ; preds = %is_broadcast.exit
  %fddiMACUpstreamNbr = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 8
  %97 = ptrtoint ptr %fddiMACUpstreamNbr to i32
  call void @__asan_loadN_noabort(i32 %97, i32 2)
  %98 = load i16, ptr %fddiMACUpstreamNbr, align 1
  %99 = ptrtoint ptr %incdec.ptr.5.i to i32
  call void @__asan_loadN_noabort(i32 %99, i32 2)
  %100 = load i16, ptr %incdec.ptr.5.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %98, i16 %100)
  %cmp.i611 = icmp eq i16 %98, %100
  br i1 %cmp.i611, label %land.lhs.true.i612, label %if.then104.if.then110_crit_edge

if.then104.if.then110_crit_edge:                  ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then110

land.lhs.true.i612:                               ; preds = %if.then104
  %arrayidx6.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 8, i32 0, i32 2
  %101 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_loadN_noabort(i32 %101, i32 2)
  %102 = load i16, ptr %arrayidx6.i, align 1
  %arrayidx9.i = getelementptr [6 x i8], ptr %incdec.ptr.5.i, i32 0, i32 2
  %103 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_loadN_noabort(i32 %103, i32 2)
  %104 = load i16, ptr %arrayidx9.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %102, i16 %104)
  %cmp11.i = icmp eq i16 %102, %104
  br i1 %cmp11.i, label %is_equal.exit, label %land.lhs.true.i612.if.then110_crit_edge

land.lhs.true.i612.if.then110_crit_edge:          ; preds = %land.lhs.true.i612
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then110

is_equal.exit:                                    ; preds = %land.lhs.true.i612
  %arrayidx14.i613 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 8, i32 0, i32 4
  %105 = ptrtoint ptr %arrayidx14.i613 to i32
  call void @__asan_loadN_noabort(i32 %105, i32 2)
  %106 = load i16, ptr %arrayidx14.i613, align 1
  %arrayidx17.i = getelementptr [6 x i8], ptr %incdec.ptr.5.i, i32 0, i32 4
  %107 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_loadN_noabort(i32 %107, i32 2)
  %108 = load i16, ptr %arrayidx17.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %106, i16 %108)
  %cmp19.i.not = icmp eq i16 %106, %108
  br i1 %cmp19.i.not, label %is_equal.exit.if.end132_crit_edge, label %is_equal.exit.if.then110_crit_edge

is_equal.exit.if.then110_crit_edge:               ; preds = %is_equal.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then110

is_equal.exit.if.end132_crit_edge:                ; preds = %is_equal.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end132

if.then110:                                       ; preds = %is_equal.exit.if.then110_crit_edge, %land.lhs.true.i612.if.then110_crit_edge, %if.then104.if.then110_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %98)
  %cmp.i616 = icmp eq i16 %98, 0
  br i1 %cmp.i616, label %land.lhs.true.i619, label %if.then110.if.then118_crit_edge

if.then110.if.then118_crit_edge:                  ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then118

land.lhs.true.i619:                               ; preds = %if.then110
  %arrayidx6.i617 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 8, i32 0, i32 2
  %109 = ptrtoint ptr %arrayidx6.i617 to i32
  call void @__asan_loadN_noabort(i32 %109, i32 2)
  %110 = load i16, ptr %arrayidx6.i617, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 7936, i16 %110)
  %cmp11.i618 = icmp eq i16 %110, 7936
  br i1 %cmp11.i618, label %is_equal.exit624, label %land.lhs.true.i619.if.then118_crit_edge

land.lhs.true.i619.if.then118_crit_edge:          ; preds = %land.lhs.true.i619
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then118

is_equal.exit624:                                 ; preds = %land.lhs.true.i619
  %arrayidx14.i620 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 8, i32 0, i32 4
  %111 = ptrtoint ptr %arrayidx14.i620 to i32
  call void @__asan_loadN_noabort(i32 %111, i32 2)
  %112 = load i16, ptr %arrayidx14.i620, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %112)
  %cmp19.i621.not = icmp eq i16 %112, 0
  br i1 %cmp19.i621.not, label %is_equal.exit624.if.end126_crit_edge, label %is_equal.exit624.if.then118_crit_edge

is_equal.exit624.if.then118_crit_edge:            ; preds = %is_equal.exit624
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then118

is_equal.exit624.if.end126_crit_edge:             ; preds = %is_equal.exit624
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end126

if.then118:                                       ; preds = %is_equal.exit624.if.then118_crit_edge, %land.lhs.true.i619.if.then118_crit_edge, %if.then110.if.then118_crit_edge
  %fddiMACOldUpstreamNbr = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 10
  %113 = call ptr @memcpy(ptr %fddiMACOldUpstreamNbr, ptr %fddiMACUpstreamNbr, i32 6)
  br label %if.end126

if.end126:                                        ; preds = %if.then118, %is_equal.exit624.if.end126_crit_edge
  %114 = call ptr @memcpy(ptr %fddiMACUpstreamNbr, ptr %incdec.ptr.5.i, i32 6)
  tail call void @smt_srf_event(ptr noundef %smc, i32 noundef 2, i32 noundef 1, i32 noundef 0) #6
  tail call fastcc void @smt_echo_test(ptr noundef %smc, i32 noundef 0)
  br label %if.end132

if.end132:                                        ; preds = %if.end126, %is_equal.exit.if.end132_crit_edge
  %call133 = tail call i32 @smt_get_time() #6
  %sm134 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 3
  %115 = ptrtoint ptr %sm134 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %call133, ptr %sm134, align 4
  %116 = ptrtoint ptr %smt_len61 to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %smt_len61, align 2
  %conv.i = zext i16 %117 to i32
  %add.ptr.i = getelementptr %struct.smt_header, ptr %add.ptr, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end15.i.while.cond.i_crit_edge, %if.end132
  %len.0.i = phi i32 [ %conv.i, %if.end132 ], [ %sub.i, %if.end15.i.while.cond.i_crit_edge ]
  %p.0.i = phi ptr [ %add.ptr.i, %if.end132 ], [ %add.ptr6.i, %if.end15.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0.i)
  %cmp.i625 = icmp sgt i32 %len.0.i, 0
  br i1 %cmp.i625, label %while.body.i, label %while.cond.i.if.end146_crit_edge

while.cond.i.if.end146_crit_edge:                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end146

while.body.i:                                     ; preds = %while.cond.i
  %p_len.i = getelementptr inbounds %struct.smt_para, ptr %p.0.i, i32 0, i32 1
  %118 = ptrtoint ptr %p_len.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %p_len.i, align 2
  %conv5.i = zext i16 %119 to i32
  %add.i = add nuw nsw i32 %conv5.i, 4
  %sub.i = sub nsw i32 %len.0.i, %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp7.i = icmp sgt i32 %sub.i, -1
  %and.i = and i32 %conv5.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %or.cond = select i1 %cmp7.i, i1 %tobool.not.i, i1 false
  br i1 %or.cond, label %if.end15.i, label %while.body.i.if.end146_crit_edge

while.body.i.if.end146_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end146

if.end15.i:                                       ; preds = %while.body.i
  %add.ptr6.i = getelementptr i8, ptr %p.0.i, i32 %add.i
  %120 = ptrtoint ptr %p.0.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %p.0.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %121)
  %cmp3.i = icmp ne i16 %121, 3
  %tobool16.not32.i = icmp eq ptr %p.0.i, null
  %tobool16.not.i = select i1 %cmp3.i, i1 true, i1 %tobool16.not32.i
  br i1 %tobool16.not.i, label %if.end15.i.while.cond.i_crit_edge, label %if.then137

if.end15.i.while.cond.i_crit_edge:                ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

if.then137:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  %st_dupl_addr = getelementptr inbounds %struct.smt_p_state, ptr %p.0.i, i32 0, i32 3
  %122 = ptrtoint ptr %st_dupl_addr to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %st_dupl_addr, align 1
  %124 = and i8 %123, 1
  %fddiMACUNDA_Flag = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 54
  %125 = ptrtoint ptr %fddiMACUNDA_Flag to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %124, ptr %fddiMACUNDA_Flag, align 1
  tail call fastcc void @update_dac(ptr noundef %smc, i32 noundef 1)
  br label %if.end146

if.end146:                                        ; preds = %if.then137, %while.body.i.if.end146_crit_edge, %while.cond.i.if.end146_crit_edge, %is_broadcast.exit.if.end146_crit_edge, %land.lhs.true.i608.if.end146_crit_edge, %land.lhs.true100.if.end146_crit_edge, %land.lhs.true94.if.end146_crit_edge, %sw.bb91.if.end146_crit_edge
  %126 = ptrtoint ptr %smt_type to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %smt_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %127)
  %cmp149 = icmp eq i8 %127, 2
  br i1 %cmp149, label %land.lhs.true151, label %if.end146.if.end415_crit_edge

if.end146.if.end415_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end415

land.lhs.true151:                                 ; preds = %if.end146
  %128 = ptrtoint ptr %incdec.ptr.5.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %incdec.ptr.5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool154.not = icmp slt i8 %129, 0
  br i1 %tobool154.not, label %land.lhs.true151.if.end415_crit_edge, label %land.lhs.true155

land.lhs.true151.if.end415_crit_edge:             ; preds = %land.lhs.true151
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end415

land.lhs.true155:                                 ; preds = %land.lhs.true151
  br i1 %tobool10.not, label %land.lhs.true155.if.then170_crit_edge, label %lor.lhs.false164

land.lhs.true155.if.then170_crit_edge:            ; preds = %land.lhs.true155
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then170

lor.lhs.false164:                                 ; preds = %land.lhs.true155
  %130 = ptrtoint ptr %m_data to i32
  call void @__asan_load1_noabort(i32 %130)
  %.pr = load i8, ptr %m_data, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 79, i8 %.pr)
  %cmp168.not = icmp eq i8 %.pr, 79
  br i1 %cmp168.not, label %lor.lhs.false164.if.end415_crit_edge, label %lor.lhs.false164.if.then170_crit_edge

lor.lhs.false164.if.then170_crit_edge:            ; preds = %lor.lhs.false164
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then170

lor.lhs.false164.if.end415_crit_edge:             ; preds = %lor.lhs.false164
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end415

if.then170:                                       ; preds = %lor.lhs.false164.if.then170_crit_edge, %land.lhs.true155.if.then170_crit_edge
  %smt_tid = getelementptr inbounds %struct.smt_header, ptr %add.ptr, i32 0, i32 5
  %131 = ptrtoint ptr %smt_tid to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %smt_tid, align 4
  tail call fastcc void @smt_send_nif(ptr noundef %smc, ptr noundef %incdec.ptr.5.i, i32 noundef 65, i32 noundef %132, i32 noundef 3, i32 noundef %and.lobit)
  br label %if.end415

sw.bb174:                                         ; preds = %if.end89
  br i1 %tobool10.not, label %if.end188, label %if.then178

if.then178:                                       ; preds = %sw.bb174
  call void @__sanitizer_cov_trace_pc() #8
  %pend = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 3, i32 3
  %133 = ptrtoint ptr %pend to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %pend, align 4
  %fddiMACDupAddressTest = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 12
  %134 = ptrtoint ptr %fddiMACDupAddressTest to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 2, ptr %fddiMACDupAddressTest, align 2
  %r = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 5
  %135 = ptrtoint ptr %r to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 2, ptr %r, align 4
  tail call void @queue_event(ptr noundef %smc, i32 noundef 3, i32 noundef 10) #6
  %fddiMACDA_Flag = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 53
  %136 = ptrtoint ptr %fddiMACDA_Flag to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 1, ptr %fddiMACDA_Flag, align 2
  tail call fastcc void @update_dac(ptr noundef %smc, i32 noundef 1)
  br label %if.end415

if.end188:                                        ; preds = %sw.bb174
  %smt_tid189 = getelementptr inbounds %struct.smt_header, ptr %add.ptr, i32 0, i32 5
  %137 = ptrtoint ptr %smt_tid189 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %smt_tid189, align 4
  %pend191 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 3, i32 3
  %139 = ptrtoint ptr %pend191 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %pend191, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %138, i32 %140)
  %cmp193 = icmp eq i32 %138, %140
  br i1 %cmp193, label %if.then195, label %if.end188.if.end415_crit_edge

if.end188.if.end415_crit_edge:                    ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end415

if.then195:                                       ; preds = %if.end188
  %141 = ptrtoint ptr %pend191 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 0, ptr %pend191, align 4
  %fddiMACDownstreamNbr = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 9
  %142 = ptrtoint ptr %fddiMACDownstreamNbr to i32
  call void @__asan_loadN_noabort(i32 %142, i32 2)
  %143 = load i16, ptr %fddiMACDownstreamNbr, align 1
  %144 = ptrtoint ptr %incdec.ptr.5.i to i32
  call void @__asan_loadN_noabort(i32 %144, i32 2)
  %145 = load i16, ptr %incdec.ptr.5.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %143, i16 %145)
  %cmp.i627 = icmp eq i16 %143, %145
  br i1 %cmp.i627, label %land.lhs.true.i631, label %if.then195.if.then205_crit_edge

if.then195.if.then205_crit_edge:                  ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then205

land.lhs.true.i631:                               ; preds = %if.then195
  %arrayidx6.i628 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 9, i32 0, i32 2
  %146 = ptrtoint ptr %arrayidx6.i628 to i32
  call void @__asan_loadN_noabort(i32 %146, i32 2)
  %147 = load i16, ptr %arrayidx6.i628, align 1
  %arrayidx9.i629 = getelementptr [6 x i8], ptr %incdec.ptr.5.i, i32 0, i32 2
  %148 = ptrtoint ptr %arrayidx9.i629 to i32
  call void @__asan_loadN_noabort(i32 %148, i32 2)
  %149 = load i16, ptr %arrayidx9.i629, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %147, i16 %149)
  %cmp11.i630 = icmp eq i16 %147, %149
  br i1 %cmp11.i630, label %is_equal.exit637, label %land.lhs.true.i631.if.then205_crit_edge

land.lhs.true.i631.if.then205_crit_edge:          ; preds = %land.lhs.true.i631
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then205

is_equal.exit637:                                 ; preds = %land.lhs.true.i631
  %arrayidx14.i632 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 9, i32 0, i32 4
  %150 = ptrtoint ptr %arrayidx14.i632 to i32
  call void @__asan_loadN_noabort(i32 %150, i32 2)
  %151 = load i16, ptr %arrayidx14.i632, align 1
  %arrayidx17.i633 = getelementptr [6 x i8], ptr %incdec.ptr.5.i, i32 0, i32 4
  %152 = ptrtoint ptr %arrayidx17.i633 to i32
  call void @__asan_loadN_noabort(i32 %152, i32 2)
  %153 = load i16, ptr %arrayidx17.i633, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %151, i16 %153)
  %cmp19.i634.not = icmp eq i16 %151, %153
  br i1 %cmp19.i634.not, label %is_equal.exit637.if.end227_crit_edge, label %is_equal.exit637.if.then205_crit_edge

is_equal.exit637.if.then205_crit_edge:            ; preds = %is_equal.exit637
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then205

is_equal.exit637.if.end227_crit_edge:             ; preds = %is_equal.exit637
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end227

if.then205:                                       ; preds = %is_equal.exit637.if.then205_crit_edge, %land.lhs.true.i631.if.then205_crit_edge, %if.then195.if.then205_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %143)
  %cmp.i638 = icmp eq i16 %143, 0
  br i1 %cmp.i638, label %land.lhs.true.i641, label %if.then205.if.then213_crit_edge

if.then205.if.then213_crit_edge:                  ; preds = %if.then205
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then213

land.lhs.true.i641:                               ; preds = %if.then205
  %arrayidx6.i639 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 9, i32 0, i32 2
  %154 = ptrtoint ptr %arrayidx6.i639 to i32
  call void @__asan_loadN_noabort(i32 %154, i32 2)
  %155 = load i16, ptr %arrayidx6.i639, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 7936, i16 %155)
  %cmp11.i640 = icmp eq i16 %155, 7936
  br i1 %cmp11.i640, label %is_equal.exit646, label %land.lhs.true.i641.if.then213_crit_edge

land.lhs.true.i641.if.then213_crit_edge:          ; preds = %land.lhs.true.i641
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then213

is_equal.exit646:                                 ; preds = %land.lhs.true.i641
  %arrayidx14.i642 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 9, i32 0, i32 4
  %156 = ptrtoint ptr %arrayidx14.i642 to i32
  call void @__asan_loadN_noabort(i32 %156, i32 2)
  %157 = load i16, ptr %arrayidx14.i642, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %157)
  %cmp19.i643.not = icmp eq i16 %157, 0
  br i1 %cmp19.i643.not, label %is_equal.exit646.if.end221_crit_edge, label %is_equal.exit646.if.then213_crit_edge

is_equal.exit646.if.then213_crit_edge:            ; preds = %is_equal.exit646
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then213

is_equal.exit646.if.end221_crit_edge:             ; preds = %is_equal.exit646
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end221

if.then213:                                       ; preds = %is_equal.exit646.if.then213_crit_edge, %land.lhs.true.i641.if.then213_crit_edge, %if.then205.if.then213_crit_edge
  %fddiMACOldDownstreamNbr = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 11
  %158 = call ptr @memcpy(ptr %fddiMACOldDownstreamNbr, ptr %fddiMACDownstreamNbr, i32 6)
  br label %if.end221

if.end221:                                        ; preds = %if.then213, %is_equal.exit646.if.end221_crit_edge
  %159 = call ptr @memcpy(ptr %fddiMACDownstreamNbr, ptr %incdec.ptr.5.i, i32 6)
  tail call void @smt_srf_event(ptr noundef %smc, i32 noundef 2, i32 noundef 1, i32 noundef 0) #6
  tail call fastcc void @smt_echo_test(ptr noundef %smc, i32 noundef 1)
  br label %if.end227

if.end227:                                        ; preds = %if.end221, %is_equal.exit637.if.end227_crit_edge
  %fddiMACDA_Flag231 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 53
  %160 = ptrtoint ptr %fddiMACDA_Flag231 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 0, ptr %fddiMACDA_Flag231, align 2
  tail call fastcc void @update_dac(ptr noundef %smc, i32 noundef 1)
  %call232 = tail call i32 @smt_get_time() #6
  %smt_tvd = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 3, i32 1
  %161 = ptrtoint ptr %smt_tvd to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %call232, ptr %smt_tvd, align 4
  %fddiMACDupAddressTest237 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 12
  %162 = ptrtoint ptr %fddiMACDupAddressTest237 to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 1, ptr %fddiMACDupAddressTest237, align 2
  %r238 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 5
  %163 = ptrtoint ptr %r238 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %r238, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %164)
  %cmp241.not = icmp eq i8 %164, 1
  br i1 %cmp241.not, label %if.end227.if.end415_crit_edge, label %if.then243

if.end227.if.end415_crit_edge:                    ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end415

if.then243:                                       ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #8
  %165 = ptrtoint ptr %r238 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 1, ptr %r238, align 4
  tail call void @queue_event(ptr noundef %smc, i32 noundef 3, i32 noundef 10) #6
  br label %if.end415

sw.bb261:                                         ; preds = %if.end81
  %smt_type262 = getelementptr inbounds %struct.smt_header, ptr %add.ptr, i32 0, i32 3
  %166 = ptrtoint ptr %smt_type262 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %smt_type262, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %167)
  %cmp264.not = icmp eq i8 %167, 2
  br i1 %cmp264.not, label %if.end267, label %sw.bb261.if.end415_crit_edge

sw.bb261.if.end415_crit_edge:                     ; preds = %sw.bb261
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end415

if.end267:                                        ; preds = %sw.bb261
  call void @__sanitizer_cov_trace_pc() #8
  %smt_tid270 = getelementptr inbounds %struct.smt_header, ptr %add.ptr, i32 0, i32 5
  %168 = ptrtoint ptr %smt_tid270 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %smt_tid270, align 4
  tail call fastcc void @smt_send_sif_config(ptr noundef %smc, ptr noundef %incdec.ptr.5.i, i32 noundef %169, i32 noundef %and.lobit)
  br label %if.end415

sw.bb271:                                         ; preds = %if.end81
  %smt_type272 = getelementptr inbounds %struct.smt_header, ptr %add.ptr, i32 0, i32 3
  %170 = ptrtoint ptr %smt_type272 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %smt_type272, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %171)
  %cmp274.not = icmp eq i8 %171, 2
  br i1 %cmp274.not, label %if.end277, label %sw.bb271.if.end415_crit_edge

sw.bb271.if.end415_crit_edge:                     ; preds = %sw.bb271
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end415

if.end277:                                        ; preds = %sw.bb271
  call void @__sanitizer_cov_trace_pc() #8
  %smt_tid280 = getelementptr inbounds %struct.smt_header, ptr %add.ptr, i32 0, i32 5
  %172 = ptrtoint ptr %smt_tid280 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %smt_tid280, align 4
  tail call fastcc void @smt_send_sif_operation(ptr noundef %smc, ptr noundef %incdec.ptr.5.i, i32 noundef %173, i32 noundef %and.lobit)
  br label %if.end415

sw.bb281:                                         ; preds = %if.end81.sw.bb281_crit_edge, %land.lhs.true71.sw.bb281_crit_edge
  %smt_type282 = getelementptr inbounds %struct.smt_header, ptr %add.ptr, i32 0, i32 3
  %174 = ptrtoint ptr %smt_type282 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %smt_type282, align 1
  %176 = zext i8 %175 to i64
  call void @__sanitizer_cov_trace_switch(i64 %176, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %175, label %sw.bb281.if.end415_crit_edge [
    i8 3, label %sw.bb284
    i8 2, label %sw.bb325
  ]

sw.bb281.if.end415_crit_edge:                     ; preds = %sw.bb281
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end415

sw.bb284:                                         ; preds = %sw.bb281
  %fddiPRIVECF_Reply_Rx = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 40, i32 1
  %177 = ptrtoint ptr %fddiPRIVECF_Reply_Rx to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %fddiPRIVECF_Reply_Rx, align 4
  %inc286 = add i32 %178, 1
  store i32 %inc286, ptr %fddiPRIVECF_Reply_Rx, align 4
  %179 = ptrtoint ptr %smt_len61 to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %smt_len61, align 2
  %conv.i648 = zext i16 %180 to i32
  %add.ptr.i649 = getelementptr %struct.smt_header, ptr %add.ptr, i32 1
  br label %while.cond.i653

while.cond.i653:                                  ; preds = %if.end10.i665.while.cond.i653_crit_edge, %sw.bb284
  %len.0.i650 = phi i32 [ %conv.i648, %sw.bb284 ], [ %sub.i660, %if.end10.i665.while.cond.i653_crit_edge ]
  %p.0.i651 = phi ptr [ %add.ptr.i649, %sw.bb284 ], [ %add.ptr6.i659, %if.end10.i665.while.cond.i653_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0.i650)
  %cmp.i652 = icmp sgt i32 %len.0.i650, 0
  br i1 %cmp.i652, label %while.body.i662, label %while.cond.i653.if.end415_crit_edge

while.cond.i653.if.end415_crit_edge:              ; preds = %while.cond.i653
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end415

while.body.i662:                                  ; preds = %while.cond.i653
  %p_len.i656 = getelementptr inbounds %struct.smt_para, ptr %p.0.i651, i32 0, i32 1
  %181 = ptrtoint ptr %p_len.i656 to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %p_len.i656, align 2
  %conv5.i657 = zext i16 %182 to i32
  %add.i658 = add nuw nsw i32 %conv5.i657, 4
  %sub.i660 = sub nsw i32 %len.0.i650, %add.i658
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i660)
  %cmp7.i661 = icmp slt i32 %sub.i660, 0
  br i1 %cmp7.i661, label %while.body.i662.if.end415_crit_edge, label %if.end10.i665

while.body.i662.if.end415_crit_edge:              ; preds = %while.body.i662
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end415

if.end10.i665:                                    ; preds = %while.body.i662
  %add.ptr6.i659 = getelementptr i8, ptr %p.0.i651, i32 %add.i658
  %183 = ptrtoint ptr %p.0.i651 to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %p.0.i651, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %184)
  %cmp3.i655 = icmp ne i16 %184, 17
  %tobool16.not32.i666 = icmp eq ptr %p.0.i651, null
  %tobool16.not.i667 = select i1 %cmp3.i655, i1 true, i1 %tobool16.not32.i666
  br i1 %tobool16.not.i667, label %if.end10.i665.while.cond.i653_crit_edge, label %if.end10.i665.if.end415_crit_edge

if.end10.i665.if.end415_crit_edge:                ; preds = %if.end10.i665
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end415

if.end10.i665.while.cond.i653_crit_edge:          ; preds = %if.end10.i665
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i653

sw.bb325:                                         ; preds = %sw.bb281
  %priv327 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 40
  %185 = ptrtoint ptr %priv327 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %priv327, align 4
  %inc328 = add i32 %186, 1
  store i32 %inc328, ptr %priv327, align 4
  %187 = ptrtoint ptr %smt_len61 to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %smt_len61, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %188)
  %tobool331.not = icmp eq i16 %188, 0
  br i1 %tobool331.not, label %sw.bb325.if.end340_crit_edge, label %land.lhs.true332

sw.bb325.if.end340_crit_edge:                     ; preds = %sw.bb325
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end340

land.lhs.true332:                                 ; preds = %sw.bb325
  %conv.i672 = zext i16 %188 to i32
  %add.ptr.i673 = getelementptr %struct.smt_header, ptr %add.ptr, i32 1
  br label %while.cond.i677

while.cond.i677:                                  ; preds = %if.end10.i689.while.cond.i677_crit_edge, %land.lhs.true332
  %len.0.i674 = phi i32 [ %conv.i672, %land.lhs.true332 ], [ %sub.i684, %if.end10.i689.while.cond.i677_crit_edge ]
  %p.0.i675 = phi ptr [ %add.ptr.i673, %land.lhs.true332 ], [ %add.ptr6.i683, %if.end10.i689.while.cond.i677_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0.i674)
  %cmp.i676 = icmp sgt i32 %len.0.i674, 0
  br i1 %cmp.i676, label %while.body.i686, label %while.cond.i677.if.then335_crit_edge

while.cond.i677.if.then335_crit_edge:             ; preds = %while.cond.i677
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then335

while.body.i686:                                  ; preds = %while.cond.i677
  %p_len.i680 = getelementptr inbounds %struct.smt_para, ptr %p.0.i675, i32 0, i32 1
  %189 = ptrtoint ptr %p_len.i680 to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %p_len.i680, align 2
  %conv5.i681 = zext i16 %190 to i32
  %add.i682 = add nuw nsw i32 %conv5.i681, 4
  %sub.i684 = sub nsw i32 %len.0.i674, %add.i682
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i684)
  %cmp7.i685 = icmp slt i32 %sub.i684, 0
  br i1 %cmp7.i685, label %while.body.i686.if.then335_crit_edge, label %if.end10.i689

while.body.i686.if.then335_crit_edge:             ; preds = %while.body.i686
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then335

if.end10.i689:                                    ; preds = %while.body.i686
  %add.ptr6.i683 = getelementptr i8, ptr %p.0.i675, i32 %add.i682
  %191 = ptrtoint ptr %p.0.i675 to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %p.0.i675, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %192)
  %cmp3.i679 = icmp ne i16 %192, 17
  %tobool16.not32.i690 = icmp eq ptr %p.0.i675, null
  %tobool16.not.i691 = select i1 %cmp3.i679, i1 true, i1 %tobool16.not32.i690
  br i1 %tobool16.not.i691, label %if.end10.i689.while.cond.i677_crit_edge, label %if.end10.i689.if.end340_crit_edge

if.end10.i689.if.end340_crit_edge:                ; preds = %if.end10.i689
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end340

if.end10.i689.while.cond.i677_crit_edge:          ; preds = %if.end10.i689
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i677

if.then335:                                       ; preds = %while.body.i686.if.then335_crit_edge, %while.cond.i677.if.then335_crit_edge
  %193 = ptrtoint ptr %m_data to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %m_data, align 4
  %conv339 = zext i8 %194 to i32
  tail call fastcc void @smt_send_rdf(ptr noundef %smc, ptr noundef %mb, i32 noundef %conv339, i32 noundef 10, i32 noundef %and.lobit)
  br label %if.end415

if.end340:                                        ; preds = %if.end10.i689.if.end340_crit_edge, %sw.bb325.if.end340_crit_edge
  %195 = call ptr @memcpy(ptr %add.ptr, ptr %incdec.ptr.5.i, i32 6)
  %196 = ptrtoint ptr %smt_type282 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 3, ptr %smt_type282, align 1
  %fddiPRIVECF_Reply_Tx = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 40, i32 3
  %197 = ptrtoint ptr %fddiPRIVECF_Reply_Tx to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %fddiPRIVECF_Reply_Tx, align 4
  %inc347 = add i32 %198, 1
  store i32 %inc347, ptr %fddiPRIVECF_Reply_Tx, align 4
  tail call void @smt_send_frame(ptr noundef %smc, ptr noundef %mb, i32 noundef 65, i32 noundef %and.lobit)
  br label %cleanup

sw.bb350:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  %call352 = tail call i32 @ess_raf_received_pack(ptr noundef %smc, ptr noundef %mb, ptr noundef %add.ptr, i32 noundef %fs) #6
  br label %if.end415

sw.bb353:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  %fddiPRIVRDF_Rx = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 40, i32 6
  %199 = ptrtoint ptr %fddiPRIVRDF_Rx to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %fddiPRIVRDF_Rx, align 4
  %inc356 = add i32 %200, 1
  store i32 %inc356, ptr %fddiPRIVRDF_Rx, align 4
  br label %if.end415

sw.bb357:                                         ; preds = %if.end81
  %smt_type358 = getelementptr inbounds %struct.smt_header, ptr %add.ptr, i32 0, i32 3
  %201 = ptrtoint ptr %smt_type358 to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %smt_type358, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %202)
  %cmp360 = icmp eq i8 %202, 2
  br i1 %cmp360, label %if.then362, label %sw.bb357.if.end415_crit_edge

sw.bb357.if.end415_crit_edge:                     ; preds = %sw.bb357
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end415

if.then362:                                       ; preds = %sw.bb357
  call void @__sanitizer_cov_trace_pc() #8
  %203 = ptrtoint ptr %m_data to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %m_data, align 4
  %conv366 = zext i8 %204 to i32
  tail call fastcc void @smt_send_rdf(ptr noundef %smc, ptr noundef %mb, i32 noundef %conv366, i32 noundef 1, i32 noundef %and.lobit)
  br label %if.end415

sw.bb368:                                         ; preds = %if.end81.sw.bb368_crit_edge, %if.end81.sw.bb368_crit_edge721
  %smt_type369 = getelementptr inbounds %struct.smt_header, ptr %add.ptr, i32 0, i32 3
  %205 = ptrtoint ptr %smt_type369 to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %smt_type369, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %206)
  %cmp371.not = icmp eq i8 %206, 2
  br i1 %cmp371.not, label %if.end374, label %sw.bb368.if.end415_crit_edge

sw.bb368.if.end415_crit_edge:                     ; preds = %sw.bb368
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end415

if.end374:                                        ; preds = %sw.bb368
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %70)
  %cmp377 = icmp eq i8 %70, 8
  %fddiPRIVPMF_Set_Rx = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 40, i32 5
  %fddiPRIVPMF_Get_Rx = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 40, i32 4
  %fddiPRIVPMF_Set_Rx.sink714 = select i1 %cmp377, ptr %fddiPRIVPMF_Get_Rx, ptr %fddiPRIVPMF_Set_Rx
  %207 = ptrtoint ptr %fddiPRIVPMF_Set_Rx.sink714 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %fddiPRIVPMF_Set_Rx.sink714, align 4
  %inc386 = add i32 %208, 1
  store i32 %inc386, ptr %fddiPRIVPMF_Set_Rx.sink714, align 4
  %209 = ptrtoint ptr %smt_class to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %smt_class, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %210)
  %cmp390 = icmp eq i8 %210, 9
  br i1 %cmp390, label %land.lhs.true392, label %if.end374.if.end398_crit_edge

if.end374.if.end398_crit_edge:                    ; preds = %if.end374
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end398

land.lhs.true392:                                 ; preds = %if.end374
  %211 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %212)
  %tobool395.not = icmp slt i8 %212, 0
  br i1 %tobool395.not, label %land.lhs.true392.if.end415_crit_edge, label %land.lhs.true392.if.end398_crit_edge

land.lhs.true392.if.end398_crit_edge:             ; preds = %land.lhs.true392
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end398

land.lhs.true392.if.end415_crit_edge:             ; preds = %land.lhs.true392
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end415

if.end398:                                        ; preds = %land.lhs.true392.if.end398_crit_edge, %if.end374.if.end398_crit_edge
  tail call void @smt_pmf_received_pack(ptr noundef %smc, ptr noundef %mb, i32 noundef %and.lobit) #6
  br label %if.end415

sw.default400:                                    ; preds = %if.end81
  %smt_type401 = getelementptr inbounds %struct.smt_header, ptr %add.ptr, i32 0, i32 3
  %213 = ptrtoint ptr %smt_type401 to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %smt_type401, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %214)
  %cmp403.not = icmp eq i8 %214, 2
  br i1 %cmp403.not, label %if.end406, label %sw.default400.if.end415_crit_edge

sw.default400.if.end415_crit_edge:                ; preds = %sw.default400
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end415

if.end406:                                        ; preds = %sw.default400
  call void @__sanitizer_cov_trace_pc() #8
  %215 = ptrtoint ptr %m_data to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %m_data, align 4
  %conv410 = zext i8 %216 to i32
  tail call fastcc void @smt_send_rdf(ptr noundef %smc, ptr noundef %mb, i32 noundef %conv410, i32 noundef 1, i32 noundef %and.lobit)
  br label %if.end415

if.end415:                                        ; preds = %if.end406, %sw.default400.if.end415_crit_edge, %if.end398, %land.lhs.true392.if.end415_crit_edge, %sw.bb368.if.end415_crit_edge, %if.then362, %sw.bb357.if.end415_crit_edge, %sw.bb353, %sw.bb350, %if.then335, %if.end10.i665.if.end415_crit_edge, %while.body.i662.if.end415_crit_edge, %while.cond.i653.if.end415_crit_edge, %sw.bb281.if.end415_crit_edge, %if.end277, %sw.bb271.if.end415_crit_edge, %if.end267, %sw.bb261.if.end415_crit_edge, %if.then243, %if.end227.if.end415_crit_edge, %if.end188.if.end415_crit_edge, %if.then178, %if.then170, %lor.lhs.false164.if.end415_crit_edge, %land.lhs.true151.if.end415_crit_edge, %if.end146.if.end415_crit_edge, %if.end89.if.end415_crit_edge, %sw.bb84.if.end415_crit_edge, %if.end81.if.end415_crit_edge
  tail call void @smt_free_mbuf(ptr noundef %smc, ptr noundef %mb) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end415, %if.end340, %if.then76, %if.then55, %if.then36, %if.then17, %if.then, %sw.default
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smt_free_mbuf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @smt_swap_para(ptr nocapture %sm, i32 %len, i32 %direction) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smt_send_rdf(ptr noundef %smc, ptr nocapture noundef readonly %rej, i32 noundef %fc, i32 noundef %reason, i32 noundef %local) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %m_data = getelementptr inbounds %struct.s_mbuf, ptr %rej, i32 0, i32 4
  %m_off = getelementptr inbounds %struct.s_mbuf, ptr %rej, i32 0, i32 1
  %0 = ptrtoint ptr %m_off to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %m_off, align 4
  %conv = sext i16 %1 to i32
  %add.ptr = getelementptr i8, ptr %m_data, i32 %conv
  %smt_type = getelementptr inbounds %struct.smt_header, ptr %add.ptr, i32 0, i32 3
  %2 = ptrtoint ptr %smt_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %smt_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp.not = icmp eq i8 %3, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %m_len = getelementptr inbounds %struct.s_mbuf, ptr %rej, i32 0, i32 2
  %4 = ptrtoint ptr %m_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %m_len, align 4
  %call.i = tail call ptr @smt_get_mbuf(ptr noundef %smc) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %m_len.i = getelementptr inbounds %struct.s_mbuf, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %m_len.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 92, ptr %m_len.i, align 4
  %m_data.i = getelementptr inbounds %struct.s_mbuf, ptr %call.i, i32 0, i32 4
  %m_off.i = getelementptr inbounds %struct.s_mbuf, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %m_off.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %m_off.i, align 4
  %conv.i = sext i16 %8 to i32
  %add.ptr.i = getelementptr i8, ptr %m_data.i, i32 %conv.i
  %9 = call ptr @memcpy(ptr %add.ptr.i, ptr @fddi_broadcast, i32 6)
  %smt_class.i = getelementptr inbounds %struct.smt_header, ptr %add.ptr.i, i32 0, i32 2
  %10 = ptrtoint ptr %smt_class.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 6, ptr %smt_class.i, align 4
  %smt_type.i = getelementptr inbounds %struct.smt_header, ptr %add.ptr.i, i32 0, i32 3
  %11 = ptrtoint ptr %smt_type.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 3, ptr %smt_type.i, align 1
  %12 = getelementptr inbounds %struct.smt_header, ptr %add.ptr.i, i32 0, i32 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 2, ptr %12, align 2
  %smt_tid.i.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %smt_tid.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %smt_tid.promoted.i.i = load i32, ptr %smt_tid.i.i, align 4
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %if.end.i
  %15 = phi i32 [ %inc.i.i, %while.cond.i.i.while.cond.i.i_crit_edge ], [ %smt_tid.promoted.i.i, %if.end.i ]
  %inc.i.i = add i32 %15, 1
  %xor.i.i = xor i32 %inc.i.i, 520780604
  %cmp.i.i = icmp eq i32 %xor.i.i, 0
  br i1 %cmp.i.i, label %while.cond.i.i.while.cond.i.i_crit_edge, label %if.end4

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i

if.end4:                                          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %smt_tid.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %inc.i.i, ptr %smt_tid.i.i, align 4
  %and.i.i = and i32 %xor.i.i, 1073741823
  %smt_tid.i = getelementptr inbounds %struct.smt_header, ptr %add.ptr.i, i32 0, i32 5
  %17 = ptrtoint ptr %smt_tid.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and.i.i, ptr %smt_tid.i, align 4
  %smt_pad.i = getelementptr inbounds %struct.smt_header, ptr %add.ptr.i, i32 0, i32 7
  %18 = ptrtoint ptr %smt_pad.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %smt_pad.i, align 4
  %smt_len.i = getelementptr inbounds %struct.smt_header, ptr %add.ptr.i, i32 0, i32 8
  %19 = ptrtoint ptr %smt_len.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 60, ptr %smt_len.i, align 2
  %20 = ptrtoint ptr %m_off.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %m_off.i, align 4
  %conv8 = sext i16 %21 to i32
  %add.ptr9 = getelementptr i8, ptr %m_data.i, i32 %conv8
  %smt_tid = getelementptr inbounds %struct.smt_header, ptr %add.ptr, i32 0, i32 5
  %22 = ptrtoint ptr %smt_tid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %smt_tid, align 4
  %smt_tid10 = getelementptr inbounds %struct.smt_header, ptr %add.ptr9, i32 0, i32 5
  %24 = ptrtoint ptr %smt_tid10 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %smt_tid10, align 4
  %smt_source = getelementptr inbounds %struct.smt_header, ptr %add.ptr, i32 0, i32 1
  %25 = call ptr @memcpy(ptr %add.ptr9, ptr %smt_source, i32 6)
  %reason12 = getelementptr inbounds %struct.smt_rdf, ptr %add.ptr9, i32 0, i32 1
  %26 = ptrtoint ptr %reason12 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 18, ptr %reason12, align 4
  %p_len = getelementptr inbounds %struct.smt_para, ptr %reason12, i32 0, i32 1
  %27 = ptrtoint ptr %p_len to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 4, ptr %p_len, align 2
  %rdf_reason = getelementptr inbounds %struct.smt_p_reason, ptr %reason12, i32 0, i32 1
  %28 = ptrtoint ptr %rdf_reason to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %reason, ptr %rdf_reason, align 4
  %version = getelementptr inbounds %struct.smt_rdf, ptr %add.ptr9, i32 0, i32 2
  %29 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 20, ptr %version, align 4
  %p_len20 = getelementptr inbounds %struct.smt_para, ptr %version, i32 0, i32 1
  %30 = ptrtoint ptr %p_len20 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 8, ptr %p_len20, align 2
  %v_pad = getelementptr inbounds %struct.smt_p_version, ptr %version, i32 0, i32 1
  %31 = ptrtoint ptr %v_pad to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %v_pad, align 4
  %v_n = getelementptr inbounds %struct.smt_p_version, ptr %version, i32 0, i32 2
  %32 = ptrtoint ptr %v_n to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %v_n, align 2
  %v_index = getelementptr inbounds %struct.smt_p_version, ptr %version, i32 0, i32 3
  %33 = ptrtoint ptr %v_index to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %v_index, align 1
  %v_version = getelementptr inbounds %struct.smt_p_version, ptr %version, i32 0, i32 4
  %34 = ptrtoint ptr %v_version to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 2, ptr %v_version, align 4
  %v_pad2 = getelementptr inbounds %struct.smt_p_version, ptr %version, i32 0, i32 5
  %35 = ptrtoint ptr %v_pad2 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %v_pad2, align 2
  %phi.bo = and i32 %5, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4304, i32 %5)
  %cmp26.inv = icmp ugt i32 %5, 4304
  %len.0 = select i1 %cmp26.inv, i32 4304, i32 %phi.bo
  %refused = getelementptr inbounds %struct.smt_rdf, ptr %add.ptr9, i32 0, i32 3
  %36 = ptrtoint ptr %refused to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 19, ptr %refused, align 4
  %37 = trunc i32 %len.0 to i16
  %conv32 = add i16 %37, 4
  %p_len35 = getelementptr inbounds %struct.smt_para, ptr %refused, i32 0, i32 1
  %38 = ptrtoint ptr %p_len35 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv32, ptr %p_len35, align 2
  %ref_fc = getelementptr inbounds %struct.smt_p_refused, ptr %refused, i32 0, i32 1
  %39 = ptrtoint ptr %ref_fc to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %fc, ptr %ref_fc, align 4
  %ref_header = getelementptr inbounds %struct.smt_p_refused, ptr %refused, i32 0, i32 2
  %40 = call ptr @memcpy(ptr %ref_header, ptr %add.ptr, i32 %len.0)
  %sub = add i32 %len.0, -32
  %41 = ptrtoint ptr %m_len.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %m_len.i, align 4
  %add39 = add i32 %42, %sub
  store i32 %add39, ptr %m_len.i, align 4
  %smt_len = getelementptr inbounds %struct.smt_header, ptr %add.ptr9, i32 0, i32 8
  %43 = ptrtoint ptr %smt_len to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %smt_len, align 2
  %45 = trunc i32 %sub to i16
  %conv43 = add i16 %44, %45
  store i16 %conv43, ptr %smt_len, align 2
  %fddiPRIVRDF_Tx = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 40, i32 7
  %46 = ptrtoint ptr %fddiPRIVRDF_Tx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fddiPRIVRDF_Tx, align 4
  %inc = add i32 %47, 1
  store i32 %inc, ptr %fddiPRIVRDF_Tx, align 4
  tail call void @smt_send_frame(ptr noundef %smc, ptr noundef nonnull %call.i, i32 noundef 65, i32 noundef %local)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smt_check_para(ptr nocapture noundef readnone %smc, ptr noundef readonly %sm, ptr nocapture noundef readonly %list) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %list, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not7 = icmp eq i16 %1, 0
  br i1 %tobool.not7, label %entry.cleanup_crit_edge, label %while.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %smt_len.i = getelementptr inbounds %struct.smt_header, ptr %sm, i32 0, i32 8
  %2 = ptrtoint ptr %smt_len.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %smt_len.i, align 2
  %conv.i = zext i16 %3 to i32
  %add.ptr.i = getelementptr %struct.smt_header, ptr %sm, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %4 = phi i16 [ %1, %while.body.lr.ph ], [ %10, %if.end.while.body_crit_edge ]
  %p.08 = phi ptr [ %list, %while.body.lr.ph ], [ %incdec.ptr, %if.end.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %4)
  %cmp11.not.i = icmp eq i16 %4, 17
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end15.i.while.cond.i_crit_edge, %while.body
  %len.0.i = phi i32 [ %conv.i, %while.body ], [ %sub.i, %if.end15.i.while.cond.i_crit_edge ]
  %p.0.i = phi ptr [ %add.ptr.i, %while.body ], [ %add.ptr6.i, %if.end15.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0.i)
  %cmp.i = icmp sgt i32 %len.0.i, 0
  br i1 %cmp.i, label %while.body.i, label %while.cond.i.cleanup_crit_edge

while.cond.i.cleanup_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.i:                                     ; preds = %while.cond.i
  %5 = ptrtoint ptr %p.0.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %p.0.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %4)
  %cmp3.i = icmp ne i16 %6, %4
  %p_len.i = getelementptr inbounds %struct.smt_para, ptr %p.0.i, i32 0, i32 1
  %7 = ptrtoint ptr %p_len.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %p_len.i, align 2
  %conv5.i = zext i16 %8 to i32
  %add.i = add nuw nsw i32 %conv5.i, 4
  %add.ptr6.i = getelementptr i8, ptr %p.0.i, i32 %add.i
  %sub.i = sub nsw i32 %len.0.i, %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp7.i = icmp slt i32 %sub.i, 0
  br i1 %cmp7.i, label %while.body.i.cleanup_crit_edge, label %if.end10.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10.i:                                       ; preds = %while.body.i
  %and.i = and i32 %conv5.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = or i1 %cmp11.not.i, %tobool.not.i
  br i1 %or.cond.i, label %if.end15.i, label %if.end10.i.cleanup_crit_edge

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15.i:                                       ; preds = %if.end10.i
  %tobool16.not32.i = icmp eq ptr %p.0.i, null
  %tobool16.not.i = select i1 %cmp3.i, i1 true, i1 %tobool16.not32.i
  br i1 %tobool16.not.i, label %if.end15.i.while.cond.i_crit_edge, label %if.end

if.end15.i.while.cond.i_crit_edge:                ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

if.end:                                           ; preds = %if.end15.i
  %incdec.ptr = getelementptr i16, ptr %p.08, i32 1
  %9 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %incdec.ptr, align 2
  %tobool.not = icmp eq i16 %10, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %if.end10.i.cleanup_crit_edge, %while.body.i.cleanup_crit_edge, %while.cond.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -1, %while.body.i.cleanup_crit_edge ], [ -1, %if.end10.i.cleanup_crit_edge ], [ -1, %while.cond.i.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smt_echo_test(ptr noundef %smc, i32 noundef %dna) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %smt_tid.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %smt_tid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %smt_tid.promoted.i = load i32, ptr %smt_tid.i, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %entry
  %1 = phi i32 [ %inc.i, %while.cond.i.while.cond.i_crit_edge ], [ %smt_tid.promoted.i, %entry ]
  %inc.i = add i32 %1, 1
  %xor.i = xor i32 %inc.i, 520780604
  %cmp.i = icmp eq i32 %xor.i, 0
  br i1 %cmp.i, label %while.cond.i.while.cond.i_crit_edge, label %smt_get_tid.exit

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

smt_get_tid.exit:                                 ; preds = %while.cond.i
  %2 = ptrtoint ptr %smt_tid.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %inc.i, ptr %smt_tid.i, align 4
  %and.i = and i32 %xor.i, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dna)
  %tobool.not = icmp eq i32 %dna, 0
  %cond = select i1 %tobool.not, i32 2, i32 3
  %arrayidx = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 3, i32 3, i32 %cond
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and.i, ptr %arrayidx, align 4
  %fddiMACDownstreamNbr = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 9
  %fddiMACUpstreamNbr = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 8
  %cond6 = select i1 %tobool.not, ptr %fddiMACUpstreamNbr, ptr %fddiMACDownstreamNbr
  %call.i.i = tail call ptr @smt_get_mbuf(ptr noundef %smc) #6
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %smt_get_tid.exit.smt_send_ecf.exit_crit_edge, label %if.end.i.i

smt_get_tid.exit.smt_send_ecf.exit_crit_edge:     ; preds = %smt_get_tid.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %smt_send_ecf.exit

if.end.i.i:                                       ; preds = %smt_get_tid.exit
  %m_len.i.i = getelementptr inbounds %struct.s_mbuf, ptr %call.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %m_len.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4484, ptr %m_len.i.i, align 4
  %m_data.i.i = getelementptr inbounds %struct.s_mbuf, ptr %call.i.i, i32 0, i32 4
  %m_off.i.i = getelementptr inbounds %struct.s_mbuf, ptr %call.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %m_off.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %m_off.i.i, align 4
  %conv.i.i = sext i16 %6 to i32
  %add.ptr.i.i = getelementptr i8, ptr %m_data.i.i, i32 %conv.i.i
  %7 = call ptr @memcpy(ptr %add.ptr.i.i, ptr @fddi_broadcast, i32 6)
  %smt_class.i.i = getelementptr inbounds %struct.smt_header, ptr %add.ptr.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %smt_class.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 4, ptr %smt_class.i.i, align 4
  %smt_type.i.i = getelementptr inbounds %struct.smt_header, ptr %add.ptr.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %smt_type.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %smt_type.i.i, align 1
  %10 = getelementptr inbounds %struct.smt_header, ptr %add.ptr.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %10, align 2
  %12 = ptrtoint ptr %smt_tid.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %smt_tid.promoted.i.i.i = load i32, ptr %smt_tid.i, align 4
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %while.cond.i.i.i.while.cond.i.i.i_crit_edge, %if.end.i.i
  %13 = phi i32 [ %inc.i.i.i, %while.cond.i.i.i.while.cond.i.i.i_crit_edge ], [ %smt_tid.promoted.i.i.i, %if.end.i.i ]
  %inc.i.i.i = add i32 %13, 1
  %xor.i.i.i = xor i32 %inc.i.i.i, 520780604
  %cmp.i.i.i = icmp eq i32 %xor.i.i.i, 0
  br i1 %cmp.i.i.i, label %while.cond.i.i.i.while.cond.i.i.i_crit_edge, label %if.end.i

while.cond.i.i.i.while.cond.i.i.i_crit_edge:      ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i.i

if.end.i:                                         ; preds = %while.cond.i.i.i
  %14 = ptrtoint ptr %smt_tid.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %inc.i.i.i, ptr %smt_tid.i, align 4
  %and.i.i.i = and i32 %xor.i.i.i, 1073741823
  %smt_tid.i.i = getelementptr inbounds %struct.smt_header, ptr %add.ptr.i.i, i32 0, i32 5
  %15 = ptrtoint ptr %smt_tid.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and.i.i.i, ptr %smt_tid.i.i, align 4
  %smt_pad.i.i = getelementptr inbounds %struct.smt_header, ptr %add.ptr.i.i, i32 0, i32 7
  %16 = ptrtoint ptr %smt_pad.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %smt_pad.i.i, align 4
  %smt_len.i.i = getelementptr inbounds %struct.smt_header, ptr %add.ptr.i.i, i32 0, i32 8
  %17 = ptrtoint ptr %smt_len.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 4452, ptr %smt_len.i.i, align 2
  %18 = ptrtoint ptr %m_off.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %m_off.i.i, align 4
  %conv.i = sext i16 %19 to i32
  %add.ptr.i = getelementptr i8, ptr %m_data.i.i, i32 %conv.i
  %ec_echo.i = getelementptr inbounds %struct.smt_ecf, ptr %add.ptr.i, i32 0, i32 1
  %20 = ptrtoint ptr %ec_echo.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 17, ptr %ec_echo.i, align 2
  %p_len.i.i = getelementptr inbounds %struct.smt_para, ptr %ec_echo.i, i32 0, i32 1
  %21 = ptrtoint ptr %p_len.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 4448, ptr %p_len.i.i, align 2
  %ec_data.i.i = getelementptr inbounds %struct.smt_p_echo, ptr %ec_echo.i, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i
  %p.03.i.i = phi ptr [ %ec_data.i.i, %if.end.i ], [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %len.addr.02.i.i = phi i32 [ 4448, %if.end.i ], [ %dec.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %seed.addr.01.i.i = phi i32 [ %and.i, %if.end.i ], [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %conv4.i.i = trunc i32 %seed.addr.01.i.i to i8
  %incdec.ptr.i.i = getelementptr i8, ptr %p.03.i.i, i32 1
  %22 = ptrtoint ptr %p.03.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv4.i.i, ptr %p.03.i.i, align 1
  %add.i.i = add nuw nsw i32 %seed.addr.01.i.i, 13
  %dec.i.i = add nsw i32 %len.addr.02.i.i, -1
  %tobool.not.i1.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i1.i, label %smt_fill_echo.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

smt_fill_echo.exit.i:                             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = call ptr @memcpy(ptr %add.ptr.i, ptr %cond6, i32 6)
  %smt_tid.i12 = getelementptr inbounds %struct.smt_header, ptr %add.ptr.i, i32 0, i32 5
  %24 = ptrtoint ptr %smt_tid.i12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and.i, ptr %smt_tid.i12, align 4
  %fddiPRIVECF_Req_Tx.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 40, i32 2
  %25 = ptrtoint ptr %fddiPRIVECF_Req_Tx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fddiPRIVECF_Req_Tx.i, align 4
  %inc.i13 = add i32 %26, 1
  store i32 %inc.i13, ptr %fddiPRIVECF_Req_Tx.i, align 4
  tail call void @smt_send_frame(ptr noundef %smc, ptr noundef nonnull %call.i.i, i32 noundef 65, i32 noundef 0) #6
  br label %smt_send_ecf.exit

smt_send_ecf.exit:                                ; preds = %smt_fill_echo.exit.i, %smt_get_tid.exit.smt_send_ecf.exit_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sm_to_para(ptr nocapture readnone %smc, ptr noundef readonly %sm, i32 noundef %para) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %smt_len = getelementptr inbounds %struct.smt_header, ptr %sm, i32 0, i32 8
  %0 = ptrtoint ptr %smt_len to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %smt_len, align 2
  %conv = zext i16 %1 to i32
  %add.ptr = getelementptr %struct.smt_header, ptr %sm, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %para)
  %cmp11.not = icmp eq i32 %para, 17
  br label %while.cond

while.cond:                                       ; preds = %if.end15.while.cond_crit_edge, %entry
  %len.0 = phi i32 [ %conv, %entry ], [ %sub, %if.end15.while.cond_crit_edge ]
  %p.0 = phi ptr [ %add.ptr, %entry ], [ %add.ptr6, %if.end15.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0)
  %cmp = icmp sgt i32 %len.0, 0
  br i1 %cmp, label %while.body, label %while.cond.cleanup_crit_edge

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %2 = ptrtoint ptr %p.0 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %p.0, align 2
  %conv2 = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2, i32 %para)
  %cmp3 = icmp ne i32 %conv2, %para
  %p_len = getelementptr inbounds %struct.smt_para, ptr %p.0, i32 0, i32 1
  %4 = ptrtoint ptr %p_len to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %p_len, align 2
  %conv5 = zext i16 %5 to i32
  %add = add nuw nsw i32 %conv5, 4
  %add.ptr6 = getelementptr i8, ptr %p.0, i32 %add
  %sub = sub nsw i32 %len.0, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp7 = icmp slt i32 %sub, 0
  br i1 %cmp7, label %while.body.cleanup_crit_edge, label %if.end10

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %while.body
  %and = and i32 %conv5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = or i1 %cmp11.not, %tobool.not
  br i1 %or.cond, label %if.end15, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %tobool16.not32 = icmp eq ptr %p.0, null
  %tobool16.not = select i1 %cmp3, i1 true, i1 %tobool16.not32
  br i1 %tobool16.not, label %if.end15.while.cond_crit_edge, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15.while.cond_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

cleanup:                                          ; preds = %if.end15.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %while.body.cleanup_crit_edge, %while.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %while.body.cleanup_crit_edge ], [ null, %if.end10.cleanup_crit_edge ], [ %p.0, %if.end15.cleanup_crit_edge ], [ null, %while.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smt_send_sif_config(ptr noundef %smc, ptr nocapture noundef readonly %dest, i32 noundef %tid, i32 noundef %local) unnamed_addr #0 align 64 {
entry:
  %type.i = alloca i32, align 4
  %state.i = alloca i32, align 4
  %remote.i = alloca i32, align 4
  %mac.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @smt_get_mbuf(ptr noundef %smc) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %m_len.i = getelementptr inbounds %struct.s_mbuf, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %m_len.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 128, ptr %m_len.i, align 4
  %m_data.i = getelementptr inbounds %struct.s_mbuf, ptr %call.i, i32 0, i32 4
  %m_off.i = getelementptr inbounds %struct.s_mbuf, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %m_off.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %m_off.i, align 4
  %conv.i = sext i16 %2 to i32
  %add.ptr.i = getelementptr i8, ptr %m_data.i, i32 %conv.i
  %3 = call ptr @memcpy(ptr %add.ptr.i, ptr @fddi_broadcast, i32 6)
  %smt_class.i = getelementptr inbounds %struct.smt_header, ptr %add.ptr.i, i32 0, i32 2
  %4 = ptrtoint ptr %smt_class.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %smt_class.i, align 4
  %smt_type.i = getelementptr inbounds %struct.smt_header, ptr %add.ptr.i, i32 0, i32 3
  %5 = ptrtoint ptr %smt_type.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 3, ptr %smt_type.i, align 1
  %6 = getelementptr inbounds %struct.smt_header, ptr %add.ptr.i, i32 0, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1, ptr %6, align 2
  %smt_tid.i.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %smt_tid.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %smt_tid.promoted.i.i = load i32, ptr %smt_tid.i.i, align 4
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %if.end.i
  %9 = phi i32 [ %inc.i.i, %while.cond.i.i.while.cond.i.i_crit_edge ], [ %smt_tid.promoted.i.i, %if.end.i ]
  %inc.i.i = add i32 %9, 1
  %xor.i.i = xor i32 %inc.i.i, 520780604
  %cmp.i.i = icmp eq i32 %xor.i.i, 0
  br i1 %cmp.i.i, label %while.cond.i.i.while.cond.i.i_crit_edge, label %if.end

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i

if.end:                                           ; preds = %while.cond.i.i
  %10 = ptrtoint ptr %smt_tid.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %inc.i.i, ptr %smt_tid.i.i, align 4
  %and.i.i = and i32 %xor.i.i, 1073741823
  %smt_tid.i = getelementptr inbounds %struct.smt_header, ptr %add.ptr.i, i32 0, i32 5
  %11 = ptrtoint ptr %smt_tid.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and.i.i, ptr %smt_tid.i, align 4
  %smt_pad.i = getelementptr inbounds %struct.smt_header, ptr %add.ptr.i, i32 0, i32 7
  %12 = ptrtoint ptr %smt_pad.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %smt_pad.i, align 4
  %smt_len.i = getelementptr inbounds %struct.smt_header, ptr %add.ptr.i, i32 0, i32 8
  %13 = ptrtoint ptr %smt_len.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 96, ptr %smt_len.i, align 2
  %14 = ptrtoint ptr %m_off.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %m_off.i, align 4
  %conv = sext i16 %15 to i32
  %add.ptr = getelementptr i8, ptr %m_data.i, i32 %conv
  %ts = getelementptr inbounds %struct.smt_sif_config, ptr %add.ptr, i32 0, i32 1
  %16 = ptrtoint ptr %ts to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 4, ptr %ts, align 2
  %p_len.i = getelementptr inbounds %struct.smt_para, ptr %ts, i32 0, i32 1
  %17 = ptrtoint ptr %p_len.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 8, ptr %p_len.i, align 2
  %ts_time.i = getelementptr inbounds %struct.smt_p_timestamp, ptr %ts, i32 0, i32 1
  %call.i.i = tail call i32 @smt_get_time() #6
  %mul.i.i = mul i32 %call.i.i, 100
  %div.i.i = udiv i32 %mul.i.i, 100
  %18 = ptrtoint ptr %ts_time.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %ts_time.i, align 1
  %arrayidx1.i.i = getelementptr %struct.smt_p_timestamp, ptr %ts, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %arrayidx1.i.i, align 1
  %shr2.i.i = lshr i32 %div.i.i, 23
  %conv3.i.i = trunc i32 %shr2.i.i to i8
  %arrayidx4.i.i = getelementptr %struct.smt_p_timestamp, ptr %ts, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv3.i.i, ptr %arrayidx4.i.i, align 1
  %shr5.i.i = lshr i32 %div.i.i, 15
  %conv6.i.i = trunc i32 %shr5.i.i to i8
  %arrayidx7.i.i = getelementptr %struct.smt_p_timestamp, ptr %ts, i32 0, i32 1, i32 3
  %21 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv6.i.i, ptr %arrayidx7.i.i, align 1
  %shr8.i.i = lshr i32 %div.i.i, 7
  %conv9.i.i = trunc i32 %shr8.i.i to i8
  %arrayidx10.i.i = getelementptr %struct.smt_p_timestamp, ptr %ts, i32 0, i32 1, i32 4
  %22 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv9.i.i, ptr %arrayidx10.i.i, align 1
  %div.tr.i.i = trunc i32 %div.i.i to i8
  %conv11.i.i = shl i8 %div.tr.i.i, 1
  %arrayidx12.i.i = getelementptr %struct.smt_p_timestamp, ptr %ts, i32 0, i32 1, i32 5
  %23 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv11.i.i, ptr %arrayidx12.i.i, align 1
  %uniq_ticks.i.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 3, i32 5
  %24 = ptrtoint ptr %uniq_ticks.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %uniq_ticks.i.i, align 4
  %26 = lshr i16 %25, 8
  %conv15.i.i = trunc i16 %26 to i8
  %arrayidx16.i.i = getelementptr %struct.smt_p_timestamp, ptr %ts, i32 0, i32 1, i32 6
  %27 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv15.i.i, ptr %arrayidx16.i.i, align 1
  %28 = load i16, ptr %uniq_ticks.i.i, align 4
  %conv19.i.i = trunc i16 %28 to i8
  %arrayidx20.i.i = getelementptr %struct.smt_p_timestamp, ptr %ts, i32 0, i32 1, i32 7
  %29 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv19.i.i, ptr %arrayidx20.i.i, align 1
  %uniq_time.i.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 3, i32 4
  %30 = ptrtoint ptr %uniq_time.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %uniq_time.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %31)
  %cmp.not.i.i = icmp eq i32 %call.i.i, %31
  br i1 %cmp.not.i.i, label %if.end.smt_fill_timestamp.exit_crit_edge, label %if.then.i.i

if.end.smt_fill_timestamp.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %smt_fill_timestamp.exit

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %uniq_ticks.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %uniq_ticks.i.i, align 4
  br label %smt_fill_timestamp.exit

smt_fill_timestamp.exit:                          ; preds = %if.then.i.i, %if.end.smt_fill_timestamp.exit_crit_edge
  %33 = ptrtoint ptr %uniq_ticks.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %uniq_ticks.i.i, align 4
  %inc.i.i28 = add i16 %34, 1
  store i16 %inc.i.i28, ptr %uniq_ticks.i.i, align 4
  %35 = ptrtoint ptr %uniq_time.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call.i.i, ptr %uniq_time.i.i, align 4
  %sde = getelementptr inbounds %struct.smt_sif_config, ptr %add.ptr, i32 0, i32 2
  %36 = ptrtoint ptr %sde to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 2, ptr %sde, align 2
  %p_len.i29 = getelementptr inbounds %struct.smt_para, ptr %sde, i32 0, i32 1
  %37 = ptrtoint ptr %p_len.i29 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 4, ptr %p_len.i29, align 2
  %fddiSMTNonMaster_Ct.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 16
  %38 = ptrtoint ptr %fddiSMTNonMaster_Ct.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %fddiSMTNonMaster_Ct.i, align 1
  %sde_non_master.i = getelementptr inbounds %struct.smt_p_sde, ptr %sde, i32 0, i32 3
  %40 = ptrtoint ptr %sde_non_master.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %sde_non_master.i, align 2
  %fddiSMTMaster_Ct.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 17
  %41 = ptrtoint ptr %fddiSMTMaster_Ct.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %fddiSMTMaster_Ct.i, align 4
  %sde_master.i = getelementptr inbounds %struct.smt_p_sde, ptr %sde, i32 0, i32 4
  %43 = ptrtoint ptr %sde_master.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %sde_master.i, align 1
  %sde_mac_count.i = getelementptr inbounds %struct.smt_p_sde, ptr %sde, i32 0, i32 2
  %44 = ptrtoint ptr %sde_mac_count.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %sde_mac_count.i, align 1
  %sde_type.i = getelementptr inbounds %struct.smt_p_sde, ptr %sde, i32 0, i32 1
  %45 = ptrtoint ptr %sde_type.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %sde_type.i, align 2
  %version = getelementptr inbounds %struct.smt_sif_config, ptr %add.ptr, i32 0, i32 3
  %46 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 20, ptr %version, align 2
  %p_len.i30 = getelementptr inbounds %struct.smt_para, ptr %version, i32 0, i32 1
  %47 = ptrtoint ptr %p_len.i30 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 8, ptr %p_len.i30, align 2
  %v_pad.i = getelementptr inbounds %struct.smt_p_version, ptr %version, i32 0, i32 1
  %48 = ptrtoint ptr %v_pad.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %v_pad.i, align 2
  %v_n.i = getelementptr inbounds %struct.smt_p_version, ptr %version, i32 0, i32 2
  %49 = ptrtoint ptr %v_n.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %v_n.i, align 2
  %v_index.i = getelementptr inbounds %struct.smt_p_version, ptr %version, i32 0, i32 3
  %50 = ptrtoint ptr %v_index.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %v_index.i, align 1
  %v_version.i = getelementptr inbounds %struct.smt_p_version, ptr %version, i32 0, i32 4
  %51 = ptrtoint ptr %v_version.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 2, ptr %v_version.i, align 2
  %v_pad2.i = getelementptr inbounds %struct.smt_p_version, ptr %version, i32 0, i32 5
  %52 = ptrtoint ptr %v_pad2.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 0, ptr %v_pad2.i, align 2
  %state = getelementptr inbounds %struct.smt_sif_config, ptr %add.ptr, i32 0, i32 4
  %53 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 3, ptr %state, align 2
  %p_len.i31 = getelementptr inbounds %struct.smt_para, ptr %state, i32 0, i32 1
  %54 = ptrtoint ptr %p_len.i31 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 4, ptr %p_len.i31, align 2
  %st_pad.i = getelementptr inbounds %struct.smt_p_state, ptr %state, i32 0, i32 1
  %55 = ptrtoint ptr %st_pad.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 0, ptr %st_pad.i, align 2
  %fddiSMTPeerWrapFlag.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 32
  %56 = ptrtoint ptr %fddiSMTPeerWrapFlag.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %fddiSMTPeerWrapFlag.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i32 = icmp ne i8 %57, 0
  %spec.select.i = zext i1 %tobool.not.i32 to i32
  %call.i33 = tail call i32 @pcm_status_twisted(ptr noundef %smc) #6
  %and.i = shl i32 %call.i33, 2
  %58 = and i32 %and.i, 4
  %59 = or i32 %58, %spec.select.i
  %60 = and i32 %and.i, 8
  %61 = or i32 %59, %60
  %call12.i = tail call i32 @pcm_rooted_station(ptr noundef %smc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  %top.3.v.i = select i1 %tobool13.not.i, i32 32, i32 48
  %top.3.i = or i32 %61, %top.3.v.i
  %fddiPATHSbaPayload.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 38, i32 0, i32 1
  %62 = ptrtoint ptr %fddiPATHSbaPayload.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %fddiPATHSbaPayload.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp.not.i = icmp eq i32 %63, 0
  %or19.i = or i32 %top.3.i, 64
  %top.4.i = select i1 %cmp.not.i, i32 %top.3.i, i32 %or19.i
  %conv.i34 = trunc i32 %top.4.i to i8
  %st_topology.i = getelementptr inbounds %struct.smt_p_state, ptr %state, i32 0, i32 2
  %64 = ptrtoint ptr %st_topology.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv.i34, ptr %st_topology.i, align 2
  %fddiMACDA_Flag.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 53
  %65 = ptrtoint ptr %fddiMACDA_Flag.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %fddiMACDA_Flag.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool24.not.i = icmp ne i8 %66, 0
  %cond.i = zext i1 %tobool24.not.i to i8
  %fddiMACUNDA_Flag.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 54
  %67 = ptrtoint ptr %fddiMACUNDA_Flag.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %fddiMACUNDA_Flag.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool29.not.i = icmp eq i8 %68, 0
  %cond30.i = select i1 %tobool29.not.i, i8 0, i8 2
  %or31.i = or i8 %cond30.i, %cond.i
  %st_dupl_addr.i = getelementptr inbounds %struct.smt_p_state, ptr %state, i32 0, i32 3
  %69 = ptrtoint ptr %st_dupl_addr.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %or31.i, ptr %st_dupl_addr.i, align 1
  %policy = getelementptr inbounds %struct.smt_sif_config, ptr %add.ptr, i32 0, i32 5
  %70 = ptrtoint ptr %policy to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 5, ptr %policy, align 2
  %p_len.i35 = getelementptr inbounds %struct.smt_para, ptr %policy, i32 0, i32 1
  %71 = ptrtoint ptr %p_len.i35 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 4, ptr %p_len.i35, align 2
  %fddiSMTConnectionPolicy.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 21
  %72 = ptrtoint ptr %fddiSMTConnectionPolicy.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %fddiSMTConnectionPolicy.i, align 2
  %74 = shl i16 %73, 6
  %75 = and i16 %74, 128
  %76 = shl i16 %73, 3
  %77 = and i16 %76, 32
  %78 = shl i16 %73, 4
  %79 = and i16 %78, 256
  %80 = lshr i16 %73, 4
  %81 = and i16 %80, 2
  %82 = lshr i16 %73, 3
  %83 = and i16 %82, 16
  %84 = shl i16 %73, 1
  %85 = and i16 %84, 512
  %86 = and i16 %84, 1024
  %87 = lshr i16 %73, 8
  %88 = and i16 %87, 4
  %89 = and i16 %73, 30793
  %90 = or i16 %89, %75
  %91 = or i16 %90, %77
  %92 = or i16 %91, %79
  %93 = or i16 %92, %81
  %94 = or i16 %93, %83
  %95 = or i16 %94, %85
  %96 = or i16 %95, %86
  %97 = or i16 %96, %88
  %conv4.15.i = or i16 %97, -32768
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %tobool.not.1520.i = icmp slt i16 %73, 0
  %out.1.15.i = select i1 %tobool.not.1520.i, i16 %conv4.15.i, i16 %97
  %fddiSMTConfigPolicy.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 20
  %98 = ptrtoint ptr %fddiSMTConfigPolicy.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %fddiSMTConfigPolicy.i, align 4
  %pl_config.i = getelementptr inbounds %struct.smt_p_policy, ptr %policy, i32 0, i32 1
  %100 = ptrtoint ptr %pl_config.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %99, ptr %pl_config.i, align 2
  %pl_connect.i = getelementptr inbounds %struct.smt_p_policy, ptr %policy, i32 0, i32 2
  %101 = ptrtoint ptr %pl_connect.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %out.1.15.i, ptr %pl_connect.i, align 2
  %latency = getelementptr inbounds %struct.smt_sif_config, ptr %add.ptr, i32 0, i32 6
  %102 = ptrtoint ptr %latency to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 6, ptr %latency, align 2
  %p_len.i36 = getelementptr inbounds %struct.smt_para, ptr %latency, i32 0, i32 1
  %103 = ptrtoint ptr %p_len.i36 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 8, ptr %p_len.i36, align 2
  %lt_phyout_idx1.i = getelementptr inbounds %struct.smt_p_latency, ptr %latency, i32 0, i32 1
  %104 = ptrtoint ptr %lt_phyout_idx1.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 1, ptr %lt_phyout_idx1.i, align 2
  %lt_latency1.i = getelementptr inbounds %struct.smt_p_latency, ptr %latency, i32 0, i32 2
  %105 = ptrtoint ptr %lt_latency1.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 10, ptr %lt_latency1.i, align 2
  %sas.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 1
  %106 = ptrtoint ptr %sas.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %sas.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %cmp.i = icmp eq i8 %107, 0
  %spec.select.i37 = select i1 %cmp.i, i16 2, i16 0
  %spec.select18.i = select i1 %cmp.i, i16 10, i16 0
  %108 = getelementptr inbounds %struct.smt_p_latency, ptr %latency, i32 0, i32 3
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %spec.select.i37, ptr %108, align 2
  %110 = getelementptr inbounds %struct.smt_p_latency, ptr %latency, i32 0, i32 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %spec.select18.i, ptr %110, align 2
  %neighbor = getelementptr inbounds %struct.smt_sif_config, ptr %add.ptr, i32 0, i32 7
  %112 = ptrtoint ptr %neighbor to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 7, ptr %neighbor, align 2
  %p_len.i38 = getelementptr inbounds %struct.smt_para, ptr %neighbor, i32 0, i32 1
  %113 = ptrtoint ptr %p_len.i38 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 16, ptr %p_len.i38, align 2
  %nb_mib_index.i = getelementptr inbounds %struct.smt_p_neighbor, ptr %neighbor, i32 0, i32 1
  %114 = ptrtoint ptr %nb_mib_index.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 1, ptr %nb_mib_index.i, align 2
  %115 = ptrtoint ptr %sas.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %sas.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %116)
  %cmp.i.i39 = icmp eq i8 %116, 1
  %conv.i40 = select i1 %cmp.i.i39, i16 2, i16 3
  %nb_mac_index.i = getelementptr inbounds %struct.smt_p_neighbor, ptr %neighbor, i32 0, i32 2
  %117 = ptrtoint ptr %nb_mac_index.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %conv.i40, ptr %nb_mac_index.i, align 2
  %nb_una.i = getelementptr inbounds %struct.smt_p_neighbor, ptr %neighbor, i32 0, i32 3
  %fddiMACUpstreamNbr.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 8
  %118 = call ptr @memcpy(ptr %nb_una.i, ptr %fddiMACUpstreamNbr.i, i32 6)
  %nb_dna.i = getelementptr inbounds %struct.smt_p_neighbor, ptr %neighbor, i32 0, i32 4
  %fddiMACDownstreamNbr.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 9
  %119 = call ptr @memcpy(ptr %nb_dna.i, ptr %fddiMACDownstreamNbr.i, i32 6)
  %setcount = getelementptr inbounds %struct.smt_sif_config, ptr %add.ptr, i32 0, i32 8
  %120 = ptrtoint ptr %setcount to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 4149, ptr %setcount, align 4
  %p_len.i41 = getelementptr inbounds %struct.smt_para, ptr %setcount, i32 0, i32 1
  %121 = ptrtoint ptr %p_len.i41 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 12, ptr %p_len.i41, align 2
  %fddiSMTSetCount.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 35
  %122 = ptrtoint ptr %fddiSMTSetCount.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %fddiSMTSetCount.i, align 4
  %count2.i = getelementptr inbounds %struct.smt_p_setcount, ptr %setcount, i32 0, i32 1
  %124 = ptrtoint ptr %count2.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %count2.i, align 4
  %timestamp.i = getelementptr inbounds %struct.smt_p_setcount, ptr %setcount, i32 0, i32 2
  %timestamp5.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 35, i32 1
  %125 = ptrtoint ptr %timestamp5.i to i32
  call void @__asan_loadN_noabort(i32 %125, i32 8)
  %126 = load i64, ptr %timestamp5.i, align 4
  %127 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_storeN_noabort(i32 %127, i32 8)
  store i64 %126, ptr %timestamp.i, align 4
  %path = getelementptr inbounds %struct.smt_sif_config, ptr %add.ptr, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type.i) #6
  %128 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 -1, ptr %type.i, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state.i) #6
  %129 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 -1, ptr %state.i, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remote.i) #6
  %130 = ptrtoint ptr %remote.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 -1, ptr %remote.i, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mac.i) #6
  %131 = ptrtoint ptr %mac.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 -1, ptr %mac.i, align 4, !annotation !15
  %132 = ptrtoint ptr %sas.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %sas.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %133)
  %cmp.i43 = icmp eq i8 %133, 1
  %add.i = select i1 %cmp.i43, i32 20, i32 28
  %134 = ptrtoint ptr %path to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 8, ptr %path, align 2
  %135 = trunc i32 %add.i to i16
  %conv2.i = add nsw i16 %135, -4
  %p_len.i44 = getelementptr inbounds %struct.smt_para, ptr %path, i32 0, i32 1
  %136 = ptrtoint ptr %p_len.i44 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 %conv2.i, ptr %p_len.i44, align 2
  %pd_phy.i = getelementptr inbounds %struct.smt_p_path, ptr %path, i32 0, i32 1
  %fddiSMTCF_State.i.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 29
  call void @pcm_status_state(ptr noundef %smc, i32 noundef 0, ptr noundef nonnull %type.i, ptr noundef nonnull %state.i, ptr noundef nonnull %remote.i, ptr noundef nonnull %mac.i) #6
  %137 = ptrtoint ptr %pd_phy.i to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 1, ptr %pd_phy.i, align 2
  %138 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %type.i, align 4
  %conv19.i = trunc i32 %139 to i8
  %phy_type.i = getelementptr inbounds %struct.smt_p_path, ptr %path, i32 0, i32 1, i32 0, i32 1
  %140 = ptrtoint ptr %phy_type.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %conv19.i, ptr %phy_type.i, align 2
  %141 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %state.i, align 4
  %conv20.i = trunc i32 %142 to i8
  %phy_connect_state.i = getelementptr inbounds %struct.smt_p_path, ptr %path, i32 0, i32 1, i32 0, i32 2
  %143 = ptrtoint ptr %phy_connect_state.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %conv20.i, ptr %phy_connect_state.i, align 1
  %144 = ptrtoint ptr %remote.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %remote.i, align 4
  %conv21.i = trunc i32 %145 to i8
  %phy_remote_type.i = getelementptr inbounds %struct.smt_p_path, ptr %path, i32 0, i32 1, i32 0, i32 3
  %146 = ptrtoint ptr %phy_remote_type.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %conv21.i, ptr %phy_remote_type.i, align 2
  %147 = ptrtoint ptr %mac.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %mac.i, align 4
  %conv22.i = trunc i32 %148 to i8
  %phy_remote_mac.i = getelementptr inbounds %struct.smt_p_path, ptr %path, i32 0, i32 1, i32 0, i32 4
  %149 = ptrtoint ptr %phy_remote_mac.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %conv22.i, ptr %phy_remote_mac.i, align 1
  %150 = ptrtoint ptr %fddiSMTCF_State.i.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %fddiSMTCF_State.i.i, align 2
  %152 = zext i16 %151 to i64
  call void @__sanitizer_cov_trace_switch(i64 %152, ptr @__sancov_gen_cov_switch_values.4)
  switch i16 %151, label %sw.epilog.i.i [
    i16 9, label %sw.bb.i.i
    i16 10, label %sw.bb2.i.i
    i16 12, label %sw.bb6.i.i
    i16 7, label %smt_fill_timestamp.exit.phy_con_resource_index.exit.i_crit_edge
    i16 11, label %smt_fill_timestamp.exit.phy_con_resource_index.exit.i_crit_edge53
  ]

smt_fill_timestamp.exit.phy_con_resource_index.exit.i_crit_edge53: ; preds = %smt_fill_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_con_resource_index.exit.i

smt_fill_timestamp.exit.phy_con_resource_index.exit.i_crit_edge: ; preds = %smt_fill_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_con_resource_index.exit.i

sw.bb.i.i:                                        ; preds = %smt_fill_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_con_resource_index.exit.i

sw.bb2.i.i:                                       ; preds = %smt_fill_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_con_resource_index.exit.i

sw.bb6.i.i:                                       ; preds = %smt_fill_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_con_resource_index.exit.i

sw.epilog.i.i:                                    ; preds = %smt_fill_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_con_resource_index.exit.i

phy_con_resource_index.exit.i:                    ; preds = %sw.epilog.i.i, %sw.bb6.i.i, %sw.bb2.i.i, %sw.bb.i.i, %smt_fill_timestamp.exit.phy_con_resource_index.exit.i_crit_edge, %smt_fill_timestamp.exit.phy_con_resource_index.exit.i_crit_edge53
  %retval.0.i.i = phi i16 [ 0, %sw.epilog.i.i ], [ 3, %sw.bb6.i.i ], [ 1, %sw.bb2.i.i ], [ 3, %sw.bb.i.i ], [ 2, %smt_fill_timestamp.exit.phy_con_resource_index.exit.i_crit_edge ], [ 2, %smt_fill_timestamp.exit.phy_con_resource_index.exit.i_crit_edge53 ]
  %phy_resource_idx.i = getelementptr inbounds %struct.smt_p_path, ptr %path, i32 0, i32 1, i32 0, i32 5
  %153 = ptrtoint ptr %phy_resource_idx.i to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 %retval.0.i.i, ptr %phy_resource_idx.i, align 2
  %incdec.ptr.i = getelementptr %struct.smt_p_path, ptr %path, i32 0, i32 1, i32 1
  %154 = ptrtoint ptr %sas.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %sas.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %155)
  %cmp7.i = icmp eq i8 %155, 1
  br i1 %cmp7.i, label %phy_con_resource_index.exit.i.for.end.i_crit_edge, label %for.body.i.1

phy_con_resource_index.exit.i.for.end.i_crit_edge: ; preds = %phy_con_resource_index.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i.1:                                     ; preds = %phy_con_resource_index.exit.i
  call void @pcm_status_state(ptr noundef %smc, i32 noundef 1, ptr noundef nonnull %type.i, ptr noundef nonnull %state.i, ptr noundef nonnull %remote.i, ptr noundef nonnull %mac.i) #6
  %156 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 2, ptr %incdec.ptr.i, align 2
  %157 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %type.i, align 4
  %conv19.i.1 = trunc i32 %158 to i8
  %phy_type.i.1 = getelementptr %struct.smt_p_path, ptr %path, i32 0, i32 1, i32 1, i32 1
  %159 = ptrtoint ptr %phy_type.i.1 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %conv19.i.1, ptr %phy_type.i.1, align 2
  %160 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %state.i, align 4
  %conv20.i.1 = trunc i32 %161 to i8
  %phy_connect_state.i.1 = getelementptr %struct.smt_p_path, ptr %path, i32 0, i32 1, i32 1, i32 2
  %162 = ptrtoint ptr %phy_connect_state.i.1 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %conv20.i.1, ptr %phy_connect_state.i.1, align 1
  %163 = ptrtoint ptr %remote.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %remote.i, align 4
  %conv21.i.1 = trunc i32 %164 to i8
  %phy_remote_type.i.1 = getelementptr %struct.smt_p_path, ptr %path, i32 0, i32 1, i32 1, i32 3
  %165 = ptrtoint ptr %phy_remote_type.i.1 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %conv21.i.1, ptr %phy_remote_type.i.1, align 2
  %166 = ptrtoint ptr %mac.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %mac.i, align 4
  %conv22.i.1 = trunc i32 %167 to i8
  %phy_remote_mac.i.1 = getelementptr %struct.smt_p_path, ptr %path, i32 0, i32 1, i32 1, i32 4
  %168 = ptrtoint ptr %phy_remote_mac.i.1 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %conv22.i.1, ptr %phy_remote_mac.i.1, align 1
  %169 = ptrtoint ptr %fddiSMTCF_State.i.i to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %fddiSMTCF_State.i.i, align 2
  %171 = zext i16 %170 to i64
  call void @__sanitizer_cov_trace_switch(i64 %171, ptr @__sancov_gen_cov_switch_values.5)
  switch i16 %170, label %sw.epilog.i.i.1 [
    i16 9, label %for.body.i.1.phy_con_resource_index.exit.i.1_crit_edge
    i16 10, label %sw.bb2.i.i.1
    i16 12, label %sw.bb6.i.i.1
    i16 7, label %sw.bb10.i.i.1
    i16 11, label %for.body.i.1.phy_con_resource_index.exit.i.1_crit_edge54
  ]

for.body.i.1.phy_con_resource_index.exit.i.1_crit_edge54: ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_con_resource_index.exit.i.1

for.body.i.1.phy_con_resource_index.exit.i.1_crit_edge: ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_con_resource_index.exit.i.1

sw.bb10.i.i.1:                                    ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_con_resource_index.exit.i.1

sw.bb6.i.i.1:                                     ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_con_resource_index.exit.i.1

sw.bb2.i.i.1:                                     ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_con_resource_index.exit.i.1

sw.epilog.i.i.1:                                  ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_con_resource_index.exit.i.1

phy_con_resource_index.exit.i.1:                  ; preds = %sw.epilog.i.i.1, %sw.bb2.i.i.1, %sw.bb6.i.i.1, %sw.bb10.i.i.1, %for.body.i.1.phy_con_resource_index.exit.i.1_crit_edge, %for.body.i.1.phy_con_resource_index.exit.i.1_crit_edge54
  %retval.0.i.i.1 = phi i16 [ 1, %sw.epilog.i.i.1 ], [ 3, %sw.bb10.i.i.1 ], [ 1, %sw.bb6.i.i.1 ], [ 3, %sw.bb2.i.i.1 ], [ 2, %for.body.i.1.phy_con_resource_index.exit.i.1_crit_edge ], [ 2, %for.body.i.1.phy_con_resource_index.exit.i.1_crit_edge54 ]
  %phy_resource_idx.i.1 = getelementptr %struct.smt_p_path, ptr %path, i32 0, i32 1, i32 1, i32 5
  %172 = ptrtoint ptr %phy_resource_idx.i.1 to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 %retval.0.i.i.1, ptr %phy_resource_idx.i.1, align 2
  %incdec.ptr.i.1 = getelementptr %struct.smt_p_path, ptr %path, i32 0, i32 2
  br label %for.end.i

for.end.i:                                        ; preds = %phy_con_resource_index.exit.i.1, %phy_con_resource_index.exit.i.for.end.i_crit_edge
  %incdec.ptr.i.lcssa = phi ptr [ %incdec.ptr.i, %phy_con_resource_index.exit.i.for.end.i_crit_edge ], [ %incdec.ptr.i.1, %phy_con_resource_index.exit.i.1 ]
  %phy.055.i.lcssa = phi ptr [ %pd_phy.i, %phy_con_resource_index.exit.i.for.end.i_crit_edge ], [ %incdec.ptr.i, %phy_con_resource_index.exit.i.1 ]
  %fddiMACSMTAddress.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 16
  %173 = call ptr @memcpy(ptr %incdec.ptr.i.lcssa, ptr %fddiMACSMTAddress.i, i32 6)
  %174 = ptrtoint ptr %fddiSMTCF_State.i.i to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %fddiSMTCF_State.i.i, align 2
  %switch.tableidx = add i16 %175, -7
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %switch.tableidx)
  %176 = icmp ult i16 %switch.tableidx, 6
  br i1 %176, label %switch.hole_check, label %for.end.i.sw.epilog.i50.i_crit_edge

for.end.i.sw.epilog.i50.i_crit_edge:              ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i50.i

sw.epilog.i50.i:                                  ; preds = %switch.hole_check.sw.epilog.i50.i_crit_edge, %for.end.i.sw.epilog.i50.i_crit_edge
  %177 = ptrtoint ptr %sas.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %sas.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %178)
  %cmp.i48.i = icmp eq i8 %178, 1
  %phi.cast.i = select i1 %cmp.i48.i, i16 2, i16 3
  br label %smt_fill_path.exit

switch.hole_check:                                ; preds = %for.end.i
  %switch.maskindex = trunc i16 %switch.tableidx to i8
  %switch.shifted = lshr i8 61, %switch.maskindex
  %179 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %179)
  %switch.lobit.not = icmp eq i8 %179, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog.i50.i_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog.i50.i_crit_edge:      ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i50.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  %180 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [6 x i16], ptr @switch.table.smt_send_sif_config, i32 0, i32 %180
  %181 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %181)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %smt_fill_path.exit

smt_fill_path.exit:                               ; preds = %switch.lookup, %sw.epilog.i50.i
  %retval.0.i51.i = phi i16 [ %phi.cast.i, %sw.epilog.i50.i ], [ %switch.load, %switch.lookup ]
  %mac_resource_idx.i = getelementptr %struct.smt_phy_rec, ptr %phy.055.i.lcssa, i32 1, i32 5
  %182 = ptrtoint ptr %mac_resource_idx.i to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 %retval.0.i51.i, ptr %mac_resource_idx.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mac.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remote.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type.i) #6
  %183 = call ptr @memcpy(ptr %add.ptr, ptr %dest, i32 6)
  %smt_tid = getelementptr inbounds %struct.smt_header, ptr %add.ptr, i32 0, i32 5
  %184 = ptrtoint ptr %smt_tid to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %tid, ptr %smt_tid, align 4
  %185 = ptrtoint ptr %m_off.i to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %m_off.i, align 4
  %conv.i48 = sext i16 %186 to i32
  %add.ptr.i49 = getelementptr i8, ptr %m_data.i, i32 %conv.i48
  %smt_len.i50 = getelementptr inbounds %struct.smt_header, ptr %add.ptr.i49, i32 0, i32 8
  %187 = ptrtoint ptr %smt_len.i50 to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %smt_len.i50, align 2
  %conv2.i51 = add i16 %188, %135
  store i16 %conv2.i51, ptr %smt_len.i50, align 2
  %189 = ptrtoint ptr %m_len.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %m_len.i, align 4
  %add3.i = add i32 %190, %add.i
  store i32 %add3.i, ptr %m_len.i, align 4
  call void @smt_send_frame(ptr noundef %smc, ptr noundef nonnull %call.i, i32 noundef 65, i32 noundef %local)
  br label %cleanup

cleanup:                                          ; preds = %smt_fill_path.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smt_send_sif_operation(ptr noundef %smc, ptr nocapture noundef readonly %dest, i32 noundef %tid, i32 noundef %local) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sas = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %sas to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sas, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  %spec.store.select = select i1 %cmp, i32 1, i32 2
  %2 = mul nuw nsw i32 %spec.store.select, 20
  %spec.select.i78 = add nuw nsw i32 %2, 204
  %call.i = tail call ptr @smt_get_mbuf(ptr noundef %smc) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %m_len.i = getelementptr inbounds %struct.s_mbuf, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %m_len.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %spec.select.i78, ptr %m_len.i, align 4
  %m_data.i = getelementptr inbounds %struct.s_mbuf, ptr %call.i, i32 0, i32 4
  %m_off.i = getelementptr inbounds %struct.s_mbuf, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %m_off.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %m_off.i, align 4
  %conv.i = sext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %m_data.i, i32 %conv.i
  %6 = call ptr @memcpy(ptr %add.ptr.i, ptr @fddi_broadcast, i32 6)
  %smt_class.i = getelementptr inbounds %struct.smt_header, ptr %add.ptr.i, i32 0, i32 2
  %7 = ptrtoint ptr %smt_class.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 3, ptr %smt_class.i, align 4
  %smt_type.i = getelementptr inbounds %struct.smt_header, ptr %add.ptr.i, i32 0, i32 3
  %8 = ptrtoint ptr %smt_type.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 3, ptr %smt_type.i, align 1
  %9 = getelementptr inbounds %struct.smt_header, ptr %add.ptr.i, i32 0, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %9, align 2
  %smt_tid.i.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %smt_tid.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %smt_tid.promoted.i.i = load i32, ptr %smt_tid.i.i, align 4
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %if.end.i
  %12 = phi i32 [ %inc.i.i, %while.cond.i.i.while.cond.i.i_crit_edge ], [ %smt_tid.promoted.i.i, %if.end.i ]
  %inc.i.i = add i32 %12, 1
  %xor.i.i = xor i32 %inc.i.i, 520780604
  %cmp.i.i = icmp eq i32 %xor.i.i, 0
  br i1 %cmp.i.i, label %while.cond.i.i.while.cond.i.i_crit_edge, label %if.end4

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i

if.end4:                                          ; preds = %while.cond.i.i
  %13 = ptrtoint ptr %smt_tid.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %inc.i.i, ptr %smt_tid.i.i, align 4
  %and.i.i = and i32 %xor.i.i, 1073741823
  %smt_tid.i = getelementptr inbounds %struct.smt_header, ptr %add.ptr.i, i32 0, i32 5
  %14 = ptrtoint ptr %smt_tid.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and.i.i, ptr %smt_tid.i, align 4
  %smt_pad.i = getelementptr inbounds %struct.smt_header, ptr %add.ptr.i, i32 0, i32 7
  %15 = ptrtoint ptr %smt_pad.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %smt_pad.i, align 4
  %16 = trunc i32 %spec.select.i78 to i16
  %conv5.i = add nsw i16 %16, -32
  %smt_len.i = getelementptr inbounds %struct.smt_header, ptr %add.ptr.i, i32 0, i32 8
  %17 = ptrtoint ptr %smt_len.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv5.i, ptr %smt_len.i, align 2
  %18 = ptrtoint ptr %m_off.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %m_off.i, align 4
  %conv5 = sext i16 %19 to i32
  %add.ptr = getelementptr i8, ptr %m_data.i, i32 %conv5
  %ts = getelementptr inbounds %struct.smt_sif_operation, ptr %add.ptr, i32 0, i32 1
  %20 = ptrtoint ptr %ts to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 4, ptr %ts, align 2
  %p_len.i = getelementptr inbounds %struct.smt_para, ptr %ts, i32 0, i32 1
  %21 = ptrtoint ptr %p_len.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 8, ptr %p_len.i, align 2
  %ts_time.i = getelementptr inbounds %struct.smt_p_timestamp, ptr %ts, i32 0, i32 1
  %call.i.i = tail call i32 @smt_get_time() #6
  %mul.i.i = mul i32 %call.i.i, 100
  %div.i.i = udiv i32 %mul.i.i, 100
  %22 = ptrtoint ptr %ts_time.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %ts_time.i, align 1
  %arrayidx1.i.i = getelementptr %struct.smt_p_timestamp, ptr %ts, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx1.i.i, align 1
  %shr2.i.i = lshr i32 %div.i.i, 23
  %conv3.i.i = trunc i32 %shr2.i.i to i8
  %arrayidx4.i.i = getelementptr %struct.smt_p_timestamp, ptr %ts, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv3.i.i, ptr %arrayidx4.i.i, align 1
  %shr5.i.i = lshr i32 %div.i.i, 15
  %conv6.i.i = trunc i32 %shr5.i.i to i8
  %arrayidx7.i.i = getelementptr %struct.smt_p_timestamp, ptr %ts, i32 0, i32 1, i32 3
  %25 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv6.i.i, ptr %arrayidx7.i.i, align 1
  %shr8.i.i = lshr i32 %div.i.i, 7
  %conv9.i.i = trunc i32 %shr8.i.i to i8
  %arrayidx10.i.i = getelementptr %struct.smt_p_timestamp, ptr %ts, i32 0, i32 1, i32 4
  %26 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv9.i.i, ptr %arrayidx10.i.i, align 1
  %div.tr.i.i = trunc i32 %div.i.i to i8
  %conv11.i.i = shl i8 %div.tr.i.i, 1
  %arrayidx12.i.i = getelementptr %struct.smt_p_timestamp, ptr %ts, i32 0, i32 1, i32 5
  %27 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv11.i.i, ptr %arrayidx12.i.i, align 1
  %uniq_ticks.i.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 3, i32 5
  %28 = ptrtoint ptr %uniq_ticks.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %uniq_ticks.i.i, align 4
  %30 = lshr i16 %29, 8
  %conv15.i.i = trunc i16 %30 to i8
  %arrayidx16.i.i = getelementptr %struct.smt_p_timestamp, ptr %ts, i32 0, i32 1, i32 6
  %31 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv15.i.i, ptr %arrayidx16.i.i, align 1
  %32 = load i16, ptr %uniq_ticks.i.i, align 4
  %conv19.i.i = trunc i16 %32 to i8
  %arrayidx20.i.i = getelementptr %struct.smt_p_timestamp, ptr %ts, i32 0, i32 1, i32 7
  %33 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv19.i.i, ptr %arrayidx20.i.i, align 1
  %uniq_time.i.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 3, i32 4
  %34 = ptrtoint ptr %uniq_time.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %uniq_time.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %35)
  %cmp.not.i.i = icmp eq i32 %call.i.i, %35
  br i1 %cmp.not.i.i, label %if.end4.smt_fill_timestamp.exit_crit_edge, label %if.then.i.i

if.end4.smt_fill_timestamp.exit_crit_edge:        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %smt_fill_timestamp.exit

if.then.i.i:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %uniq_ticks.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %uniq_ticks.i.i, align 4
  br label %smt_fill_timestamp.exit

smt_fill_timestamp.exit:                          ; preds = %if.then.i.i, %if.end4.smt_fill_timestamp.exit_crit_edge
  %37 = ptrtoint ptr %uniq_ticks.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %uniq_ticks.i.i, align 4
  %inc.i.i46 = add i16 %38, 1
  store i16 %inc.i.i46, ptr %uniq_ticks.i.i, align 4
  %39 = ptrtoint ptr %uniq_time.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call.i.i, ptr %uniq_time.i.i, align 4
  %status = getelementptr inbounds %struct.smt_sif_operation, ptr %add.ptr, i32 0, i32 2
  %40 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 9, ptr %status, align 4
  %p_len.i47 = getelementptr inbounds %struct.smt_para, ptr %status, i32 0, i32 1
  %41 = ptrtoint ptr %p_len.i47 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 40, ptr %p_len.i47, align 2
  %st_mib_index.i = getelementptr inbounds %struct.smt_p_mac_status, ptr %status, i32 0, i32 1
  %42 = ptrtoint ptr %st_mib_index.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 1, ptr %st_mib_index.i, align 4
  %43 = ptrtoint ptr %sas to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %sas, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %44)
  %cmp.i.i48 = icmp eq i8 %44, 1
  %conv.i49 = select i1 %cmp.i.i48, i16 2, i16 3
  %st_mac_index.i = getelementptr inbounds %struct.smt_p_mac_status, ptr %status, i32 0, i32 2
  %45 = ptrtoint ptr %st_mac_index.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv.i49, ptr %st_mac_index.i, align 2
  tail call void @mac_update_counter(ptr noundef %smc) #6
  %fddiMACT_Req.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 19
  %46 = ptrtoint ptr %fddiMACT_Req.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fddiMACT_Req.i, align 4
  %st_t_req.i = getelementptr inbounds %struct.smt_p_mac_status, ptr %status, i32 0, i32 3
  %48 = ptrtoint ptr %st_t_req.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %st_t_req.i, align 4
  %fddiMACT_Neg.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 20
  %49 = ptrtoint ptr %fddiMACT_Neg.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %fddiMACT_Neg.i, align 4
  %st_t_neg.i = getelementptr inbounds %struct.smt_p_mac_status, ptr %status, i32 0, i32 4
  %51 = ptrtoint ptr %st_t_neg.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %st_t_neg.i, align 4
  %fddiMACT_Max.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 22
  %52 = ptrtoint ptr %fddiMACT_Max.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %fddiMACT_Max.i, align 4
  %st_t_max.i = getelementptr inbounds %struct.smt_p_mac_status, ptr %status, i32 0, i32 5
  %54 = ptrtoint ptr %st_t_max.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %st_t_max.i, align 4
  %fddiMACTvxValue.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 24
  %55 = ptrtoint ptr %fddiMACTvxValue.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %fddiMACTvxValue.i, align 4
  %st_tvx_value.i = getelementptr inbounds %struct.smt_p_mac_status, ptr %status, i32 0, i32 6
  %57 = ptrtoint ptr %st_tvx_value.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %st_tvx_value.i, align 4
  %fddiMACT_Min.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 17
  %58 = ptrtoint ptr %fddiMACT_Min.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %fddiMACT_Min.i, align 4
  %st_t_min.i = getelementptr inbounds %struct.smt_p_mac_status, ptr %status, i32 0, i32 7
  %60 = ptrtoint ptr %st_t_min.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %st_t_min.i, align 4
  %fddiPATHSbaPayload.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 38, i32 0, i32 1
  %61 = ptrtoint ptr %fddiPATHSbaPayload.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %fddiPATHSbaPayload.i, align 4
  %st_sba.i = getelementptr inbounds %struct.smt_p_mac_status, ptr %status, i32 0, i32 8
  %63 = ptrtoint ptr %st_sba.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %st_sba.i, align 4
  %fddiMACFrame_Ct.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 32
  %64 = ptrtoint ptr %fddiMACFrame_Ct.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %fddiMACFrame_Ct.i, align 4
  %st_frame_ct.i = getelementptr inbounds %struct.smt_p_mac_status, ptr %status, i32 0, i32 9
  %66 = ptrtoint ptr %st_frame_ct.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %st_frame_ct.i, align 4
  %fddiMACError_Ct.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 36
  %67 = ptrtoint ptr %fddiMACError_Ct.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %fddiMACError_Ct.i, align 4
  %st_error_ct.i = getelementptr inbounds %struct.smt_p_mac_status, ptr %status, i32 0, i32 10
  %69 = ptrtoint ptr %st_error_ct.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %st_error_ct.i, align 4
  %fddiMACLost_Ct.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 37
  %70 = ptrtoint ptr %fddiMACLost_Ct.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %fddiMACLost_Ct.i, align 4
  %st_lost_ct.i = getelementptr inbounds %struct.smt_p_mac_status, ptr %status, i32 0, i32 11
  %72 = ptrtoint ptr %st_lost_ct.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %st_lost_ct.i, align 4
  %mc = getelementptr inbounds %struct.smt_sif_operation, ptr %add.ptr, i32 0, i32 3
  %73 = ptrtoint ptr %mc to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 11, ptr %mc, align 4
  %p_len.i50 = getelementptr inbounds %struct.smt_para, ptr %mc, i32 0, i32 1
  %74 = ptrtoint ptr %p_len.i50 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 12, ptr %p_len.i50, align 2
  %mc_mib_index.i = getelementptr inbounds %struct.smt_p_mac_counter, ptr %mc, i32 0, i32 1
  %75 = ptrtoint ptr %mc_mib_index.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 1, ptr %mc_mib_index.i, align 4
  %76 = ptrtoint ptr %sas to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %sas, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %77)
  %cmp.i.i52 = icmp eq i8 %77, 1
  %conv.i53 = select i1 %cmp.i.i52, i16 2, i16 3
  %mc_index.i = getelementptr inbounds %struct.smt_p_mac_counter, ptr %mc, i32 0, i32 2
  %78 = ptrtoint ptr %mc_index.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv.i53, ptr %mc_index.i, align 2
  %fddiMACCopied_Ct.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 33
  %79 = ptrtoint ptr %fddiMACCopied_Ct.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %fddiMACCopied_Ct.i, align 4
  %mc_receive_ct.i = getelementptr inbounds %struct.smt_p_mac_counter, ptr %mc, i32 0, i32 3
  %81 = ptrtoint ptr %mc_receive_ct.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %mc_receive_ct.i, align 4
  %fddiMACTransmit_Ct.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 34
  %82 = ptrtoint ptr %fddiMACTransmit_Ct.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %fddiMACTransmit_Ct.i, align 4
  %mc_transmit_ct.i = getelementptr inbounds %struct.smt_p_mac_counter, ptr %mc, i32 0, i32 4
  %84 = ptrtoint ptr %mc_transmit_ct.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %mc_transmit_ct.i, align 4
  %fnc = getelementptr inbounds %struct.smt_sif_operation, ptr %add.ptr, i32 0, i32 4
  %85 = ptrtoint ptr %fnc to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 12, ptr %fnc, align 4
  %p_len.i54 = getelementptr inbounds %struct.smt_para, ptr %fnc, i32 0, i32 1
  %86 = ptrtoint ptr %p_len.i54 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 8, ptr %p_len.i54, align 2
  %nc_mib_index.i = getelementptr inbounds %struct.smt_p_mac_fnc, ptr %fnc, i32 0, i32 1
  %87 = ptrtoint ptr %nc_mib_index.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 1, ptr %nc_mib_index.i, align 4
  %88 = ptrtoint ptr %sas to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %sas, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %89)
  %cmp.i.i56 = icmp eq i8 %89, 1
  %conv.i57 = select i1 %cmp.i.i56, i16 2, i16 3
  %nc_index.i = getelementptr inbounds %struct.smt_p_mac_fnc, ptr %fnc, i32 0, i32 2
  %90 = ptrtoint ptr %nc_index.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %conv.i57, ptr %nc_index.i, align 2
  %fddiMACNotCopied_Ct.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 39
  %91 = ptrtoint ptr %fddiMACNotCopied_Ct.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %fddiMACNotCopied_Ct.i, align 4
  %nc_counter.i = getelementptr inbounds %struct.smt_p_mac_fnc, ptr %fnc, i32 0, i32 3
  %93 = ptrtoint ptr %nc_counter.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %nc_counter.i, align 4
  %man = getelementptr inbounds %struct.smt_sif_operation, ptr %add.ptr, i32 0, i32 5
  %94 = ptrtoint ptr %man to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 15, ptr %man, align 2
  %p_len.i58 = getelementptr inbounds %struct.smt_para, ptr %man, i32 0, i32 1
  %95 = ptrtoint ptr %p_len.i58 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 32, ptr %p_len.i58, align 2
  %mf_data.i = getelementptr inbounds %struct.smp_p_manufacturer, ptr %man, i32 0, i32 1
  %fddiSMTManufacturerData.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 12
  %96 = call ptr @memcpy(ptr %mf_data.i, ptr %fddiSMTManufacturerData.i, i32 32)
  %user = getelementptr inbounds %struct.smt_sif_operation, ptr %add.ptr, i32 0, i32 6
  %97 = ptrtoint ptr %user to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 16, ptr %user, align 2
  %p_len.i59 = getelementptr inbounds %struct.smt_para, ptr %user, i32 0, i32 1
  %98 = ptrtoint ptr %p_len.i59 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 32, ptr %p_len.i59, align 2
  %us_data.i = getelementptr inbounds %struct.smp_p_user, ptr %user, i32 0, i32 1
  %fddiSMTUserData.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 13
  %99 = call ptr @memcpy(ptr %us_data.i, ptr %fddiSMTUserData.i, i32 32)
  %setcount = getelementptr inbounds %struct.smt_sif_operation, ptr %add.ptr, i32 0, i32 7
  %100 = ptrtoint ptr %setcount to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 4149, ptr %setcount, align 4
  %p_len.i60 = getelementptr inbounds %struct.smt_para, ptr %setcount, i32 0, i32 1
  %101 = ptrtoint ptr %p_len.i60 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 12, ptr %p_len.i60, align 2
  %fddiSMTSetCount.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 35
  %102 = ptrtoint ptr %fddiSMTSetCount.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %fddiSMTSetCount.i, align 4
  %count2.i = getelementptr inbounds %struct.smt_p_setcount, ptr %setcount, i32 0, i32 1
  %104 = ptrtoint ptr %count2.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %count2.i, align 4
  %timestamp.i = getelementptr inbounds %struct.smt_p_setcount, ptr %setcount, i32 0, i32 2
  %timestamp5.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 35, i32 1
  %105 = ptrtoint ptr %timestamp5.i to i32
  call void @__asan_loadN_noabort(i32 %105, i32 8)
  %106 = load i64, ptr %timestamp5.i, align 4
  %107 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_storeN_noabort(i32 %107, i32 8)
  store i64 %106, ptr %timestamp.i, align 4
  %lem = getelementptr inbounds %struct.smt_sif_operation, ptr %add.ptr, i32 0, i32 8
  br i1 %cmp, label %if.then8, label %smt_fill_timestamp.exit.for.body_crit_edge

smt_fill_timestamp.exit.for.body_crit_edge:       ; preds = %smt_fill_timestamp.exit
  br label %for.body

if.then8:                                         ; preds = %smt_fill_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 0
  %108 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx.i, align 4
  %110 = ptrtoint ptr %lem to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 10, ptr %lem, align 4
  %p_len.i61 = getelementptr inbounds %struct.smt_para, ptr %lem, i32 0, i32 1
  %111 = ptrtoint ptr %p_len.i61 to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 16, ptr %p_len.i61, align 2
  %lem_mib_index.i = getelementptr inbounds %struct.smt_p_lem, ptr %lem, i32 0, i32 1
  %112 = ptrtoint ptr %lem_mib_index.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 1, ptr %lem_mib_index.i, align 4
  %lem_phy_index.i = getelementptr inbounds %struct.smt_p_lem, ptr %lem, i32 0, i32 2
  %113 = ptrtoint ptr %lem_phy_index.i to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 1, ptr %lem_phy_index.i, align 2
  %lem_pad2.i = getelementptr inbounds %struct.smt_p_lem, ptr %lem, i32 0, i32 3
  %114 = ptrtoint ptr %lem_pad2.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 0, ptr %lem_pad2.i, align 4
  %fddiPORTLer_Cutoff.i = getelementptr inbounds %struct.fddi_mib_p, ptr %109, i32 0, i32 20
  %115 = ptrtoint ptr %fddiPORTLer_Cutoff.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %fddiPORTLer_Cutoff.i, align 1
  %lem_cutoff.i = getelementptr inbounds %struct.smt_p_lem, ptr %lem, i32 0, i32 4
  %117 = ptrtoint ptr %lem_cutoff.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %116, ptr %lem_cutoff.i, align 1
  %fddiPORTLer_Alarm.i = getelementptr inbounds %struct.fddi_mib_p, ptr %109, i32 0, i32 21
  %118 = ptrtoint ptr %fddiPORTLer_Alarm.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %fddiPORTLer_Alarm.i, align 2
  %lem_alarm.i = getelementptr inbounds %struct.smt_p_lem, ptr %lem, i32 0, i32 5
  %120 = ptrtoint ptr %lem_alarm.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %119, ptr %lem_alarm.i, align 2
  %fddiPORTLer_Estimate.i = getelementptr inbounds %struct.fddi_mib_p, ptr %109, i32 0, i32 19
  %121 = ptrtoint ptr %fddiPORTLer_Estimate.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %fddiPORTLer_Estimate.i, align 4
  %lem_estimate.i = getelementptr inbounds %struct.smt_p_lem, ptr %lem, i32 0, i32 6
  %123 = ptrtoint ptr %lem_estimate.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %122, ptr %lem_estimate.i, align 1
  %fddiPORTLem_Reject_Ct.i = getelementptr inbounds %struct.fddi_mib_p, ptr %109, i32 0, i32 17
  %124 = ptrtoint ptr %fddiPORTLem_Reject_Ct.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %fddiPORTLem_Reject_Ct.i, align 4
  %lem_reject_ct.i = getelementptr inbounds %struct.smt_p_lem, ptr %lem, i32 0, i32 7
  %126 = ptrtoint ptr %lem_reject_ct.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %lem_reject_ct.i, align 4
  %fddiPORTLem_Ct.i = getelementptr inbounds %struct.fddi_mib_p, ptr %109, i32 0, i32 18
  %127 = ptrtoint ptr %fddiPORTLem_Ct.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %fddiPORTLem_Ct.i, align 4
  %lem_ct.i = getelementptr inbounds %struct.smt_p_lem, ptr %lem, i32 0, i32 8
  %129 = ptrtoint ptr %lem_ct.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %lem_ct.i, align 4
  br label %if.end13

for.body:                                         ; preds = %for.body.for.body_crit_edge, %smt_fill_timestamp.exit.for.body_crit_edge
  %i.079 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %smt_fill_timestamp.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [0 x %struct.smt_p_lem], ptr %lem, i32 0, i32 %i.079
  %arrayidx.i62 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %i.079
  %130 = ptrtoint ptr %arrayidx.i62 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx.i62, align 4
  %132 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 10, ptr %arrayidx, align 4
  %p_len.i63 = getelementptr inbounds %struct.smt_para, ptr %arrayidx, i32 0, i32 1
  %133 = ptrtoint ptr %p_len.i63 to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 16, ptr %p_len.i63, align 2
  %134 = trunc i32 %i.079 to i16
  %conv.i64 = add i16 %134, 1
  %lem_mib_index.i65 = getelementptr [0 x %struct.smt_p_lem], ptr %lem, i32 0, i32 %i.079, i32 1
  %135 = ptrtoint ptr %lem_mib_index.i65 to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %conv.i64, ptr %lem_mib_index.i65, align 4
  %lem_phy_index.i66 = getelementptr [0 x %struct.smt_p_lem], ptr %lem, i32 0, i32 %i.079, i32 2
  %136 = ptrtoint ptr %lem_phy_index.i66 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 %conv.i64, ptr %lem_phy_index.i66, align 2
  %lem_pad2.i67 = getelementptr [0 x %struct.smt_p_lem], ptr %lem, i32 0, i32 %i.079, i32 3
  %137 = ptrtoint ptr %lem_pad2.i67 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 0, ptr %lem_pad2.i67, align 4
  %fddiPORTLer_Cutoff.i68 = getelementptr inbounds %struct.fddi_mib_p, ptr %131, i32 0, i32 20
  %138 = ptrtoint ptr %fddiPORTLer_Cutoff.i68 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %fddiPORTLer_Cutoff.i68, align 1
  %lem_cutoff.i69 = getelementptr [0 x %struct.smt_p_lem], ptr %lem, i32 0, i32 %i.079, i32 4
  %140 = ptrtoint ptr %lem_cutoff.i69 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %139, ptr %lem_cutoff.i69, align 1
  %fddiPORTLer_Alarm.i70 = getelementptr inbounds %struct.fddi_mib_p, ptr %131, i32 0, i32 21
  %141 = ptrtoint ptr %fddiPORTLer_Alarm.i70 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %fddiPORTLer_Alarm.i70, align 2
  %lem_alarm.i71 = getelementptr [0 x %struct.smt_p_lem], ptr %lem, i32 0, i32 %i.079, i32 5
  %143 = ptrtoint ptr %lem_alarm.i71 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %142, ptr %lem_alarm.i71, align 2
  %fddiPORTLer_Estimate.i72 = getelementptr inbounds %struct.fddi_mib_p, ptr %131, i32 0, i32 19
  %144 = ptrtoint ptr %fddiPORTLer_Estimate.i72 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %fddiPORTLer_Estimate.i72, align 4
  %lem_estimate.i73 = getelementptr [0 x %struct.smt_p_lem], ptr %lem, i32 0, i32 %i.079, i32 6
  %146 = ptrtoint ptr %lem_estimate.i73 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %145, ptr %lem_estimate.i73, align 1
  %fddiPORTLem_Reject_Ct.i74 = getelementptr inbounds %struct.fddi_mib_p, ptr %131, i32 0, i32 17
  %147 = ptrtoint ptr %fddiPORTLem_Reject_Ct.i74 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %fddiPORTLem_Reject_Ct.i74, align 4
  %lem_reject_ct.i75 = getelementptr [0 x %struct.smt_p_lem], ptr %lem, i32 0, i32 %i.079, i32 7
  %149 = ptrtoint ptr %lem_reject_ct.i75 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %148, ptr %lem_reject_ct.i75, align 4
  %fddiPORTLem_Ct.i76 = getelementptr inbounds %struct.fddi_mib_p, ptr %131, i32 0, i32 18
  %150 = ptrtoint ptr %fddiPORTLem_Ct.i76 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %fddiPORTLem_Ct.i76, align 4
  %lem_ct.i77 = getelementptr [0 x %struct.smt_p_lem], ptr %lem, i32 0, i32 %i.079, i32 8
  %152 = ptrtoint ptr %lem_ct.i77 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %lem_ct.i77, align 4
  %inc = add nuw nsw i32 %i.079, 1
  %exitcond.not = icmp eq i32 %inc, %spec.store.select
  br i1 %exitcond.not, label %for.body.if.end13_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.if.end13_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.end13:                                         ; preds = %for.body.if.end13_crit_edge, %if.then8
  %153 = call ptr @memcpy(ptr %add.ptr, ptr %dest, i32 6)
  %smt_tid = getelementptr inbounds %struct.smt_header, ptr %add.ptr, i32 0, i32 5
  %154 = ptrtoint ptr %smt_tid to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %tid, ptr %smt_tid, align 4
  tail call void @smt_send_frame(ptr noundef %smc, ptr noundef nonnull %call.i, i32 noundef 65, i32 noundef %local)
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smt_send_frame(ptr noundef %smc, ptr noundef %mb, i32 noundef %fc, i32 noundef %local) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sm_ma_avail = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 5, i32 3
  %0 = ptrtoint ptr %sm_ma_avail to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sm_ma_avail, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %local)
  %tobool1.not = icmp eq i32 %local, 0
  %or.cond = and i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @smt_free_mbuf(ptr noundef %smc, ptr noundef %mb) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %m_data = getelementptr inbounds %struct.s_mbuf, ptr %mb, i32 0, i32 4
  %m_off = getelementptr inbounds %struct.s_mbuf, ptr %mb, i32 0, i32 1
  %2 = ptrtoint ptr %m_off to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %m_off, align 4
  %conv = sext i16 %3 to i32
  %add.ptr = getelementptr i8, ptr %m_data, i32 %conv
  %smt_source = getelementptr %struct.smt_header, ptr %add.ptr, i32 0, i32 1
  %fddiMACSMTAddress = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 16
  %4 = call ptr @memcpy(ptr %smt_source, ptr %fddiMACSMTAddress, i32 6)
  %smt_sid = getelementptr inbounds %struct.smt_header, ptr %add.ptr, i32 0, i32 6
  %fddiSMTStationId = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 8
  %5 = ptrtoint ptr %fddiSMTStationId to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %6 = load i64, ptr %fddiSMTStationId, align 2
  %7 = ptrtoint ptr %smt_sid to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 %6, ptr %smt_sid, align 4
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %add.ptr, align 1
  %idxprom.i.i = zext i8 %9 to i32
  %arrayidx.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i.i, align 1
  store i8 %11, ptr %add.ptr, align 1
  %incdec.ptr.i = getelementptr i8, ptr %add.ptr, i32 1
  %12 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %incdec.ptr.i, align 1
  %idxprom.i.1.i = zext i8 %13 to i32
  %arrayidx.i.1.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.1.i
  %14 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i.1.i, align 1
  store i8 %15, ptr %incdec.ptr.i, align 1
  %incdec.ptr.1.i = getelementptr i8, ptr %add.ptr, i32 2
  %16 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %incdec.ptr.1.i, align 1
  %idxprom.i.2.i = zext i8 %17 to i32
  %arrayidx.i.2.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.2.i
  %18 = ptrtoint ptr %arrayidx.i.2.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i.2.i, align 1
  store i8 %19, ptr %incdec.ptr.1.i, align 1
  %incdec.ptr.2.i = getelementptr i8, ptr %add.ptr, i32 3
  %20 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %incdec.ptr.2.i, align 1
  %idxprom.i.3.i = zext i8 %21 to i32
  %arrayidx.i.3.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.3.i
  %22 = ptrtoint ptr %arrayidx.i.3.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i.3.i, align 1
  store i8 %23, ptr %incdec.ptr.2.i, align 1
  %incdec.ptr.3.i = getelementptr i8, ptr %add.ptr, i32 4
  %24 = ptrtoint ptr %incdec.ptr.3.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %incdec.ptr.3.i, align 1
  %idxprom.i.4.i = zext i8 %25 to i32
  %arrayidx.i.4.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.4.i
  %26 = ptrtoint ptr %arrayidx.i.4.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i.4.i, align 1
  store i8 %27, ptr %incdec.ptr.3.i, align 1
  %incdec.ptr.4.i = getelementptr i8, ptr %add.ptr, i32 5
  %28 = ptrtoint ptr %incdec.ptr.4.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %incdec.ptr.4.i, align 1
  %idxprom.i.5.i = zext i8 %29 to i32
  %arrayidx.i.5.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.5.i
  %30 = ptrtoint ptr %arrayidx.i.5.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i.5.i, align 1
  store i8 %31, ptr %incdec.ptr.4.i, align 1
  %32 = ptrtoint ptr %smt_source to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %smt_source, align 1
  %idxprom.i.6.i = zext i8 %33 to i32
  %arrayidx.i.6.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.6.i
  %34 = ptrtoint ptr %arrayidx.i.6.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i.6.i, align 1
  store i8 %35, ptr %smt_source, align 1
  %incdec.ptr.6.i = getelementptr i8, ptr %add.ptr, i32 7
  %36 = ptrtoint ptr %incdec.ptr.6.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %incdec.ptr.6.i, align 1
  %idxprom.i.7.i = zext i8 %37 to i32
  %arrayidx.i.7.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.7.i
  %38 = ptrtoint ptr %arrayidx.i.7.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i.7.i, align 1
  store i8 %39, ptr %incdec.ptr.6.i, align 1
  %incdec.ptr.7.i = getelementptr i8, ptr %add.ptr, i32 8
  %40 = ptrtoint ptr %incdec.ptr.7.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %incdec.ptr.7.i, align 1
  %idxprom.i.8.i = zext i8 %41 to i32
  %arrayidx.i.8.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.8.i
  %42 = ptrtoint ptr %arrayidx.i.8.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i.8.i, align 1
  store i8 %43, ptr %incdec.ptr.7.i, align 1
  %incdec.ptr.8.i = getelementptr i8, ptr %add.ptr, i32 9
  %44 = ptrtoint ptr %incdec.ptr.8.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %incdec.ptr.8.i, align 1
  %idxprom.i.9.i = zext i8 %45 to i32
  %arrayidx.i.9.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.9.i
  %46 = ptrtoint ptr %arrayidx.i.9.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.i.9.i, align 1
  store i8 %47, ptr %incdec.ptr.8.i, align 1
  %incdec.ptr.9.i = getelementptr i8, ptr %add.ptr, i32 10
  %48 = ptrtoint ptr %incdec.ptr.9.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %incdec.ptr.9.i, align 1
  %idxprom.i.10.i = zext i8 %49 to i32
  %arrayidx.i.10.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.10.i
  %50 = ptrtoint ptr %arrayidx.i.10.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.i.10.i, align 1
  store i8 %51, ptr %incdec.ptr.9.i, align 1
  %incdec.ptr.10.i = getelementptr i8, ptr %add.ptr, i32 11
  %52 = ptrtoint ptr %incdec.ptr.10.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %incdec.ptr.10.i, align 1
  %idxprom.i.11.i = zext i8 %53 to i32
  %arrayidx.i.11.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.11.i
  %54 = ptrtoint ptr %arrayidx.i.11.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx.i.11.i, align 1
  store i8 %55, ptr %incdec.ptr.10.i, align 1
  %fddiMACSMTTransmit_Ct = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 42
  %56 = ptrtoint ptr %fddiMACSMTTransmit_Ct to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %fddiMACSMTTransmit_Ct, align 4
  %inc = add i32 %57, 1
  store i32 %inc, ptr %fddiMACSMTTransmit_Ct, align 4
  %spec.select = select i1 %tobool1.not, i32 %fc, i32 67
  tail call void @smt_send_mbuf(ptr noundef %smc, ptr noundef %mb, i32 noundef %spec.select) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ess_raf_received_pack(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smt_pmf_received_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smt_send_mbuf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @smt_build_frame(ptr noundef %smc, i32 noundef %class, i32 noundef %type, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @smt_get_mbuf(ptr noundef %smc) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %m_len = getelementptr inbounds %struct.s_mbuf, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %m_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %length, ptr %m_len, align 4
  %m_data = getelementptr inbounds %struct.s_mbuf, ptr %call, i32 0, i32 4
  %m_off = getelementptr inbounds %struct.s_mbuf, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %m_off to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %m_off, align 4
  %conv = sext i16 %2 to i32
  %add.ptr = getelementptr i8, ptr %m_data, i32 %conv
  %3 = call ptr @memcpy(ptr %add.ptr, ptr @fddi_broadcast, i32 6)
  %conv1 = trunc i32 %class to i8
  %smt_class = getelementptr inbounds %struct.smt_header, ptr %add.ptr, i32 0, i32 2
  %4 = ptrtoint ptr %smt_class to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv1, ptr %smt_class, align 4
  %conv2 = trunc i32 %type to i8
  %smt_type = getelementptr inbounds %struct.smt_header, ptr %add.ptr, i32 0, i32 3
  %5 = ptrtoint ptr %smt_type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv2, ptr %smt_type, align 1
  %class.off = add i32 %class, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %class.off)
  %switch = icmp ult i32 %class.off, 4
  %spec.select = select i1 %switch, i16 1, i16 2
  %6 = getelementptr inbounds %struct.smt_header, ptr %add.ptr, i32 0, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %spec.select, ptr %6, align 2
  %smt_tid.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %smt_tid.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %smt_tid.promoted.i = load i32, ptr %smt_tid.i, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.end
  %9 = phi i32 [ %inc.i, %while.cond.i.while.cond.i_crit_edge ], [ %smt_tid.promoted.i, %if.end ]
  %inc.i = add i32 %9, 1
  %xor.i = xor i32 %inc.i, 520780604
  %cmp.i = icmp eq i32 %xor.i, 0
  br i1 %cmp.i, label %while.cond.i.while.cond.i_crit_edge, label %smt_get_tid.exit

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

smt_get_tid.exit:                                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %smt_tid.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %inc.i, ptr %smt_tid.i, align 4
  %and.i = and i32 %xor.i, 1073741823
  %smt_tid = getelementptr inbounds %struct.smt_header, ptr %add.ptr, i32 0, i32 5
  %11 = ptrtoint ptr %smt_tid to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and.i, ptr %smt_tid, align 4
  %smt_pad = getelementptr inbounds %struct.smt_header, ptr %add.ptr, i32 0, i32 7
  %12 = ptrtoint ptr %smt_pad to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %smt_pad, align 4
  %13 = trunc i32 %length to i16
  %conv5 = add i16 %13, -32
  %smt_len = getelementptr inbounds %struct.smt_header, ptr %add.ptr, i32 0, i32 8
  %14 = ptrtoint ptr %smt_len to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv5, ptr %smt_len, align 2
  br label %cleanup

cleanup:                                          ; preds = %smt_get_tid.exit, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @smt_get_mbuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smt_set_timestamp(ptr nocapture noundef %smc, ptr nocapture noundef writeonly %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @smt_get_time() #6
  %mul = mul i32 %call, 100
  %div = udiv i32 %mul, 100
  %0 = ptrtoint ptr %p to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %p, align 1
  %arrayidx1 = getelementptr i8, ptr %p, i32 1
  %1 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %arrayidx1, align 1
  %shr2 = lshr i32 %div, 23
  %conv3 = trunc i32 %shr2 to i8
  %arrayidx4 = getelementptr i8, ptr %p, i32 2
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv3, ptr %arrayidx4, align 1
  %shr5 = lshr i32 %div, 15
  %conv6 = trunc i32 %shr5 to i8
  %arrayidx7 = getelementptr i8, ptr %p, i32 3
  %3 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv6, ptr %arrayidx7, align 1
  %shr8 = lshr i32 %div, 7
  %conv9 = trunc i32 %shr8 to i8
  %arrayidx10 = getelementptr i8, ptr %p, i32 4
  %4 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv9, ptr %arrayidx10, align 1
  %div.tr = trunc i32 %div to i8
  %conv11 = shl i8 %div.tr, 1
  %arrayidx12 = getelementptr i8, ptr %p, i32 5
  %5 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv11, ptr %arrayidx12, align 1
  %uniq_ticks = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 3, i32 5
  %6 = ptrtoint ptr %uniq_ticks to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %uniq_ticks, align 4
  %8 = lshr i16 %7, 8
  %conv15 = trunc i16 %8 to i8
  %arrayidx16 = getelementptr i8, ptr %p, i32 6
  %9 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv15, ptr %arrayidx16, align 1
  %10 = load i16, ptr %uniq_ticks, align 4
  %conv19 = trunc i16 %10 to i8
  %arrayidx20 = getelementptr i8, ptr %p, i32 7
  %11 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv19, ptr %arrayidx20, align 1
  %uniq_time = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 3, i32 4
  %12 = ptrtoint ptr %uniq_time to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %uniq_time, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %13)
  %cmp.not = icmp eq i32 %call, %13
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %uniq_ticks to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %uniq_ticks, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %15 = ptrtoint ptr %uniq_ticks to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %uniq_ticks, align 4
  %inc = add i16 %16, 1
  store i16 %inc, ptr %uniq_ticks, align 4
  %17 = ptrtoint ptr %uniq_time to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call, ptr %uniq_time, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smt_action(ptr noundef %smc, i32 noundef %class, i32 noundef %code, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %class to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %class, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb49
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %1 = zext i32 %code to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %code, label %sw.bb.cleanup_crit_edge [
    i32 0, label %sw.bb1
    i32 1, label %sw.bb2
    i32 2, label %sw.bb.sw.epilog59_crit_edge
    i32 3, label %sw.bb.sw.epilog59_crit_edge84
    i32 4, label %sw.bb9
    i32 5, label %sw.bb18
    i32 6, label %for.cond.preheader
  ]

sw.bb.sw.epilog59_crit_edge84:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog59

sw.bb.sw.epilog59_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog59

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %sw.bb
  %ring_status44 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 11, i32 5
  %arrayidx37 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 39, i32 0
  %2 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx37, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %3)
  %cmp39.not = icmp eq i16 %3, 3
  br i1 %cmp39.not, label %if.end42, label %for.cond.preheader.for.inc_crit_edge

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb1:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %fddiSMTRemoteDisconnectFlag = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 31
  %4 = ptrtoint ptr %fddiSMTRemoteDisconnectFlag to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %fddiSMTRemoteDisconnectFlag, align 2
  tail call void @queue_event(ptr noundef %smc, i32 noundef 1, i32 noundef 1) #6
  br label %sw.epilog59

sw.bb2:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @queue_event(ptr noundef %smc, i32 noundef 1, i32 noundef 2) #6
  %fddiSMTRemoteDisconnectFlag4 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 31
  %5 = ptrtoint ptr %fddiSMTRemoteDisconnectFlag4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %fddiSMTRemoteDisconnectFlag4, align 2
  %ring_status = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 11, i32 5
  %6 = ptrtoint ptr %ring_status to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ring_status, align 4
  %8 = or i16 %7, 256
  store i16 %8, ptr %ring_status, align 4
  %conv6 = zext i16 %8 to i32
  tail call void @ring_status_indication(ptr noundef %smc, i32 noundef %conv6) #6
  br label %sw.epilog59

sw.bb9:                                           ; preds = %sw.bb
  %pc_mode = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 8, i32 0, i32 5
  %9 = ptrtoint ptr %pc_mode to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pc_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp = icmp eq i8 %10, 1
  br i1 %cmp, label %if.then, label %sw.bb9.sw.epilog59_crit_edge

sw.bb9.sw.epilog59_crit_edge:                     ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog59

if.then:                                          ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  %ring_status13 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 11, i32 5
  %11 = ptrtoint ptr %ring_status13 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ring_status13, align 4
  %13 = or i16 %12, 4
  store i16 %13, ptr %ring_status13, align 4
  %conv17 = zext i16 %13 to i32
  tail call void @ring_status_indication(ptr noundef %smc, i32 noundef %conv17) #6
  tail call void @queue_event(ptr noundef %smc, i32 noundef 5, i32 noundef 11) #6
  br label %sw.epilog59

sw.bb18:                                          ; preds = %sw.bb
  %pc_mode21 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 1, i32 5
  %14 = ptrtoint ptr %pc_mode21 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pc_mode21, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp23 = icmp eq i8 %15, 1
  br i1 %cmp23, label %if.then25, label %sw.bb18.sw.epilog59_crit_edge

sw.bb18.sw.epilog59_crit_edge:                    ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog59

if.then25:                                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #8
  %ring_status27 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 11, i32 5
  %16 = ptrtoint ptr %ring_status27 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %ring_status27, align 4
  %18 = or i16 %17, 4
  store i16 %18, ptr %ring_status27, align 4
  %conv31 = zext i16 %18 to i32
  tail call void @ring_status_indication(ptr noundef %smc, i32 noundef %conv31) #6
  tail call void @queue_event(ptr noundef %smc, i32 noundef 6, i32 noundef 11) #6
  br label %sw.epilog59

if.end42:                                         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %ring_status44 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %ring_status44, align 4
  %21 = or i16 %20, 4
  store i16 %21, ptr %ring_status44, align 4
  %conv48 = zext i16 %21 to i32
  tail call void @ring_status_indication(ptr noundef %smc, i32 noundef %conv48) #6
  tail call void @queue_event(ptr noundef %smc, i32 noundef 5, i32 noundef 11) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end42, %for.cond.preheader.for.inc_crit_edge
  %arrayidx37.1 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 39, i32 1
  %22 = ptrtoint ptr %arrayidx37.1 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx37.1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %23)
  %cmp39.not.1 = icmp eq i16 %23, 3
  br i1 %cmp39.not.1, label %if.end42.1, label %for.inc.sw.epilog59_crit_edge

for.inc.sw.epilog59_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog59

if.end42.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %ring_status44 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %ring_status44, align 4
  %26 = or i16 %25, 4
  store i16 %26, ptr %ring_status44, align 4
  %conv48.1 = zext i16 %26 to i32
  tail call void @ring_status_indication(ptr noundef %smc, i32 noundef %conv48.1) #6
  tail call void @queue_event(ptr noundef %smc, i32 noundef 6, i32 noundef 11) #6
  br label %sw.epilog59

sw.bb49:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %code)
  %27 = icmp ult i32 %code, 5
  br i1 %27, label %switch.lookup, label %sw.bb49.cleanup_crit_edge

sw.bb49.cleanup_crit_edge:                        ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.smt_action, i32 0, i32 %code
  %28 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %28)
  %switch.load = load i32, ptr %switch.gep, align 4
  %add57 = add i32 %index, 5
  tail call void @queue_event(ptr noundef %smc, i32 noundef %add57, i32 noundef %switch.load) #6
  br label %sw.epilog59

sw.epilog59:                                      ; preds = %switch.lookup, %if.end42.1, %for.inc.sw.epilog59_crit_edge, %if.then25, %sw.bb18.sw.epilog59_crit_edge, %if.then, %sw.bb9.sw.epilog59_crit_edge, %sw.bb2, %sw.bb1, %sw.bb.sw.epilog59_crit_edge, %sw.bb.sw.epilog59_crit_edge84
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog59, %sw.bb49.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog59 ], [ 1, %sw.bb.cleanup_crit_edge ], [ 1, %sw.bb49.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ring_status_indication(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcm_status_twisted(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcm_rooted_station(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcm_status_state(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

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
attributes #3 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @SMT_Unknown, !1, !"SMT_Unknown", i1 false, i1 false}
!1 = !{!"../drivers/net/fddi/skfp/smt.c", i32 44, i32 31}
!2 = !{ptr @plist_nif, !3, !"plist_nif", i1 false, i1 false}
!3 = !{!"../drivers/net/fddi/skfp/smt.c", i32 142, i32 22}
!4 = distinct !{null, !5, !"ansi_weirdness", i1 false, i1 false}
!5 = !{!"../drivers/net/fddi/skfp/smt.c", i32 1265, i32 22}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"auto-init"}
