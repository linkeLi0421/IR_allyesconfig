; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/sfc/falcon/nic.c_pt.bc'
source_filename = "../drivers/net/ethernet/sfc/falcon/nic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ef4_nic = type { [16 x i8], %struct.list_head, ptr, %struct.list_head, ptr, i32, ptr, i32, i8, ptr, [16 x i8], %struct.work_struct, i32, ptr, i32, i32, i32, i8, i32, i32, i32, i32, i32, [32 x ptr], [32 x %struct.ef4_msi_context], [2 x ptr], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [40 x i8], [128 x i32], i8, i32, i32, i8, %struct.ef4_buffer, i32, i32, %struct.delayed_work, %struct.list_head, ptr, %struct.mutex, %struct.work_struct, i8, i8, i8, ptr, i64, %struct.ef4_buffer, i64, i64, i8, i32, ptr, ptr, %struct.mdio_if_info, i32, i32, %struct.ef4_link_state, i32, i8, %union.ef4_multicast_hash, i8, i32, %struct.atomic_t, i32, i64, ptr, %struct.rw_semaphore, %struct.spinlock, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, ptr, [32 x i8], %struct.delayed_work, %struct.spinlock, i32, %struct.spinlock, %struct.atomic_t, [60 x i8] }
%struct.ef4_msi_context = type { ptr, i32, [22 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ef4_buffer = type { ptr, i32, i32 }
%struct.mdio_if_info = type { i32, i32, i32, ptr, ptr, ptr }
%struct.ef4_link_state = type { i8, i8, i8, i32 }
%union.ef4_multicast_hash = type { [2 x %union.ef4_oword] }
%union.ef4_oword = type { [2 x i64] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.127, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.127 = type { ptr }
%struct.ef4_channel = type { ptr, i32, ptr, i8, i8, i32, i32, ptr, %struct.napi_struct, i32, %struct.ef4_special_buffer, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ef4_rx_queue, [120 x i8], [4 x %struct.ef4_tx_queue] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.ef4_special_buffer = type { %struct.ef4_buffer, i32, i32 }
%struct.ef4_rx_queue = type { ptr, i32, ptr, %struct.ef4_special_buffer, i32, i8, i8, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32 }
%struct.ef4_tx_queue = type { ptr, i32, ptr, ptr, ptr, ptr, %struct.ef4_special_buffer, i32, i8, i32, ptr, [68 x i8], i32, i32, i32, i32, i32, [108 x i8], i32, i32, i32, i32, i8, i32, i32, [100 x i8], i32, %struct.atomic_t, [120 x i8] }
%union.ef4_qword = type { [1 x i64] }
%union.ef4_dword = type { [1 x i32] }
%struct.ef4_nic_type = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8, i8, i32, i32, i64, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.128, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.146, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.128 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.146 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ef4_nic_reg = type { i32 }
%struct.ef4_nic_reg_table = type { i32, i32 }
%struct.ef4_hw_stat_desc = type { ptr, i16, i16 }

@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to hook legacy IRQ %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to hook IRQ %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/ethernet/sfc/falcon/nic.c\00", [58 x i8] zeroinitializer }, align 32
@ef4_nic_regs = internal constant { [83 x { i8, i8, i8, i8 }], [84 x i8] } { [83 x { i8, i8, i8, i8 }] [{ i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 44 }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 16, i8 44 }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 32, i8 76 }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 48, i8 44 }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 64, i8 76 }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 -64, i8 44 }, { i8, i8, i8, i8 } { i8 0, i8 1, i8 0, i8 108 }, { i8, i8, i8, i8 } { i8 0, i8 1, i8 0, i8 40 }, { i8, i8, i8, i8 } { i8 0, i8 1, i8 16, i8 40 }, { i8, i8, i8, i8 } { i8 0, i8 1, i8 32, i8 40 }, { i8, i8, i8, i8 } { i8 0, i8 1, i8 48, i8 40 }, { i8, i8, i8, i8 } { i8 0, i8 1, i8 64, i8 40 }, { i8, i8, i8, i8 } { i8 0, i8 2, i8 0, i8 40 }, { i8, i8, i8, i8 } { i8 0, i8 2, i8 16, i8 40 }, { i8, i8, i8, i8 } { i8 0, i8 2, i8 32, i8 40 }, { i8, i8, i8, i8 } { i8 0, i8 2, i8 80, i8 76 }, { i8, i8, i8, i8 } { i8 0, i8 2, i8 96, i8 44 }, { i8, i8, i8, i8 } { i8 0, i8 2, i8 112, i8 44 }, { i8, i8, i8, i8 } { i8 0, i8 3, i8 0, i8 44 }, { i8, i8, i8, i8 } { i8 0, i8 3, i8 16, i8 44 }, { i8, i8, i8, i8 } { i8 0, i8 3, i8 32, i8 40 }, { i8, i8, i8, i8 } { i8 0, i8 3, i8 48, i8 40 }, { i8, i8, i8, i8 } { i8 0, i8 3, i8 64, i8 40 }, { i8, i8, i8, i8 } { i8 0, i8 4, i8 80, i8 44 }, { i8, i8, i8, i8 } { i8 0, i8 4, i8 96, i8 44 }, { i8, i8, i8, i8 } { i8 0, i8 4, i8 112, i8 44 }, { i8, i8, i8, i8 } { i8 0, i8 6, i8 0, i8 44 }, { i8, i8, i8, i8 } { i8 0, i8 6, i8 16, i8 44 }, { i8, i8, i8, i8 } { i8 0, i8 6, i8 32, i8 44 }, { i8, i8, i8, i8 } { i8 0, i8 6, i8 48, i8 44 }, { i8, i8, i8, i8 } { i8 0, i8 6, i8 96, i8 44 }, { i8, i8, i8, i8 } { i8 0, i8 6, i8 112, i8 44 }, { i8, i8, i8, i8 } { i8 0, i8 8, i8 0, i8 44 }, { i8, i8, i8, i8 } { i8 0, i8 8, i8 16, i8 76 }, { i8, i8, i8, i8 } { i8 0, i8 8, i8 64, i8 44 }, { i8, i8, i8, i8 } { i8 0, i8 8, i8 80, i8 44 }, { i8, i8, i8, i8 } { i8 0, i8 8, i8 96, i8 76 }, { i8, i8, i8, i8 } { i8 0, i8 8, i8 -112, i8 36 }, { i8, i8, i8, i8 } { i8 0, i8 8, i8 -48, i8 108 }, { i8, i8, i8, i8 } { i8 0, i8 8, i8 -32, i8 108 }, { i8, i8, i8, i8 } { i8 0, i8 8, i8 -16, i8 108 }, { i8, i8, i8, i8 } { i8 0, i8 10, i8 32, i8 44 }, { i8, i8, i8, i8 } { i8 0, i8 10, i8 48, i8 36 }, { i8, i8, i8, i8 } { i8 0, i8 10, i8 80, i8 44 }, { i8, i8, i8, i8 } { i8 0, i8 10, i8 -128, i8 44 }, { i8, i8, i8, i8 } { i8 0, i8 10, i8 -112, i8 76 }, { i8, i8, i8, i8 } { i8 0, i8 10, i8 -32, i8 72 }, { i8, i8, i8, i8 } { i8 0, i8 10, i8 -16, i8 76 }, { i8, i8, i8, i8 } { i8 0, i8 12, i8 0, i8 40 }, { i8, i8, i8, i8 } { i8 0, i8 12, i8 16, i8 40 }, { i8, i8, i8, i8 } { i8 0, i8 12, i8 32, i8 40 }, { i8, i8, i8, i8 } { i8 0, i8 12, i8 48, i8 40 }, { i8, i8, i8, i8 } { i8 0, i8 12, i8 64, i8 40 }, { i8, i8, i8, i8 } { i8 0, i8 12, i8 96, i8 40 }, { i8, i8, i8, i8 } { i8 0, i8 12, i8 -128, i8 40 }, { i8, i8, i8, i8 } { i8 0, i8 12, i8 -112, i8 72 }, { i8, i8, i8, i8 } { i8 0, i8 12, i8 -96, i8 40 }, { i8, i8, i8, i8 } { i8 0, i8 12, i8 -80, i8 40 }, { i8, i8, i8, i8 } { i8 0, i8 14, i8 0, i8 40 }, { i8, i8, i8, i8 } { i8 0, i8 14, i8 16, i8 40 }, { i8, i8, i8, i8 } { i8 0, i8 14, i8 64, i8 40 }, { i8, i8, i8, i8 } { i8 0, i8 15, i8 0, i8 40 }, { i8, i8, i8, i8 } { i8 0, i8 15, i8 16, i8 40 }, { i8, i8, i8, i8 } { i8 0, i8 15, i8 32, i8 40 }, { i8, i8, i8, i8 } { i8 0, i8 15, i8 48, i8 40 }, { i8, i8, i8, i8 } { i8 0, i8 15, i8 64, i8 40 }, { i8, i8, i8, i8 } { i8 0, i8 15, i8 80, i8 40 }, { i8, i8, i8, i8 } { i8 0, i8 15, i8 96, i8 40 }, { i8, i8, i8, i8 } { i8 0, i8 15, i8 112, i8 40 }, { i8, i8, i8, i8 } { i8 0, i8 17, i8 0, i8 72 }, { i8, i8, i8, i8 } { i8 0, i8 18, i8 0, i8 40 }, { i8, i8, i8, i8 } { i8 0, i8 18, i8 16, i8 40 }, { i8, i8, i8, i8 } { i8 0, i8 18, i8 32, i8 40 }, { i8, i8, i8, i8 } { i8 0, i8 18, i8 48, i8 40 }, { i8, i8, i8, i8 } { i8 0, i8 18, i8 64, i8 40 }, { i8, i8, i8, i8 } { i8 0, i8 18, i8 80, i8 40 }, { i8, i8, i8, i8 } { i8 0, i8 18, i8 112, i8 40 }, { i8, i8, i8, i8 } { i8 0, i8 18, i8 -112, i8 40 }, { i8, i8, i8, i8 } { i8 0, i8 18, i8 -48, i8 40 }, { i8, i8, i8, i8 } { i8 0, i8 18, i8 -32, i8 40 }, { i8, i8, i8, i8 } { i8 0, i8 19, i8 0, i8 40 }, { i8, i8, i8, i8 } { i8 0, i8 19, i8 16, i8 40 }, { i8, i8, i8, i8 } { i8 0, i8 19, i8 32, i8 40 }], [84 x i8] zeroinitializer }, align 32
@ef4_nic_reg_tables = internal constant { [22 x { i8, i8, i8, i8, i8, i8, i8, i8 }], [48 x i8] } { [22 x { i8, i8, i8, i8, i8, i8, i8, i8 }] [{ i8, i8, i8, i8, i8, i8, i8, i8 } { i8 0, i8 11, i8 0, i8 72, i8 64, i8 0, i8 2, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 0, i8 16, i8 0, i8 72, i8 64, i8 0, i8 2, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 1, i8 24, i8 0, i8 36, i8 64, i8 0, i8 0, i8 -128 }, { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -12, i8 0, i8 0, i8 72, i8 64, i8 2, i8 0, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -12, i8 0, i8 0, i8 108, i8 64, i8 0, i8 -128, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 1, i8 25, i8 0, i8 36, i8 64, i8 0, i8 1, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -11, i8 0, i8 0, i8 72, i8 64, i8 2, i8 0, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -11, i8 0, i8 0, i8 108, i8 64, i8 0, i8 -128, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 1, i8 26, i8 0, i8 36, i8 64, i8 0, i8 0, i8 -128 }, { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -10, i8 0, i8 0, i8 72, i8 64, i8 2, i8 0, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -10, i8 0, i8 0, i8 108, i8 64, i8 0, i8 -128, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 1, i8 -128, i8 0, i8 36, i8 32, i8 0, i8 -128, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -128, i8 0, i8 0, i8 76, i8 32, i8 0, i8 -128, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -16, i8 0, i8 16, i8 108, i8 -128, i8 0, i8 64, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -9, i8 0, i8 0, i8 72, i8 64, i8 2, i8 0, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -9, i8 0, i8 0, i8 108, i8 64, i8 0, i8 -128, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -8, i8 0, i8 0, i8 72, i8 64, i8 2, i8 0, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -8, i8 0, i8 0, i8 108, i8 64, i8 0, i8 -128, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -5, i8 0, i8 0, i8 76, i8 64, i8 0, i8 16, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -2, i8 0, i8 0, i8 108, i8 64, i8 0, i8 64, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -1, i8 0, i8 0, i8 108, i8 16, i8 0, i8 64, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -16, i8 0, i8 0, i8 76, i8 -128, i8 4, i8 0, i8 0 }], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 7]
@__sancov_gen_cov_switch_values.5 = internal global [5 x i64] [i64 3, i64 16, i64 16, i64 32, i64 64]
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 86, i32 4 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 113, i32 4 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 427, i32 5 }
@___asan_gen_.15 = private unnamed_addr constant [13 x i8] c"ef4_nic_regs\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 192, i32 33 }
@___asan_gen_.18 = private unnamed_addr constant [19 x i8] c"ef4_nic_reg_tables\00", align 1
@___asan_gen_.19 = private constant [41 x i8] c"../drivers/net/ethernet/sfc/falcon/nic.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 330, i32 39 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ef4_nic_regs, ptr @ef4_nic_reg_tables], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ef4_nic_regs to i32), i32 332, i32 416, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ef4_nic_reg_tables to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ef4_nic_alloc_buffer(ptr nocapture noundef readonly %efx, ptr noundef %buffer, i32 noundef %len, i32 noundef %gfp_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 4
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %dma_addr = getelementptr inbounds %struct.ef4_buffer, ptr %buffer, i32 0, i32 1
  %and.i = lshr i32 %gfp_flags, 5
  %2 = and i32 %and.i, 256
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %len, ptr noundef %dma_addr, i32 noundef %gfp_flags, i32 noundef %2) #8
  %3 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %buffer, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %len2 = getelementptr inbounds %struct.ef4_buffer, ptr %buffer, i32 0, i32 2
  %4 = ptrtoint ptr %len2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %len, ptr %len2, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_nic_free_buffer(ptr nocapture noundef readonly %efx, ptr nocapture noundef %buffer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pci_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 4
  %2 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %len = getelementptr inbounds %struct.ef4_buffer, ptr %buffer, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %dma_addr = getelementptr inbounds %struct.ef4_buffer, ptr %buffer, i32 0, i32 1
  %6 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %5, ptr noundef nonnull %1, i32 noundef %7, i32 noundef 0) #8
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %buffer, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ef4_nic_event_present(ptr nocapture noundef readonly %channel) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %eventq_read_ptr = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 12
  %0 = ptrtoint ptr %eventq_read_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %eventq_read_ptr, align 4
  %eventq.i = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 10
  %2 = ptrtoint ptr %eventq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eventq.i, align 4
  %eventq_mask.i = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 11
  %4 = ptrtoint ptr %eventq_mask.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %eventq_mask.i, align 8
  %and.i = and i32 %5, %1
  %add.ptr.i = getelementptr %union.ef4_qword, ptr %3, i32 %and.i
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp.i = icmp ne i32 %7, -1
  %arrayidx2.i = getelementptr [2 x %union.ef4_dword], ptr %add.ptr.i, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp4.i = icmp ne i32 %9, -1
  %lnot.i = and i1 %cmp.i, %cmp4.i
  ret i1 %lnot.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_nic_event_test_start(ptr noundef %channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %event_test_cpu = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 13
  %0 = ptrtoint ptr %event_test_cpu to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %event_test_cpu, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !19
  %1 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %channel, align 128
  %type = getelementptr inbounds %struct.ef4_nic, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %type, align 4
  %ev_test_generate = getelementptr inbounds %struct.ef4_nic_type, ptr %4, i32 0, i32 57
  %5 = ptrtoint ptr %ev_test_generate to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ev_test_generate, align 4
  tail call void %6(ptr noundef %channel) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ef4_nic_irq_test_start(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %last_irq_cpu = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 104
  %0 = ptrtoint ptr %last_irq_cpu to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %last_irq_cpu, align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !20
  %type = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 6
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %type, align 4
  %irq_test_generate = getelementptr inbounds %struct.ef4_nic_type, ptr %2, i32 0, i32 36
  %3 = ptrtoint ptr %irq_test_generate to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %irq_test_generate, align 8
  %call = tail call i32 %4(ptr noundef %efx) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ef4_nic_init_interrupt(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %interrupt_mode = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 14
  %0 = ptrtoint ptr %interrupt_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %interrupt_mode, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ult i32 %1, 2
  br i1 %cmp, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %legacy_irq = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 7
  %2 = ptrtoint ptr %legacy_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %legacy_irq, align 16
  %type = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 6
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %type, align 4
  %irq_handle_legacy = getelementptr inbounds %struct.ef4_nic_type, ptr %5, i32 0, i32 39
  %6 = ptrtoint ptr %irq_handle_legacy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_handle_legacy, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %3, ptr noundef %7, ptr noundef null, i32 noundef 128, ptr noundef %efx, ptr noundef %efx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.body

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.then
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %8 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable, align 8
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %if.then3

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %10 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net_dev, align 4
  %pci_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 4
  %12 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci_dev, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 46
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %11, ptr noundef nonnull @.str, i32 noundef %15) #11
  br label %cleanup

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp7 = icmp eq i32 %1, 0
  br i1 %cmp7, label %if.then8, label %if.end5.if.end16_crit_edge

if.end5.if.end16_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then8:                                         ; preds = %if.end5
  %n_rx_channels = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 37
  %16 = ptrtoint ptr %n_rx_channels to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n_rx_channels, align 8
  %call.i140 = tail call ptr @alloc_cpu_rmap(i32 noundef %17, i32 noundef 3264) #8
  %net_dev10 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %18 = ptrtoint ptr %net_dev10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net_dev10, align 4
  %rx_cpu_rmap = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 100
  %20 = ptrtoint ptr %rx_cpu_rmap to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i140, ptr %rx_cpu_rmap, align 4
  %21 = load ptr, ptr %net_dev10, align 4
  %rx_cpu_rmap12 = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 100
  %22 = ptrtoint ptr %rx_cpu_rmap12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rx_cpu_rmap12, align 4
  %tobool13.not = icmp eq ptr %23, null
  br i1 %tobool13.not, label %if.then8.cleanup_crit_edge, label %if.then8.if.end16_crit_edge

if.then8.if.end16_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.then8.if.end16_crit_edge, %if.end5.if.end16_crit_edge
  %channel17 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 23
  %24 = ptrtoint ptr %channel17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %channel17, align 4
  %tobool18.not147 = icmp eq ptr %25, null
  br i1 %tobool18.not147, label %if.end16.cleanup_crit_edge, label %for.body.lr.ph

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end16
  %type20 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 6
  %n_rx_channels45 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 37
  %net_dev48 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %n_channels = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 36
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %n_irqs.0149 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cond.end.for.body_crit_edge ]
  %channel.0148 = phi ptr [ %25, %for.body.lr.ph ], [ %57, %cond.end.for.body_crit_edge ]
  %irq19 = getelementptr inbounds %struct.ef4_channel, ptr %channel.0148, i32 0, i32 5
  %26 = ptrtoint ptr %irq19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq19, align 16
  %28 = ptrtoint ptr %type20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %type20, align 4
  %irq_handle_msi = getelementptr inbounds %struct.ef4_nic_type, ptr %29, i32 0, i32 38
  %30 = ptrtoint ptr %irq_handle_msi to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %irq_handle_msi, align 8
  %channel21 = getelementptr inbounds %struct.ef4_channel, ptr %channel.0148, i32 0, i32 1
  %32 = ptrtoint ptr %channel21 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %channel21, align 4
  %arrayidx22 = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 24, i32 %33
  %name23 = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 24, i32 %33, i32 2
  %call.i141 = tail call i32 @request_threaded_irq(i32 noundef %27, ptr noundef %31, ptr noundef null, i32 noundef 256, ptr noundef %name23, ptr noundef %arrayidx22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i141)
  %tobool29.not = icmp eq i32 %call.i141, 0
  br i1 %tobool29.not, label %if.end41, label %do.body31

do.body31:                                        ; preds = %for.body
  %msg_enable32 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %34 = ptrtoint ptr %msg_enable32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %msg_enable32, align 8
  %and33 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %do.body31.fail2_crit_edge, label %if.then35

do.body31.fail2_crit_edge:                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail2

if.then35:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %net_dev48 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %net_dev48, align 4
  %38 = ptrtoint ptr %irq19 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %irq19, align 16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %37, ptr noundef nonnull @.str.1, i32 noundef %39) #11
  br label %fail2

if.end41:                                         ; preds = %for.body
  %inc = add i32 %n_irqs.0149, 1
  %40 = ptrtoint ptr %interrupt_mode to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %interrupt_mode, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp43 = icmp eq i32 %41, 0
  br i1 %cmp43, label %land.lhs.true, label %if.end41.for.inc_crit_edge

if.end41.for.inc_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end41
  %42 = ptrtoint ptr %channel21 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %channel21, align 4
  %44 = ptrtoint ptr %n_rx_channels45 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %n_rx_channels45, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %cmp46 = icmp ult i32 %43, %45
  br i1 %cmp46, label %if.then47, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then47:                                        ; preds = %land.lhs.true
  %46 = ptrtoint ptr %net_dev48 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %net_dev48, align 4
  %rx_cpu_rmap49 = getelementptr inbounds %struct.net_device, ptr %47, i32 0, i32 100
  %48 = ptrtoint ptr %rx_cpu_rmap49 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rx_cpu_rmap49, align 4
  %50 = ptrtoint ptr %irq19 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %irq19, align 16
  %call51 = tail call i32 @irq_cpu_rmap_add(ptr noundef %49, i32 noundef %51) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.then47.for.inc_crit_edge, label %if.then47.fail2_crit_edge

if.then47.fail2_crit_edge:                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail2

if.then47.for.inc_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %if.then47.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %if.end41.for.inc_crit_edge
  %52 = ptrtoint ptr %channel21 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %channel21, align 4
  %add = add i32 %53, 1
  %54 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %n_channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %55)
  %cmp57 = icmp ult i32 %add, %55
  br i1 %cmp57, label %cond.end, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cond.end:                                         ; preds = %for.inc
  %arrayidx61 = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %add
  %56 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx61, align 4
  %tobool18.not = icmp eq ptr %57, null
  br i1 %tobool18.not, label %cond.end.cleanup_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

fail2:                                            ; preds = %if.then47.fail2_crit_edge, %if.then35, %do.body31.fail2_crit_edge
  %n_irqs.1 = phi i32 [ %n_irqs.0149, %if.then35 ], [ %n_irqs.0149, %do.body31.fail2_crit_edge ], [ %inc, %if.then47.fail2_crit_edge ]
  %rc.0 = phi i32 [ %call.i141, %if.then35 ], [ %call.i141, %do.body31.fail2_crit_edge ], [ %call51, %if.then47.fail2_crit_edge ]
  %58 = ptrtoint ptr %net_dev48 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %net_dev48, align 4
  %rx_cpu_rmap63 = getelementptr inbounds %struct.net_device, ptr %59, i32 0, i32 100
  %60 = ptrtoint ptr %rx_cpu_rmap63 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rx_cpu_rmap63, align 4
  tail call void @free_irq_cpu_rmap(ptr noundef %61) #8
  %62 = ptrtoint ptr %net_dev48 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %net_dev48, align 4
  %rx_cpu_rmap65 = getelementptr inbounds %struct.net_device, ptr %63, i32 0, i32 100
  %64 = ptrtoint ptr %rx_cpu_rmap65 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %rx_cpu_rmap65, align 4
  %65 = ptrtoint ptr %channel17 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %channel17, align 4
  %tobool69.not150 = icmp eq ptr %66, null
  br i1 %tobool69.not150, label %fail2.cleanup_crit_edge, label %fail2.for.body70_crit_edge

fail2.for.body70_crit_edge:                       ; preds = %fail2
  br label %for.body70

fail2.cleanup_crit_edge:                          ; preds = %fail2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body70:                                       ; preds = %cond.end90.for.body70_crit_edge, %fail2.for.body70_crit_edge
  %n_irqs.2152 = phi i32 [ %dec, %cond.end90.for.body70_crit_edge ], [ %n_irqs.1, %fail2.for.body70_crit_edge ]
  %channel.1151 = phi ptr [ %76, %cond.end90.for.body70_crit_edge ], [ %66, %fail2.for.body70_crit_edge ]
  %dec = add i32 %n_irqs.2152, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_irqs.2152)
  %cmp71 = icmp eq i32 %n_irqs.2152, 0
  br i1 %cmp71, label %for.body70.cleanup_crit_edge, label %if.end73

for.body70.cleanup_crit_edge:                     ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end73:                                         ; preds = %for.body70
  %irq74 = getelementptr inbounds %struct.ef4_channel, ptr %channel.1151, i32 0, i32 5
  %67 = ptrtoint ptr %irq74 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %irq74, align 16
  %channel76 = getelementptr inbounds %struct.ef4_channel, ptr %channel.1151, i32 0, i32 1
  %69 = ptrtoint ptr %channel76 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %channel76, align 4
  %arrayidx77 = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 24, i32 %70
  %call78 = tail call ptr @free_irq(i32 noundef %68, ptr noundef %arrayidx77) #8
  %71 = ptrtoint ptr %channel76 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %channel76, align 4
  %add81 = add i32 %72, 1
  %73 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %n_channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add81, i32 %74)
  %cmp83 = icmp ult i32 %add81, %74
  br i1 %cmp83, label %cond.end90, label %if.end73.cleanup_crit_edge

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cond.end90:                                       ; preds = %if.end73
  %arrayidx88 = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %add81
  %75 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx88, align 4
  %tobool69.not = icmp eq ptr %76, null
  br i1 %tobool69.not, label %cond.end90.cleanup_crit_edge, label %cond.end90.for.body70_crit_edge

cond.end90.for.body70_crit_edge:                  ; preds = %cond.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body70

cond.end90.cleanup_crit_edge:                     ; preds = %cond.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end90.cleanup_crit_edge, %if.end73.cleanup_crit_edge, %for.body70.cleanup_crit_edge, %fail2.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %if.then3, %do.body.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then.cleanup_crit_edge ], [ %call.i, %if.then3 ], [ %call.i, %do.body.cleanup_crit_edge ], [ -12, %if.then8.cleanup_crit_edge ], [ %rc.0, %fail2.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ], [ %rc.0, %for.body70.cleanup_crit_edge ], [ %rc.0, %cond.end90.cleanup_crit_edge ], [ %rc.0, %if.end73.cleanup_crit_edge ], [ 0, %cond.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_cpu_rmap_add(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_irq_cpu_rmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_nic_fini_interrupt(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %0 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net_dev, align 4
  %rx_cpu_rmap = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 100
  %2 = ptrtoint ptr %rx_cpu_rmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_cpu_rmap, align 4
  tail call void @free_irq_cpu_rmap(ptr noundef %3) #8
  %4 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net_dev, align 4
  %rx_cpu_rmap2 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 100
  %6 = ptrtoint ptr %rx_cpu_rmap2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %rx_cpu_rmap2, align 4
  %interrupt_mode = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 14
  %7 = ptrtoint ptr %interrupt_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %interrupt_mode, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp = icmp ult i32 %8, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %channel3 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 23
  %9 = ptrtoint ptr %channel3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %channel3, align 4
  %tobool.not25 = icmp eq ptr %10, null
  br i1 %tobool.not25, label %if.then.if.end_crit_edge, label %for.body.lr.ph

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.lr.ph:                                   ; preds = %if.then
  %n_channels = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 36
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %channel.026 = phi ptr [ %10, %for.body.lr.ph ], [ %20, %cond.end.for.body_crit_edge ]
  %irq = getelementptr inbounds %struct.ef4_channel, ptr %channel.026, i32 0, i32 5
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq, align 16
  %channel4 = getelementptr inbounds %struct.ef4_channel, ptr %channel.026, i32 0, i32 1
  %13 = ptrtoint ptr %channel4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %channel4, align 4
  %arrayidx5 = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 24, i32 %14
  %call = tail call ptr @free_irq(i32 noundef %12, ptr noundef %arrayidx5) #8
  %15 = ptrtoint ptr %channel4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %channel4, align 4
  %add = add i32 %16, 1
  %17 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %n_channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %18)
  %cmp7 = icmp ult i32 %add, %18
  br i1 %cmp7, label %cond.end, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

cond.end:                                         ; preds = %for.body
  %arrayidx11 = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %add
  %19 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx11, align 4
  %tobool.not = icmp eq ptr %20, null
  br i1 %tobool.not, label %cond.end.if.end_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %legacy_irq = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 7
  %21 = ptrtoint ptr %legacy_irq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %legacy_irq, align 16
  %call12 = tail call ptr @free_irq(i32 noundef %22, ptr noundef %efx) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end.if.end_crit_edge, %for.body.if.end_crit_edge, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ef4_nic_get_regs_len(ptr nocapture noundef readonly %efx) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 6
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %revision = getelementptr inbounds %struct.ef4_nic_type, ptr %1, i32 0, i32 79
  %2 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %revision, align 4
  br label %for.body

for.cond8.preheader:                              ; preds = %for.body
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %type, align 4
  %revision12 = getelementptr inbounds %struct.ef4_nic_type, ptr %5, i32 0, i32 79
  %6 = ptrtoint ptr %revision12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %revision12, align 4
  br label %for.body10

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %reg.054 = phi ptr [ @ef4_nic_regs, %entry ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %len.053 = phi i32 [ 0, %entry ], [ %len.1, %for.body.for.body_crit_edge ]
  %8 = ptrtoint ptr %reg.054 to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load = load i32, ptr %reg.054, align 4
  %bf.lshr = lshr i32 %bf.load, 5
  %bf.clear = and i32 %bf.lshr, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %bf.clear)
  %cmp1.not = icmp slt i32 %3, %bf.clear
  %bf.lshr5 = lshr i32 %bf.load, 2
  %bf.clear6 = and i32 %bf.lshr5, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %bf.clear6)
  %cmp7.not = icmp sgt i32 %3, %bf.clear6
  %or.cond = select i1 %cmp1.not, i1 true, i1 %cmp7.not
  %add = add i32 %len.053, 16
  %len.1 = select i1 %or.cond, i32 %len.053, i32 %add
  %incdec.ptr = getelementptr %struct.ef4_nic_reg, ptr %reg.054, i32 1
  %cmp = icmp ult ptr %incdec.ptr, getelementptr inbounds ([83 x { i8, i8, i8, i8 }], ptr @ef4_nic_regs, i32 1, i32 0, i32 0)
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.cond8.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body10:                                       ; preds = %for.inc33.for.body10_crit_edge, %for.cond8.preheader
  %len.257 = phi i32 [ %len.1, %for.cond8.preheader ], [ %len.3, %for.inc33.for.body10_crit_edge ]
  %table.055 = phi ptr [ @ef4_nic_reg_tables, %for.cond8.preheader ], [ %incdec.ptr34, %for.inc33.for.body10_crit_edge ]
  %9 = ptrtoint ptr %table.055 to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load13 = load i32, ptr %table.055, align 4
  %bf.lshr14 = lshr i32 %bf.load13, 5
  %bf.clear15 = and i32 %bf.lshr14, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %bf.clear15)
  %cmp16.not = icmp slt i32 %7, %bf.clear15
  %bf.lshr21 = lshr i32 %bf.load13, 2
  %bf.clear22 = and i32 %bf.lshr21, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %bf.clear22)
  %cmp23.not = icmp sgt i32 %7, %bf.clear22
  %or.cond52 = select i1 %cmp16.not, i1 true, i1 %cmp23.not
  br i1 %or.cond52, label %for.body10.for.inc33_crit_edge, label %if.then24

for.body10.for.inc33_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc33

if.then24:                                        ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #10
  %rows = getelementptr inbounds %struct.ef4_nic_reg_table, ptr %table.055, i32 0, i32 1
  %10 = ptrtoint ptr %rows to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load25 = load i32, ptr %rows, align 4
  %bf.lshr26 = lshr i32 %bf.load25, 5
  %bf.clear27 = and i32 %bf.lshr26, 2097151
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %bf.load25)
  %cmp30 = icmp ult i32 %bf.load25, 1073741824
  %bf.lshr29 = lshr i32 %bf.load25, 26
  %cond = select i1 %cmp30, i32 %bf.lshr29, i32 16
  %mul = mul nuw nsw i32 %bf.clear27, %cond
  %add31 = add i32 %mul, %len.257
  br label %for.inc33

for.inc33:                                        ; preds = %if.then24, %for.body10.for.inc33_crit_edge
  %len.3 = phi i32 [ %add31, %if.then24 ], [ %len.257, %for.body10.for.inc33_crit_edge ]
  %incdec.ptr34 = getelementptr %struct.ef4_nic_reg_table, ptr %table.055, i32 1
  %cmp9 = icmp ult ptr %incdec.ptr34, getelementptr inbounds ([22 x { i8, i8, i8, i8, i8, i8, i8, i8 }], ptr @ef4_nic_reg_tables, i32 1, i32 0, i32 0)
  br i1 %cmp9, label %for.inc33.for.body10_crit_edge, label %for.end35

for.inc33.for.body10_crit_edge:                   ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body10

for.end35:                                        ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #10
  ret i32 %len.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_nic_get_regs(ptr noundef %efx, ptr nocapture noundef writeonly %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 6
  %biu_lock.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 103
  %membase.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %buf.addr.0145 = phi ptr [ %buf, %entry ], [ %buf.addr.1, %for.inc.for.body_crit_edge ]
  %reg.0144 = phi ptr [ @ef4_nic_regs, %entry ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %revision = getelementptr inbounds %struct.ef4_nic_type, ptr %1, i32 0, i32 79
  %2 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %revision, align 4
  %4 = ptrtoint ptr %reg.0144 to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load = load i32, ptr %reg.0144, align 4
  %bf.lshr = lshr i32 %bf.load, 5
  %bf.clear = and i32 %bf.lshr, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %bf.clear)
  %cmp1.not = icmp slt i32 %3, %bf.clear
  %bf.lshr5 = lshr i32 %bf.load, 2
  %bf.clear6 = and i32 %bf.lshr5, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %bf.clear6)
  %cmp7.not = icmp sgt i32 %3, %bf.clear6
  %or.cond = select i1 %cmp1.not, i1 true, i1 %cmp7.not
  br i1 %or.cond, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %bf.lshr9 = lshr i32 %bf.load, 8
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #8
  %5 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 %bf.lshr9
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !21
  %8 = ptrtoint ptr %buf.addr.0145 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %buf.addr.0145, align 8
  %add6.i = add nuw nsw i32 %bf.lshr9, 4
  %9 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %10, i32 %add6.i
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i) #8, !srcloc !21
  %arrayidx8.i = getelementptr [4 x i32], ptr %buf.addr.0145, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx8.i, align 4
  %add9.i = add nuw nsw i32 %bf.lshr9, 8
  %13 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %14, i32 %add9.i
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #8, !srcloc !21
  %arrayidx11.i = getelementptr [4 x i32], ptr %buf.addr.0145, i32 0, i32 2
  %16 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx11.i, align 8
  %add12.i = add nuw nsw i32 %bf.lshr9, 12
  %17 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %18, i32 %add12.i
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i) #8, !srcloc !21
  %arrayidx14.i = getelementptr [4 x i32], ptr %buf.addr.0145, i32 0, i32 3
  %20 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx14.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i) #8
  %add.ptr = getelementptr i8, ptr %buf.addr.0145, i32 16
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %buf.addr.1 = phi ptr [ %add.ptr, %if.then ], [ %buf.addr.0145, %for.body.for.inc_crit_edge ]
  %incdec.ptr = getelementptr %struct.ef4_nic_reg, ptr %reg.0144, i32 1
  %cmp = icmp ult ptr %incdec.ptr, getelementptr inbounds ([83 x { i8, i8, i8, i8 }], ptr @ef4_nic_regs, i32 1, i32 0, i32 0)
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.body12_crit_edge

for.inc.for.body12_crit_edge:                     ; preds = %for.inc
  br label %for.body12

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body12:                                       ; preds = %for.inc74.for.body12_crit_edge, %for.inc.for.body12_crit_edge
  %buf.addr.2158 = phi ptr [ %buf.addr.4.ph, %for.inc74.for.body12_crit_edge ], [ %buf.addr.1, %for.inc.for.body12_crit_edge ]
  %table.0155 = phi ptr [ %incdec.ptr75, %for.inc74.for.body12_crit_edge ], [ @ef4_nic_reg_tables, %for.inc.for.body12_crit_edge ]
  %21 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %type, align 4
  %revision14 = getelementptr inbounds %struct.ef4_nic_type, ptr %22, i32 0, i32 79
  %23 = ptrtoint ptr %revision14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %revision14, align 4
  %25 = ptrtoint ptr %table.0155 to i32
  call void @__asan_load4_noabort(i32 %25)
  %bf.load15 = load i32, ptr %table.0155, align 4
  %bf.lshr16 = lshr i32 %bf.load15, 5
  %bf.clear17 = and i32 %bf.lshr16, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %bf.clear17)
  %cmp18.not = icmp slt i32 %24, %bf.clear17
  %bf.lshr23 = lshr i32 %bf.load15, 2
  %bf.clear24 = and i32 %bf.lshr23, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %bf.clear24)
  %cmp25.not = icmp sgt i32 %24, %bf.clear24
  %or.cond119 = select i1 %cmp18.not, i1 true, i1 %cmp25.not
  br i1 %or.cond119, label %for.body12.for.inc74_crit_edge, label %if.end27

for.body12.for.inc74_crit_edge:                   ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc74

if.end27:                                         ; preds = %for.body12
  %step = getelementptr inbounds %struct.ef4_nic_reg_table, ptr %table.0155, i32 0, i32 1
  %26 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %26)
  %bf.load28 = load i32, ptr %step, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %bf.load28)
  %cmp30 = icmp ult i32 %bf.load28, 1073741824
  %bf.lshr29 = lshr i32 %bf.load28, 26
  %cond = select i1 %cmp30, i32 %bf.lshr29, i32 16
  %27 = and i32 %bf.load28, 67108832
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp35149.not = icmp eq i32 %27, 0
  br i1 %cmp35149.not, label %if.end27.for.inc74_crit_edge, label %if.end27.for.body36_crit_edge

if.end27.for.body36_crit_edge:                    ; preds = %if.end27
  br label %for.body36

if.end27.for.inc74_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc74

for.body36:                                       ; preds = %sw.epilog.for.body36_crit_edge, %if.end27.for.body36_crit_edge
  %bf.load32154 = phi i32 [ %bf.load32, %sw.epilog.for.body36_crit_edge ], [ %bf.load28, %if.end27.for.body36_crit_edge ]
  %buf.addr.3152 = phi ptr [ %add.ptr70, %sw.epilog.for.body36_crit_edge ], [ %buf.addr.2158, %if.end27.for.body36_crit_edge ]
  %i.0150 = phi i32 [ %inc, %sw.epilog.for.body36_crit_edge ], [ 0, %if.end27.for.body36_crit_edge ]
  %bf.lshr39 = lshr i32 %bf.load32154, 26
  %28 = add nsw i32 %bf.lshr39, -4
  %29 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 30)
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i32 %29, label %cleanup [
    i32 0, label %sw.bb
    i32 1, label %sw.bb42
    i32 3, label %sw.bb46
    i32 7, label %sw.bb49
  ]

sw.bb:                                            ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %table.0155 to i32
  call void @__asan_load4_noabort(i32 %31)
  %bf.load40 = load i32, ptr %table.0155, align 4
  %bf.lshr41 = lshr i32 %bf.load40, 8
  %mul = shl i32 %i.0150, 2
  %add = add i32 %bf.lshr41, %mul
  %32 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i121 = getelementptr i8, ptr %33, i32 %add
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i121) #8, !srcloc !21
  %35 = ptrtoint ptr %buf.addr.3152 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %buf.addr.3152, align 4
  br label %sw.epilog

sw.bb42:                                          ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %membase.i.i, align 4
  %38 = ptrtoint ptr %table.0155 to i32
  call void @__asan_load4_noabort(i32 %38)
  %bf.load43 = load i32, ptr %table.0155, align 4
  %bf.lshr44 = lshr i32 %bf.load43, 8
  %add.ptr45 = getelementptr i8, ptr %37, i32 %bf.lshr44
  %mul.i = shl i32 %i.0150, 3
  %call2.i123 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #8
  %add.ptr.i = getelementptr i8, ptr %add.ptr45, i32 %mul.i
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !21
  %40 = ptrtoint ptr %buf.addr.3152 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %buf.addr.3152, align 8
  %add.ptr7.i = getelementptr i8, ptr %add.ptr.i, i32 4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #8, !srcloc !21
  %arrayidx9.i = getelementptr [2 x i32], ptr %buf.addr.3152, i32 0, i32 1
  %42 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %arrayidx9.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i123) #8
  br label %sw.epilog

sw.bb46:                                          ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %table.0155 to i32
  call void @__asan_load4_noabort(i32 %43)
  %bf.load47 = load i32, ptr %table.0155, align 4
  %bf.lshr48 = lshr i32 %bf.load47, 8
  %mul.i124 = shl i32 %i.0150, 4
  %add.i = add i32 %bf.lshr48, %mul.i124
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #8
  %44 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %45, i32 %add.i
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !21
  %47 = ptrtoint ptr %buf.addr.3152 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %buf.addr.3152, align 8
  %add6.i.i = add i32 %add.i, 4
  %48 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i.i = getelementptr i8, ptr %49, i32 %add6.i.i
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i.i) #8, !srcloc !21
  %arrayidx8.i.i = getelementptr [4 x i32], ptr %buf.addr.3152, i32 0, i32 1
  %51 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %arrayidx8.i.i, align 4
  %add9.i.i = add i32 %add.i, 8
  %52 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i31.i.i = getelementptr i8, ptr %53, i32 %add9.i.i
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i.i) #8, !srcloc !21
  %arrayidx11.i.i = getelementptr [4 x i32], ptr %buf.addr.3152, i32 0, i32 2
  %55 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %arrayidx11.i.i, align 8
  %add12.i.i = add i32 %add.i, 12
  %56 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i.i = getelementptr i8, ptr %57, i32 %add12.i.i
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i.i) #8, !srcloc !21
  %arrayidx14.i.i = getelementptr [4 x i32], ptr %buf.addr.3152, i32 0, i32 3
  %59 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %arrayidx14.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i.i) #8
  br label %sw.epilog

sw.bb49:                                          ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %table.0155 to i32
  call void @__asan_load4_noabort(i32 %60)
  %bf.load50 = load i32, ptr %table.0155, align 4
  %bf.lshr51 = lshr i32 %bf.load50, 8
  %mul52 = shl i32 %i.0150, 5
  %add.i126 = add i32 %bf.lshr51, %mul52
  %call2.i.i128 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #8
  %61 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i.i130 = getelementptr i8, ptr %62, i32 %add.i126
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i130) #8, !srcloc !21
  %64 = ptrtoint ptr %buf.addr.3152 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %buf.addr.3152, align 8
  %add6.i.i131 = add i32 %add.i126, 4
  %65 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i.i132 = getelementptr i8, ptr %66, i32 %add6.i.i131
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i.i132) #8, !srcloc !21
  %arrayidx8.i.i133 = getelementptr [4 x i32], ptr %buf.addr.3152, i32 0, i32 1
  %68 = ptrtoint ptr %arrayidx8.i.i133 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %arrayidx8.i.i133, align 4
  %add9.i.i134 = add i32 %add.i126, 8
  %69 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i31.i.i135 = getelementptr i8, ptr %70, i32 %add9.i.i134
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i.i135) #8, !srcloc !21
  %arrayidx11.i.i136 = getelementptr [4 x i32], ptr %buf.addr.3152, i32 0, i32 2
  %72 = ptrtoint ptr %arrayidx11.i.i136 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %arrayidx11.i.i136, align 8
  %add12.i.i137 = add i32 %add.i126, 12
  %73 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i.i138 = getelementptr i8, ptr %74, i32 %add12.i.i137
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i.i138) #8, !srcloc !21
  %arrayidx14.i.i139 = getelementptr [4 x i32], ptr %buf.addr.3152, i32 0, i32 3
  %76 = ptrtoint ptr %arrayidx14.i.i139 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %arrayidx14.i.i139, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i.i128) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb49, %sw.bb46, %sw.bb42, %sw.bb
  %add.ptr70 = getelementptr i8, ptr %buf.addr.3152, i32 %cond
  %inc = add nuw nsw i32 %i.0150, 1
  %77 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %77)
  %bf.load32 = load i32, ptr %step, align 4
  %bf.lshr33 = lshr i32 %bf.load32, 5
  %bf.clear34 = and i32 %bf.lshr33, 2097151
  %cmp35 = icmp ult i32 %inc, %bf.clear34
  br i1 %cmp35, label %sw.epilog.for.body36_crit_edge, label %sw.epilog.for.inc74_crit_edge

sw.epilog.for.inc74_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc74

sw.epilog.for.body36_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body36

cleanup:                                          ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 427, i32 noundef 9, ptr noundef null) #8
  br label %cleanup77

for.inc74:                                        ; preds = %sw.epilog.for.inc74_crit_edge, %if.end27.for.inc74_crit_edge, %for.body12.for.inc74_crit_edge
  %buf.addr.4.ph = phi ptr [ %buf.addr.2158, %for.body12.for.inc74_crit_edge ], [ %buf.addr.2158, %if.end27.for.inc74_crit_edge ], [ %add.ptr70, %sw.epilog.for.inc74_crit_edge ]
  %incdec.ptr75 = getelementptr %struct.ef4_nic_reg_table, ptr %table.0155, i32 1
  %cmp11 = icmp ult ptr %incdec.ptr75, getelementptr inbounds ([22 x { i8, i8, i8, i8, i8, i8, i8, i8 }], ptr @ef4_nic_reg_tables, i32 1, i32 0, i32 0)
  br i1 %cmp11, label %for.inc74.for.body12_crit_edge, label %for.inc74.cleanup77_crit_edge

for.inc74.cleanup77_crit_edge:                    ; preds = %for.inc74
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup77

for.inc74.for.body12_crit_edge:                   ; preds = %for.inc74
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body12

cleanup77:                                        ; preds = %for.inc74.cleanup77_crit_edge, %cleanup
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ef4_nic_describe_stats(ptr nocapture noundef readonly %desc, i32 noundef %count, ptr noundef %mask, ptr noundef %names) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_find_next_bit_be(ptr noundef %mask, i32 noundef %count, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %count)
  %cmp18 = icmp ult i32 %call, %count
  br i1 %cmp18, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %index.021 = phi i32 [ %call7, %for.inc.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %visible.020 = phi i32 [ %visible.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %names.addr.019 = phi ptr [ %names.addr.2, %for.inc.for.body_crit_edge ], [ %names, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ef4_hw_stat_desc, ptr %desc, i32 %index.021
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  %tobool1.not = icmp eq ptr %names.addr.019, null
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 @strlcpy(ptr noundef nonnull %names.addr.019, ptr noundef nonnull %1, i32 noundef 32) #8
  %add.ptr = getelementptr i8, ptr %names.addr.019, i32 32
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %names.addr.1 = phi ptr [ %add.ptr, %if.then2 ], [ null, %if.then.if.end_crit_edge ]
  %inc = add i32 %visible.020, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %names.addr.2 = phi ptr [ %names.addr.1, %if.end ], [ %names.addr.019, %for.body.for.inc_crit_edge ]
  %visible.1 = phi i32 [ %inc, %if.end ], [ %visible.020, %for.body.for.inc_crit_edge ]
  %add = add nuw i32 %index.021, 1
  %call7 = tail call i32 @_find_next_bit_be(ptr noundef %mask, i32 noundef %count, i32 noundef %add) #8
  %cmp = icmp ult i32 %call7, %count
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %visible.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %visible.1, %for.inc.for.end_crit_edge ]
  ret i32 %visible.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_nic_update_stats(ptr nocapture noundef readonly %desc, i32 noundef %count, ptr noundef %mask, ptr nocapture noundef %stats, ptr nocapture noundef readonly %dma_buf, i1 noundef zeroext %accumulate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_find_next_bit_be(ptr noundef %mask, i32 noundef %count, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %count)
  %cmp52 = icmp ult i32 %call, %count
  br i1 %cmp52, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %index.053 = phi i32 [ %call35, %for.inc.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %dma_width = getelementptr %struct.ef4_hw_stat_desc, ptr %desc, i32 %index.053, i32 1
  %0 = ptrtoint ptr %dma_width to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %dma_width, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  %offset = getelementptr %struct.ef4_hw_stat_desc, ptr %desc, i32 %index.053, i32 2
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %offset, align 2
  %conv = zext i16 %3 to i32
  %add.ptr = getelementptr i8, ptr %dma_buf, i32 %conv
  %4 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.5)
  switch i16 %1, label %do.end [
    i16 16, label %sw.bb
    i16 32, label %sw.bb7
    i16 64, label %sw.bb10
  ]

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr, align 2
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #8
  %conv6 = zext i16 %7 to i64
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  %conv9 = zext i32 %10 to i64
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %add.ptr, align 8
  %13 = tail call i64 @llvm.bswap.i64(i64 %12) #8
  br label %sw.epilog

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 502, i32 noundef 9, ptr noundef null) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb10, %sw.bb7, %sw.bb
  %val.0 = phi i64 [ 0, %do.end ], [ %13, %sw.bb10 ], [ %conv9, %sw.bb7 ], [ %conv6, %sw.bb ]
  %arrayidx30 = getelementptr i64, ptr %stats, i32 %index.053
  br i1 %accumulate, label %if.then29, label %sw.epilog.for.inc.sink.split_crit_edge

sw.epilog.for.inc.sink.split_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split

if.then29:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx30, align 8
  %add = add i64 %15, %val.0
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.then29, %sw.epilog.for.inc.sink.split_crit_edge
  %add.sink = phi i64 [ %add, %if.then29 ], [ %val.0, %sw.epilog.for.inc.sink.split_crit_edge ]
  %16 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %add.sink, ptr %arrayidx30, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %for.body.for.inc_crit_edge
  %add34 = add nuw i32 %index.053, 1
  %call35 = tail call i32 @_find_next_bit_be(ptr noundef %mask, i32 noundef %count, i32 noundef %add34) #8
  %cmp = icmp ult i32 %call35, %count
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ef4_nic_fix_nodesc_drop_stat(ptr nocapture noundef %efx, ptr nocapture noundef %rx_nodesc_drops) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %0 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net_dev, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %rx_nodesc_drops_prev_state = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 74
  %4 = ptrtoint ptr %rx_nodesc_drops_prev_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rx_nodesc_drops_prev_state, align 8, !range !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %6 = ptrtoint ptr %rx_nodesc_drops to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %rx_nodesc_drops, align 8
  %rx_nodesc_drops_total = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 72
  %8 = ptrtoint ptr %rx_nodesc_drops_total to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %rx_nodesc_drops_total, align 8
  %sub = sub i64 %7, %9
  %rx_nodesc_drops_while_down = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 73
  %10 = ptrtoint ptr %rx_nodesc_drops_while_down to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %rx_nodesc_drops_while_down, align 128
  %add = add i64 %sub, %11
  store i64 %add, ptr %rx_nodesc_drops_while_down, align 128
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %12 = ptrtoint ptr %rx_nodesc_drops to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %rx_nodesc_drops, align 8
  %rx_nodesc_drops_total2 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 72
  %14 = ptrtoint ptr %rx_nodesc_drops_total2 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %rx_nodesc_drops_total2, align 8
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 8
  %rx_nodesc_drops_prev_state8 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 74
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = ptrtoint ptr %rx_nodesc_drops_prev_state8 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %rx_nodesc_drops_prev_state8, align 8
  %rx_nodesc_drops_while_down9 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 73
  %20 = ptrtoint ptr %rx_nodesc_drops_while_down9 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %rx_nodesc_drops_while_down9, align 128
  %22 = load i64, ptr %rx_nodesc_drops, align 8
  %sub10 = sub i64 %22, %21
  store i64 %sub10, ptr %rx_nodesc_drops, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_cpu_rmap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/sfc/falcon/nic.c", i32 86, i32 4}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/sfc/falcon/nic.c", i32 113, i32 4}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/sfc/falcon/nic.c", i32 427, i32 5}
!6 = !{ptr @ef4_nic_regs, !7, !"ef4_nic_regs", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/sfc/falcon/nic.c", i32 192, i32 33}
!8 = !{ptr @ef4_nic_reg_tables, !9, !"ef4_nic_reg_tables", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/sfc/falcon/nic.c", i32 330, i32 39}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i64 2159238618}
!20 = !{i64 2159238774}
!21 = !{i64 4219257}
!22 = !{i8 0, i8 2}
