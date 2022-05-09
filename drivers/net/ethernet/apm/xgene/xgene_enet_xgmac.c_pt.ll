; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/apm/xgene/xgene_enet_xgmac.c_pt.bc'
source_filename = "../drivers/net/ethernet/apm/xgene/xgene_enet_xgmac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xgene_mac_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xgene_port_ops = type { ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.143, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.143 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.xgene_enet_pdata = type { ptr, ptr, i32, ptr, ptr, i32, [8 x ptr], [8 x ptr], [8 x i16], [8 x i16], ptr, i32, i32, [16 x i32], i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.xgene_enet_cle, ptr, i64, i64, %struct.spinlock, ptr, %struct.spinlock, ptr, ptr, ptr, %struct.delayed_work, i32, i8, i8, i8, i16, [4 x i32], [4 x i32], %struct.spinlock, i8, i8, i8, ptr, i8, i32, i8, i8 }
%struct.xgene_enet_cle = type { ptr, %struct.xgene_cle_ptree, i32, i32, i32, i32, i32 }
%struct.xgene_cle_ptree = type { ptr, ptr, i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.xgene_enet_desc_ring = type { ptr, i16, i16, i16, i16, i16, i16, i16, [16 x i8], i32, [6 x i32], ptr, ptr, i32, i32, ptr, i16, i16, i32, i8, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.napi_struct, %union.anon.144, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%union.anon.144 = type { ptr }

@xgene_xgmac_ops = dso_local constant { %struct.xgene_mac_ops, [36 x i8] } { %struct.xgene_mac_ops { ptr @xgene_xgmac_init, ptr @xgene_xgmac_reset, ptr @xgene_xgmac_tx_enable, ptr @xgene_xgmac_rx_enable, ptr @xgene_xgmac_tx_disable, ptr @xgene_xgmac_rx_disable, ptr @xgene_xgmac_get_drop_cnt, ptr null, ptr @xgene_xgmac_set_mac_addr, ptr @xgene_xgmac_set_frame_size, ptr @xgene_xgmac_set_mss, ptr @xgene_enet_link_state, ptr @xgene_xgmac_enable_tx_pause, ptr @xgene_xgmac_flowctl_rx, ptr @xgene_xgmac_flowctl_tx }, [36 x i8] zeroinitializer }, align 32
@xgene_xgport_ops = dso_local constant { %struct.xgene_port_ops, [16 x i8] } { %struct.xgene_port_ops { ptr @xgene_enet_reset, ptr @xgene_enet_clear, ptr @xgene_enet_xgcle_bypass, ptr @xgene_enet_shutdown }, [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Link is Up - 10Gbps\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Link is Down\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rxlos\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sfp\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"PCS read failed, addr: %04x\0A\00", [35 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"PCS write failed, addr: %04x\0A\00", [34 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to release memory from shutdown\0A\00", [56 x i8] zeroinitializer }, align 32
@xgene_enet_xgcle_bypass._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016+ cle_bypass: fpsel: %d nxtfpsel: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"xgene_enet_xgcle_bypass\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/net/ethernet/apm/xgene/xgene_enet_xgmac.c\00", [46 x i8] zeroinitializer }, align 32
@xgene_enet_xgcle_bypass._entry_ptr = internal global ptr @xgene_enet_xgcle_bypass._entry, section ".printk_index", align 4
@___asan_gen_.10 = private unnamed_addr constant [16 x i8] c"xgene_xgmac_ops\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 510, i32 28 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"xgene_xgport_ops\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 527, i32 29 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 492, i32 22 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 500, i32 22 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 464, i32 34 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 466, i32 35 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 137, i32 27 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 73, i32 27 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 164, i32 20 }
@___asan_gen_.37 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private constant [53 x i8] c"../drivers/net/ethernet/apm/xgene/xgene_enet_xgmac.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 431, i32 2 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @xgene_enet_xgcle_bypass._entry, ptr @xgene_enet_xgcle_bypass._entry_ptr, ptr @xgene_xgmac_ops, ptr @xgene_xgport_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_xgmac_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_xgport_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_enet_xgcle_bypass._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_xgmac_init(ptr noundef %pdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @xgene_enet_wr_mac(ptr noundef %pdata, i32 noundef 0, i32 noundef -2147483648) #4
  tail call void @xgene_enet_wr_mac(ptr noundef %pdata, i32 noundef 0, i32 noundef 0) #4
  %call = tail call i32 @xgene_enet_rd_mac(ptr noundef %pdata, i32 noundef 4) #4
  %or = and i32 %call, -137
  %and = or i32 %or, 128
  tail call void @xgene_enet_wr_mac(ptr noundef %pdata, i32 noundef 4, i32 noundef %and) #4
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 8
  %dev_addr1.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %2 = ptrtoint ptr %dev_addr1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_addr1.i, align 64
  %arrayidx.i = getelementptr i8, ptr %3, i32 3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %5 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx2.i = getelementptr i8, ptr %3, i32 2
  %6 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx2.i, align 1
  %conv3.i = zext i8 %7 to i32
  %shl4.i = shl nuw nsw i32 %conv3.i, 16
  %or.i = or i32 %shl4.i, %shl.i
  %arrayidx5.i = getelementptr i8, ptr %3, i32 1
  %8 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx5.i, align 1
  %conv6.i = zext i8 %9 to i32
  %shl7.i = shl nuw nsw i32 %conv6.i, 8
  %or8.i = or i32 %or.i, %shl7.i
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %3, align 1
  %conv10.i = zext i8 %11 to i32
  %or11.i = or i32 %or8.i, %conv10.i
  %arrayidx12.i = getelementptr i8, ptr %3, i32 5
  %12 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx12.i, align 1
  %conv13.i = zext i8 %13 to i32
  %shl14.i = shl nuw i32 %conv13.i, 24
  %arrayidx15.i = getelementptr i8, ptr %3, i32 4
  %14 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx15.i, align 1
  %conv16.i = zext i8 %15 to i32
  %shl17.i = shl nuw nsw i32 %conv16.i, 16
  %or18.i = or i32 %shl17.i, %shl14.i
  tail call void @xgene_enet_wr_mac(ptr noundef %pdata, i32 noundef 16, i32 noundef %or11.i) #4
  tail call void @xgene_enet_wr_mac(ptr noundef %pdata, i32 noundef 20, i32 noundef %or18.i) #4
  %eth_csr_addr.i = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 17
  %16 = ptrtoint ptr %eth_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %eth_csr_addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %17, i32 160
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %19 = and i32 %18, -117440641
  %20 = or i32 %19, 50331776
  %21 = ptrtoint ptr %eth_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %eth_csr_addr.i, align 8
  %add.ptr.i32 = getelementptr i8, ptr %22, i32 160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 %20) #4, !srcloc !36
  %23 = ptrtoint ptr %eth_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %eth_csr_addr.i, align 8
  %add.ptr.i34 = getelementptr i8, ptr %24, i32 184
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i34) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %26 = and i32 %25, -50331649
  %27 = or i32 %26, 16777216
  %28 = ptrtoint ptr %eth_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %eth_csr_addr.i, align 8
  %add.ptr.i38 = getelementptr i8, ptr %29, i32 184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 %27) #4, !srcloc !36
  %30 = ptrtoint ptr %eth_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %eth_csr_addr.i, align 8
  %add.ptr.i40 = getelementptr i8, ptr %31, i32 1036
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i40) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %33 = or i32 %32, 1048576
  %34 = ptrtoint ptr %eth_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %eth_csr_addr.i, align 8
  %add.ptr.i42 = getelementptr i8, ptr %35, i32 1036
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 %33) #4, !srcloc !36
  %36 = ptrtoint ptr %eth_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %eth_csr_addr.i, align 8
  %add.ptr.i44 = getelementptr i8, ptr %37, i32 1040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 -2113929216) #4, !srcloc !36
  %38 = ptrtoint ptr %eth_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %eth_csr_addr.i, align 8
  %add.ptr.i46 = getelementptr i8, ptr %39, i32 2052
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 0) #4, !srcloc !36
  %40 = ptrtoint ptr %eth_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %eth_csr_addr.i, align 8
  %add.ptr.i48 = getelementptr i8, ptr %41, i32 516
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 16777216) #4, !srcloc !36
  %mcx_mac_csr_addr.i = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 21
  %42 = ptrtoint ptr %mcx_mac_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mcx_mac_csr_addr.i, align 8
  %add.ptr.i49 = getelementptr i8, ptr %43, i32 2184
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %45 = and i32 %44, -65536
  %46 = or i32 %45, 128
  %47 = ptrtoint ptr %mcx_mac_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mcx_mac_csr_addr.i, align 8
  %add.ptr.i51 = getelementptr i8, ptr %48, i32 2184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 %46) #4, !srcloc !36
  %enet_id = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 5
  %49 = ptrtoint ptr %enet_id to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %enet_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp.not = icmp eq i32 %50, 1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %51 = ptrtoint ptr %mcx_mac_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mcx_mac_csr_addr.i, align 8
  %add.ptr.i53 = getelementptr i8, ptr %52, i32 2188
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %54 = and i32 %53, -65536
  %55 = or i32 %54, 256
  %56 = ptrtoint ptr %mcx_mac_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mcx_mac_csr_addr.i, align 8
  %add.ptr.i55 = getelementptr i8, ptr %57, i32 2188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55, i32 %55) #4, !srcloc !36
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %58 = ptrtoint ptr %eth_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %eth_csr_addr.i, align 8
  %add.ptr.i57 = getelementptr i8, ptr %59, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57, i32 -1878802430) #4, !srcloc !36
  %tx_pause = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 54
  %60 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %tx_pause, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool = icmp ne i8 %61, 0
  %call.i = tail call i32 @xgene_enet_rd_mac(ptr noundef %pdata, i32 noundef 4) #4
  %and.i = and i32 %call.i, 2147483647
  %masksel.i = select i1 %tobool, i32 -2147483648, i32 0
  %data.0.i = or i32 %and.i, %masksel.i
  tail call void @xgene_enet_wr_mac(ptr noundef %pdata, i32 noundef 4, i32 noundef %data.0.i) #4
  %mac_ops.i = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 34
  %62 = ptrtoint ptr %mac_ops.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mac_ops.i, align 4
  %enable_tx_pause.i = getelementptr inbounds %struct.xgene_mac_ops, ptr %63, i32 0, i32 12
  %64 = ptrtoint ptr %enable_tx_pause.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %enable_tx_pause.i, align 4
  tail call void %65(ptr noundef %pdata, i1 noundef zeroext %tobool) #4
  %rx_pause = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 55
  %66 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %rx_pause, align 1, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool7.not = icmp eq i8 %67, 0
  %call.i58 = tail call i32 @xgene_enet_rd_mac(ptr noundef %pdata, i32 noundef 4) #4
  %and.i59 = and i32 %call.i58, -536870913
  %masksel.i60 = select i1 %tobool7.not, i32 0, i32 536870912
  %data.0.i61 = or i32 %and.i59, %masksel.i60
  tail call void @xgene_enet_wr_mac(ptr noundef %pdata, i32 noundef 4, i32 noundef %data.0.i61) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_xgmac_reset(ptr noundef %pdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @xgene_enet_wr_mac(ptr noundef %pdata, i32 noundef 0, i32 noundef -2147483648) #4
  tail call void @xgene_enet_wr_mac(ptr noundef %pdata, i32 noundef 0, i32 noundef 0) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_xgmac_tx_enable(ptr noundef %pdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xgene_enet_rd_mac(ptr noundef %pdata, i32 noundef 4) #4
  %or = or i32 %call, 1073741824
  tail call void @xgene_enet_wr_mac(ptr noundef %pdata, i32 noundef 4, i32 noundef %or) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_xgmac_rx_enable(ptr noundef %pdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xgene_enet_rd_mac(ptr noundef %pdata, i32 noundef 4) #4
  %or = or i32 %call, 268435456
  tail call void @xgene_enet_wr_mac(ptr noundef %pdata, i32 noundef 4, i32 noundef %or) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_xgmac_tx_disable(ptr noundef %pdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xgene_enet_rd_mac(ptr noundef %pdata, i32 noundef 4) #4
  %and = and i32 %call, -1073741825
  tail call void @xgene_enet_wr_mac(ptr noundef %pdata, i32 noundef 4, i32 noundef %and) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_xgmac_rx_disable(ptr noundef %pdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xgene_enet_rd_mac(ptr noundef %pdata, i32 noundef 4) #4
  %and = and i32 %call, -268435457
  tail call void @xgene_enet_wr_mac(ptr noundef %pdata, i32 noundef 4, i32 noundef %and) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_xgmac_get_drop_cnt(ptr nocapture noundef readonly %pdata, ptr nocapture noundef writeonly %rx, ptr nocapture noundef writeonly %tx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mcx_mac_csr_addr.i = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 21
  %0 = ptrtoint ptr %mcx_mac_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcx_mac_csr_addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 2340
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !33
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %shr4.i = lshr i32 %3, 16
  %4 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shr4.i, ptr %rx, align 4
  %and3.i = and i32 %3, 65535
  %5 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and3.i, ptr %tx, align 4
  %6 = ptrtoint ptr %mcx_mac_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mcx_mac_csr_addr.i, align 8
  %add.ptr.i4 = getelementptr i8, ptr %7, i32 2160
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_xgmac_set_mac_addr(ptr noundef %pdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 8
  %dev_addr1 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %2 = ptrtoint ptr %dev_addr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_addr1, align 64
  %arrayidx = getelementptr i8, ptr %3, i32 3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %shl = shl nuw i32 %conv, 24
  %arrayidx2 = getelementptr i8, ptr %3, i32 2
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %7 to i32
  %shl4 = shl nuw nsw i32 %conv3, 16
  %or = or i32 %shl4, %shl
  %arrayidx5 = getelementptr i8, ptr %3, i32 1
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %9 to i32
  %shl7 = shl nuw nsw i32 %conv6, 8
  %or8 = or i32 %or, %shl7
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %3, align 1
  %conv10 = zext i8 %11 to i32
  %or11 = or i32 %or8, %conv10
  %arrayidx12 = getelementptr i8, ptr %3, i32 5
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %13 to i32
  %shl14 = shl nuw i32 %conv13, 24
  %arrayidx15 = getelementptr i8, ptr %3, i32 4
  %14 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %15 to i32
  %shl17 = shl nuw nsw i32 %conv16, 16
  %or18 = or i32 %shl17, %shl14
  tail call void @xgene_enet_wr_mac(ptr noundef %pdata, i32 noundef 16, i32 noundef %or11) #4
  tail call void @xgene_enet_wr_mac(ptr noundef %pdata, i32 noundef 20, i32 noundef %or18) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_xgmac_set_frame_size(ptr noundef %pdata, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add = shl i32 %size, 14
  %0 = add i32 %add, 32768
  %shl = and i32 %0, -65536
  %or = or i32 %shl, %size
  tail call void @xgene_enet_wr_mac(ptr noundef %pdata, i32 noundef 32, i32 noundef %or) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_xgmac_set_mss(ptr nocapture noundef readonly %pdata, i16 noundef zeroext %mss, i8 noundef zeroext %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %index)
  %cmp = icmp ult i8 %index, 2
  %add = select i1 %cmp, i32 676, i32 680
  %eth_csr_addr.i = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 17
  %0 = ptrtoint ptr %eth_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eth_csr_addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !33
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %4 = and i8 %index, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %5 = and i32 %3, 1073676288
  %6 = and i16 %mss, 16383
  %and.i21 = zext i16 %6 to i32
  %or = or i32 %5, %and.i21
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %7 = and i16 %mss, 16383
  %and.i22 = zext i16 %7 to i32
  %shl2.i23 = shl nuw nsw i32 %and.i22, 16
  %8 = and i32 %3, 16383
  %or13 = or i32 %8, %shl2.i23
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %or, %if.then ], [ %or13, %if.else ]
  %9 = ptrtoint ptr %eth_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %eth_csr_addr.i, align 8
  %add.ptr.i26 = getelementptr i8, ptr %10, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %11 = tail call i32 @llvm.bswap.i32(i32 %storemerge) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 %11) #4, !srcloc !36
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_enet_link_state(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -424
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %eth_csr_addr.i.i = getelementptr i8, ptr %work, i32 -224
  %2 = ptrtoint ptr %eth_csr_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eth_csr_addr.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 552
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %sfp_gpio_en = getelementptr i8, ptr %work, i32 196
  %5 = ptrtoint ptr %sfp_gpio_en to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sfp_gpio_en, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool12.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  br i1 %tobool12.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true4

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true4:                                   ; preds = %land.lhs.true
  %sfp_rdy = getelementptr i8, ptr %work, i32 192
  %7 = ptrtoint ptr %sfp_rdy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sfp_rdy, align 8
  %cmp.i = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %lor.lhs.false, label %land.lhs.true4.land.lhs.true8_crit_edge

land.lhs.true4.land.lhs.true8_crit_edge:          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true8

lor.lhs.false:                                    ; preds = %land.lhs.true4
  %pdev.i = getelementptr i8, ptr %work, i32 -408
  %9 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev.i, align 8
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  %call.i = tail call ptr @gpiod_get(ptr noundef %dev1.i, ptr noundef nonnull @.str.2, i32 noundef 1) #4
  %11 = ptrtoint ptr %sfp_rdy to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %sfp_rdy, align 8
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %lor.lhs.false.xgene_enet_gpio_lookup.exit_crit_edge

lor.lhs.false.xgene_enet_gpio_lookup.exit_crit_edge: ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %xgene_enet_gpio_lookup.exit

if.then.i:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i = tail call ptr @gpiod_get(ptr noundef %dev1.i, ptr noundef nonnull @.str.3, i32 noundef 1) #4
  %12 = ptrtoint ptr %sfp_rdy to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call4.i, ptr %sfp_rdy, align 8
  br label %xgene_enet_gpio_lookup.exit

xgene_enet_gpio_lookup.exit:                      ; preds = %if.then.i, %lor.lhs.false.xgene_enet_gpio_lookup.exit_crit_edge
  %13 = phi ptr [ %call.i, %lor.lhs.false.xgene_enet_gpio_lookup.exit_crit_edge ], [ %call4.i, %if.then.i ]
  %cmp.i15.i.not = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i15.i.not, label %xgene_enet_gpio_lookup.exit.if.then13_crit_edge, label %xgene_enet_gpio_lookup.exit.land.lhs.true8_crit_edge

xgene_enet_gpio_lookup.exit.land.lhs.true8_crit_edge: ; preds = %xgene_enet_gpio_lookup.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true8

xgene_enet_gpio_lookup.exit.if.then13_crit_edge:  ; preds = %xgene_enet_gpio_lookup.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then13

land.lhs.true8:                                   ; preds = %xgene_enet_gpio_lookup.exit.land.lhs.true8_crit_edge, %land.lhs.true4.land.lhs.true8_crit_edge
  %14 = ptrtoint ptr %sfp_rdy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sfp_rdy, align 8
  %call10 = tail call i32 @gpiod_get_value(ptr noundef %15) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true8.if.else_crit_edge, label %land.lhs.true8.if.then13_crit_edge

land.lhs.true8.if.then13_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then13

land.lhs.true8.if.else_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.end:                                           ; preds = %entry
  br i1 %tobool12.not, label %if.end.if.else_crit_edge, label %if.end.if.then13_crit_edge

if.end.if.then13_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then13

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.then13:                                        ; preds = %if.end.if.then13_crit_edge, %land.lhs.true8.if.then13_crit_edge, %xgene_enet_gpio_lookup.exit.if.then13_crit_edge
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %state.i, align 4
  %18 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %if.then13.if.end20_crit_edge, label %if.then15

if.then13.if.end20_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.then15:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @netif_carrier_on(ptr noundef %1) #4
  %call.i39 = tail call i32 @xgene_enet_rd_mac(ptr noundef %add.ptr, i32 noundef 4) #4
  %or.i = or i32 %call.i39, 268435456
  tail call void @xgene_enet_wr_mac(ptr noundef %add.ptr, i32 noundef 4, i32 noundef %or.i) #4
  %call.i40 = tail call i32 @xgene_enet_rd_mac(ptr noundef %add.ptr, i32 noundef 4) #4
  %or.i41 = or i32 %call.i40, 1073741824
  tail call void @xgene_enet_wr_mac(ptr noundef %add.ptr, i32 noundef 4, i32 noundef %or.i41) #4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str) #7
  br label %if.end20

if.else:                                          ; preds = %if.end.if.else_crit_edge, %land.lhs.true8.if.else_crit_edge, %land.lhs.true.if.else_crit_edge
  %state.i42 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %state.i42 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %state.i42, align 4
  %21 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i43 = icmp eq i32 %21, 0
  br i1 %tobool.not.i43, label %if.then18, label %if.else.if.end19_crit_edge

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %call.i44 = tail call i32 @xgene_enet_rd_mac(ptr noundef %add.ptr, i32 noundef 4) #4
  %and.i = and i32 %call.i44, -268435457
  tail call void @xgene_enet_wr_mac(ptr noundef %add.ptr, i32 noundef 4, i32 noundef %and.i) #4
  %call.i45 = tail call i32 @xgene_enet_rd_mac(ptr noundef %add.ptr, i32 noundef 4) #4
  %and.i46 = and i32 %call.i45, -1073741825
  tail call void @xgene_enet_wr_mac(ptr noundef %add.ptr, i32 noundef 4, i32 noundef %and.i46) #4
  tail call void @netif_carrier_off(ptr noundef %1) #4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.1) #7
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.else.if.end19_crit_edge
  %pcs_addr.i.i = getelementptr i8, ptr %work, i32 -196
  %22 = ptrtoint ptr %pcs_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pcs_addr.i.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %23, i32 12
  %add.ptr4.i.i = getelementptr i8, ptr %23, i32 4
  %add.ptr6.i.i = getelementptr i8, ptr %23, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 0) #4, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 64) #4, !srcloc !36
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not1.i.i.i = icmp eq i32 %24, 0
  br i1 %tobool.not1.i.i.i, label %if.end19.while.body.i.i.i_crit_edge, label %if.end19.if.end.i_crit_edge

if.end19.if.end.i_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.end19.while.body.i.i.i_crit_edge:              ; preds = %if.end19
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %if.end19.while.body.i.i.i_crit_edge
  %wait.03.i.i.i = phi i8 [ %dec.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ 10, %if.end19.while.body.i.i.i_crit_edge ]
  %dec.i.i.i = add nsw i8 %wait.03.i.i.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748) #4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.i.i = icmp eq i32 %26, 0
  %tobool.not.not.i.i.i = xor i1 %tobool.not.i.i.i, true
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec.i.i.i)
  %tobool1.not.i.i.i = icmp eq i8 %dec.i.i.i, 0
  %or.cond.i.i.i = select i1 %tobool.not.not.i.i.i, i1 true, i1 %tobool1.not.i.i.i
  br i1 %or.cond.i.i.i, label %while.end.i.i.i, label %while.body.i.i.i.while.body.i.i.i_crit_edge

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i.i.i

while.end.i.i.i:                                  ; preds = %while.body.i.i.i
  br i1 %tobool.not.i.i.i, label %xgene_enet_rd_pcs.exit.i, label %while.end.i.i.i.if.end.i_crit_edge

while.end.i.i.i.if.end.i_crit_edge:               ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

xgene_enet_rd_pcs.exit.i:                         ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %28, ptr noundef nonnull @.str.4, i32 noundef 0) #7
  br label %if.end20

if.end.i:                                         ; preds = %while.end.i.i.i.if.end.i_crit_edge, %if.end19.if.end.i_crit_edge
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #4, !srcloc !33
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 0) #4, !srcloc !36
  %or.i47 = or i32 %30, 32768
  tail call fastcc void @xgene_enet_wr_pcs(ptr noundef %add.ptr, i32 noundef %or.i47) #4
  %and.i48 = and i32 %30, -32769
  tail call fastcc void @xgene_enet_wr_pcs(ptr noundef %add.ptr, i32 noundef %and.i48) #4
  br label %if.end20

if.end20:                                         ; preds = %if.end.i, %xgene_enet_rd_pcs.exit.i, %if.then15, %if.then13.if.end20_crit_edge
  %poll_interval.0 = phi i32 [ 1000, %if.then15 ], [ 1000, %if.then13.if.end20_crit_edge ], [ 200, %xgene_enet_rd_pcs.exit.i ], [ 200, %if.end.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %31 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %31, ptr noundef %work, i32 noundef %poll_interval.0) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_xgmac_enable_tx_pause(ptr nocapture noundef readonly %pdata, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mcx_mac_csr_addr.i = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 21
  %0 = ptrtoint ptr %mcx_mac_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcx_mac_csr_addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 2176
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %3 = and i32 %2, -81
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %masksel = select i1 %enable, i32 1342177280, i32 0
  %storemerge = or i32 %4, %masksel
  %5 = ptrtoint ptr %mcx_mac_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mcx_mac_csr_addr.i, align 8
  %add.ptr.i3 = getelementptr i8, ptr %6, i32 2176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %7 = tail call i32 @llvm.bswap.i32(i32 %storemerge) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3, i32 %7) #4, !srcloc !36
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_xgmac_flowctl_rx(ptr noundef %pdata, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xgene_enet_rd_mac(ptr noundef %pdata, i32 noundef 4) #4
  %and = and i32 %call, -536870913
  %masksel = select i1 %enable, i32 536870912, i32 0
  %data.0 = or i32 %and, %masksel
  tail call void @xgene_enet_wr_mac(ptr noundef %pdata, i32 noundef 4, i32 noundef %data.0) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_xgmac_flowctl_tx(ptr noundef %pdata, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xgene_enet_rd_mac(ptr noundef %pdata, i32 noundef 4) #4
  %and = and i32 %call, 2147483647
  %masksel = select i1 %enable, i32 -2147483648, i32 0
  %data.0 = or i32 %and, %masksel
  tail call void @xgene_enet_wr_mac(ptr noundef %pdata, i32 noundef 4, i32 noundef %data.0) #4
  %mac_ops = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 34
  %0 = ptrtoint ptr %mac_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_ops, align 4
  %enable_tx_pause = getelementptr inbounds %struct.xgene_mac_ops, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %enable_tx_pause to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enable_tx_pause, align 4
  tail call void %3(ptr noundef %pdata, i1 noundef zeroext %enable) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_enet_reset(ptr noundef %pdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 4
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %call = tail call zeroext i1 @xgene_ring_mgr_init(ptr noundef %pdata) #4
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then2

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then2:                                         ; preds = %if.end
  %clk = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 3
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then2.clk_prepare_enable.exit_crit_edge

if.then2.clk_prepare_enable.exit_crit_edge:       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.then2
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %5) #4
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.then2.clk_prepare_enable.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 1073740) #4
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %8) #4
  tail call void @clk_unprepare(ptr noundef %8) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 1073740) #4
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 4
  %call.i15 = tail call i32 @clk_prepare(ptr noundef %11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15)
  %tobool.not.i16 = icmp eq i32 %call.i15, 0
  br i1 %tobool.not.i16, label %if.end.i19, label %clk_prepare_enable.exit.clk_prepare_enable.exit21_crit_edge

clk_prepare_enable.exit.clk_prepare_enable.exit21_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit21

if.end.i19:                                       ; preds = %clk_prepare_enable.exit
  %call1.i17 = tail call i32 @clk_enable(ptr noundef %11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17)
  %tobool2.not.i18 = icmp eq i32 %call1.i17, 0
  br i1 %tobool2.not.i18, label %if.end.i19.clk_prepare_enable.exit21_crit_edge, label %if.then3.i20

if.end.i19.clk_prepare_enable.exit21_crit_edge:   ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit21

if.then3.i20:                                     ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %11) #4
  br label %clk_prepare_enable.exit21

clk_prepare_enable.exit21:                        ; preds = %if.then3.i20, %if.end.i19.clk_prepare_enable.exit21_crit_edge, %clk_prepare_enable.exit.clk_prepare_enable.exit21_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 1073740) #4
  br label %if.end7

if.end7:                                          ; preds = %clk_prepare_enable.exit21, %if.end.if.end7_crit_edge
  %13 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdata, align 8
  %eth_diag_csr_addr.i.i = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 19
  %15 = ptrtoint ptr %eth_diag_csr_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %eth_diag_csr_addr.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #4, !srcloc !36
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end7
  %wait.0.i = phi i8 [ 10, %if.end7 ], [ %dec.i, %do.body.i.do.body.i_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 110, i32 noundef 2) #4
  %17 = ptrtoint ptr %eth_diag_csr_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %eth_diag_csr_addr.i.i, align 8
  %add.ptr.i2.i = getelementptr i8, ptr %18, i32 116
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp.not.i = icmp eq i32 %19, -1
  %dec.i = add nsw i8 %wait.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %wait.0.i)
  %tobool.not.i22 = icmp eq i8 %wait.0.i, 0
  %or.cond.i = select i1 %cmp.not.i, i1 true, i1 %tobool.not.i22
  br i1 %or.cond.i, label %do.end.i, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  br i1 %cmp.not.i, label %do.end.i.xgene_enet_ecc_init.exit_crit_edge, label %if.then.i

do.end.i.xgene_enet_ecc_init.exit_crit_edge:      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %xgene_enet_ecc_init.exit

if.then.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %14, ptr noundef nonnull @.str.6) #7
  br label %xgene_enet_ecc_init.exit

xgene_enet_ecc_init.exit:                         ; preds = %if.then.i, %do.end.i.xgene_enet_ecc_init.exit_crit_edge
  %eth_ring_if_addr.i.i = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 18
  %20 = ptrtoint ptr %eth_ring_if_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %eth_ring_if_addr.i.i, align 4
  %add.ptr.i.i23 = getelementptr i8, ptr %21, i32 224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i23, i32 0) #4, !srcloc !36
  %22 = ptrtoint ptr %eth_ring_if_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %eth_ring_if_addr.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %23, i32 220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 0) #4, !srcloc !36
  %24 = ptrtoint ptr %eth_ring_if_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %eth_ring_if_addr.i.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %25, i32 244
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 0) #4, !srcloc !36
  %26 = ptrtoint ptr %eth_ring_if_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %eth_ring_if_addr.i.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %27, i32 240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 0) #4, !srcloc !36
  br label %cleanup

cleanup:                                          ; preds = %xgene_enet_ecc_init.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %xgene_enet_ecc_init.exit ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_enet_clear(ptr nocapture noundef readonly %pdata, ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %id, align 4
  %2 = and i16 %1, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %cmp.i.not = icmp eq i16 %2, 0
  %3 = and i16 %1, 63
  %narrow = add nuw nsw i16 %3, 224
  %addr.0 = select i1 %cmp.i.not, i32 28, i32 20
  %conv.pn.in.v = select i1 %cmp.i.not, i16 %3, i16 %narrow
  %4 = and i16 %conv.pn.in.v, 255
  %conv.pn = zext i16 %4 to i32
  %data.0 = shl nuw i32 1, %conv.pn
  %eth_ring_if_addr.i = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 18
  %5 = ptrtoint ptr %eth_ring_if_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %eth_ring_if_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %addr.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %7 = tail call i32 @llvm.bswap.i32(i32 %data.0) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #4, !srcloc !36
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_enet_xgcle_bypass(ptr nocapture noundef readonly %pdata, i32 noundef %dst_ring_num, i16 noundef zeroext %bufpool_id, i16 noundef zeroext %nxtbufpool_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %eth_csr_addr.i = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 17
  %0 = ptrtoint ptr %eth_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eth_csr_addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 352
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %3 = or i32 %2, 896
  %4 = ptrtoint ptr %eth_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eth_csr_addr.i, align 8
  %add.ptr.i10 = getelementptr i8, ptr %5, i32 352
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 %3) #4, !srcloc !36
  %6 = and i16 %bufpool_id, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp.i.not.i = icmp eq i16 %6, 0
  %7 = and i16 %bufpool_id, 63
  %narrow = add nuw nsw i16 %7, 224
  %8 = and i16 %narrow, 255
  %narrow34 = select i1 %cmp.i.not.i, i16 0, i16 %8
  %conv = zext i16 %narrow34 to i32
  %9 = and i16 %nxtbufpool_id, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp.i.not.i11 = icmp eq i16 %9, 0
  %10 = and i16 %nxtbufpool_id, 63
  %narrow35 = add nuw nsw i16 %10, 224
  %11 = and i16 %narrow35, 255
  %narrow36 = select i1 %cmp.i.not.i11, i16 0, i16 %11
  %conv2 = zext i16 %narrow36 to i32
  %12 = ptrtoint ptr %eth_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %eth_csr_addr.i, align 8
  %add.ptr.i16 = getelementptr i8, ptr %13, i32 356
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %and7.i = and i32 %dst_ring_num, 4095
  %shl6.i = shl nuw nsw i32 %conv, 16
  %and7.i20 = and i32 %shl6.i, 983040
  %15 = and i32 %14, 15728895
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %shl6.i23 = shl nuw nsw i32 %conv2, 20
  %and7.i24 = and i32 %shl6.i23, 15728640
  %and5.i19.masked = or i32 %and7.i20, %and7.i
  %and5.i22 = or i32 %and5.i19.masked, %and7.i24
  %or.i25 = or i32 %and5.i22, %16
  %17 = ptrtoint ptr %eth_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %eth_csr_addr.i, align 8
  %add.ptr.i27 = getelementptr i8, ptr %18, i32 356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %19 = tail call i32 @llvm.bswap.i32(i32 %or.i25) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 %19) #4, !srcloc !36
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv, i32 noundef %conv2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_enet_shutdown(ptr nocapture noundef readonly %pdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 4
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then:                                          ; preds = %entry
  %clk = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 3
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then.if.end4_crit_edge, label %if.then2

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_disable(ptr noundef %5) #4
  tail call void @clk_unprepare(ptr noundef %5) #4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xgene_enet_rd_mac(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xgene_enet_wr_mac(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgene_enet_wr_pcs(ptr nocapture noundef readonly %pdata, i32 noundef %wr_data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pcs_addr = getelementptr inbounds %struct.xgene_enet_pdata, ptr %pdata, i32 0, i32 24
  %0 = ptrtoint ptr %pcs_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcs_addr, align 4
  %add.ptr2 = getelementptr i8, ptr %1, i32 8
  %add.ptr4 = getelementptr i8, ptr %1, i32 4
  %add.ptr6 = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 0) #4, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %2 = tail call i32 @llvm.bswap.i32(i32 %wr_data) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %2) #4, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 128) #4, !srcloc !36
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not1.i = icmp eq i32 %3, 0
  br i1 %tobool.not1.i, label %entry.while.body.i_crit_edge, label %entry.xgene_enet_wr_indirect.exit.thread_crit_edge

entry.xgene_enet_wr_indirect.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %xgene_enet_wr_indirect.exit.thread

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %wait.03.i = phi i8 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ 10, %entry.while.body.i_crit_edge ]
  %dec.i = add nsw i8 %wait.03.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  %tobool.not.not.i = xor i1 %tobool.not.i, true
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec.i)
  %tobool1.not.i = icmp eq i8 %dec.i, 0
  %or.cond.i = select i1 %tobool.not.not.i, i1 true, i1 %tobool1.not.i
  br i1 %or.cond.i, label %while.end.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i
  br i1 %tobool.not.i, label %if.then, label %while.end.i.xgene_enet_wr_indirect.exit.thread_crit_edge

while.end.i.xgene_enet_wr_indirect.exit.thread_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %xgene_enet_wr_indirect.exit.thread

xgene_enet_wr_indirect.exit.thread:               ; preds = %while.end.i.xgene_enet_wr_indirect.exit.thread_crit_edge, %entry.xgene_enet_wr_indirect.exit.thread_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 0) #4, !srcloc !36
  br label %if.end

if.then:                                          ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %7, ptr noundef nonnull @.str.5, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %xgene_enet_wr_indirect.exit.thread
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xgene_ring_mgr_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @xgene_xgmac_ops, !1, !"xgene_xgmac_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_xgmac.c", i32 510, i32 28}
!2 = !{ptr @xgene_xgport_ops, !3, !"xgene_xgport_ops", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_xgmac.c", i32 527, i32 29}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_xgmac.c", i32 492, i32 22}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_xgmac.c", i32 500, i32 22}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_xgmac.c", i32 464, i32 34}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_xgmac.c", i32 466, i32 35}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_xgmac.c", i32 137, i32 27}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_xgmac.c", i32 73, i32 27}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_xgmac.c", i32 164, i32 20}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_xgmac.c", i32 431, i32 2}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @xgene_enet_xgcle_bypass._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @xgene_enet_xgcle_bypass._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 4855824}
!34 = !{i64 2152396173}
!35 = !{i64 2152397528}
!36 = !{i64 4855406}
!37 = !{i8 0, i8 2}
