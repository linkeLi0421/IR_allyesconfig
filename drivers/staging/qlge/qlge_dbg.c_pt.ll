; ModuleID = '/llk/IR_all_yes/drivers/staging/qlge/qlge_dbg.c_pt.bc'
source_filename = "../drivers/staging/qlge/qlge_dbg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.qlge_adapter = type { %struct.ricb, i32, i32, %struct.nic_stats, [128 x i32], ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, %struct.spinlock, ptr, ptr, i32, i32, ptr, i32, ptr, i32, i32, i32, %struct.mbox_params, %struct.mutex, i32, i32, i32, ptr, [17 x %struct.intr_context], i32, i32, i32, i32, ptr, [17 x %struct.rx_ring], [8 x %struct.tx_ring], i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, ptr, i32, i32, i32, %union.flash_params, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.completion, ptr, i16, %struct.timer_list, %struct.atomic_t, [6 x i8] }
%struct.ricb = type { i8, i8, i16, [1024 x i8], [10 x i32], [4 x i32] }
%struct.nic_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mbox_params = type { [16 x i32], [16 x i32], i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.intr_context = type { ptr, i32, i32, i32, i32, i32, i32, [32 x i8], ptr }
%struct.rx_ring = type { %struct.cqicb, ptr, i32, i32, i32, i16, ptr, i32, ptr, i32, ptr, ptr, %struct.qlge_bq, %struct.qlge_page_chunk, i32, %struct.qlge_bq, i32, i32, %struct.delayed_work, [21 x i8], %struct.napi_struct, i8, ptr, i64, i64, i64, i64, i64 }
%struct.cqicb = type <{ i8, i8, i8, i8, i16, i16, i64, i64, i16, i16, i64, i16, i16, i64, i16, i16 }>
%struct.qlge_page_chunk = type { ptr, ptr, i32 }
%struct.qlge_bq = type { ptr, i32, ptr, i32, ptr, ptr, i16, i16, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.tx_ring = type { %struct.wqicb, ptr, i32, ptr, i32, i32, i32, ptr, ptr, i16, i16, i8, [3 x i8], ptr, %struct.spinlock, %struct.atomic_t, %struct.delayed_work, ptr, i64, i64, i64 }
%struct.wqicb = type { i16, i16, i16, i16, i64, i64 }
%union.flash_params = type { %struct.flash_params_8000 }
%struct.flash_params_8000 = type { [4 x i8], i16, i16, i16, i16, i16, i16, i8, i8, [6 x i8], i8, i8, [6 x i8], i8, i8, i16, i8, i8, i16, [464 x i8], i16, i16, [4 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.mpi_coredump_global_header = type { i32, [16 x i8], i32, i32, i32, i32, [220 x i8] }
%struct.qlge_mpi_coredump = type { %struct.mpi_coredump_global_header, %struct.mpi_coredump_segment_header, [127 x i32], [16 x i32], %struct.mpi_coredump_segment_header, [23 x i32], %struct.mpi_coredump_segment_header, [64 x i32], %struct.mpi_coredump_segment_header, [64 x i32], %struct.mpi_coredump_segment_header, [64 x i32], %struct.mpi_coredump_segment_header, [64 x i32], %struct.mpi_coredump_segment_header, [64 x i32], %struct.mpi_coredump_segment_header, [64 x i32], %struct.mpi_coredump_segment_header, [64 x i32], %struct.mpi_coredump_segment_header, [64 x i32], %struct.mpi_coredump_segment_header, [64 x i32], %struct.mpi_coredump_segment_header, [64 x i32], %struct.mpi_coredump_segment_header, [256 x i32], %struct.mpi_coredump_segment_header, [256 x i32], %struct.mpi_coredump_segment_header, [6 x i32], %struct.mpi_coredump_segment_header, [64 x i32], %struct.mpi_coredump_segment_header, [64 x i32], %struct.mpi_coredump_segment_header, [464 x i32], %struct.mpi_coredump_segment_header, [464 x i32], %struct.mpi_coredump_segment_header, [8192 x i32], %struct.mpi_coredump_segment_header, [8192 x i32], %struct.mpi_coredump_segment_header, [14 x i32], %struct.mpi_coredump_segment_header, [33 x i32], %struct.mpi_coredump_segment_header, [14 x i32], %struct.mpi_coredump_segment_header, [12 x i32], %struct.mpi_coredump_segment_header, [15 x i32], %struct.mpi_coredump_segment_header, [32 x i32], %struct.mpi_coredump_segment_header, [32 x i32], %struct.mpi_coredump_segment_header, [32 x i32], %struct.mpi_coredump_segment_header, %struct.qlge_nic_misc, %struct.mpi_coredump_segment_header, [17 x i32], %struct.mpi_coredump_segment_header, [144 x i32], %struct.mpi_coredump_segment_header, [16 x i32], %struct.mpi_coredump_segment_header, [10 x i32], %struct.mpi_coredump_segment_header, [4386 x i32], %struct.mpi_coredump_segment_header, [192 x i32], %struct.mpi_coredump_segment_header, [19712 x i32], %struct.mpi_coredump_segment_header, [14 x i32], %struct.mpi_coredump_segment_header, [33 x i32], %struct.mpi_coredump_segment_header, [14 x i32], %struct.mpi_coredump_segment_header, [12 x i32], %struct.mpi_coredump_segment_header, [15 x i32], %struct.mpi_coredump_segment_header, [32 x i32], %struct.mpi_coredump_segment_header, [32 x i32], %struct.mpi_coredump_segment_header, [32 x i32], %struct.mpi_coredump_segment_header, [4 x i32] }
%struct.qlge_nic_misc = type { i32, i32, i32, i32 }
%struct.mpi_coredump_segment_header = type { i32, i32, i32, i32, [16 x i8] }
%struct.qlge_reg_dump = type { %struct.mpi_coredump_global_header, %struct.mpi_coredump_segment_header, [64 x i32], %struct.mpi_coredump_segment_header, %struct.qlge_nic_misc, %struct.mpi_coredump_segment_header, [8 x i32], %struct.mpi_coredump_segment_header, [144 x i32], %struct.mpi_coredump_segment_header, [16 x i32], %struct.mpi_coredump_segment_header, [10 x i32] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.100, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.114, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.100 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.114 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }

@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"No memory allocated\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed RISC pause. Status = 0x%.08x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"NIC1 Registers\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"NIC2 Registers\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"NIC1 XGMac Registers\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"NIC2 XGMac Registers\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"XAUI AN Registers\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"XAUI HSS PCS Registers\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"XFI AN Registers\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"XFI TRAIN Registers\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"XFI HSS PCS Registers\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"XFI HSS TX Registers\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"XFI HSS RX Registers\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"XFI HSS PLL Registers\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"XAUI2 AN Registers\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"XAUI2 HSS PCS Registers\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"XFI2 AN Registers\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"XFI2 TRAIN Registers\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"XFI2 HSS PCS Registers\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"XFI2 HSS TX Registers\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"XFI2 HSS RX Registers\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"XFI2 HSS PLL Registers\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Core Registers\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Test Logic Regs\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RMII Registers\00", [17 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"FCMAC1 Registers\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"FCMAC2 Registers\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"NIC1 MBox Regs\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SMBus Registers\00", [16 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"NIC2 MBox Regs\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MEMC Registers\00", [17 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PBUS Registers\00", [17 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed RISC unpause. Status = 0x%.08x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed RISC reset. Status = 0x%.08x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed Dump of CODE RAM. Status = 0x%.08x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed Dump of MEMC RAM. Status = 0x%.08x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"coredump failed!\0A\00", [46 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.55 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed read of mac index register\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed read of routing index register\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Bad type!!! 0x%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Don't own firmware!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Force Coredump can only be done from interface that is up\0A\00", [37 x i8] zeroinitializer }, align 32
@str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MPI Coredump\00\00\00\00\00", [47 x i8] zeroinitializer }, align 32
@str.61 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MPI Coredump\00\00\00\00\00", [47 x i8] zeroinitializer }, align 32
@str.62 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FC1 MBox Regs\00\00\00", [16 x i8] zeroinitializer }, align 32
@str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IDE Registers\00\00\00", [16 x i8] zeroinitializer }, align 32
@str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FC2 MBox Regs\00\00\00", [16 x i8] zeroinitializer }, align 32
@str.65 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"I2C Registers\00\00\00", [16 x i8] zeroinitializer }, align 32
@str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MDE Registers\00\00\00", [16 x i8] zeroinitializer }, align 32
@str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MISC NIC INFO\00\00\00", [16 x i8] zeroinitializer }, align 32
@str.68 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"INTR States\00\00\00\00\00", [16 x i8] zeroinitializer }, align 32
@str.69 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CAM Entries\00\00\00\00\00", [16 x i8] zeroinitializer }, align 32
@str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Routing Words\00\00\00", [16 x i8] zeroinitializer }, align 32
@str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ETS Registers\00\00\00", [16 x i8] zeroinitializer }, align 32
@str.72 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Probe Dump\00\00\00\00\00\00", [16 x i8] zeroinitializer }, align 32
@str.73 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Routing Regs\00\00\00\00", [16 x i8] zeroinitializer }, align 32
@str.74 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MAC Prot Regs\00\00\00", [16 x i8] zeroinitializer }, align 32
@str.75 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Sem Registers\00\00\00", [16 x i8] zeroinitializer }, align 32
@str.76 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"WCS RAM\00\00\00\00\00\00\00\00\00", [16 x i8] zeroinitializer }, align 32
@str.77 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MEMC RAM\00\00\00\00\00\00\00\00", [16 x i8] zeroinitializer }, align 32
@str.78 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MISC NIC INFO\00\00\00", [16 x i8] zeroinitializer }, align 32
@str.79 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"NIC Registers\00\00\00", [16 x i8] zeroinitializer }, align 32
@str.80 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"INTR States\00\00\00\00\00", [16 x i8] zeroinitializer }, align 32
@str.81 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CAM Entries\00\00\00\00\00", [16 x i8] zeroinitializer }, align 32
@str.82 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Routing Words\00\00\00", [16 x i8] zeroinitializer }, align 32
@str.83 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ETS Registers\00\00\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 718, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 730, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 750, i32 44 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 755, i32 45 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 761, i32 42 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 766, i32 42 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 798, i32 12 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 805, i32 12 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 810, i32 12 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 816, i32 12 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 822, i32 12 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 828, i32 12 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 834, i32 12 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 840, i32 12 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 846, i32 12 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 852, i32 12 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 858, i32 12 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 864, i32 12 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 870, i32 12 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 876, i32 12 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 882, i32 12 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 888, i32 12 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 903, i32 12 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 921, i32 12 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 932, i32 12 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 943, i32 12 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 955, i32 12 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 989, i32 12 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1000, i32 12 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1022, i32 12 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1044, i32 12 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1055, i32 12 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1158, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1166, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1179, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1194, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1309, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 426, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 462, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 649, i32 27 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1207, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.208 = private constant [35 x i8] c"../drivers/staging/qlge/qlge_dbg.c\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1212, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@___asan_gen_.211 = private unnamed_addr constant [7 x i8] c"str.61\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [7 x i8] c"str.62\00", align 1
@___asan_gen_.213 = private unnamed_addr constant [7 x i8] c"str.63\00", align 1
@___asan_gen_.214 = private unnamed_addr constant [7 x i8] c"str.64\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [7 x i8] c"str.65\00", align 1
@___asan_gen_.216 = private unnamed_addr constant [7 x i8] c"str.66\00", align 1
@___asan_gen_.217 = private unnamed_addr constant [7 x i8] c"str.67\00", align 1
@___asan_gen_.218 = private unnamed_addr constant [7 x i8] c"str.68\00", align 1
@___asan_gen_.219 = private unnamed_addr constant [7 x i8] c"str.69\00", align 1
@___asan_gen_.220 = private unnamed_addr constant [7 x i8] c"str.70\00", align 1
@___asan_gen_.221 = private unnamed_addr constant [7 x i8] c"str.71\00", align 1
@___asan_gen_.222 = private unnamed_addr constant [7 x i8] c"str.72\00", align 1
@___asan_gen_.223 = private unnamed_addr constant [7 x i8] c"str.73\00", align 1
@___asan_gen_.224 = private unnamed_addr constant [7 x i8] c"str.74\00", align 1
@___asan_gen_.225 = private unnamed_addr constant [7 x i8] c"str.75\00", align 1
@___asan_gen_.226 = private unnamed_addr constant [7 x i8] c"str.76\00", align 1
@___asan_gen_.227 = private unnamed_addr constant [7 x i8] c"str.77\00", align 1
@___asan_gen_.228 = private unnamed_addr constant [7 x i8] c"str.78\00", align 1
@___asan_gen_.229 = private unnamed_addr constant [7 x i8] c"str.79\00", align 1
@___asan_gen_.230 = private unnamed_addr constant [7 x i8] c"str.80\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [7 x i8] c"str.81\00", align 1
@___asan_gen_.232 = private unnamed_addr constant [7 x i8] c"str.82\00", align 1
@___asan_gen_.233 = private unnamed_addr constant [7 x i8] c"str.83\00", align 1
@llvm.compiler.used = appending global [66 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @str, ptr @str.61, ptr @str.62, ptr @str.63, ptr @str.64, ptr @str.65, ptr @str.66, ptr @str.67, ptr @str.68, ptr @str.69, ptr @str.70, ptr @str.71, ptr @str.72, ptr @str.73, ptr @str.74, ptr @str.75, ptr @str.76, ptr @str.77, ptr @str.78, ptr @str.79, ptr @str.80, ptr @str.81, ptr @str.82, ptr @str.83], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.61 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.62 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.65 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.68 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.69 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.72 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.73 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.74 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.75 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.76 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.77 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.78 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.79 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.80 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.81 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.82 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.83 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlge_core_dump(ptr noundef %qdev, ptr noundef %mpi_coredump) local_unnamed_addr #0 align 64 {
entry:
  %temp.i = alloca i32, align 4
  %reg_val.i462 = alloca i32, align 4
  %reg_val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mpi_coredump, null
  br i1 %tobool.not, label %do.body, label %if.end3

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 18
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.cleanup_crit_edge, label %if.then2

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %ndev = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 6
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str) #8
  br label %cleanup

if.end3:                                          ; preds = %entry
  %call = tail call i32 @qlge_sem_spinlock(ptr noundef %qdev, i32 noundef -1073741824) #5
  %call4 = tail call i32 @qlge_pause_mpi_risc(ptr noundef %qdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end16, label %do.body7

do.body7:                                         ; preds = %if.end3
  %msg_enable8 = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 18
  %4 = ptrtoint ptr %msg_enable8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable8, align 4
  %and9 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %do.body7.err_crit_edge, label %if.then11

do.body7.err_crit_edge:                           ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.then11:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #7
  %ndev12 = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 6
  %6 = ptrtoint ptr %ndev12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ndev12, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %7, ptr noundef nonnull @.str.1, i32 noundef %call4) #8
  br label %err

if.end16:                                         ; preds = %if.end3
  %8 = getelementptr inbounds i8, ptr %mpi_coredump, i32 20
  %9 = call ptr @memset(ptr %8, i32 0, i32 236)
  %10 = ptrtoint ptr %mpi_coredump to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1431677610, ptr %mpi_coredump, align 4
  %header_size = getelementptr inbounds %struct.mpi_coredump_global_header, ptr %mpi_coredump, i32 0, i32 5
  %11 = ptrtoint ptr %header_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 256, ptr %header_size, align 4
  %image_size = getelementptr inbounds %struct.mpi_coredump_global_header, ptr %mpi_coredump, i32 0, i32 4
  %12 = ptrtoint ptr %image_size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 176196, ptr %image_size, align 4
  %id_string = getelementptr inbounds %struct.mpi_coredump_global_header, ptr %mpi_coredump, i32 0, i32 1
  %13 = call ptr @memcpy(ptr %id_string, ptr @str, i32 16)
  %nic_regs_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 32
  %14 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 32, i32 3
  %15 = call ptr @memset(ptr %14, i32 0, i32 20)
  %16 = ptrtoint ptr %nic_regs_seg_hdr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1431677610, ptr %nic_regs_seg_hdr, align 4
  %seg_num.i = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 32, i32 1
  %17 = ptrtoint ptr %seg_num.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 16, ptr %seg_num.i, align 4
  %seg_size1.i = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 32, i32 2
  %18 = ptrtoint ptr %seg_size1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 288, ptr %seg_size1.i, align 4
  %description.i = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 32, i32 4
  %19 = call ptr @memcpy(ptr %description.i, ptr @.str.3, i32 15)
  %nic2_regs_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 34
  %20 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 34, i32 3
  %21 = call ptr @memset(ptr %20, i32 0, i32 20)
  %22 = ptrtoint ptr %nic2_regs_seg_hdr to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1431677610, ptr %nic2_regs_seg_hdr, align 4
  %seg_num.i446 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 34, i32 1
  %23 = ptrtoint ptr %seg_num.i446 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 17, ptr %seg_num.i446, align 4
  %seg_size1.i447 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 34, i32 2
  %24 = ptrtoint ptr %seg_size1.i447 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 288, ptr %seg_size1.i447, align 4
  %description.i448 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 34, i32 4
  %25 = call ptr @memcpy(ptr %description.i448, ptr @.str.4, i32 15)
  %xgmac1_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 36
  %26 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 36, i32 3
  %27 = call ptr @memset(ptr %26, i32 0, i32 20)
  %28 = ptrtoint ptr %xgmac1_seg_hdr to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1431677610, ptr %xgmac1_seg_hdr, align 4
  %seg_num.i450 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 36, i32 1
  %29 = ptrtoint ptr %seg_num.i450 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 18, ptr %seg_num.i450, align 4
  %seg_size1.i451 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 36, i32 2
  %30 = ptrtoint ptr %seg_size1.i451 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1888, ptr %seg_size1.i451, align 4
  %description.i452 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 36, i32 4
  %31 = call ptr @memcpy(ptr %description.i452, ptr @.str.5, i32 15)
  %xgmac2_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 38
  %32 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 38, i32 3
  %33 = call ptr @memset(ptr %32, i32 0, i32 20)
  %34 = ptrtoint ptr %xgmac2_seg_hdr to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1431677610, ptr %xgmac2_seg_hdr, align 4
  %seg_num.i454 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 38, i32 1
  %35 = ptrtoint ptr %seg_num.i454 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 19, ptr %seg_num.i454, align 4
  %seg_size1.i455 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 38, i32 2
  %36 = ptrtoint ptr %seg_size1.i455 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1888, ptr %seg_size1.i455, align 4
  %description.i456 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 38, i32 4
  %37 = call ptr @memcpy(ptr %description.i456, ptr @.str.6, i32 15)
  %func = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 10
  %38 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %func, align 4
  %and22 = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  %reg_base.i460 = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 15
  br i1 %tobool23.not, label %if.end16.for.body41_crit_edge, label %if.end16.for.body_crit_edge

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  br label %for.body

if.end16.for.body41_crit_edge:                    ; preds = %if.end16
  br label %for.body41

for.cond26.preheader:                             ; preds = %for.body
  %alt_func.i = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 11
  br label %for.body28

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end16.for.body_crit_edge
  %i.0910 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end16.for.body_crit_edge ]
  %mul = shl i32 %i.0910, 2
  %40 = ptrtoint ptr %reg_base.i460 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg_base.i460, align 8
  %add.ptr.i = getelementptr i8, ptr %41, i32 %mul
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !131
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  %arrayidx = getelementptr %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 35, i32 %i.0910
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.0910, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.cond26.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body28:                                       ; preds = %qlge_read_other_func_reg.exit.for.body28_crit_edge, %for.cond26.preheader
  %i.1911 = phi i32 [ 0, %for.cond26.preheader ], [ %inc33, %qlge_read_other_func_reg.exit.for.body28_crit_edge ]
  %mul29 = and i32 %i.1911, 1073610751
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val.i) #5
  %45 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %reg_val.i, align 4, !annotation !133
  %46 = ptrtoint ptr %alt_func.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %alt_func.i, align 8
  %shl.i = shl i32 %47, 6
  %or.i = or i32 %mul29, %shl.i
  %or1.i = or i32 %or.i, 131072
  %call.i458 = call i32 @qlge_read_mpi_reg(ptr noundef %qdev, i32 noundef %or1.i, ptr noundef nonnull %reg_val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i458)
  %cmp.not.i = icmp eq i32 %call.i458, 0
  br i1 %cmp.not.i, label %if.end.i, label %for.body28.qlge_read_other_func_reg.exit_crit_edge

for.body28.qlge_read_other_func_reg.exit_crit_edge: ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #7
  br label %qlge_read_other_func_reg.exit

if.end.i:                                         ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %reg_val.i, align 4
  br label %qlge_read_other_func_reg.exit

qlge_read_other_func_reg.exit:                    ; preds = %if.end.i, %for.body28.qlge_read_other_func_reg.exit_crit_edge
  %retval.0.i = phi i32 [ %49, %if.end.i ], [ -1, %for.body28.qlge_read_other_func_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val.i) #5
  %arrayidx31 = getelementptr %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 33, i32 %i.1911
  %50 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %retval.0.i, ptr %arrayidx31, align 4
  %inc33 = add nuw nsw i32 %i.1911, 1
  %exitcond944.not = icmp eq i32 %inc33, 64
  br i1 %exitcond944.not, label %if.then.i, label %qlge_read_other_func_reg.exit.for.body28_crit_edge

qlge_read_other_func_reg.exit.for.body28_crit_edge: ; preds = %qlge_read_other_func_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body28

if.then.i:                                        ; preds = %qlge_read_other_func_reg.exit
  %incdec.ptr.i.4 = getelementptr %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 39, i32 5
  %call59.i = call i32 @qlge_read_xgmac_reg(ptr noundef %qdev, i32 noundef 276, ptr noundef %incdec.ptr.i.4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i)
  %tobool60.not.i = icmp eq i32 %call59.i, 0
  br i1 %tobool60.not.i, label %if.then.i.qlge_get_xgmac_regs.exit_crit_edge, label %for.end.sink.split.i

if.then.i.qlge_get_xgmac_regs.exit_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qlge_get_xgmac_regs.exit

for.end.sink.split.i:                             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %incdec.ptr.i.4 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -559038737, ptr %incdec.ptr.i.4, align 4
  br label %qlge_get_xgmac_regs.exit

qlge_get_xgmac_regs.exit:                         ; preds = %for.end.sink.split.i, %if.then.i.qlge_get_xgmac_regs.exit_crit_edge
  %xgmac1 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 37
  br label %if.end66

for.cond49.preheader:                             ; preds = %for.body41
  %alt_func.i463 = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 11
  br label %for.body51

for.body41:                                       ; preds = %for.body41.for.body41_crit_edge, %if.end16.for.body41_crit_edge
  %i.2912 = phi i32 [ %inc47, %for.body41.for.body41_crit_edge ], [ 0, %if.end16.for.body41_crit_edge ]
  %mul42 = shl i32 %i.2912, 2
  %52 = ptrtoint ptr %reg_base.i460 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %reg_base.i460, align 8
  %add.ptr.i461 = getelementptr i8, ptr %53, i32 %mul42
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i461) #5, !srcloc !131
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  %arrayidx45 = getelementptr %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 33, i32 %i.2912
  %56 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %arrayidx45, align 4
  %inc47 = add nuw nsw i32 %i.2912, 1
  %exitcond945.not = icmp eq i32 %inc47, 64
  br i1 %exitcond945.not, label %for.cond49.preheader, label %for.body41.for.body41_crit_edge

for.body41.for.body41_crit_edge:                  ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body41

for.body51:                                       ; preds = %qlge_read_other_func_reg.exit471.for.body51_crit_edge, %for.cond49.preheader
  %i.3913 = phi i32 [ 0, %for.cond49.preheader ], [ %inc58, %qlge_read_other_func_reg.exit471.for.body51_crit_edge ]
  %mul52 = and i32 %i.3913, 1073610751
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val.i462) #5
  %57 = ptrtoint ptr %reg_val.i462 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %reg_val.i462, align 4, !annotation !133
  %58 = ptrtoint ptr %alt_func.i463 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %alt_func.i463, align 8
  %shl.i464 = shl i32 %59, 6
  %or.i465 = or i32 %mul52, %shl.i464
  %or1.i466 = or i32 %or.i465, 131072
  %call.i467 = call i32 @qlge_read_mpi_reg(ptr noundef %qdev, i32 noundef %or1.i466, ptr noundef nonnull %reg_val.i462) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i467)
  %cmp.not.i468 = icmp eq i32 %call.i467, 0
  br i1 %cmp.not.i468, label %if.end.i469, label %for.body51.qlge_read_other_func_reg.exit471_crit_edge

for.body51.qlge_read_other_func_reg.exit471_crit_edge: ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #7
  br label %qlge_read_other_func_reg.exit471

if.end.i469:                                      ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #7
  %60 = ptrtoint ptr %reg_val.i462 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %reg_val.i462, align 4
  br label %qlge_read_other_func_reg.exit471

qlge_read_other_func_reg.exit471:                 ; preds = %if.end.i469, %for.body51.qlge_read_other_func_reg.exit471_crit_edge
  %retval.0.i470 = phi i32 [ %61, %if.end.i469 ], [ -1, %for.body51.qlge_read_other_func_reg.exit471_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val.i462) #5
  %arrayidx56 = getelementptr %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 35, i32 %i.3913
  %62 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %retval.0.i470, ptr %arrayidx56, align 4
  %inc58 = add nuw nsw i32 %i.3913, 1
  %exitcond946.not = icmp eq i32 %inc58, 64
  br i1 %exitcond946.not, label %if.then.i479, label %qlge_read_other_func_reg.exit471.for.body51_crit_edge

qlge_read_other_func_reg.exit471.for.body51_crit_edge: ; preds = %qlge_read_other_func_reg.exit471
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body51

if.then.i479:                                     ; preds = %qlge_read_other_func_reg.exit471
  %incdec.ptr.i484.4 = getelementptr %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 37, i32 5
  %call59.i480 = call i32 @qlge_read_xgmac_reg(ptr noundef %qdev, i32 noundef 276, ptr noundef %incdec.ptr.i484.4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i480)
  %tobool60.not.i481 = icmp eq i32 %call59.i480, 0
  br i1 %tobool60.not.i481, label %if.then.i479.qlge_get_xgmac_regs.exit487_crit_edge, label %for.end.sink.split.i486

if.then.i479.qlge_get_xgmac_regs.exit487_crit_edge: ; preds = %if.then.i479
  call void @__sanitizer_cov_trace_pc() #7
  br label %qlge_get_xgmac_regs.exit487

for.end.sink.split.i486:                          ; preds = %if.then.i479
  call void @__sanitizer_cov_trace_pc() #7
  %63 = ptrtoint ptr %incdec.ptr.i484.4 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -559038737, ptr %incdec.ptr.i484.4, align 4
  br label %qlge_get_xgmac_regs.exit487

qlge_get_xgmac_regs.exit487:                      ; preds = %for.end.sink.split.i486, %if.then.i479.qlge_get_xgmac_regs.exit487_crit_edge
  %xgmac263 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 39
  br label %if.end66

if.end66:                                         ; preds = %qlge_get_xgmac_regs.exit487, %qlge_get_xgmac_regs.exit
  %xgmac263.sink = phi ptr [ %xgmac263, %qlge_get_xgmac_regs.exit487 ], [ %xgmac1, %qlge_get_xgmac_regs.exit ]
  call fastcc void @qlge_get_xgmac_regs(ptr noundef %qdev, ptr noundef %xgmac263.sink, i32 noundef 1)
  %xaui_an_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 44
  %64 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 44, i32 3
  %65 = call ptr @memset(ptr %64, i32 0, i32 20)
  %66 = ptrtoint ptr %xaui_an_hdr to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1431677610, ptr %xaui_an_hdr, align 4
  %seg_num.i488 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 44, i32 1
  %67 = ptrtoint ptr %seg_num.i488 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 22, ptr %seg_num.i488, align 4
  %seg_size1.i489 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 44, i32 2
  %68 = ptrtoint ptr %seg_size1.i489 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 88, ptr %seg_size1.i489, align 4
  %description.i490 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 44, i32 4
  %69 = call ptr @memcpy(ptr %description.i490, ptr @.str.7, i32 15)
  %xaui_hss_pcs_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 46
  %70 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 46, i32 3
  %71 = call ptr @memset(ptr %70, i32 0, i32 20)
  %72 = ptrtoint ptr %xaui_hss_pcs_hdr to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 1431677610, ptr %xaui_hss_pcs_hdr, align 4
  %seg_num.i492 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 46, i32 1
  %73 = ptrtoint ptr %seg_num.i492 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 23, ptr %seg_num.i492, align 4
  %seg_size1.i493 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 46, i32 2
  %74 = ptrtoint ptr %seg_size1.i493 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 164, ptr %seg_size1.i493, align 4
  %description.i494 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 46, i32 4
  %75 = call ptr @memcpy(ptr %description.i494, ptr @.str.8, i32 15)
  %xfi_an_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 48
  %76 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 48, i32 3
  %77 = call ptr @memset(ptr %76, i32 0, i32 20)
  %78 = ptrtoint ptr %xfi_an_hdr to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 1431677610, ptr %xfi_an_hdr, align 4
  %seg_num.i496 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 48, i32 1
  %79 = ptrtoint ptr %seg_num.i496 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 24, ptr %seg_num.i496, align 4
  %seg_size1.i497 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 48, i32 2
  %80 = ptrtoint ptr %seg_size1.i497 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 88, ptr %seg_size1.i497, align 4
  %description.i498 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 48, i32 4
  %81 = call ptr @memcpy(ptr %description.i498, ptr @.str.9, i32 15)
  %xfi_train_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 50
  %82 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 50, i32 3
  %83 = call ptr @memset(ptr %82, i32 0, i32 20)
  %84 = ptrtoint ptr %xfi_train_hdr to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1431677610, ptr %xfi_train_hdr, align 4
  %seg_num.i500 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 50, i32 1
  %85 = ptrtoint ptr %seg_num.i500 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 25, ptr %seg_num.i500, align 4
  %seg_size1.i501 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 50, i32 2
  %86 = ptrtoint ptr %seg_size1.i501 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 80, ptr %seg_size1.i501, align 4
  %description.i502 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 50, i32 4
  %87 = call ptr @memcpy(ptr %description.i502, ptr @.str.10, i32 15)
  %xfi_hss_pcs_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 52
  %88 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 52, i32 3
  %89 = call ptr @memset(ptr %88, i32 0, i32 20)
  %90 = ptrtoint ptr %xfi_hss_pcs_hdr to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 1431677610, ptr %xfi_hss_pcs_hdr, align 4
  %seg_num.i504 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 52, i32 1
  %91 = ptrtoint ptr %seg_num.i504 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 26, ptr %seg_num.i504, align 4
  %seg_size1.i505 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 52, i32 2
  %92 = ptrtoint ptr %seg_size1.i505 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 92, ptr %seg_size1.i505, align 4
  %description.i506 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 52, i32 4
  %93 = call ptr @memcpy(ptr %description.i506, ptr @.str.11, i32 15)
  %xfi_hss_tx_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 54
  %94 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 54, i32 3
  %95 = call ptr @memset(ptr %94, i32 0, i32 20)
  %96 = ptrtoint ptr %xfi_hss_tx_hdr to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 1431677610, ptr %xfi_hss_tx_hdr, align 4
  %seg_num.i508 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 54, i32 1
  %97 = ptrtoint ptr %seg_num.i508 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 27, ptr %seg_num.i508, align 4
  %seg_size1.i509 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 54, i32 2
  %98 = ptrtoint ptr %seg_size1.i509 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 160, ptr %seg_size1.i509, align 4
  %description.i510 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 54, i32 4
  %99 = call ptr @memcpy(ptr %description.i510, ptr @.str.12, i32 15)
  %xfi_hss_rx_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 56
  %100 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 56, i32 3
  %101 = call ptr @memset(ptr %100, i32 0, i32 20)
  %102 = ptrtoint ptr %xfi_hss_rx_hdr to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 1431677610, ptr %xfi_hss_rx_hdr, align 4
  %seg_num.i512 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 56, i32 1
  %103 = ptrtoint ptr %seg_num.i512 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 28, ptr %seg_num.i512, align 4
  %seg_size1.i513 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 56, i32 2
  %104 = ptrtoint ptr %seg_size1.i513 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 160, ptr %seg_size1.i513, align 4
  %description.i514 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 56, i32 4
  %105 = call ptr @memcpy(ptr %description.i514, ptr @.str.13, i32 15)
  %xfi_hss_pll_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 58
  %106 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 58, i32 3
  %107 = call ptr @memset(ptr %106, i32 0, i32 20)
  %108 = ptrtoint ptr %xfi_hss_pll_hdr to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 1431677610, ptr %xfi_hss_pll_hdr, align 4
  %seg_num.i516 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 58, i32 1
  %109 = ptrtoint ptr %seg_num.i516 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 29, ptr %seg_num.i516, align 4
  %seg_size1.i517 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 58, i32 2
  %110 = ptrtoint ptr %seg_size1.i517 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 160, ptr %seg_size1.i517, align 4
  %description.i518 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 58, i32 4
  %111 = call ptr @memcpy(ptr %description.i518, ptr @.str.14, i32 15)
  %xaui2_an_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 76
  %112 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 76, i32 3
  %113 = call ptr @memset(ptr %112, i32 0, i32 20)
  %114 = ptrtoint ptr %xaui2_an_hdr to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 1431677610, ptr %xaui2_an_hdr, align 4
  %seg_num.i520 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 76, i32 1
  %115 = ptrtoint ptr %seg_num.i520 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 38, ptr %seg_num.i520, align 4
  %seg_size1.i521 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 76, i32 2
  %116 = ptrtoint ptr %seg_size1.i521 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 88, ptr %seg_size1.i521, align 4
  %description.i522 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 76, i32 4
  %117 = call ptr @memcpy(ptr %description.i522, ptr @.str.15, i32 15)
  %xaui2_hss_pcs_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 78
  %118 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 78, i32 3
  %119 = call ptr @memset(ptr %118, i32 0, i32 20)
  %120 = ptrtoint ptr %xaui2_hss_pcs_hdr to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 1431677610, ptr %xaui2_hss_pcs_hdr, align 4
  %seg_num.i524 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 78, i32 1
  %121 = ptrtoint ptr %seg_num.i524 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 39, ptr %seg_num.i524, align 4
  %seg_size1.i525 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 78, i32 2
  %122 = ptrtoint ptr %seg_size1.i525 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 164, ptr %seg_size1.i525, align 4
  %description.i526 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 78, i32 4
  %123 = call ptr @memcpy(ptr %description.i526, ptr @.str.16, i32 15)
  %xfi2_an_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 80
  %124 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 80, i32 3
  %125 = call ptr @memset(ptr %124, i32 0, i32 20)
  %126 = ptrtoint ptr %xfi2_an_hdr to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 1431677610, ptr %xfi2_an_hdr, align 4
  %seg_num.i528 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 80, i32 1
  %127 = ptrtoint ptr %seg_num.i528 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 40, ptr %seg_num.i528, align 4
  %seg_size1.i529 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 80, i32 2
  %128 = ptrtoint ptr %seg_size1.i529 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 88, ptr %seg_size1.i529, align 4
  %description.i530 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 80, i32 4
  %129 = call ptr @memcpy(ptr %description.i530, ptr @.str.17, i32 15)
  %xfi2_train_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 82
  %130 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 82, i32 3
  %131 = call ptr @memset(ptr %130, i32 0, i32 20)
  %132 = ptrtoint ptr %xfi2_train_hdr to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 1431677610, ptr %xfi2_train_hdr, align 4
  %seg_num.i532 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 82, i32 1
  %133 = ptrtoint ptr %seg_num.i532 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 41, ptr %seg_num.i532, align 4
  %seg_size1.i533 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 82, i32 2
  %134 = ptrtoint ptr %seg_size1.i533 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 80, ptr %seg_size1.i533, align 4
  %description.i534 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 82, i32 4
  %135 = call ptr @memcpy(ptr %description.i534, ptr @.str.18, i32 15)
  %xfi2_hss_pcs_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 84
  %136 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 84, i32 3
  %137 = call ptr @memset(ptr %136, i32 0, i32 20)
  %138 = ptrtoint ptr %xfi2_hss_pcs_hdr to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 1431677610, ptr %xfi2_hss_pcs_hdr, align 4
  %seg_num.i536 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 84, i32 1
  %139 = ptrtoint ptr %seg_num.i536 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 42, ptr %seg_num.i536, align 4
  %seg_size1.i537 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 84, i32 2
  %140 = ptrtoint ptr %seg_size1.i537 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 92, ptr %seg_size1.i537, align 4
  %description.i538 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 84, i32 4
  %141 = call ptr @memcpy(ptr %description.i538, ptr @.str.19, i32 15)
  %xfi2_hss_tx_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 86
  %142 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 86, i32 3
  %143 = call ptr @memset(ptr %142, i32 0, i32 20)
  %144 = ptrtoint ptr %xfi2_hss_tx_hdr to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 1431677610, ptr %xfi2_hss_tx_hdr, align 4
  %seg_num.i540 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 86, i32 1
  %145 = ptrtoint ptr %seg_num.i540 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 43, ptr %seg_num.i540, align 4
  %seg_size1.i541 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 86, i32 2
  %146 = ptrtoint ptr %seg_size1.i541 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 160, ptr %seg_size1.i541, align 4
  %description.i542 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 86, i32 4
  %147 = call ptr @memcpy(ptr %description.i542, ptr @.str.20, i32 15)
  %xfi2_hss_rx_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 88
  %148 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 88, i32 3
  %149 = call ptr @memset(ptr %148, i32 0, i32 20)
  %150 = ptrtoint ptr %xfi2_hss_rx_hdr to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 1431677610, ptr %xfi2_hss_rx_hdr, align 4
  %seg_num.i544 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 88, i32 1
  %151 = ptrtoint ptr %seg_num.i544 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 44, ptr %seg_num.i544, align 4
  %seg_size1.i545 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 88, i32 2
  %152 = ptrtoint ptr %seg_size1.i545 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 160, ptr %seg_size1.i545, align 4
  %description.i546 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 88, i32 4
  %153 = call ptr @memcpy(ptr %description.i546, ptr @.str.21, i32 15)
  %xfi2_hss_pll_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 90
  %154 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 90, i32 3
  %155 = call ptr @memset(ptr %154, i32 0, i32 20)
  %156 = ptrtoint ptr %xfi2_hss_pll_hdr to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 1431677610, ptr %xfi2_hss_pll_hdr, align 4
  %seg_num.i548 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 90, i32 1
  %157 = ptrtoint ptr %seg_num.i548 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 45, ptr %seg_num.i548, align 4
  %seg_size1.i549 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 90, i32 2
  %158 = ptrtoint ptr %seg_size1.i549 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 160, ptr %seg_size1.i549, align 4
  %description.i550 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 90, i32 4
  %159 = call ptr @memcpy(ptr %description.i550, ptr @.str.22, i32 15)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i) #5
  %160 = ptrtoint ptr %temp.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 -1, ptr %temp.i, align 4, !annotation !133
  %call.i552 = call fastcc i32 @qlge_read_other_func_serdes_reg(ptr noundef %qdev, i32 noundef 2048, ptr noundef nonnull %temp.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i552)
  %tobool.not.i = icmp eq i32 %call.i552, 0
  br i1 %tobool.not.i, label %if.end66.if.end.i555_crit_edge, label %if.then.i553

if.end66.if.end.i555_crit_edge:                   ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i555

if.then.i553:                                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  %161 = ptrtoint ptr %temp.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 1, ptr %temp.i, align 4
  br label %if.end.i555

if.end.i555:                                      ; preds = %if.then.i553, %if.end66.if.end.i555_crit_edge
  %162 = ptrtoint ptr %temp.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %temp.i, align 4
  %and.i = and i32 %163, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i554 = icmp eq i32 %and.i, 0
  %call.i.i = call i32 @qlge_wait_reg_rdy(ptr noundef %qdev, i32 noundef 240, i32 noundef -2147483648, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i555.if.end6.i_crit_edge

if.end.i555.if.end6.i_crit_edge:                  ; preds = %if.end.i555
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i

if.end.i.i:                                       ; preds = %if.end.i555
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  call void @arm_heavy_mb() #5
  %reg_base.i.i.i = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 15
  %164 = ptrtoint ptr %reg_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %reg_base.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %165, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 524352) #5, !srcloc !135
  %call1.i.i = call i32 @qlge_wait_reg_rdy(ptr noundef %qdev, i32 noundef 240, i32 noundef -2147483648, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %qlge_read_serdes_reg.exit.i, label %if.end.i.i.if.end6.i_crit_edge

if.end.i.i.if.end6.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i

qlge_read_serdes_reg.exit.i:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %166 = ptrtoint ptr %reg_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %reg_base.i.i.i, align 8
  %add.ptr.i12.i.i = getelementptr i8, ptr %167, i32 244
  %168 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i.i) #5, !srcloc !131
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  %169 = and i32 %168, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %phi.cmp.i = icmp eq i32 %169, 0
  br label %if.end6.i

if.end6.i:                                        ; preds = %qlge_read_serdes_reg.exit.i, %if.end.i.i.if.end6.i_crit_edge, %if.end.i555.if.end6.i_crit_edge
  %storemerge.i = phi i1 [ %phi.cmp.i, %qlge_read_serdes_reg.exit.i ], [ false, %if.end.i555.if.end6.i_crit_edge ], [ false, %if.end.i.i.if.end6.i_crit_edge ]
  %call.i4.i = call i32 @qlge_wait_reg_rdy(ptr noundef %qdev, i32 noundef 240, i32 noundef -2147483648, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i)
  %tobool.not.i5.i = icmp eq i32 %call.i4.i, 0
  br i1 %tobool.not.i5.i, label %if.end.i10.i, label %if.end6.i.if.end22.thread.i_crit_edge

if.end6.i.if.end22.thread.i_crit_edge:            ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22.thread.i

if.end.i10.i:                                     ; preds = %if.end6.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  call void @arm_heavy_mb() #5
  %reg_base.i.i6.i = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 15
  %170 = ptrtoint ptr %reg_base.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %reg_base.i.i6.i, align 8
  %add.ptr.i.i7.i = getelementptr i8, ptr %171, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i, i32 102629440) #5, !srcloc !135
  %call1.i8.i = call i32 @qlge_wait_reg_rdy(ptr noundef %qdev, i32 noundef 240, i32 noundef -2147483648, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i8.i)
  %tobool2.not.i9.i = icmp eq i32 %call1.i8.i, 0
  br i1 %tobool2.not.i9.i, label %if.end14.i, label %if.end.i10.i.if.end22.thread.i_crit_edge

if.end.i10.i.if.end22.thread.i_crit_edge:         ; preds = %if.end.i10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22.thread.i

if.end22.thread.i:                                ; preds = %if.end.i10.i.if.end22.thread.i_crit_edge, %if.end6.i.if.end22.thread.i_crit_edge
  %172 = ptrtoint ptr %temp.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 0, ptr %temp.i, align 4
  br label %if.end32.i

if.end14.i:                                       ; preds = %if.end.i10.i
  %173 = ptrtoint ptr %reg_base.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %reg_base.i.i6.i, align 8
  %add.ptr.i12.i11.i = getelementptr i8, ptr %174, i32 244
  %175 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i11.i) #5, !srcloc !131
  %176 = call i32 @llvm.bswap.i32(i32 %175) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  %177 = ptrtoint ptr %temp.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %176, ptr %temp.i, align 4
  %and15.i = and i32 %176, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and15.i)
  %cmp16.i = icmp eq i32 %and15.i, 5
  br i1 %cmp16.i, label %if.then17.i, label %if.end14.i.if.end22.i_crit_edge

if.end14.i.if.end22.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  %178 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %func, align 4
  %and18.i = and i32 %179, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  %not.tobool19.not.i = xor i1 %tobool19.not.i, true
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then17.i, %if.end14.i.if.end22.i_crit_edge
  %xfi_direct_valid.0.off0.i = phi i1 [ false, %if.end14.i.if.end22.i_crit_edge ], [ %tobool19.not.i, %if.then17.i ]
  %xfi_indirect_valid.0.off0.i = phi i1 [ false, %if.end14.i.if.end22.i_crit_edge ], [ %not.tobool19.not.i, %if.then17.i ]
  %and23.i = and i32 %176, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and23.i)
  %cmp24.i = icmp eq i32 %and23.i, 10
  br i1 %cmp24.i, label %if.then25.i, label %if.end22.i.if.end32.i_crit_edge

if.end22.i.if.end32.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32.i

if.then25.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  %180 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %func, align 4
  %and27.i = and i32 %181, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  %not.tobool28.not.i = xor i1 %tobool28.not.i, true
  %xfi_direct_valid.0.off0..i = select i1 %not.tobool28.not.i, i1 true, i1 %xfi_direct_valid.0.off0.i
  %.xfi_indirect_valid.0.off0.i = select i1 %tobool28.not.i, i1 true, i1 %xfi_indirect_valid.0.off0.i
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then25.i, %if.end22.i.if.end32.i_crit_edge, %if.end22.thread.i
  %xfi_direct_valid.1.off0.i = phi i1 [ %xfi_direct_valid.0.off0.i, %if.end22.i.if.end32.i_crit_edge ], [ %xfi_direct_valid.0.off0..i, %if.then25.i ], [ false, %if.end22.thread.i ]
  %xfi_indirect_valid.1.off0.i = phi i1 [ %xfi_indirect_valid.0.off0.i, %if.end22.i.if.end32.i_crit_edge ], [ %.xfi_indirect_valid.0.off0.i, %if.then25.i ], [ false, %if.end22.thread.i ]
  %182 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %func, align 4
  %and34.i = and i32 %183, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  %serdes2_xaui_an.i = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 77
  %serdes_xaui_an.i = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 45
  %direct_ptr.0.i = select i1 %tobool35.not.i, ptr %serdes_xaui_an.i, ptr %serdes2_xaui_an.i
  %indirect_ptr.0.i = select i1 %tobool35.not.i, ptr %serdes2_xaui_an.i, ptr %serdes_xaui_an.i
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 0, ptr noundef %direct_ptr.0.i, ptr noundef %indirect_ptr.0.i, i1 noundef zeroext %storemerge.i, i1 noundef zeroext %cmp.not.i554) #5
  %incdec.ptr.i556 = getelementptr i32, ptr %direct_ptr.0.i, i32 1
  %incdec.ptr47.i = getelementptr i32, ptr %indirect_ptr.0.i, i32 1
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 4, ptr noundef %incdec.ptr.i556, ptr noundef %incdec.ptr47.i, i1 noundef zeroext %storemerge.i, i1 noundef zeroext %cmp.not.i554) #5
  %incdec.ptr.1.i = getelementptr i32, ptr %direct_ptr.0.i, i32 2
  %incdec.ptr47.1.i = getelementptr i32, ptr %indirect_ptr.0.i, i32 2
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 8, ptr noundef %incdec.ptr.1.i, ptr noundef %incdec.ptr47.1.i, i1 noundef zeroext %storemerge.i, i1 noundef zeroext %cmp.not.i554) #5
  %incdec.ptr.2.i = getelementptr i32, ptr %direct_ptr.0.i, i32 3
  %incdec.ptr47.2.i = getelementptr i32, ptr %indirect_ptr.0.i, i32 3
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 12, ptr noundef %incdec.ptr.2.i, ptr noundef %incdec.ptr47.2.i, i1 noundef zeroext %storemerge.i, i1 noundef zeroext %cmp.not.i554) #5
  %incdec.ptr.3.i = getelementptr i32, ptr %direct_ptr.0.i, i32 4
  %incdec.ptr47.3.i = getelementptr i32, ptr %indirect_ptr.0.i, i32 4
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 16, ptr noundef %incdec.ptr.3.i, ptr noundef %incdec.ptr47.3.i, i1 noundef zeroext %storemerge.i, i1 noundef zeroext %cmp.not.i554) #5
  %incdec.ptr.4.i = getelementptr i32, ptr %direct_ptr.0.i, i32 5
  %incdec.ptr47.4.i = getelementptr i32, ptr %indirect_ptr.0.i, i32 5
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 20, ptr noundef %incdec.ptr.4.i, ptr noundef %incdec.ptr47.4.i, i1 noundef zeroext %storemerge.i, i1 noundef zeroext %cmp.not.i554) #5
  %incdec.ptr.5.i = getelementptr i32, ptr %direct_ptr.0.i, i32 6
  %incdec.ptr47.5.i = getelementptr i32, ptr %indirect_ptr.0.i, i32 6
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 24, ptr noundef %incdec.ptr.5.i, ptr noundef %incdec.ptr47.5.i, i1 noundef zeroext %storemerge.i, i1 noundef zeroext %cmp.not.i554) #5
  %incdec.ptr.6.i = getelementptr i32, ptr %direct_ptr.0.i, i32 7
  %incdec.ptr47.6.i = getelementptr i32, ptr %indirect_ptr.0.i, i32 7
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 28, ptr noundef %incdec.ptr.6.i, ptr noundef %incdec.ptr47.6.i, i1 noundef zeroext %storemerge.i, i1 noundef zeroext %cmp.not.i554) #5
  %incdec.ptr.7.i = getelementptr i32, ptr %direct_ptr.0.i, i32 8
  %incdec.ptr47.7.i = getelementptr i32, ptr %indirect_ptr.0.i, i32 8
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 32, ptr noundef %incdec.ptr.7.i, ptr noundef %incdec.ptr47.7.i, i1 noundef zeroext %storemerge.i, i1 noundef zeroext %cmp.not.i554) #5
  %incdec.ptr.8.i = getelementptr i32, ptr %direct_ptr.0.i, i32 9
  %incdec.ptr47.8.i = getelementptr i32, ptr %indirect_ptr.0.i, i32 9
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 36, ptr noundef %incdec.ptr.8.i, ptr noundef %incdec.ptr47.8.i, i1 noundef zeroext %storemerge.i, i1 noundef zeroext %cmp.not.i554) #5
  %incdec.ptr.9.i = getelementptr i32, ptr %direct_ptr.0.i, i32 10
  %incdec.ptr47.9.i = getelementptr i32, ptr %indirect_ptr.0.i, i32 10
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 40, ptr noundef %incdec.ptr.9.i, ptr noundef %incdec.ptr47.9.i, i1 noundef zeroext %storemerge.i, i1 noundef zeroext %cmp.not.i554) #5
  %incdec.ptr.10.i = getelementptr i32, ptr %direct_ptr.0.i, i32 11
  %incdec.ptr47.10.i = getelementptr i32, ptr %indirect_ptr.0.i, i32 11
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 44, ptr noundef %incdec.ptr.10.i, ptr noundef %incdec.ptr47.10.i, i1 noundef zeroext %storemerge.i, i1 noundef zeroext %cmp.not.i554) #5
  %incdec.ptr.11.i = getelementptr i32, ptr %direct_ptr.0.i, i32 12
  %incdec.ptr47.11.i = getelementptr i32, ptr %indirect_ptr.0.i, i32 12
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 48, ptr noundef %incdec.ptr.11.i, ptr noundef %incdec.ptr47.11.i, i1 noundef zeroext %storemerge.i, i1 noundef zeroext %cmp.not.i554) #5
  %incdec.ptr.12.i = getelementptr i32, ptr %direct_ptr.0.i, i32 13
  %incdec.ptr47.12.i = getelementptr i32, ptr %indirect_ptr.0.i, i32 13
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 52, ptr noundef %incdec.ptr.12.i, ptr noundef %incdec.ptr47.12.i, i1 noundef zeroext %storemerge.i, i1 noundef zeroext %cmp.not.i554) #5
  %184 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %func, align 4
  %and49.i = and i32 %185, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i)
  %tobool50.not.i = icmp eq i32 %and49.i, 0
  %serdes2_xaui_hss_pcs.i = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 79
  %serdes_xaui_hss_pcs.i = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 47
  %direct_ptr.2.i = select i1 %tobool50.not.i, ptr %serdes_xaui_hss_pcs.i, ptr %serdes2_xaui_hss_pcs.i
  %indirect_ptr.2.i = select i1 %tobool50.not.i, ptr %serdes2_xaui_hss_pcs.i, ptr %serdes_xaui_hss_pcs.i
  br label %for.body62.i

for.body62.i:                                     ; preds = %for.body62.i.for.body62.i_crit_edge, %if.end32.i
  %indirect_ptr.325.i = phi ptr [ %indirect_ptr.2.i, %if.end32.i ], [ %incdec.ptr68.i, %for.body62.i.for.body62.i_crit_edge ]
  %direct_ptr.324.i = phi ptr [ %direct_ptr.2.i, %if.end32.i ], [ %incdec.ptr67.i, %for.body62.i.for.body62.i_crit_edge ]
  %i.123.i = phi i32 [ 2048, %if.end32.i ], [ %add66.i, %for.body62.i.for.body62.i_crit_edge ]
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef %i.123.i, ptr noundef %direct_ptr.324.i, ptr noundef %indirect_ptr.325.i, i1 noundef zeroext %storemerge.i, i1 noundef zeroext %cmp.not.i554) #5
  %add66.i = add nuw nsw i32 %i.123.i, 4
  %incdec.ptr67.i = getelementptr i32, ptr %direct_ptr.324.i, i32 1
  %incdec.ptr68.i = getelementptr i32, ptr %indirect_ptr.325.i, i32 1
  %cmp61.i = icmp ult i32 %i.123.i, 2173
  br i1 %cmp61.i, label %for.body62.i.for.body62.i_crit_edge, label %for.end69.i

for.body62.i.for.body62.i_crit_edge:              ; preds = %for.body62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body62.i

for.end69.i:                                      ; preds = %for.body62.i
  %186 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %func, align 4
  %and71.i = and i32 %187, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.i)
  %tobool72.not.i = icmp eq i32 %and71.i, 0
  %serdes2_xfi_an.i = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 81
  %serdes_xfi_an.i = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 49
  %direct_ptr.4.i = select i1 %tobool72.not.i, ptr %serdes_xfi_an.i, ptr %serdes2_xfi_an.i
  %indirect_ptr.4.i = select i1 %tobool72.not.i, ptr %serdes2_xfi_an.i, ptr %serdes_xfi_an.i
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 4096, ptr noundef %direct_ptr.4.i, ptr noundef %indirect_ptr.4.i, i1 noundef zeroext %xfi_direct_valid.1.off0.i, i1 noundef zeroext %xfi_indirect_valid.1.off0.i) #5
  %incdec.ptr89.i = getelementptr i32, ptr %direct_ptr.4.i, i32 1
  %incdec.ptr90.i = getelementptr i32, ptr %indirect_ptr.4.i, i32 1
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 4100, ptr noundef %incdec.ptr89.i, ptr noundef %incdec.ptr90.i, i1 noundef zeroext %xfi_direct_valid.1.off0.i, i1 noundef zeroext %xfi_indirect_valid.1.off0.i) #5
  %incdec.ptr89.1.i = getelementptr i32, ptr %direct_ptr.4.i, i32 2
  %incdec.ptr90.1.i = getelementptr i32, ptr %indirect_ptr.4.i, i32 2
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 4104, ptr noundef %incdec.ptr89.1.i, ptr noundef %incdec.ptr90.1.i, i1 noundef zeroext %xfi_direct_valid.1.off0.i, i1 noundef zeroext %xfi_indirect_valid.1.off0.i) #5
  %incdec.ptr89.2.i = getelementptr i32, ptr %direct_ptr.4.i, i32 3
  %incdec.ptr90.2.i = getelementptr i32, ptr %indirect_ptr.4.i, i32 3
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 4108, ptr noundef %incdec.ptr89.2.i, ptr noundef %incdec.ptr90.2.i, i1 noundef zeroext %xfi_direct_valid.1.off0.i, i1 noundef zeroext %xfi_indirect_valid.1.off0.i) #5
  %incdec.ptr89.3.i = getelementptr i32, ptr %direct_ptr.4.i, i32 4
  %incdec.ptr90.3.i = getelementptr i32, ptr %indirect_ptr.4.i, i32 4
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 4112, ptr noundef %incdec.ptr89.3.i, ptr noundef %incdec.ptr90.3.i, i1 noundef zeroext %xfi_direct_valid.1.off0.i, i1 noundef zeroext %xfi_indirect_valid.1.off0.i) #5
  %incdec.ptr89.4.i = getelementptr i32, ptr %direct_ptr.4.i, i32 5
  %incdec.ptr90.4.i = getelementptr i32, ptr %indirect_ptr.4.i, i32 5
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 4116, ptr noundef %incdec.ptr89.4.i, ptr noundef %incdec.ptr90.4.i, i1 noundef zeroext %xfi_direct_valid.1.off0.i, i1 noundef zeroext %xfi_indirect_valid.1.off0.i) #5
  %incdec.ptr89.5.i = getelementptr i32, ptr %direct_ptr.4.i, i32 6
  %incdec.ptr90.5.i = getelementptr i32, ptr %indirect_ptr.4.i, i32 6
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 4120, ptr noundef %incdec.ptr89.5.i, ptr noundef %incdec.ptr90.5.i, i1 noundef zeroext %xfi_direct_valid.1.off0.i, i1 noundef zeroext %xfi_indirect_valid.1.off0.i) #5
  %incdec.ptr89.6.i = getelementptr i32, ptr %direct_ptr.4.i, i32 7
  %incdec.ptr90.6.i = getelementptr i32, ptr %indirect_ptr.4.i, i32 7
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 4124, ptr noundef %incdec.ptr89.6.i, ptr noundef %incdec.ptr90.6.i, i1 noundef zeroext %xfi_direct_valid.1.off0.i, i1 noundef zeroext %xfi_indirect_valid.1.off0.i) #5
  %incdec.ptr89.7.i = getelementptr i32, ptr %direct_ptr.4.i, i32 8
  %incdec.ptr90.7.i = getelementptr i32, ptr %indirect_ptr.4.i, i32 8
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 4128, ptr noundef %incdec.ptr89.7.i, ptr noundef %incdec.ptr90.7.i, i1 noundef zeroext %xfi_direct_valid.1.off0.i, i1 noundef zeroext %xfi_indirect_valid.1.off0.i) #5
  %incdec.ptr89.8.i = getelementptr i32, ptr %direct_ptr.4.i, i32 9
  %incdec.ptr90.8.i = getelementptr i32, ptr %indirect_ptr.4.i, i32 9
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 4132, ptr noundef %incdec.ptr89.8.i, ptr noundef %incdec.ptr90.8.i, i1 noundef zeroext %xfi_direct_valid.1.off0.i, i1 noundef zeroext %xfi_indirect_valid.1.off0.i) #5
  %incdec.ptr89.9.i = getelementptr i32, ptr %direct_ptr.4.i, i32 10
  %incdec.ptr90.9.i = getelementptr i32, ptr %indirect_ptr.4.i, i32 10
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 4136, ptr noundef %incdec.ptr89.9.i, ptr noundef %incdec.ptr90.9.i, i1 noundef zeroext %xfi_direct_valid.1.off0.i, i1 noundef zeroext %xfi_indirect_valid.1.off0.i) #5
  %incdec.ptr89.10.i = getelementptr i32, ptr %direct_ptr.4.i, i32 11
  %incdec.ptr90.10.i = getelementptr i32, ptr %indirect_ptr.4.i, i32 11
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 4140, ptr noundef %incdec.ptr89.10.i, ptr noundef %incdec.ptr90.10.i, i1 noundef zeroext %xfi_direct_valid.1.off0.i, i1 noundef zeroext %xfi_indirect_valid.1.off0.i) #5
  %incdec.ptr89.11.i = getelementptr i32, ptr %direct_ptr.4.i, i32 12
  %incdec.ptr90.11.i = getelementptr i32, ptr %indirect_ptr.4.i, i32 12
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 4144, ptr noundef %incdec.ptr89.11.i, ptr noundef %incdec.ptr90.11.i, i1 noundef zeroext %xfi_direct_valid.1.off0.i, i1 noundef zeroext %xfi_indirect_valid.1.off0.i) #5
  %incdec.ptr89.12.i = getelementptr i32, ptr %direct_ptr.4.i, i32 13
  %incdec.ptr90.12.i = getelementptr i32, ptr %indirect_ptr.4.i, i32 13
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 4148, ptr noundef %incdec.ptr89.12.i, ptr noundef %incdec.ptr90.12.i, i1 noundef zeroext %xfi_direct_valid.1.off0.i, i1 noundef zeroext %xfi_indirect_valid.1.off0.i) #5
  %188 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %func, align 4
  %and93.i = and i32 %189, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93.i)
  %tobool94.not.i = icmp eq i32 %and93.i, 0
  %serdes2_xfi_train.i = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 83
  %serdes_xfi_train.i = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 51
  %direct_ptr.6.i = select i1 %tobool94.not.i, ptr %serdes_xfi_train.i, ptr %serdes2_xfi_train.i
  %indirect_ptr.6.i = select i1 %tobool94.not.i, ptr %serdes2_xfi_train.i, ptr %serdes_xfi_train.i
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 4176, ptr noundef %direct_ptr.6.i, ptr noundef %indirect_ptr.6.i, i1 noundef zeroext %xfi_direct_valid.1.off0.i, i1 noundef zeroext %xfi_indirect_valid.1.off0.i) #5
  %incdec.ptr111.i = getelementptr i32, ptr %direct_ptr.6.i, i32 1
  %incdec.ptr112.i = getelementptr i32, ptr %indirect_ptr.6.i, i32 1
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 4180, ptr noundef %incdec.ptr111.i, ptr noundef %incdec.ptr112.i, i1 noundef zeroext %xfi_direct_valid.1.off0.i, i1 noundef zeroext %xfi_indirect_valid.1.off0.i) #5
  %incdec.ptr111.1.i = getelementptr i32, ptr %direct_ptr.6.i, i32 2
  %incdec.ptr112.1.i = getelementptr i32, ptr %indirect_ptr.6.i, i32 2
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 4184, ptr noundef %incdec.ptr111.1.i, ptr noundef %incdec.ptr112.1.i, i1 noundef zeroext %xfi_direct_valid.1.off0.i, i1 noundef zeroext %xfi_indirect_valid.1.off0.i) #5
  %incdec.ptr111.2.i = getelementptr i32, ptr %direct_ptr.6.i, i32 3
  %incdec.ptr112.2.i = getelementptr i32, ptr %indirect_ptr.6.i, i32 3
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 4188, ptr noundef %incdec.ptr111.2.i, ptr noundef %incdec.ptr112.2.i, i1 noundef zeroext %xfi_direct_valid.1.off0.i, i1 noundef zeroext %xfi_indirect_valid.1.off0.i) #5
  %incdec.ptr111.3.i = getelementptr i32, ptr %direct_ptr.6.i, i32 4
  %incdec.ptr112.3.i = getelementptr i32, ptr %indirect_ptr.6.i, i32 4
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 4192, ptr noundef %incdec.ptr111.3.i, ptr noundef %incdec.ptr112.3.i, i1 noundef zeroext %xfi_direct_valid.1.off0.i, i1 noundef zeroext %xfi_indirect_valid.1.off0.i) #5
  %incdec.ptr111.4.i = getelementptr i32, ptr %direct_ptr.6.i, i32 5
  %incdec.ptr112.4.i = getelementptr i32, ptr %indirect_ptr.6.i, i32 5
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 4196, ptr noundef %incdec.ptr111.4.i, ptr noundef %incdec.ptr112.4.i, i1 noundef zeroext %xfi_direct_valid.1.off0.i, i1 noundef zeroext %xfi_indirect_valid.1.off0.i) #5
  %incdec.ptr111.5.i = getelementptr i32, ptr %direct_ptr.6.i, i32 6
  %incdec.ptr112.5.i = getelementptr i32, ptr %indirect_ptr.6.i, i32 6
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 4200, ptr noundef %incdec.ptr111.5.i, ptr noundef %incdec.ptr112.5.i, i1 noundef zeroext %xfi_direct_valid.1.off0.i, i1 noundef zeroext %xfi_indirect_valid.1.off0.i) #5
  %incdec.ptr111.6.i = getelementptr i32, ptr %direct_ptr.6.i, i32 7
  %incdec.ptr112.6.i = getelementptr i32, ptr %indirect_ptr.6.i, i32 7
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 4204, ptr noundef %incdec.ptr111.6.i, ptr noundef %incdec.ptr112.6.i, i1 noundef zeroext %xfi_direct_valid.1.off0.i, i1 noundef zeroext %xfi_indirect_valid.1.off0.i) #5
  %incdec.ptr111.7.i = getelementptr i32, ptr %direct_ptr.6.i, i32 8
  %incdec.ptr112.7.i = getelementptr i32, ptr %indirect_ptr.6.i, i32 8
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 4208, ptr noundef %incdec.ptr111.7.i, ptr noundef %incdec.ptr112.7.i, i1 noundef zeroext %xfi_direct_valid.1.off0.i, i1 noundef zeroext %xfi_indirect_valid.1.off0.i) #5
  %incdec.ptr111.8.i = getelementptr i32, ptr %direct_ptr.6.i, i32 9
  %incdec.ptr112.8.i = getelementptr i32, ptr %indirect_ptr.6.i, i32 9
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 4212, ptr noundef %incdec.ptr111.8.i, ptr noundef %incdec.ptr112.8.i, i1 noundef zeroext %xfi_direct_valid.1.off0.i, i1 noundef zeroext %xfi_indirect_valid.1.off0.i) #5
  %incdec.ptr111.9.i = getelementptr i32, ptr %direct_ptr.6.i, i32 10
  %incdec.ptr112.9.i = getelementptr i32, ptr %indirect_ptr.6.i, i32 10
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 4216, ptr noundef %incdec.ptr111.9.i, ptr noundef %incdec.ptr112.9.i, i1 noundef zeroext %xfi_direct_valid.1.off0.i, i1 noundef zeroext %xfi_indirect_valid.1.off0.i) #5
  %incdec.ptr111.10.i = getelementptr i32, ptr %direct_ptr.6.i, i32 11
  %incdec.ptr112.10.i = getelementptr i32, ptr %indirect_ptr.6.i, i32 11
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 4220, ptr noundef %incdec.ptr111.10.i, ptr noundef %incdec.ptr112.10.i, i1 noundef zeroext %xfi_direct_valid.1.off0.i, i1 noundef zeroext %xfi_indirect_valid.1.off0.i) #5
  %190 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %func, align 4
  %and115.i = and i32 %191, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115.i)
  %tobool116.not.i = icmp eq i32 %and115.i, 0
  %serdes2_xfi_hss_pcs.i = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 85
  %serdes_xfi_hss_pcs.i = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 53
  %direct_ptr.8.i = select i1 %tobool116.not.i, ptr %serdes_xfi_hss_pcs.i, ptr %serdes2_xfi_hss_pcs.i
  %indirect_ptr.8.i = select i1 %tobool116.not.i, ptr %serdes2_xfi_hss_pcs.i, ptr %serdes_xfi_hss_pcs.i
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 6144, ptr noundef %direct_ptr.8.i, ptr noundef %indirect_ptr.8.i, i1 noundef zeroext %xfi_direct_valid.1.off0.i, i1 noundef zeroext %xfi_indirect_valid.1.off0.i) #5
  %incdec.ptr133.i = getelementptr i32, ptr %direct_ptr.8.i, i32 1
  %incdec.ptr134.i = getelementptr i32, ptr %indirect_ptr.8.i, i32 1
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 6148, ptr noundef %incdec.ptr133.i, ptr noundef %incdec.ptr134.i, i1 noundef zeroext %xfi_direct_valid.1.off0.i, i1 noundef zeroext %xfi_indirect_valid.1.off0.i) #5
  %incdec.ptr133.1.i = getelementptr i32, ptr %direct_ptr.8.i, i32 2
  %incdec.ptr134.1.i = getelementptr i32, ptr %indirect_ptr.8.i, i32 2
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 6152, ptr noundef %incdec.ptr133.1.i, ptr noundef %incdec.ptr134.1.i, i1 noundef zeroext %xfi_direct_valid.1.off0.i, i1 noundef zeroext %xfi_indirect_valid.1.off0.i) #5
  %incdec.ptr133.2.i = getelementptr i32, ptr %direct_ptr.8.i, i32 3
  %incdec.ptr134.2.i = getelementptr i32, ptr %indirect_ptr.8.i, i32 3
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 6156, ptr noundef %incdec.ptr133.2.i, ptr noundef %incdec.ptr134.2.i, i1 noundef zeroext %xfi_direct_valid.1.off0.i, i1 noundef zeroext %xfi_indirect_valid.1.off0.i) #5
  %incdec.ptr133.3.i = getelementptr i32, ptr %direct_ptr.8.i, i32 4
  %incdec.ptr134.3.i = getelementptr i32, ptr %indirect_ptr.8.i, i32 4
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 6160, ptr noundef %incdec.ptr133.3.i, ptr noundef %incdec.ptr134.3.i, i1 noundef zeroext %xfi_direct_valid.1.off0.i, i1 noundef zeroext %xfi_indirect_valid.1.off0.i) #5
  %incdec.ptr133.4.i = getelementptr i32, ptr %direct_ptr.8.i, i32 5
  %incdec.ptr134.4.i = getelementptr i32, ptr %indirect_ptr.8.i, i32 5
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 6164, ptr noundef %incdec.ptr133.4.i, ptr noundef %incdec.ptr134.4.i, i1 noundef zeroext %xfi_direct_valid.1.off0.i, i1 noundef zeroext %xfi_indirect_valid.1.off0.i) #5
  %incdec.ptr133.5.i = getelementptr i32, ptr %direct_ptr.8.i, i32 6
  %incdec.ptr134.5.i = getelementptr i32, ptr %indirect_ptr.8.i, i32 6
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 6168, ptr noundef %incdec.ptr133.5.i, ptr noundef %incdec.ptr134.5.i, i1 noundef zeroext %xfi_direct_valid.1.off0.i, i1 noundef zeroext %xfi_indirect_valid.1.off0.i) #5
  %incdec.ptr133.6.i = getelementptr i32, ptr %direct_ptr.8.i, i32 7
  %incdec.ptr134.6.i = getelementptr i32, ptr %indirect_ptr.8.i, i32 7
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 6172, ptr noundef %incdec.ptr133.6.i, ptr noundef %incdec.ptr134.6.i, i1 noundef zeroext %xfi_direct_valid.1.off0.i, i1 noundef zeroext %xfi_indirect_valid.1.off0.i) #5
  %incdec.ptr133.7.i = getelementptr i32, ptr %direct_ptr.8.i, i32 8
  %incdec.ptr134.7.i = getelementptr i32, ptr %indirect_ptr.8.i, i32 8
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 6176, ptr noundef %incdec.ptr133.7.i, ptr noundef %incdec.ptr134.7.i, i1 noundef zeroext %xfi_direct_valid.1.off0.i, i1 noundef zeroext %xfi_indirect_valid.1.off0.i) #5
  %incdec.ptr133.8.i = getelementptr i32, ptr %direct_ptr.8.i, i32 9
  %incdec.ptr134.8.i = getelementptr i32, ptr %indirect_ptr.8.i, i32 9
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 6180, ptr noundef %incdec.ptr133.8.i, ptr noundef %incdec.ptr134.8.i, i1 noundef zeroext %xfi_direct_valid.1.off0.i, i1 noundef zeroext %xfi_indirect_valid.1.off0.i) #5
  %incdec.ptr133.9.i = getelementptr i32, ptr %direct_ptr.8.i, i32 10
  %incdec.ptr134.9.i = getelementptr i32, ptr %indirect_ptr.8.i, i32 10
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 6184, ptr noundef %incdec.ptr133.9.i, ptr noundef %incdec.ptr134.9.i, i1 noundef zeroext %xfi_direct_valid.1.off0.i, i1 noundef zeroext %xfi_indirect_valid.1.off0.i) #5
  %incdec.ptr133.10.i = getelementptr i32, ptr %direct_ptr.8.i, i32 11
  %incdec.ptr134.10.i = getelementptr i32, ptr %indirect_ptr.8.i, i32 11
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 6188, ptr noundef %incdec.ptr133.10.i, ptr noundef %incdec.ptr134.10.i, i1 noundef zeroext %xfi_direct_valid.1.off0.i, i1 noundef zeroext %xfi_indirect_valid.1.off0.i) #5
  %incdec.ptr133.11.i = getelementptr i32, ptr %direct_ptr.8.i, i32 12
  %incdec.ptr134.11.i = getelementptr i32, ptr %indirect_ptr.8.i, i32 12
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 6192, ptr noundef %incdec.ptr133.11.i, ptr noundef %incdec.ptr134.11.i, i1 noundef zeroext %xfi_direct_valid.1.off0.i, i1 noundef zeroext %xfi_indirect_valid.1.off0.i) #5
  %incdec.ptr133.12.i = getelementptr i32, ptr %direct_ptr.8.i, i32 13
  %incdec.ptr134.12.i = getelementptr i32, ptr %indirect_ptr.8.i, i32 13
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 6196, ptr noundef %incdec.ptr133.12.i, ptr noundef %incdec.ptr134.12.i, i1 noundef zeroext %xfi_direct_valid.1.off0.i, i1 noundef zeroext %xfi_indirect_valid.1.off0.i) #5
  %incdec.ptr133.13.i = getelementptr i32, ptr %direct_ptr.8.i, i32 14
  %incdec.ptr134.13.i = getelementptr i32, ptr %indirect_ptr.8.i, i32 14
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef 6200, ptr noundef %incdec.ptr133.13.i, ptr noundef %incdec.ptr134.13.i, i1 noundef zeroext %xfi_direct_valid.1.off0.i, i1 noundef zeroext %xfi_indirect_valid.1.off0.i) #5
  %192 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %func, align 4
  %and137.i = and i32 %193, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137.i)
  %tobool138.not.i = icmp eq i32 %and137.i, 0
  %serdes2_xfi_hss_tx.i = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 87
  %serdes_xfi_hss_tx.i = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 55
  %direct_ptr.10.i = select i1 %tobool138.not.i, ptr %serdes_xfi_hss_tx.i, ptr %serdes2_xfi_hss_tx.i
  %indirect_ptr.10.i = select i1 %tobool138.not.i, ptr %serdes2_xfi_hss_tx.i, ptr %serdes_xfi_hss_tx.i
  br label %for.body150.i

for.body150.i:                                    ; preds = %for.body150.i.for.body150.i_crit_edge, %for.end69.i
  %indirect_ptr.1137.i = phi ptr [ %indirect_ptr.10.i, %for.end69.i ], [ %incdec.ptr155.i, %for.body150.i.for.body150.i_crit_edge ]
  %direct_ptr.1136.i = phi ptr [ %direct_ptr.10.i, %for.end69.i ], [ %incdec.ptr154.i, %for.body150.i.for.body150.i_crit_edge ]
  %i.535.i = phi i32 [ 7168, %for.end69.i ], [ %inc.i, %for.body150.i.for.body150.i_crit_edge ]
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef %i.535.i, ptr noundef %direct_ptr.1136.i, ptr noundef %indirect_ptr.1137.i, i1 noundef zeroext %xfi_direct_valid.1.off0.i, i1 noundef zeroext %xfi_indirect_valid.1.off0.i) #5
  %inc.i = add nuw nsw i32 %i.535.i, 1
  %incdec.ptr154.i = getelementptr i32, ptr %direct_ptr.1136.i, i32 1
  %incdec.ptr155.i = getelementptr i32, ptr %indirect_ptr.1137.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, 7200
  br i1 %exitcond.not.i, label %for.end156.i, label %for.body150.i.for.body150.i_crit_edge

for.body150.i.for.body150.i_crit_edge:            ; preds = %for.body150.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body150.i

for.end156.i:                                     ; preds = %for.body150.i
  %194 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %func, align 4
  %and158.i = and i32 %195, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and158.i)
  %tobool159.not.i = icmp eq i32 %and158.i, 0
  %serdes2_xfi_hss_rx.i = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 89
  %serdes_xfi_hss_rx.i = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 57
  %direct_ptr.12.i = select i1 %tobool159.not.i, ptr %serdes_xfi_hss_rx.i, ptr %serdes2_xfi_hss_rx.i
  %indirect_ptr.12.i = select i1 %tobool159.not.i, ptr %serdes2_xfi_hss_rx.i, ptr %serdes_xfi_hss_rx.i
  br label %for.body171.i

for.body171.i:                                    ; preds = %for.body171.i.for.body171.i_crit_edge, %for.end156.i
  %indirect_ptr.1340.i = phi ptr [ %indirect_ptr.12.i, %for.end156.i ], [ %incdec.ptr177.i, %for.body171.i.for.body171.i_crit_edge ]
  %direct_ptr.1339.i = phi ptr [ %direct_ptr.12.i, %for.end156.i ], [ %incdec.ptr176.i, %for.body171.i.for.body171.i_crit_edge ]
  %i.638.i = phi i32 [ 7232, %for.end156.i ], [ %inc175.i, %for.body171.i.for.body171.i_crit_edge ]
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef %i.638.i, ptr noundef %direct_ptr.1339.i, ptr noundef %indirect_ptr.1340.i, i1 noundef zeroext %xfi_direct_valid.1.off0.i, i1 noundef zeroext %xfi_indirect_valid.1.off0.i) #5
  %inc175.i = add nuw nsw i32 %i.638.i, 1
  %incdec.ptr176.i = getelementptr i32, ptr %direct_ptr.1339.i, i32 1
  %incdec.ptr177.i = getelementptr i32, ptr %indirect_ptr.1340.i, i32 1
  %exitcond44.not.i = icmp eq i32 %inc175.i, 7264
  br i1 %exitcond44.not.i, label %for.end178.i, label %for.body171.i.for.body171.i_crit_edge

for.body171.i.for.body171.i_crit_edge:            ; preds = %for.body171.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body171.i

for.end178.i:                                     ; preds = %for.body171.i
  %196 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %func, align 4
  %and180.i = and i32 %197, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and180.i)
  %tobool181.not.i = icmp eq i32 %and180.i, 0
  %serdes2_xfi_hss_pll.i = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 91
  %serdes_xfi_hss_pll.i = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 59
  %direct_ptr.14.i = select i1 %tobool181.not.i, ptr %serdes_xfi_hss_pll.i, ptr %serdes2_xfi_hss_pll.i
  %indirect_ptr.14.i = select i1 %tobool181.not.i, ptr %serdes2_xfi_hss_pll.i, ptr %serdes_xfi_hss_pll.i
  br label %for.body193.i

for.body193.i:                                    ; preds = %for.body193.i.for.body193.i_crit_edge, %for.end178.i
  %indirect_ptr.1543.i = phi ptr [ %indirect_ptr.14.i, %for.end178.i ], [ %incdec.ptr199.i, %for.body193.i.for.body193.i_crit_edge ]
  %direct_ptr.1542.i = phi ptr [ %direct_ptr.14.i, %for.end178.i ], [ %incdec.ptr198.i, %for.body193.i.for.body193.i_crit_edge ]
  %i.741.i = phi i32 [ 7680, %for.end178.i ], [ %inc197.i, %for.body193.i.for.body193.i_crit_edge ]
  call fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef %i.741.i, ptr noundef %direct_ptr.1542.i, ptr noundef %indirect_ptr.1543.i, i1 noundef zeroext %xfi_direct_valid.1.off0.i, i1 noundef zeroext %xfi_indirect_valid.1.off0.i) #5
  %inc197.i = add nuw nsw i32 %i.741.i, 1
  %incdec.ptr198.i = getelementptr i32, ptr %direct_ptr.1542.i, i32 1
  %incdec.ptr199.i = getelementptr i32, ptr %indirect_ptr.1543.i, i32 1
  %exitcond45.not.i = icmp eq i32 %inc197.i, 7712
  br i1 %exitcond45.not.i, label %qlge_get_serdes_regs.exit, label %for.body193.i.for.body193.i_crit_edge

for.body193.i.for.body193.i_crit_edge:            ; preds = %for.body193.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body193.i

qlge_get_serdes_regs.exit:                        ; preds = %for.body193.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i) #5
  %core_regs_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 1
  %198 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 1, i32 3
  %199 = call ptr @memset(ptr %198, i32 0, i32 20)
  %200 = ptrtoint ptr %core_regs_seg_hdr to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 1431677610, ptr %core_regs_seg_hdr, align 4
  %seg_num.i557 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 1, i32 1
  %201 = ptrtoint ptr %seg_num.i557 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 1, ptr %seg_num.i557, align 4
  %seg_size1.i558 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 1, i32 2
  %202 = ptrtoint ptr %seg_size1.i558 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 604, ptr %seg_size1.i558, align 4
  %description.i559 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 1, i32 4
  %203 = call ptr @memcpy(ptr %description.i559, ptr @.str.24, i32 15)
  %mpi_core_regs = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 2
  br label %for.body.i564

for.body.i564:                                    ; preds = %for.inc.i568.for.body.i564_crit_edge, %qlge_get_serdes_regs.exit
  %i.09.i = phi i32 [ %inc.i565, %for.inc.i568.for.body.i564_crit_edge ], [ 0, %qlge_get_serdes_regs.exit ]
  %buf.addr.08.i = phi ptr [ %incdec.ptr.i566, %for.inc.i568.for.body.i564_crit_edge ], [ %mpi_core_regs, %qlge_get_serdes_regs.exit ]
  %add.i561 = add nuw nsw i32 %i.09.i, 196608
  %call.i562 = call i32 @qlge_read_mpi_reg(ptr noundef %qdev, i32 noundef %add.i561, ptr noundef %buf.addr.08.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i562)
  %tobool.not.i563 = icmp eq i32 %call.i562, 0
  br i1 %tobool.not.i563, label %for.inc.i568, label %for.body.i564.err_crit_edge

for.body.i564.err_crit_edge:                      ; preds = %for.body.i564
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

for.inc.i568:                                     ; preds = %for.body.i564
  %inc.i565 = add nuw nsw i32 %i.09.i, 1
  %incdec.ptr.i566 = getelementptr i32, ptr %buf.addr.08.i, i32 1
  %exitcond.not.i567 = icmp eq i32 %inc.i565, 127
  br i1 %exitcond.not.i567, label %if.end84, label %for.inc.i568.for.body.i564_crit_edge

for.inc.i568.for.body.i564_crit_edge:             ; preds = %for.inc.i568
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i564

if.end84:                                         ; preds = %for.inc.i568
  %mpi_core_sh_regs = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 3
  br label %for.body.i574

for.body.i574:                                    ; preds = %for.inc.i579.for.body.i574_crit_edge, %if.end84
  %i.012.i = phi i32 [ 0, %if.end84 ], [ %inc.i576, %for.inc.i579.for.body.i574_crit_edge ]
  %buf.addr.011.i = phi ptr [ %mpi_core_sh_regs, %if.end84 ], [ %incdec.ptr.i577, %for.inc.i579.for.body.i574_crit_edge ]
  %shl.i570 = shl nuw nsw i32 %i.012.i, 20
  %or.i571 = or i32 %shl.i570, -1342177280
  %call.i572 = call i32 @qlge_write_mpi_reg(ptr noundef %qdev, i32 noundef 196732, i32 noundef %or.i571) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i572)
  %tobool.not.i573 = icmp eq i32 %call.i572, 0
  br i1 %tobool.not.i573, label %if.end.i575, label %for.body.i574.err_crit_edge

for.body.i574.err_crit_edge:                      ; preds = %for.body.i574
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end.i575:                                      ; preds = %for.body.i574
  %call1.i = call i32 @qlge_read_mpi_reg(ptr noundef %qdev, i32 noundef 196735, ptr noundef %buf.addr.011.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %for.inc.i579, label %if.end.i575.err_crit_edge

if.end.i575.err_crit_edge:                        ; preds = %if.end.i575
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

for.inc.i579:                                     ; preds = %if.end.i575
  %inc.i576 = add nuw nsw i32 %i.012.i, 1
  %incdec.ptr.i577 = getelementptr i32, ptr %buf.addr.011.i, i32 1
  %exitcond.not.i578 = icmp eq i32 %inc.i576, 16
  br i1 %exitcond.not.i578, label %if.end89, label %for.inc.i579.for.body.i574_crit_edge

for.inc.i579.for.body.i574_crit_edge:             ; preds = %for.inc.i579
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i574

if.end89:                                         ; preds = %for.inc.i579
  %test_logic_regs_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 4
  %204 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 4, i32 3
  %205 = call ptr @memset(ptr %204, i32 0, i32 20)
  %206 = ptrtoint ptr %test_logic_regs_seg_hdr to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 1431677610, ptr %test_logic_regs_seg_hdr, align 4
  %seg_num.i580 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 4, i32 1
  %207 = ptrtoint ptr %seg_num.i580 to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 2, ptr %seg_num.i580, align 4
  %seg_size1.i581 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 4, i32 2
  %208 = ptrtoint ptr %seg_size1.i581 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 124, ptr %seg_size1.i581, align 4
  %description.i582 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 4, i32 4
  %209 = call ptr @memcpy(ptr %description.i582, ptr @.str.25, i32 15)
  %test_logic_regs = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 5
  br label %for.body.i589

for.body.i589:                                    ; preds = %for.inc.i593.for.body.i589_crit_edge, %if.end89
  %i.09.i584 = phi i32 [ %inc.i590, %for.inc.i593.for.body.i589_crit_edge ], [ 0, %if.end89 ]
  %buf.addr.08.i585 = phi ptr [ %incdec.ptr.i591, %for.inc.i593.for.body.i589_crit_edge ], [ %test_logic_regs, %if.end89 ]
  %add.i586 = add nuw nsw i32 %i.09.i584, 4096
  %call.i587 = call i32 @qlge_read_mpi_reg(ptr noundef %qdev, i32 noundef %add.i586, ptr noundef %buf.addr.08.i585) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i587)
  %tobool.not.i588 = icmp eq i32 %call.i587, 0
  br i1 %tobool.not.i588, label %for.inc.i593, label %for.body.i589.err_crit_edge

for.body.i589.err_crit_edge:                      ; preds = %for.body.i589
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

for.inc.i593:                                     ; preds = %for.body.i589
  %inc.i590 = add nuw nsw i32 %i.09.i584, 1
  %incdec.ptr.i591 = getelementptr i32, ptr %buf.addr.08.i585, i32 1
  %exitcond.not.i592 = icmp eq i32 %inc.i590, 23
  br i1 %exitcond.not.i592, label %if.end94, label %for.inc.i593.for.body.i589_crit_edge

for.inc.i593.for.body.i589_crit_edge:             ; preds = %for.inc.i593
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i589

if.end94:                                         ; preds = %for.inc.i593
  %rmii_regs_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 6
  %210 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 6, i32 3
  %211 = call ptr @memset(ptr %210, i32 0, i32 20)
  %212 = ptrtoint ptr %rmii_regs_seg_hdr to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 1431677610, ptr %rmii_regs_seg_hdr, align 4
  %seg_num.i596 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 6, i32 1
  %213 = ptrtoint ptr %seg_num.i596 to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 3, ptr %seg_num.i596, align 4
  %seg_size1.i597 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 6, i32 2
  %214 = ptrtoint ptr %seg_size1.i597 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 288, ptr %seg_size1.i597, align 4
  %description.i598 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 6, i32 4
  %215 = call ptr @memcpy(ptr %description.i598, ptr @.str.26, i32 15)
  %rmii_regs = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 7
  br label %for.body.i605

for.body.i605:                                    ; preds = %for.inc.i609.for.body.i605_crit_edge, %if.end94
  %i.09.i600 = phi i32 [ %inc.i606, %for.inc.i609.for.body.i605_crit_edge ], [ 0, %if.end94 ]
  %buf.addr.08.i601 = phi ptr [ %incdec.ptr.i607, %for.inc.i609.for.body.i605_crit_edge ], [ %rmii_regs, %if.end94 ]
  %add.i602 = add nuw nsw i32 %i.09.i600, 4160
  %call.i603 = call i32 @qlge_read_mpi_reg(ptr noundef %qdev, i32 noundef %add.i602, ptr noundef %buf.addr.08.i601) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i603)
  %tobool.not.i604 = icmp eq i32 %call.i603, 0
  br i1 %tobool.not.i604, label %for.inc.i609, label %for.body.i605.err_crit_edge

for.body.i605.err_crit_edge:                      ; preds = %for.body.i605
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

for.inc.i609:                                     ; preds = %for.body.i605
  %inc.i606 = add nuw nsw i32 %i.09.i600, 1
  %incdec.ptr.i607 = getelementptr i32, ptr %buf.addr.08.i601, i32 1
  %exitcond.not.i608 = icmp eq i32 %inc.i606, 64
  br i1 %exitcond.not.i608, label %if.end99, label %for.inc.i609.for.body.i605_crit_edge

for.inc.i609.for.body.i605_crit_edge:             ; preds = %for.inc.i609
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i605

if.end99:                                         ; preds = %for.inc.i609
  %fcmac1_regs_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 8
  %216 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 8, i32 3
  %217 = call ptr @memset(ptr %216, i32 0, i32 20)
  %218 = ptrtoint ptr %fcmac1_regs_seg_hdr to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 1431677610, ptr %fcmac1_regs_seg_hdr, align 4
  %seg_num.i612 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 8, i32 1
  %219 = ptrtoint ptr %seg_num.i612 to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 4, ptr %seg_num.i612, align 4
  %seg_size1.i613 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 8, i32 2
  %220 = ptrtoint ptr %seg_size1.i613 to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 288, ptr %seg_size1.i613, align 4
  %description.i614 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 8, i32 4
  %221 = call ptr @memcpy(ptr %description.i614, ptr @.str.27, i32 15)
  %fcmac1_regs = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 9
  br label %for.body.i621

for.body.i621:                                    ; preds = %for.inc.i625.for.body.i621_crit_edge, %if.end99
  %i.09.i616 = phi i32 [ %inc.i622, %for.inc.i625.for.body.i621_crit_edge ], [ 0, %if.end99 ]
  %buf.addr.08.i617 = phi ptr [ %incdec.ptr.i623, %for.inc.i625.for.body.i621_crit_edge ], [ %fcmac1_regs, %if.end99 ]
  %add.i618 = add nuw nsw i32 %i.09.i616, 4224
  %call.i619 = call i32 @qlge_read_mpi_reg(ptr noundef %qdev, i32 noundef %add.i618, ptr noundef %buf.addr.08.i617) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i619)
  %tobool.not.i620 = icmp eq i32 %call.i619, 0
  br i1 %tobool.not.i620, label %for.inc.i625, label %for.body.i621.err_crit_edge

for.body.i621.err_crit_edge:                      ; preds = %for.body.i621
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

for.inc.i625:                                     ; preds = %for.body.i621
  %inc.i622 = add nuw nsw i32 %i.09.i616, 1
  %incdec.ptr.i623 = getelementptr i32, ptr %buf.addr.08.i617, i32 1
  %exitcond.not.i624 = icmp eq i32 %inc.i622, 64
  br i1 %exitcond.not.i624, label %if.end104, label %for.inc.i625.for.body.i621_crit_edge

for.inc.i625.for.body.i621_crit_edge:             ; preds = %for.inc.i625
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i621

if.end104:                                        ; preds = %for.inc.i625
  %fcmac2_regs_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 10
  %222 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 10, i32 3
  %223 = call ptr @memset(ptr %222, i32 0, i32 20)
  %224 = ptrtoint ptr %fcmac2_regs_seg_hdr to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 1431677610, ptr %fcmac2_regs_seg_hdr, align 4
  %seg_num.i628 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 10, i32 1
  %225 = ptrtoint ptr %seg_num.i628 to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 5, ptr %seg_num.i628, align 4
  %seg_size1.i629 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 10, i32 2
  %226 = ptrtoint ptr %seg_size1.i629 to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 288, ptr %seg_size1.i629, align 4
  %description.i630 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 10, i32 4
  %227 = call ptr @memcpy(ptr %description.i630, ptr @.str.28, i32 15)
  %fcmac2_regs = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 11
  br label %for.body.i637

for.body.i637:                                    ; preds = %for.inc.i641.for.body.i637_crit_edge, %if.end104
  %i.09.i632 = phi i32 [ %inc.i638, %for.inc.i641.for.body.i637_crit_edge ], [ 0, %if.end104 ]
  %buf.addr.08.i633 = phi ptr [ %incdec.ptr.i639, %for.inc.i641.for.body.i637_crit_edge ], [ %fcmac2_regs, %if.end104 ]
  %add.i634 = add nuw nsw i32 %i.09.i632, 4288
  %call.i635 = call i32 @qlge_read_mpi_reg(ptr noundef %qdev, i32 noundef %add.i634, ptr noundef %buf.addr.08.i633) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i635)
  %tobool.not.i636 = icmp eq i32 %call.i635, 0
  br i1 %tobool.not.i636, label %for.inc.i641, label %for.body.i637.err_crit_edge

for.body.i637.err_crit_edge:                      ; preds = %for.body.i637
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

for.inc.i641:                                     ; preds = %for.body.i637
  %inc.i638 = add nuw nsw i32 %i.09.i632, 1
  %incdec.ptr.i639 = getelementptr i32, ptr %buf.addr.08.i633, i32 1
  %exitcond.not.i640 = icmp eq i32 %inc.i638, 64
  br i1 %exitcond.not.i640, label %if.end109, label %for.inc.i641.for.body.i637_crit_edge

for.inc.i641.for.body.i637_crit_edge:             ; preds = %for.inc.i641
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i637

if.end109:                                        ; preds = %for.inc.i641
  %fc1_mbx_regs_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 12
  %228 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 12, i32 3
  %229 = call ptr @memset(ptr %228, i32 0, i32 20)
  %230 = ptrtoint ptr %fc1_mbx_regs_seg_hdr to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 1431677610, ptr %fc1_mbx_regs_seg_hdr, align 4
  %seg_num.i644 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 12, i32 1
  %231 = ptrtoint ptr %seg_num.i644 to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 6, ptr %seg_num.i644, align 4
  %seg_size1.i645 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 12, i32 2
  %232 = ptrtoint ptr %seg_size1.i645 to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 288, ptr %seg_size1.i645, align 4
  %description.i646 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 12, i32 4
  %233 = call ptr @memcpy(ptr %description.i646, ptr @str.62, i32 15)
  %fc1_mbx_regs = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 13
  br label %for.body.i653

for.body.i653:                                    ; preds = %for.inc.i657.for.body.i653_crit_edge, %if.end109
  %i.09.i648 = phi i32 [ %inc.i654, %for.inc.i657.for.body.i653_crit_edge ], [ 0, %if.end109 ]
  %buf.addr.08.i649 = phi ptr [ %incdec.ptr.i655, %for.inc.i657.for.body.i653_crit_edge ], [ %fc1_mbx_regs, %if.end109 ]
  %add.i650 = add nuw nsw i32 %i.09.i648, 4352
  %call.i651 = call i32 @qlge_read_mpi_reg(ptr noundef %qdev, i32 noundef %add.i650, ptr noundef %buf.addr.08.i649) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i651)
  %tobool.not.i652 = icmp eq i32 %call.i651, 0
  br i1 %tobool.not.i652, label %for.inc.i657, label %for.body.i653.err_crit_edge

for.body.i653.err_crit_edge:                      ; preds = %for.body.i653
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

for.inc.i657:                                     ; preds = %for.body.i653
  %inc.i654 = add nuw nsw i32 %i.09.i648, 1
  %incdec.ptr.i655 = getelementptr i32, ptr %buf.addr.08.i649, i32 1
  %exitcond.not.i656 = icmp eq i32 %inc.i654, 64
  br i1 %exitcond.not.i656, label %if.end114, label %for.inc.i657.for.body.i653_crit_edge

for.inc.i657.for.body.i653_crit_edge:             ; preds = %for.inc.i657
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i653

if.end114:                                        ; preds = %for.inc.i657
  %ide_regs_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 14
  %234 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 14, i32 3
  %235 = call ptr @memset(ptr %234, i32 0, i32 20)
  %236 = ptrtoint ptr %ide_regs_seg_hdr to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 1431677610, ptr %ide_regs_seg_hdr, align 4
  %seg_num.i660 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 14, i32 1
  %237 = ptrtoint ptr %seg_num.i660 to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 7, ptr %seg_num.i660, align 4
  %seg_size1.i661 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 14, i32 2
  %238 = ptrtoint ptr %seg_size1.i661 to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 288, ptr %seg_size1.i661, align 4
  %description.i662 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 14, i32 4
  %239 = call ptr @memcpy(ptr %description.i662, ptr @str.63, i32 15)
  %ide_regs = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 15
  br label %for.body.i669

for.body.i669:                                    ; preds = %for.inc.i673.for.body.i669_crit_edge, %if.end114
  %i.09.i664 = phi i32 [ %inc.i670, %for.inc.i673.for.body.i669_crit_edge ], [ 0, %if.end114 ]
  %buf.addr.08.i665 = phi ptr [ %incdec.ptr.i671, %for.inc.i673.for.body.i669_crit_edge ], [ %ide_regs, %if.end114 ]
  %add.i666 = add nuw nsw i32 %i.09.i664, 4416
  %call.i667 = call i32 @qlge_read_mpi_reg(ptr noundef %qdev, i32 noundef %add.i666, ptr noundef %buf.addr.08.i665) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i667)
  %tobool.not.i668 = icmp eq i32 %call.i667, 0
  br i1 %tobool.not.i668, label %for.inc.i673, label %for.body.i669.err_crit_edge

for.body.i669.err_crit_edge:                      ; preds = %for.body.i669
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

for.inc.i673:                                     ; preds = %for.body.i669
  %inc.i670 = add nuw nsw i32 %i.09.i664, 1
  %incdec.ptr.i671 = getelementptr i32, ptr %buf.addr.08.i665, i32 1
  %exitcond.not.i672 = icmp eq i32 %inc.i670, 64
  br i1 %exitcond.not.i672, label %if.end119, label %for.inc.i673.for.body.i669_crit_edge

for.inc.i673.for.body.i669_crit_edge:             ; preds = %for.inc.i673
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i669

if.end119:                                        ; preds = %for.inc.i673
  %nic1_mbx_regs_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 16
  %240 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 16, i32 3
  %241 = call ptr @memset(ptr %240, i32 0, i32 20)
  %242 = ptrtoint ptr %nic1_mbx_regs_seg_hdr to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 1431677610, ptr %nic1_mbx_regs_seg_hdr, align 4
  %seg_num.i676 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 16, i32 1
  %243 = ptrtoint ptr %seg_num.i676 to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 8, ptr %seg_num.i676, align 4
  %seg_size1.i677 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 16, i32 2
  %244 = ptrtoint ptr %seg_size1.i677 to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 288, ptr %seg_size1.i677, align 4
  %description.i678 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 16, i32 4
  %245 = call ptr @memcpy(ptr %description.i678, ptr @.str.31, i32 15)
  %nic1_mbx_regs = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 17
  br label %for.body.i685

for.body.i685:                                    ; preds = %for.inc.i689.for.body.i685_crit_edge, %if.end119
  %i.09.i680 = phi i32 [ %inc.i686, %for.inc.i689.for.body.i685_crit_edge ], [ 0, %if.end119 ]
  %buf.addr.08.i681 = phi ptr [ %incdec.ptr.i687, %for.inc.i689.for.body.i685_crit_edge ], [ %nic1_mbx_regs, %if.end119 ]
  %add.i682 = add nuw nsw i32 %i.09.i680, 4480
  %call.i683 = call i32 @qlge_read_mpi_reg(ptr noundef %qdev, i32 noundef %add.i682, ptr noundef %buf.addr.08.i681) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i683)
  %tobool.not.i684 = icmp eq i32 %call.i683, 0
  br i1 %tobool.not.i684, label %for.inc.i689, label %for.body.i685.err_crit_edge

for.body.i685.err_crit_edge:                      ; preds = %for.body.i685
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

for.inc.i689:                                     ; preds = %for.body.i685
  %inc.i686 = add nuw nsw i32 %i.09.i680, 1
  %incdec.ptr.i687 = getelementptr i32, ptr %buf.addr.08.i681, i32 1
  %exitcond.not.i688 = icmp eq i32 %inc.i686, 64
  br i1 %exitcond.not.i688, label %if.end124, label %for.inc.i689.for.body.i685_crit_edge

for.inc.i689.for.body.i685_crit_edge:             ; preds = %for.inc.i689
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i685

if.end124:                                        ; preds = %for.inc.i689
  %smbus_regs_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 18
  %246 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 18, i32 3
  %247 = call ptr @memset(ptr %246, i32 0, i32 20)
  %248 = ptrtoint ptr %smbus_regs_seg_hdr to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 1431677610, ptr %smbus_regs_seg_hdr, align 4
  %seg_num.i692 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 18, i32 1
  %249 = ptrtoint ptr %seg_num.i692 to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 9, ptr %seg_num.i692, align 4
  %seg_size1.i693 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 18, i32 2
  %250 = ptrtoint ptr %seg_size1.i693 to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 288, ptr %seg_size1.i693, align 4
  %description.i694 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 18, i32 4
  %251 = call ptr @memcpy(ptr %description.i694, ptr @.str.32, i32 15)
  %smbus_regs = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 19
  br label %for.body.i701

for.body.i701:                                    ; preds = %for.inc.i705.for.body.i701_crit_edge, %if.end124
  %i.09.i696 = phi i32 [ %inc.i702, %for.inc.i705.for.body.i701_crit_edge ], [ 0, %if.end124 ]
  %buf.addr.08.i697 = phi ptr [ %incdec.ptr.i703, %for.inc.i705.for.body.i701_crit_edge ], [ %smbus_regs, %if.end124 ]
  %add.i698 = add nuw nsw i32 %i.09.i696, 4608
  %call.i699 = call i32 @qlge_read_mpi_reg(ptr noundef %qdev, i32 noundef %add.i698, ptr noundef %buf.addr.08.i697) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i699)
  %tobool.not.i700 = icmp eq i32 %call.i699, 0
  br i1 %tobool.not.i700, label %for.inc.i705, label %for.body.i701.err_crit_edge

for.body.i701.err_crit_edge:                      ; preds = %for.body.i701
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

for.inc.i705:                                     ; preds = %for.body.i701
  %inc.i702 = add nuw nsw i32 %i.09.i696, 1
  %incdec.ptr.i703 = getelementptr i32, ptr %buf.addr.08.i697, i32 1
  %exitcond.not.i704 = icmp eq i32 %inc.i702, 64
  br i1 %exitcond.not.i704, label %if.end129, label %for.inc.i705.for.body.i701_crit_edge

for.inc.i705.for.body.i701_crit_edge:             ; preds = %for.inc.i705
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i701

if.end129:                                        ; preds = %for.inc.i705
  %fc2_mbx_regs_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 20
  %252 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 20, i32 3
  %253 = call ptr @memset(ptr %252, i32 0, i32 20)
  %254 = ptrtoint ptr %fc2_mbx_regs_seg_hdr to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 1431677610, ptr %fc2_mbx_regs_seg_hdr, align 4
  %seg_num.i708 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 20, i32 1
  %255 = ptrtoint ptr %seg_num.i708 to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 10, ptr %seg_num.i708, align 4
  %seg_size1.i709 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 20, i32 2
  %256 = ptrtoint ptr %seg_size1.i709 to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 288, ptr %seg_size1.i709, align 4
  %description.i710 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 20, i32 4
  %257 = call ptr @memcpy(ptr %description.i710, ptr @str.64, i32 15)
  %fc2_mbx_regs = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 21
  br label %for.body.i717

for.body.i717:                                    ; preds = %for.inc.i721.for.body.i717_crit_edge, %if.end129
  %i.09.i712 = phi i32 [ %inc.i718, %for.inc.i721.for.body.i717_crit_edge ], [ 0, %if.end129 ]
  %buf.addr.08.i713 = phi ptr [ %incdec.ptr.i719, %for.inc.i721.for.body.i717_crit_edge ], [ %fc2_mbx_regs, %if.end129 ]
  %add.i714 = add nuw nsw i32 %i.09.i712, 4672
  %call.i715 = call i32 @qlge_read_mpi_reg(ptr noundef %qdev, i32 noundef %add.i714, ptr noundef %buf.addr.08.i713) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i715)
  %tobool.not.i716 = icmp eq i32 %call.i715, 0
  br i1 %tobool.not.i716, label %for.inc.i721, label %for.body.i717.err_crit_edge

for.body.i717.err_crit_edge:                      ; preds = %for.body.i717
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

for.inc.i721:                                     ; preds = %for.body.i717
  %inc.i718 = add nuw nsw i32 %i.09.i712, 1
  %incdec.ptr.i719 = getelementptr i32, ptr %buf.addr.08.i713, i32 1
  %exitcond.not.i720 = icmp eq i32 %inc.i718, 64
  br i1 %exitcond.not.i720, label %if.end134, label %for.inc.i721.for.body.i717_crit_edge

for.inc.i721.for.body.i717_crit_edge:             ; preds = %for.inc.i721
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i717

if.end134:                                        ; preds = %for.inc.i721
  %nic2_mbx_regs_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 22
  %258 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 22, i32 3
  %259 = call ptr @memset(ptr %258, i32 0, i32 20)
  %260 = ptrtoint ptr %nic2_mbx_regs_seg_hdr to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 1431677610, ptr %nic2_mbx_regs_seg_hdr, align 4
  %seg_num.i724 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 22, i32 1
  %261 = ptrtoint ptr %seg_num.i724 to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 11, ptr %seg_num.i724, align 4
  %seg_size1.i725 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 22, i32 2
  %262 = ptrtoint ptr %seg_size1.i725 to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 288, ptr %seg_size1.i725, align 4
  %description.i726 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 22, i32 4
  %263 = call ptr @memcpy(ptr %description.i726, ptr @.str.34, i32 15)
  %nic2_mbx_regs = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 23
  br label %for.body.i733

for.body.i733:                                    ; preds = %for.inc.i737.for.body.i733_crit_edge, %if.end134
  %i.09.i728 = phi i32 [ %inc.i734, %for.inc.i737.for.body.i733_crit_edge ], [ 0, %if.end134 ]
  %buf.addr.08.i729 = phi ptr [ %incdec.ptr.i735, %for.inc.i737.for.body.i733_crit_edge ], [ %nic2_mbx_regs, %if.end134 ]
  %add.i730 = add nuw nsw i32 %i.09.i728, 4736
  %call.i731 = call i32 @qlge_read_mpi_reg(ptr noundef %qdev, i32 noundef %add.i730, ptr noundef %buf.addr.08.i729) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i731)
  %tobool.not.i732 = icmp eq i32 %call.i731, 0
  br i1 %tobool.not.i732, label %for.inc.i737, label %for.body.i733.err_crit_edge

for.body.i733.err_crit_edge:                      ; preds = %for.body.i733
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

for.inc.i737:                                     ; preds = %for.body.i733
  %inc.i734 = add nuw nsw i32 %i.09.i728, 1
  %incdec.ptr.i735 = getelementptr i32, ptr %buf.addr.08.i729, i32 1
  %exitcond.not.i736 = icmp eq i32 %inc.i734, 64
  br i1 %exitcond.not.i736, label %if.end139, label %for.inc.i737.for.body.i733_crit_edge

for.inc.i737.for.body.i733_crit_edge:             ; preds = %for.inc.i737
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i733

if.end139:                                        ; preds = %for.inc.i737
  %i2c_regs_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 24
  %264 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 24, i32 3
  %265 = call ptr @memset(ptr %264, i32 0, i32 20)
  %266 = ptrtoint ptr %i2c_regs_seg_hdr to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 1431677610, ptr %i2c_regs_seg_hdr, align 4
  %seg_num.i740 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 24, i32 1
  %267 = ptrtoint ptr %seg_num.i740 to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 12, ptr %seg_num.i740, align 4
  %seg_size1.i741 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 24, i32 2
  %268 = ptrtoint ptr %seg_size1.i741 to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 288, ptr %seg_size1.i741, align 4
  %description.i742 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 24, i32 4
  %269 = call ptr @memcpy(ptr %description.i742, ptr @str.65, i32 15)
  %i2c_regs = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 25
  br label %for.body.i749

for.body.i749:                                    ; preds = %for.inc.i753.for.body.i749_crit_edge, %if.end139
  %i.09.i744 = phi i32 [ %inc.i750, %for.inc.i753.for.body.i749_crit_edge ], [ 0, %if.end139 ]
  %buf.addr.08.i745 = phi ptr [ %incdec.ptr.i751, %for.inc.i753.for.body.i749_crit_edge ], [ %i2c_regs, %if.end139 ]
  %add.i746 = add nuw nsw i32 %i.09.i744, 8128
  %call.i747 = call i32 @qlge_read_mpi_reg(ptr noundef %qdev, i32 noundef %add.i746, ptr noundef %buf.addr.08.i745) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i747)
  %tobool.not.i748 = icmp eq i32 %call.i747, 0
  br i1 %tobool.not.i748, label %for.inc.i753, label %for.body.i749.err_crit_edge

for.body.i749.err_crit_edge:                      ; preds = %for.body.i749
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

for.inc.i753:                                     ; preds = %for.body.i749
  %inc.i750 = add nuw nsw i32 %i.09.i744, 1
  %incdec.ptr.i751 = getelementptr i32, ptr %buf.addr.08.i745, i32 1
  %exitcond.not.i752 = icmp eq i32 %inc.i750, 64
  br i1 %exitcond.not.i752, label %if.end144, label %for.inc.i753.for.body.i749_crit_edge

for.inc.i753.for.body.i749_crit_edge:             ; preds = %for.inc.i753
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i749

if.end144:                                        ; preds = %for.inc.i753
  %memc_regs_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 26
  %270 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 26, i32 3
  %271 = call ptr @memset(ptr %270, i32 0, i32 20)
  %272 = ptrtoint ptr %memc_regs_seg_hdr to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 1431677610, ptr %memc_regs_seg_hdr, align 4
  %seg_num.i756 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 26, i32 1
  %273 = ptrtoint ptr %seg_num.i756 to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 13, ptr %seg_num.i756, align 4
  %seg_size1.i757 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 26, i32 2
  %274 = ptrtoint ptr %seg_size1.i757 to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 1056, ptr %seg_size1.i757, align 4
  %description.i758 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 26, i32 4
  %275 = call ptr @memcpy(ptr %description.i758, ptr @.str.36, i32 15)
  %memc_regs = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 27
  br label %for.body.i765

for.body.i765:                                    ; preds = %for.inc.i769.for.body.i765_crit_edge, %if.end144
  %i.09.i760 = phi i32 [ %inc.i766, %for.inc.i769.for.body.i765_crit_edge ], [ 0, %if.end144 ]
  %buf.addr.08.i761 = phi ptr [ %incdec.ptr.i767, %for.inc.i769.for.body.i765_crit_edge ], [ %memc_regs, %if.end144 ]
  %add.i762 = add nuw nsw i32 %i.09.i760, 12288
  %call.i763 = call i32 @qlge_read_mpi_reg(ptr noundef %qdev, i32 noundef %add.i762, ptr noundef %buf.addr.08.i761) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i763)
  %tobool.not.i764 = icmp eq i32 %call.i763, 0
  br i1 %tobool.not.i764, label %for.inc.i769, label %for.body.i765.err_crit_edge

for.body.i765.err_crit_edge:                      ; preds = %for.body.i765
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

for.inc.i769:                                     ; preds = %for.body.i765
  %inc.i766 = add nuw nsw i32 %i.09.i760, 1
  %incdec.ptr.i767 = getelementptr i32, ptr %buf.addr.08.i761, i32 1
  %exitcond.not.i768 = icmp eq i32 %inc.i766, 256
  br i1 %exitcond.not.i768, label %if.end149, label %for.inc.i769.for.body.i765_crit_edge

for.inc.i769.for.body.i765_crit_edge:             ; preds = %for.inc.i769
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i765

if.end149:                                        ; preds = %for.inc.i769
  %pbus_regs_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 28
  %276 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 28, i32 3
  %277 = call ptr @memset(ptr %276, i32 0, i32 20)
  %278 = ptrtoint ptr %pbus_regs_seg_hdr to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 1431677610, ptr %pbus_regs_seg_hdr, align 4
  %seg_num.i772 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 28, i32 1
  %279 = ptrtoint ptr %seg_num.i772 to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 14, ptr %seg_num.i772, align 4
  %seg_size1.i773 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 28, i32 2
  %280 = ptrtoint ptr %seg_size1.i773 to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 1056, ptr %seg_size1.i773, align 4
  %description.i774 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 28, i32 4
  %281 = call ptr @memcpy(ptr %description.i774, ptr @.str.37, i32 15)
  %pbus_regs = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 29
  br label %for.body.i781

for.body.i781:                                    ; preds = %for.inc.i785.for.body.i781_crit_edge, %if.end149
  %i.09.i776 = phi i32 [ %inc.i782, %for.inc.i785.for.body.i781_crit_edge ], [ 0, %if.end149 ]
  %buf.addr.08.i777 = phi ptr [ %incdec.ptr.i783, %for.inc.i785.for.body.i781_crit_edge ], [ %pbus_regs, %if.end149 ]
  %add.i778 = add nuw nsw i32 %i.09.i776, 31744
  %call.i779 = call i32 @qlge_read_mpi_reg(ptr noundef %qdev, i32 noundef %add.i778, ptr noundef %buf.addr.08.i777) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i779)
  %tobool.not.i780 = icmp eq i32 %call.i779, 0
  br i1 %tobool.not.i780, label %for.inc.i785, label %for.body.i781.err_crit_edge

for.body.i781.err_crit_edge:                      ; preds = %for.body.i781
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

for.inc.i785:                                     ; preds = %for.body.i781
  %inc.i782 = add nuw nsw i32 %i.09.i776, 1
  %incdec.ptr.i783 = getelementptr i32, ptr %buf.addr.08.i777, i32 1
  %exitcond.not.i784 = icmp eq i32 %inc.i782, 256
  br i1 %exitcond.not.i784, label %if.end154, label %for.inc.i785.for.body.i781_crit_edge

for.inc.i785.for.body.i781_crit_edge:             ; preds = %for.inc.i785
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i781

if.end154:                                        ; preds = %for.inc.i785
  %mde_regs_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 30
  %282 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 30, i32 3
  %283 = call ptr @memset(ptr %282, i32 0, i32 20)
  %284 = ptrtoint ptr %mde_regs_seg_hdr to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 1431677610, ptr %mde_regs_seg_hdr, align 4
  %seg_num.i788 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 30, i32 1
  %285 = ptrtoint ptr %seg_num.i788 to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 15, ptr %seg_num.i788, align 4
  %seg_size1.i789 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 30, i32 2
  %286 = ptrtoint ptr %seg_size1.i789 to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 56, ptr %seg_size1.i789, align 4
  %description.i790 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 30, i32 4
  %287 = call ptr @memcpy(ptr %description.i790, ptr @str.66, i32 15)
  %mde_regs = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 31
  %call.i795 = call i32 @qlge_read_mpi_reg(ptr noundef %qdev, i32 noundef 65536, ptr noundef %mde_regs) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i795)
  %tobool.not.i796 = icmp eq i32 %call.i795, 0
  br i1 %tobool.not.i796, label %for.inc.i801, label %if.end154.err_crit_edge

if.end154.err_crit_edge:                          ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

for.inc.i801:                                     ; preds = %if.end154
  %incdec.ptr.i799 = getelementptr %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 31, i32 1
  %call.i795.1 = call i32 @qlge_read_mpi_reg(ptr noundef %qdev, i32 noundef 65537, ptr noundef %incdec.ptr.i799) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i795.1)
  %tobool.not.i796.1 = icmp eq i32 %call.i795.1, 0
  br i1 %tobool.not.i796.1, label %for.inc.i801.1, label %for.inc.i801.err_crit_edge

for.inc.i801.err_crit_edge:                       ; preds = %for.inc.i801
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

for.inc.i801.1:                                   ; preds = %for.inc.i801
  %incdec.ptr.i799.1 = getelementptr %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 31, i32 2
  %call.i795.2 = call i32 @qlge_read_mpi_reg(ptr noundef %qdev, i32 noundef 65538, ptr noundef %incdec.ptr.i799.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i795.2)
  %tobool.not.i796.2 = icmp eq i32 %call.i795.2, 0
  br i1 %tobool.not.i796.2, label %for.inc.i801.2, label %for.inc.i801.1.err_crit_edge

for.inc.i801.1.err_crit_edge:                     ; preds = %for.inc.i801.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

for.inc.i801.2:                                   ; preds = %for.inc.i801.1
  %incdec.ptr.i799.2 = getelementptr %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 31, i32 3
  %call.i795.3 = call i32 @qlge_read_mpi_reg(ptr noundef %qdev, i32 noundef 65539, ptr noundef %incdec.ptr.i799.2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i795.3)
  %tobool.not.i796.3 = icmp eq i32 %call.i795.3, 0
  br i1 %tobool.not.i796.3, label %for.inc.i801.3, label %for.inc.i801.2.err_crit_edge

for.inc.i801.2.err_crit_edge:                     ; preds = %for.inc.i801.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

for.inc.i801.3:                                   ; preds = %for.inc.i801.2
  %incdec.ptr.i799.3 = getelementptr %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 31, i32 4
  %call.i795.4 = call i32 @qlge_read_mpi_reg(ptr noundef %qdev, i32 noundef 65540, ptr noundef %incdec.ptr.i799.3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i795.4)
  %tobool.not.i796.4 = icmp eq i32 %call.i795.4, 0
  br i1 %tobool.not.i796.4, label %for.inc.i801.4, label %for.inc.i801.3.err_crit_edge

for.inc.i801.3.err_crit_edge:                     ; preds = %for.inc.i801.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

for.inc.i801.4:                                   ; preds = %for.inc.i801.3
  %incdec.ptr.i799.4 = getelementptr %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 31, i32 5
  %call.i795.5 = call i32 @qlge_read_mpi_reg(ptr noundef %qdev, i32 noundef 65541, ptr noundef %incdec.ptr.i799.4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i795.5)
  %tobool.not.i796.5 = icmp eq i32 %call.i795.5, 0
  br i1 %tobool.not.i796.5, label %for.inc.i801.5, label %for.inc.i801.4.err_crit_edge

for.inc.i801.4.err_crit_edge:                     ; preds = %for.inc.i801.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

for.inc.i801.5:                                   ; preds = %for.inc.i801.4
  %misc_nic_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 60
  %288 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 60, i32 3
  %289 = call ptr @memset(ptr %288, i32 0, i32 20)
  %290 = ptrtoint ptr %misc_nic_seg_hdr to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 1431677610, ptr %misc_nic_seg_hdr, align 4
  %seg_num.i804 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 60, i32 1
  %291 = ptrtoint ptr %seg_num.i804 to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 30, ptr %seg_num.i804, align 4
  %seg_size1.i805 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 60, i32 2
  %292 = ptrtoint ptr %seg_size1.i805 to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 48, ptr %seg_size1.i805, align 4
  %description.i806 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 60, i32 4
  %293 = call ptr @memcpy(ptr %description.i806, ptr @str.67, i32 15)
  %rx_ring_count = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 34
  %294 = ptrtoint ptr %rx_ring_count to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %rx_ring_count, align 4
  %misc_nic_info = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 61
  %296 = ptrtoint ptr %misc_nic_info to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 %295, ptr %misc_nic_info, align 4
  %tx_ring_count = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 32
  %297 = ptrtoint ptr %tx_ring_count to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %tx_ring_count, align 4
  %tx_ring_count162 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 61, i32 1
  %299 = ptrtoint ptr %tx_ring_count162 to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 %298, ptr %tx_ring_count162, align 4
  %intr_count = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 29
  %300 = ptrtoint ptr %intr_count to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %intr_count, align 4
  %intr_count164 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 61, i32 2
  %302 = ptrtoint ptr %intr_count164 to i32
  call void @__asan_store4_noabort(i32 %302)
  store i32 %301, ptr %intr_count164, align 4
  %303 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %func, align 4
  %function = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 61, i32 3
  %305 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %305)
  store i32 %304, ptr %function, align 4
  %intr_states_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 62
  %306 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 62, i32 3
  %307 = call ptr @memset(ptr %306, i32 0, i32 20)
  %308 = ptrtoint ptr %intr_states_seg_hdr to i32
  call void @__asan_store4_noabort(i32 %308)
  store i32 1431677610, ptr %intr_states_seg_hdr, align 4
  %seg_num.i808 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 62, i32 1
  %309 = ptrtoint ptr %seg_num.i808 to i32
  call void @__asan_store4_noabort(i32 %309)
  store i32 31, ptr %seg_num.i808, align 4
  %seg_size1.i809 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 62, i32 2
  %310 = ptrtoint ptr %seg_size1.i809 to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 100, ptr %seg_size1.i809, align 4
  %description.i810 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 62, i32 4
  %311 = call ptr @memcpy(ptr %description.i810, ptr @str.68, i32 15)
  %intr_states = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 63
  call fastcc void @qlge_get_intr_states(ptr noundef %qdev, ptr noundef %intr_states)
  %cam_entries_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 64
  %312 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 64, i32 3
  %313 = call ptr @memset(ptr %312, i32 0, i32 20)
  %314 = ptrtoint ptr %cam_entries_seg_hdr to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 1431677610, ptr %cam_entries_seg_hdr, align 4
  %seg_num.i812 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 64, i32 1
  %315 = ptrtoint ptr %seg_num.i812 to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 32, ptr %seg_num.i812, align 4
  %seg_size1.i813 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 64, i32 2
  %316 = ptrtoint ptr %seg_size1.i813 to i32
  call void @__asan_store4_noabort(i32 %316)
  store i32 608, ptr %seg_size1.i813, align 4
  %description.i814 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 64, i32 4
  %317 = call ptr @memcpy(ptr %description.i814, ptr @str.69, i32 15)
  %cam_entries = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 65
  %call169 = call fastcc i32 @qlge_get_cam_entries(ptr noundef %qdev, ptr noundef %cam_entries)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169)
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %if.end172, label %for.inc.i801.5.err_crit_edge

for.inc.i801.5.err_crit_edge:                     ; preds = %for.inc.i801.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end172:                                        ; preds = %for.inc.i801.5
  %nic_routing_words_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 66
  %318 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 66, i32 3
  %319 = call ptr @memset(ptr %318, i32 0, i32 20)
  %320 = ptrtoint ptr %nic_routing_words_seg_hdr to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 1431677610, ptr %nic_routing_words_seg_hdr, align 4
  %seg_num.i816 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 66, i32 1
  %321 = ptrtoint ptr %seg_num.i816 to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 33, ptr %seg_num.i816, align 4
  %seg_size1.i817 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 66, i32 2
  %322 = ptrtoint ptr %seg_size1.i817 to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 96, ptr %seg_size1.i817, align 4
  %description.i818 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 66, i32 4
  %323 = call ptr @memcpy(ptr %description.i818, ptr @str.70, i32 15)
  %nic_routing_words = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 67
  %call174 = call fastcc i32 @qlge_get_routing_entries(ptr noundef %qdev, ptr noundef %nic_routing_words)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call174)
  %tobool175.not = icmp eq i32 %call174, 0
  br i1 %tobool175.not, label %if.end177, label %if.end172.err_crit_edge

if.end172.err_crit_edge:                          ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end177:                                        ; preds = %if.end172
  %ets_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 68
  %324 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 68, i32 3
  %325 = call ptr @memset(ptr %324, i32 0, i32 20)
  %326 = ptrtoint ptr %ets_seg_hdr to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 1431677610, ptr %ets_seg_hdr, align 4
  %seg_num.i820 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 68, i32 1
  %327 = ptrtoint ptr %seg_num.i820 to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 34, ptr %seg_num.i820, align 4
  %seg_size1.i821 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 68, i32 2
  %328 = ptrtoint ptr %seg_size1.i821 to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 72, ptr %seg_size1.i821, align 4
  %description.i822 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 68, i32 4
  %329 = call ptr @memcpy(ptr %description.i822, ptr @str.71, i32 15)
  %ets = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 69
  call fastcc void @qlge_get_ets_regs(ptr noundef %qdev, ptr noundef %ets)
  %probe_dump_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 70
  %330 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 70, i32 3
  %331 = call ptr @memset(ptr %330, i32 0, i32 20)
  %332 = ptrtoint ptr %probe_dump_seg_hdr to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 1431677610, ptr %probe_dump_seg_hdr, align 4
  %seg_num.i824 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 70, i32 1
  %333 = ptrtoint ptr %seg_num.i824 to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 35, ptr %seg_num.i824, align 4
  %seg_size1.i825 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 70, i32 2
  %334 = ptrtoint ptr %seg_size1.i825 to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 17576, ptr %seg_size1.i825, align 4
  %description.i826 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 70, i32 4
  %335 = call ptr @memcpy(ptr %description.i826, ptr @str.72, i32 15)
  %probe_dump = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 71
  call fastcc void @qlge_get_probe_dump(ptr noundef %qdev, ptr noundef %probe_dump)
  %routing_reg_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 72
  %336 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 72, i32 3
  %337 = call ptr @memset(ptr %336, i32 0, i32 20)
  %338 = ptrtoint ptr %routing_reg_seg_hdr to i32
  call void @__asan_store4_noabort(i32 %338)
  store i32 1431677610, ptr %routing_reg_seg_hdr, align 4
  %seg_num.i828 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 72, i32 1
  %339 = ptrtoint ptr %seg_num.i828 to i32
  call void @__asan_store4_noabort(i32 %339)
  store i32 36, ptr %seg_num.i828, align 4
  %seg_size1.i829 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 72, i32 2
  %340 = ptrtoint ptr %seg_size1.i829 to i32
  call void @__asan_store4_noabort(i32 %340)
  store i32 800, ptr %seg_size1.i829, align 4
  %description.i830 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 72, i32 4
  %341 = call ptr @memcpy(ptr %description.i830, ptr @str.73, i32 15)
  %routing_regs = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 73
  %call186 = call fastcc i32 @qlge_get_routing_index_registers(ptr noundef %qdev, ptr noundef %routing_regs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186)
  %tobool187.not = icmp eq i32 %call186, 0
  br i1 %tobool187.not, label %if.end189, label %if.end177.err_crit_edge

if.end177.err_crit_edge:                          ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end189:                                        ; preds = %if.end177
  %mac_prot_reg_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 74
  %342 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 74, i32 3
  %343 = call ptr @memset(ptr %342, i32 0, i32 20)
  %344 = ptrtoint ptr %mac_prot_reg_seg_hdr to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 1431677610, ptr %mac_prot_reg_seg_hdr, align 4
  %seg_num.i832 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 74, i32 1
  %345 = ptrtoint ptr %seg_num.i832 to i32
  call void @__asan_store4_noabort(i32 %345)
  store i32 37, ptr %seg_num.i832, align 4
  %seg_size1.i833 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 74, i32 2
  %346 = ptrtoint ptr %seg_size1.i833 to i32
  call void @__asan_store4_noabort(i32 %346)
  store i32 78880, ptr %seg_size1.i833, align 4
  %description.i834 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 74, i32 4
  %347 = call ptr @memcpy(ptr %description.i834, ptr @str.74, i32 15)
  %mac_prot_regs = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 75
  call fastcc void @qlge_get_mac_protocol_registers(ptr noundef %qdev, ptr noundef %mac_prot_regs)
  %sem_regs_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 92
  %348 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 92, i32 3
  %349 = call ptr @memset(ptr %348, i32 0, i32 20)
  %350 = ptrtoint ptr %sem_regs_seg_hdr to i32
  call void @__asan_store4_noabort(i32 %350)
  store i32 1431677610, ptr %sem_regs_seg_hdr, align 4
  %seg_num.i836 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 92, i32 1
  %351 = ptrtoint ptr %seg_num.i836 to i32
  call void @__asan_store4_noabort(i32 %351)
  store i32 50, ptr %seg_num.i836, align 4
  %seg_size1.i837 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 92, i32 2
  %352 = ptrtoint ptr %seg_size1.i837 to i32
  call void @__asan_store4_noabort(i32 %352)
  store i32 48, ptr %seg_size1.i837, align 4
  %description.i838 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 92, i32 4
  %353 = call ptr @memcpy(ptr %description.i838, ptr @str.75, i32 15)
  %sem_regs = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 93
  call fastcc void @qlge_get_sem_registers(ptr noundef %qdev, ptr noundef %sem_regs)
  %call192 = call i32 @qlge_write_mpi_reg(ptr noundef %qdev, i32 noundef 4106, i32 noundef 3) #5
  %call193 = call i32 @qlge_unpause_mpi_risc(ptr noundef %qdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call193)
  %tobool194.not = icmp eq i32 %call193, 0
  br i1 %tobool194.not, label %if.end205, label %do.body196

do.body196:                                       ; preds = %if.end189
  %msg_enable197 = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 18
  %354 = ptrtoint ptr %msg_enable197 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %msg_enable197, align 4
  %and198 = and i32 %355, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and198)
  %tobool199.not = icmp eq i32 %and198, 0
  br i1 %tobool199.not, label %do.body196.err_crit_edge, label %if.then200

do.body196.err_crit_edge:                         ; preds = %do.body196
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.then200:                                       ; preds = %do.body196
  call void @__sanitizer_cov_trace_pc() #7
  %ndev201 = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 6
  %356 = ptrtoint ptr %ndev201 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %ndev201, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %357, ptr noundef nonnull @.str.48, i32 noundef %call193) #8
  br label %err

if.end205:                                        ; preds = %if.end189
  %call206 = call i32 @qlge_hard_reset_mpi_risc(ptr noundef %qdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call206)
  %tobool207.not = icmp eq i32 %call206, 0
  br i1 %tobool207.not, label %if.end218, label %do.body209

do.body209:                                       ; preds = %if.end205
  %msg_enable210 = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 18
  %358 = ptrtoint ptr %msg_enable210 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %msg_enable210, align 4
  %and211 = and i32 %359, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and211)
  %tobool212.not = icmp eq i32 %and211, 0
  br i1 %tobool212.not, label %do.body209.err_crit_edge, label %if.then213

do.body209.err_crit_edge:                         ; preds = %do.body209
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.then213:                                       ; preds = %do.body209
  call void @__sanitizer_cov_trace_pc() #7
  %ndev214 = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 6
  %360 = ptrtoint ptr %ndev214 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %ndev214, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %361, ptr noundef nonnull @.str.49, i32 noundef %call206) #8
  br label %err

if.end218:                                        ; preds = %if.end205
  %code_ram_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 40
  %362 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 40, i32 3
  %363 = call ptr @memset(ptr %362, i32 0, i32 20)
  %364 = ptrtoint ptr %code_ram_seg_hdr to i32
  call void @__asan_store4_noabort(i32 %364)
  store i32 1431677610, ptr %code_ram_seg_hdr, align 4
  %seg_num.i840 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 40, i32 1
  %365 = ptrtoint ptr %seg_num.i840 to i32
  call void @__asan_store4_noabort(i32 %365)
  store i32 20, ptr %seg_num.i840, align 4
  %seg_size1.i841 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 40, i32 2
  %366 = ptrtoint ptr %seg_size1.i841 to i32
  call void @__asan_store4_noabort(i32 %366)
  store i32 32800, ptr %seg_size1.i841, align 4
  %description.i842 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 40, i32 4
  %367 = call ptr @memcpy(ptr %description.i842, ptr @str.76, i32 15)
  %code_ram = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 41
  %call220 = call i32 @qlge_dump_risc_ram_area(ptr noundef %qdev, ptr noundef %code_ram, i32 noundef 131072, i32 noundef 8192) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call220)
  %tobool221.not = icmp eq i32 %call220, 0
  br i1 %tobool221.not, label %if.end232, label %do.body223

do.body223:                                       ; preds = %if.end218
  %msg_enable224 = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 18
  %368 = ptrtoint ptr %msg_enable224 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %msg_enable224, align 4
  %and225 = and i32 %369, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and225)
  %tobool226.not = icmp eq i32 %and225, 0
  br i1 %tobool226.not, label %do.body223.err_crit_edge, label %if.then227

do.body223.err_crit_edge:                         ; preds = %do.body223
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.then227:                                       ; preds = %do.body223
  call void @__sanitizer_cov_trace_pc() #7
  %ndev228 = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 6
  %370 = ptrtoint ptr %ndev228 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %ndev228, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %371, ptr noundef nonnull @.str.51, i32 noundef %call220) #8
  br label %err

if.end232:                                        ; preds = %if.end218
  %memc_ram_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 42
  %372 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 42, i32 3
  %373 = call ptr @memset(ptr %372, i32 0, i32 20)
  %374 = ptrtoint ptr %memc_ram_seg_hdr to i32
  call void @__asan_store4_noabort(i32 %374)
  store i32 1431677610, ptr %memc_ram_seg_hdr, align 4
  %seg_num.i844 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 42, i32 1
  %375 = ptrtoint ptr %seg_num.i844 to i32
  call void @__asan_store4_noabort(i32 %375)
  store i32 21, ptr %seg_num.i844, align 4
  %seg_size1.i845 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 42, i32 2
  %376 = ptrtoint ptr %seg_size1.i845 to i32
  call void @__asan_store4_noabort(i32 %376)
  store i32 32800, ptr %seg_size1.i845, align 4
  %description.i846 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 42, i32 4
  %377 = call ptr @memcpy(ptr %description.i846, ptr @str.77, i32 15)
  %memc_ram = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %mpi_coredump, i32 0, i32 43
  %call234 = call i32 @qlge_dump_risc_ram_area(ptr noundef %qdev, ptr noundef %memc_ram, i32 noundef 1048576, i32 noundef 8192) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call234)
  %tobool235.not = icmp eq i32 %call234, 0
  br i1 %tobool235.not, label %if.end232.err_crit_edge, label %do.body237

if.end232.err_crit_edge:                          ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

do.body237:                                       ; preds = %if.end232
  %msg_enable238 = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 18
  %378 = ptrtoint ptr %msg_enable238 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %msg_enable238, align 4
  %and239 = and i32 %379, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and239)
  %tobool240.not = icmp eq i32 %and239, 0
  br i1 %tobool240.not, label %do.body237.err_crit_edge, label %if.then241

do.body237.err_crit_edge:                         ; preds = %do.body237
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.then241:                                       ; preds = %do.body237
  call void @__sanitizer_cov_trace_pc() #7
  %ndev242 = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 6
  %380 = ptrtoint ptr %ndev242 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %ndev242, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %381, ptr noundef nonnull @.str.53, i32 noundef %call234) #8
  br label %err

err:                                              ; preds = %if.then241, %do.body237.err_crit_edge, %if.end232.err_crit_edge, %if.then227, %do.body223.err_crit_edge, %if.then213, %do.body209.err_crit_edge, %if.then200, %do.body196.err_crit_edge, %if.end177.err_crit_edge, %if.end172.err_crit_edge, %for.inc.i801.5.err_crit_edge, %for.inc.i801.4.err_crit_edge, %for.inc.i801.3.err_crit_edge, %for.inc.i801.2.err_crit_edge, %for.inc.i801.1.err_crit_edge, %for.inc.i801.err_crit_edge, %if.end154.err_crit_edge, %for.body.i781.err_crit_edge, %for.body.i765.err_crit_edge, %for.body.i749.err_crit_edge, %for.body.i733.err_crit_edge, %for.body.i717.err_crit_edge, %for.body.i701.err_crit_edge, %for.body.i685.err_crit_edge, %for.body.i669.err_crit_edge, %for.body.i653.err_crit_edge, %for.body.i637.err_crit_edge, %for.body.i621.err_crit_edge, %for.body.i605.err_crit_edge, %for.body.i589.err_crit_edge, %if.end.i575.err_crit_edge, %for.body.i574.err_crit_edge, %for.body.i564.err_crit_edge, %if.then11, %do.body7.err_crit_edge
  %status.0 = phi i32 [ %call4, %if.then11 ], [ %call4, %do.body7.err_crit_edge ], [ %call169, %for.inc.i801.5.err_crit_edge ], [ %call174, %if.end172.err_crit_edge ], [ %call186, %if.end177.err_crit_edge ], [ %call193, %if.then200 ], [ %call193, %do.body196.err_crit_edge ], [ %call206, %if.then213 ], [ %call206, %do.body209.err_crit_edge ], [ %call220, %if.then227 ], [ %call220, %do.body223.err_crit_edge ], [ %call234, %if.then241 ], [ %call234, %do.body237.err_crit_edge ], [ 0, %if.end232.err_crit_edge ], [ %call.i795, %if.end154.err_crit_edge ], [ %call.i795.1, %for.inc.i801.err_crit_edge ], [ %call.i795.2, %for.inc.i801.1.err_crit_edge ], [ %call.i795.3, %for.inc.i801.2.err_crit_edge ], [ %call.i795.4, %for.inc.i801.3.err_crit_edge ], [ %call.i795.5, %for.inc.i801.4.err_crit_edge ], [ %call.i779, %for.body.i781.err_crit_edge ], [ %call.i763, %for.body.i765.err_crit_edge ], [ %call.i747, %for.body.i749.err_crit_edge ], [ %call.i731, %for.body.i733.err_crit_edge ], [ %call.i715, %for.body.i717.err_crit_edge ], [ %call.i699, %for.body.i701.err_crit_edge ], [ %call.i683, %for.body.i685.err_crit_edge ], [ %call.i667, %for.body.i669.err_crit_edge ], [ %call.i651, %for.body.i653.err_crit_edge ], [ %call.i635, %for.body.i637.err_crit_edge ], [ %call.i619, %for.body.i621.err_crit_edge ], [ %call.i603, %for.body.i605.err_crit_edge ], [ %call.i587, %for.body.i589.err_crit_edge ], [ %call.i572, %for.body.i574.err_crit_edge ], [ %call1.i, %if.end.i575.err_crit_edge ], [ %call.i562, %for.body.i564.err_crit_edge ]
  call void @qlge_sem_unlock(ptr noundef %qdev, i32 noundef -1073741824) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then2, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %err ], [ -22, %if.then2 ], [ -22, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlge_sem_spinlock(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlge_pause_mpi_risc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qlge_get_xgmac_regs(ptr noundef %qdev, ptr noundef %buf, i32 noundef %other_function) unnamed_addr #0 align 64 {
entry:
  %reg_val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %uglygep = getelementptr i8, ptr %buf, i32 84
  %incdec.ptr = getelementptr i32, ptr %buf, i32 1
  %incdec.ptr.1 = getelementptr i32, ptr %buf, i32 2
  %incdec.ptr.2 = getelementptr i32, ptr %buf, i32 3
  %incdec.ptr.3 = getelementptr i32, ptr %buf, i32 4
  %incdec.ptr.4 = getelementptr i32, ptr %buf, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %other_function)
  %tobool.not = icmp eq i32 %other_function, 0
  br i1 %tobool.not, label %if.end, label %if.then58

if.then58:                                        ; preds = %entry
  %call.i = tail call fastcc i32 @qlge_wait_other_func_reg_rdy(ptr noundef %qdev, i32 noundef 30, i32 noundef 536870912) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then58.for.end.sink.split_crit_edge

if.then58.for.end.sink.split_crit_edge:           ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.sink.split

if.end.i:                                         ; preds = %if.then58
  %or.i = or i32 276, 1073741824
  %alt_func.i.i = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 11
  %0 = ptrtoint ptr %alt_func.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %alt_func.i.i, align 8
  %shl.i.i = shl i32 %1, 6
  %or1.i.i = or i32 %shl.i.i, 131102
  %call.i.i = tail call i32 @qlge_write_mpi_reg(ptr noundef %qdev, i32 noundef %or1.i.i, i32 noundef %or.i) #5
  %call2.i = tail call fastcc i32 @qlge_wait_other_func_reg_rdy(ptr noundef %qdev, i32 noundef 30, i32 noundef 536870912) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.for.end.sink.split_crit_edge

if.end.i.for.end.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.sink.split

if.end5.i:                                        ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val.i.i) #5
  %2 = ptrtoint ptr %reg_val.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg_val.i.i, align 4, !annotation !133
  %3 = ptrtoint ptr %alt_func.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %alt_func.i.i, align 8
  %shl.i13.i = shl i32 %4, 6
  %or1.i15.i = or i32 %shl.i13.i, 131103
  %call.i16.i = call i32 @qlge_read_mpi_reg(ptr noundef %qdev, i32 noundef %or1.i15.i, ptr noundef nonnull %reg_val.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16.i)
  %cmp.not.i.i = icmp eq i32 %call.i16.i, 0
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.end5.i.if.end.thread15_crit_edge

if.end5.i.if.end.thread15_crit_edge:              ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.thread15

if.end.i.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %reg_val.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg_val.i.i, align 4
  br label %if.end.thread15

if.end.thread15:                                  ; preds = %if.end.i.i, %if.end5.i.if.end.thread15_crit_edge
  %retval.0.i.i = phi i32 [ %6, %if.end.i.i ], [ -1, %if.end5.i.if.end.thread15_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val.i.i) #5
  br label %for.end.sink.split

if.end:                                           ; preds = %entry
  %call59 = tail call i32 @qlge_read_xgmac_reg(ptr noundef %qdev, i32 noundef 276, ptr noundef %incdec.ptr.4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end.for.end_crit_edge, label %if.end.for.end.sink.split_crit_edge

if.end.for.end.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.sink.split

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end.sink.split:                               ; preds = %if.end.for.end.sink.split_crit_edge, %if.end.thread15, %if.end.i.for.end.sink.split_crit_edge, %if.then58.for.end.sink.split_crit_edge
  %retval.0.i.i.sink = phi i32 [ %retval.0.i.i, %if.end.thread15 ], [ -559038737, %if.end.i.for.end.sink.split_crit_edge ], [ -559038737, %if.then58.for.end.sink.split_crit_edge ], [ -559038737, %if.end.for.end.sink.split_crit_edge ]
  %7 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %retval.0.i.i.sink, ptr %incdec.ptr.4, align 4
  br label %for.end

for.end:                                          ; preds = %for.end.sink.split, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qlge_get_intr_states(ptr nocapture noundef readonly %qdev, ptr nocapture noundef writeonly %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_ring_count = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 34
  %0 = ptrtoint ptr %rx_ring_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_ring_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp9 = icmp sgt i32 %1, 0
  br i1 %cmp9, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %reg_base.i = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 15
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.011 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %buf.addr.010 = phi ptr [ %buf, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %intr_read_mask = getelementptr %struct.qlge_adapter, ptr %qdev, i32 0, i32 31, i32 %i.011, i32 6
  %2 = ptrtoint ptr %intr_read_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %intr_read_mask, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #5
  %5 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %6, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #5, !srcloc !135
  %7 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i8 = getelementptr i8, ptr %8, i32 52
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8) #5, !srcloc !131
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  %11 = ptrtoint ptr %buf.addr.010 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %buf.addr.010, align 4
  %inc = add nuw nsw i32 %i.011, 1
  %incdec.ptr = getelementptr i32, ptr %buf.addr.010, i32 1
  %12 = ptrtoint ptr %rx_ring_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_ring_count, align 4
  %cmp = icmp slt i32 %inc, %13
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qlge_get_cam_entries(ptr noundef %qdev, ptr nocapture noundef writeonly %buf) unnamed_addr #0 align 64 {
entry:
  %value = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %value) #5
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !133
  %1 = getelementptr inbounds [3 x i32], ptr %value, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !133
  %3 = getelementptr inbounds [3 x i32], ptr %value, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !133
  %call = tail call i32 @qlge_sem_spinlock(ptr noundef %qdev, i32 noundef 12582912) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end7.for.body_crit_edge, %entry.for.body_crit_edge
  %i.062 = phi i32 [ %inc, %if.end7.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %buf.addr.061 = phi ptr [ %incdec.ptr11, %if.end7.for.body_crit_edge ], [ %buf, %entry.for.body_crit_edge ]
  %conv = trunc i32 %i.062 to i16
  %call1 = call i32 @qlge_get_mac_addr_reg(ptr noundef %qdev, i32 noundef 0, i16 noundef zeroext %conv, ptr noundef nonnull %value) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end7, label %do.body

do.body:                                          ; preds = %for.body
  %msg_enable = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 18
  %5 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg_enable, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.body.err_crit_edge, label %do.body.err.sink.split_crit_edge

do.body.err.sink.split_crit_edge:                 ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %err.sink.split

do.body.err_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end7:                                          ; preds = %for.body
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value, align 4
  %incdec.ptr = getelementptr i32, ptr %buf.addr.061, i32 1
  %9 = ptrtoint ptr %buf.addr.061 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %buf.addr.061, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  %incdec.ptr9 = getelementptr i32, ptr %buf.addr.061, i32 2
  %12 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %incdec.ptr, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %3, align 4
  %incdec.ptr11 = getelementptr i32, ptr %buf.addr.061, i32 3
  %15 = ptrtoint ptr %incdec.ptr9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %incdec.ptr9, align 4
  %inc = add nuw nsw i32 %i.062, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %if.end7.for.body15_crit_edge, label %if.end7.for.body_crit_edge

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end7.for.body15_crit_edge:                     ; preds = %if.end7
  br label %for.body15

for.body15:                                       ; preds = %if.end30.for.body15_crit_edge, %if.end7.for.body15_crit_edge
  %i.164 = phi i32 [ %inc36, %if.end30.for.body15_crit_edge ], [ 0, %if.end7.for.body15_crit_edge ]
  %buf.addr.163 = phi ptr [ %incdec.ptr34, %if.end30.for.body15_crit_edge ], [ %incdec.ptr11, %if.end7.for.body15_crit_edge ]
  %conv16 = trunc i32 %i.164 to i16
  %call18 = call i32 @qlge_get_mac_addr_reg(ptr noundef %qdev, i32 noundef 65536, i16 noundef zeroext %conv16, ptr noundef nonnull %value) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end30, label %do.body21

do.body21:                                        ; preds = %for.body15
  %msg_enable22 = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 18
  %16 = ptrtoint ptr %msg_enable22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_enable22, align 4
  %and23 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %do.body21.err_crit_edge, label %do.body21.err.sink.split_crit_edge

do.body21.err.sink.split_crit_edge:               ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #7
  br label %err.sink.split

do.body21.err_crit_edge:                          ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end30:                                         ; preds = %for.body15
  %18 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %value, align 4
  %incdec.ptr32 = getelementptr i32, ptr %buf.addr.163, i32 1
  %20 = ptrtoint ptr %buf.addr.163 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %buf.addr.163, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %1, align 4
  %incdec.ptr34 = getelementptr i32, ptr %buf.addr.163, i32 2
  %23 = ptrtoint ptr %incdec.ptr32 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %incdec.ptr32, align 4
  %inc36 = add nuw nsw i32 %i.164, 1
  %exitcond67.not = icmp eq i32 %inc36, 32
  br i1 %exitcond67.not, label %if.end30.err_crit_edge, label %if.end30.for.body15_crit_edge

if.end30.for.body15_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body15

if.end30.err_crit_edge:                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

err.sink.split:                                   ; preds = %do.body21.err.sink.split_crit_edge, %do.body.err.sink.split_crit_edge
  %status.2.ph = phi i32 [ %call1, %do.body.err.sink.split_crit_edge ], [ %call18, %do.body21.err.sink.split_crit_edge ]
  %ndev26 = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 6
  %24 = ptrtoint ptr %ndev26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ndev26, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %25, ptr noundef nonnull @.str.55) #8
  br label %err

err:                                              ; preds = %err.sink.split, %if.end30.err_crit_edge, %do.body21.err_crit_edge, %do.body.err_crit_edge
  %status.2 = phi i32 [ %call1, %do.body.err_crit_edge ], [ %call18, %do.body21.err_crit_edge ], [ %status.2.ph, %err.sink.split ], [ 0, %if.end30.err_crit_edge ]
  call void @qlge_sem_unlock(ptr noundef %qdev, i32 noundef 12582912) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.2, %err ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %value) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qlge_get_routing_entries(ptr noundef %qdev, ptr nocapture noundef writeonly %buf) unnamed_addr #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #5
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !133
  %call = tail call i32 @qlge_sem_spinlock(ptr noundef %qdev, i32 noundef 805306368) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %call1 = call i32 @qlge_get_routing_reg(ptr noundef %qdev, i32 noundef 0, ptr noundef nonnull %value) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.else, label %for.body.preheader.do.body_crit_edge

for.body.preheader.do.body_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.body:                                          ; preds = %if.else.14.do.body_crit_edge, %if.else.13.do.body_crit_edge, %if.else.12.do.body_crit_edge, %if.else.11.do.body_crit_edge, %if.else.10.do.body_crit_edge, %if.else.9.do.body_crit_edge, %if.else.8.do.body_crit_edge, %if.else.7.do.body_crit_edge, %if.else.6.do.body_crit_edge, %if.else.5.do.body_crit_edge, %if.else.4.do.body_crit_edge, %if.else.3.do.body_crit_edge, %if.else.2.do.body_crit_edge, %if.else.1.do.body_crit_edge, %if.else.do.body_crit_edge, %for.body.preheader.do.body_crit_edge
  %call1.lcssa = phi i32 [ %call1, %for.body.preheader.do.body_crit_edge ], [ %call1.1, %if.else.do.body_crit_edge ], [ %call1.2, %if.else.1.do.body_crit_edge ], [ %call1.3, %if.else.2.do.body_crit_edge ], [ %call1.4, %if.else.3.do.body_crit_edge ], [ %call1.5, %if.else.4.do.body_crit_edge ], [ %call1.6, %if.else.5.do.body_crit_edge ], [ %call1.7, %if.else.6.do.body_crit_edge ], [ %call1.8, %if.else.7.do.body_crit_edge ], [ %call1.9, %if.else.8.do.body_crit_edge ], [ %call1.10, %if.else.9.do.body_crit_edge ], [ %call1.11, %if.else.10.do.body_crit_edge ], [ %call1.12, %if.else.11.do.body_crit_edge ], [ %call1.13, %if.else.12.do.body_crit_edge ], [ %call1.14, %if.else.13.do.body_crit_edge ], [ %call1.15, %if.else.14.do.body_crit_edge ]
  %msg_enable = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 18
  %1 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %msg_enable, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.body.err_crit_edge, label %if.then5

do.body.err_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %ndev = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 6
  %3 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ndev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %4, ptr noundef nonnull @.str.56) #8
  br label %err

if.else:                                          ; preds = %for.body.preheader
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value, align 4
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %buf, align 4
  %call1.1 = call i32 @qlge_get_routing_reg(ptr noundef %qdev, i32 noundef 1, ptr noundef nonnull %value) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1)
  %tobool2.not.1 = icmp eq i32 %call1.1, 0
  br i1 %tobool2.not.1, label %if.else.1, label %if.else.do.body_crit_edge

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.else.1:                                        ; preds = %if.else
  %incdec.ptr = getelementptr i32, ptr %buf, i32 1
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 4
  %10 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %incdec.ptr, align 4
  %call1.2 = call i32 @qlge_get_routing_reg(ptr noundef %qdev, i32 noundef 2, ptr noundef nonnull %value) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2)
  %tobool2.not.2 = icmp eq i32 %call1.2, 0
  br i1 %tobool2.not.2, label %if.else.2, label %if.else.1.do.body_crit_edge

if.else.1.do.body_crit_edge:                      ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.else.2:                                        ; preds = %if.else.1
  %incdec.ptr.1 = getelementptr i32, ptr %buf, i32 2
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value, align 4
  %13 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %incdec.ptr.1, align 4
  %call1.3 = call i32 @qlge_get_routing_reg(ptr noundef %qdev, i32 noundef 3, ptr noundef nonnull %value) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.3)
  %tobool2.not.3 = icmp eq i32 %call1.3, 0
  br i1 %tobool2.not.3, label %if.else.3, label %if.else.2.do.body_crit_edge

if.else.2.do.body_crit_edge:                      ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.else.3:                                        ; preds = %if.else.2
  %incdec.ptr.2 = getelementptr i32, ptr %buf, i32 3
  %14 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %value, align 4
  %16 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %incdec.ptr.2, align 4
  %call1.4 = call i32 @qlge_get_routing_reg(ptr noundef %qdev, i32 noundef 4, ptr noundef nonnull %value) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.4)
  %tobool2.not.4 = icmp eq i32 %call1.4, 0
  br i1 %tobool2.not.4, label %if.else.4, label %if.else.3.do.body_crit_edge

if.else.3.do.body_crit_edge:                      ; preds = %if.else.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.else.4:                                        ; preds = %if.else.3
  %incdec.ptr.3 = getelementptr i32, ptr %buf, i32 4
  %17 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %value, align 4
  %19 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %incdec.ptr.3, align 4
  %call1.5 = call i32 @qlge_get_routing_reg(ptr noundef %qdev, i32 noundef 5, ptr noundef nonnull %value) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.5)
  %tobool2.not.5 = icmp eq i32 %call1.5, 0
  br i1 %tobool2.not.5, label %if.else.5, label %if.else.4.do.body_crit_edge

if.else.4.do.body_crit_edge:                      ; preds = %if.else.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.else.5:                                        ; preds = %if.else.4
  %incdec.ptr.4 = getelementptr i32, ptr %buf, i32 5
  %20 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %value, align 4
  %22 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %incdec.ptr.4, align 4
  %call1.6 = call i32 @qlge_get_routing_reg(ptr noundef %qdev, i32 noundef 6, ptr noundef nonnull %value) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.6)
  %tobool2.not.6 = icmp eq i32 %call1.6, 0
  br i1 %tobool2.not.6, label %if.else.6, label %if.else.5.do.body_crit_edge

if.else.5.do.body_crit_edge:                      ; preds = %if.else.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.else.6:                                        ; preds = %if.else.5
  %incdec.ptr.5 = getelementptr i32, ptr %buf, i32 6
  %23 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %value, align 4
  %25 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %incdec.ptr.5, align 4
  %call1.7 = call i32 @qlge_get_routing_reg(ptr noundef %qdev, i32 noundef 7, ptr noundef nonnull %value) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.7)
  %tobool2.not.7 = icmp eq i32 %call1.7, 0
  br i1 %tobool2.not.7, label %if.else.7, label %if.else.6.do.body_crit_edge

if.else.6.do.body_crit_edge:                      ; preds = %if.else.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.else.7:                                        ; preds = %if.else.6
  %incdec.ptr.6 = getelementptr i32, ptr %buf, i32 7
  %26 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %value, align 4
  %28 = ptrtoint ptr %incdec.ptr.6 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %incdec.ptr.6, align 4
  %call1.8 = call i32 @qlge_get_routing_reg(ptr noundef %qdev, i32 noundef 8, ptr noundef nonnull %value) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.8)
  %tobool2.not.8 = icmp eq i32 %call1.8, 0
  br i1 %tobool2.not.8, label %if.else.8, label %if.else.7.do.body_crit_edge

if.else.7.do.body_crit_edge:                      ; preds = %if.else.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.else.8:                                        ; preds = %if.else.7
  %incdec.ptr.7 = getelementptr i32, ptr %buf, i32 8
  %29 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %value, align 4
  %31 = ptrtoint ptr %incdec.ptr.7 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %incdec.ptr.7, align 4
  %call1.9 = call i32 @qlge_get_routing_reg(ptr noundef %qdev, i32 noundef 9, ptr noundef nonnull %value) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.9)
  %tobool2.not.9 = icmp eq i32 %call1.9, 0
  br i1 %tobool2.not.9, label %if.else.9, label %if.else.8.do.body_crit_edge

if.else.8.do.body_crit_edge:                      ; preds = %if.else.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.else.9:                                        ; preds = %if.else.8
  %incdec.ptr.8 = getelementptr i32, ptr %buf, i32 9
  %32 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %value, align 4
  %34 = ptrtoint ptr %incdec.ptr.8 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %incdec.ptr.8, align 4
  %call1.10 = call i32 @qlge_get_routing_reg(ptr noundef %qdev, i32 noundef 10, ptr noundef nonnull %value) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.10)
  %tobool2.not.10 = icmp eq i32 %call1.10, 0
  br i1 %tobool2.not.10, label %if.else.10, label %if.else.9.do.body_crit_edge

if.else.9.do.body_crit_edge:                      ; preds = %if.else.9
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.else.10:                                       ; preds = %if.else.9
  %incdec.ptr.9 = getelementptr i32, ptr %buf, i32 10
  %35 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %value, align 4
  %37 = ptrtoint ptr %incdec.ptr.9 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %incdec.ptr.9, align 4
  %call1.11 = call i32 @qlge_get_routing_reg(ptr noundef %qdev, i32 noundef 11, ptr noundef nonnull %value) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.11)
  %tobool2.not.11 = icmp eq i32 %call1.11, 0
  br i1 %tobool2.not.11, label %if.else.11, label %if.else.10.do.body_crit_edge

if.else.10.do.body_crit_edge:                     ; preds = %if.else.10
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.else.11:                                       ; preds = %if.else.10
  %incdec.ptr.10 = getelementptr i32, ptr %buf, i32 11
  %38 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %value, align 4
  %40 = ptrtoint ptr %incdec.ptr.10 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %incdec.ptr.10, align 4
  %call1.12 = call i32 @qlge_get_routing_reg(ptr noundef %qdev, i32 noundef 12, ptr noundef nonnull %value) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.12)
  %tobool2.not.12 = icmp eq i32 %call1.12, 0
  br i1 %tobool2.not.12, label %if.else.12, label %if.else.11.do.body_crit_edge

if.else.11.do.body_crit_edge:                     ; preds = %if.else.11
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.else.12:                                       ; preds = %if.else.11
  %incdec.ptr.11 = getelementptr i32, ptr %buf, i32 12
  %41 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %value, align 4
  %43 = ptrtoint ptr %incdec.ptr.11 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %incdec.ptr.11, align 4
  %call1.13 = call i32 @qlge_get_routing_reg(ptr noundef %qdev, i32 noundef 13, ptr noundef nonnull %value) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.13)
  %tobool2.not.13 = icmp eq i32 %call1.13, 0
  br i1 %tobool2.not.13, label %if.else.13, label %if.else.12.do.body_crit_edge

if.else.12.do.body_crit_edge:                     ; preds = %if.else.12
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.else.13:                                       ; preds = %if.else.12
  %incdec.ptr.12 = getelementptr i32, ptr %buf, i32 13
  %44 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %value, align 4
  %46 = ptrtoint ptr %incdec.ptr.12 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %incdec.ptr.12, align 4
  %call1.14 = call i32 @qlge_get_routing_reg(ptr noundef %qdev, i32 noundef 14, ptr noundef nonnull %value) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.14)
  %tobool2.not.14 = icmp eq i32 %call1.14, 0
  br i1 %tobool2.not.14, label %if.else.14, label %if.else.13.do.body_crit_edge

if.else.13.do.body_crit_edge:                     ; preds = %if.else.13
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.else.14:                                       ; preds = %if.else.13
  %incdec.ptr.13 = getelementptr i32, ptr %buf, i32 14
  %47 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %value, align 4
  %49 = ptrtoint ptr %incdec.ptr.13 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %incdec.ptr.13, align 4
  %call1.15 = call i32 @qlge_get_routing_reg(ptr noundef %qdev, i32 noundef 15, ptr noundef nonnull %value) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.15)
  %tobool2.not.15 = icmp eq i32 %call1.15, 0
  br i1 %tobool2.not.15, label %if.else.15, label %if.else.14.do.body_crit_edge

if.else.14.do.body_crit_edge:                     ; preds = %if.else.14
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.else.15:                                       ; preds = %if.else.14
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr.14 = getelementptr i32, ptr %buf, i32 15
  %50 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %value, align 4
  %52 = ptrtoint ptr %incdec.ptr.14 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %incdec.ptr.14, align 4
  br label %err

err:                                              ; preds = %if.else.15, %if.then5, %do.body.err_crit_edge
  %status.1 = phi i32 [ %call1.lcssa, %if.then5 ], [ %call1.lcssa, %do.body.err_crit_edge ], [ 0, %if.else.15 ]
  call void @qlge_sem_unlock(ptr noundef %qdev, i32 noundef 805306368) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.1, %err ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qlge_get_ets_regs(ptr nocapture noundef readonly %qdev, ptr nocapture noundef writeonly %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base.i = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %0 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 8) #5, !srcloc !135
  %2 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i2 = getelementptr i8, ptr %3, i32 128
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2) #5, !srcloc !131
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %buf, align 4
  %incdec.ptr = getelementptr i32, ptr %buf, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %7 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i.1 = getelementptr i8, ptr %8, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1, i32 40) #5, !srcloc !135
  %9 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i2.1 = getelementptr i8, ptr %10, i32 128
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.1) #5, !srcloc !131
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  %13 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %incdec.ptr, align 4
  %incdec.ptr.1 = getelementptr i32, ptr %buf, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %14 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i.2 = getelementptr i8, ptr %15, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2, i32 72) #5, !srcloc !135
  %16 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i2.2 = getelementptr i8, ptr %17, i32 128
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.2) #5, !srcloc !131
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  %20 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %incdec.ptr.1, align 4
  %incdec.ptr.2 = getelementptr i32, ptr %buf, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %21 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i.3 = getelementptr i8, ptr %22, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3, i32 104) #5, !srcloc !135
  %23 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i2.3 = getelementptr i8, ptr %24, i32 128
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.3) #5, !srcloc !131
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  %27 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %incdec.ptr.2, align 4
  %incdec.ptr.3 = getelementptr i32, ptr %buf, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %28 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i.4 = getelementptr i8, ptr %29, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.4, i32 136) #5, !srcloc !135
  %30 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i2.4 = getelementptr i8, ptr %31, i32 128
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.4) #5, !srcloc !131
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  %34 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %incdec.ptr.3, align 4
  %incdec.ptr.4 = getelementptr i32, ptr %buf, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %35 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i.5 = getelementptr i8, ptr %36, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.5, i32 168) #5, !srcloc !135
  %37 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i2.5 = getelementptr i8, ptr %38, i32 128
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.5) #5, !srcloc !131
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  %41 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %incdec.ptr.4, align 4
  %incdec.ptr.5 = getelementptr i32, ptr %buf, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %42 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i.6 = getelementptr i8, ptr %43, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.6, i32 200) #5, !srcloc !135
  %44 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i2.6 = getelementptr i8, ptr %45, i32 128
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.6) #5, !srcloc !131
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  %48 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %incdec.ptr.5, align 4
  %incdec.ptr.6 = getelementptr i32, ptr %buf, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %49 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i.7 = getelementptr i8, ptr %50, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.7, i32 232) #5, !srcloc !135
  %51 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i2.7 = getelementptr i8, ptr %52, i32 128
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.7) #5, !srcloc !131
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  %55 = ptrtoint ptr %incdec.ptr.6 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %incdec.ptr.6, align 4
  %incdec.ptr.7 = getelementptr i32, ptr %buf, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %56 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i4 = getelementptr i8, ptr %57, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 8) #5, !srcloc !135
  %58 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i6 = getelementptr i8, ptr %59, i32 132
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6) #5, !srcloc !131
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  %62 = ptrtoint ptr %incdec.ptr.7 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %incdec.ptr.7, align 4
  %incdec.ptr9 = getelementptr i32, ptr %buf, i32 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %63 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i4.1 = getelementptr i8, ptr %64, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.1, i32 40) #5, !srcloc !135
  %65 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i6.1 = getelementptr i8, ptr %66, i32 132
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.1) #5, !srcloc !131
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  %69 = ptrtoint ptr %incdec.ptr9 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %incdec.ptr9, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qlge_get_probe_dump(ptr noundef %qdev, ptr noundef %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @qlge_write_mpi_reg(ptr noundef %qdev, i32 noundef 4110, i32 noundef 413270016) #5
  %call1 = tail call fastcc ptr @qlge_get_probe(ptr noundef %qdev, i32 noundef 0, i32 noundef 1015799, ptr noundef %buf)
  %call2 = tail call fastcc ptr @qlge_get_probe(ptr noundef %qdev, i32 noundef 2, i32 noundef 16577, ptr noundef %call1)
  %call3 = tail call fastcc ptr @qlge_get_probe(ptr noundef %qdev, i32 noundef 6, i32 noundef 226057, ptr noundef %call2)
  %call4 = tail call fastcc ptr @qlge_get_probe(ptr noundef %qdev, i32 noundef 5, i32 noundef 12289, ptr noundef %call3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qlge_get_routing_index_registers(ptr noundef %qdev, ptr nocapture noundef writeonly %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @qlge_sem_spinlock(ptr noundef %qdev, i32 noundef 805306368) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %reg_base.i = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 15
  br label %for.body

for.body:                                         ; preds = %for.inc15.for.body_crit_edge, %for.cond.preheader
  %type.052 = phi i32 [ 0, %for.cond.preheader ], [ %inc16, %for.inc15.for.body_crit_edge ]
  %buf.addr.051 = phi ptr [ %buf, %for.cond.preheader ], [ %incdec.ptr14, %for.inc15.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type.052)
  %cmp1 = icmp ult i32 %type.052, 2
  %. = select i1 %cmp1, i32 8, i32 16
  %shl = shl i32 %type.052, 16
  br label %for.body6

for.body6:                                        ; preds = %while.end.for.body6_crit_edge, %for.body
  %index.050 = phi i32 [ 0, %for.body ], [ %inc, %while.end.for.body6_crit_edge ]
  %buf.addr.149 = phi ptr [ %buf.addr.051, %for.body ], [ %incdec.ptr14, %while.end.for.body6_crit_edge ]
  %shl7 = shl i32 %index.050, 8
  %or = or i32 %shl, %shl7
  %or8 = or i32 %or, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %0 = tail call i32 @llvm.bswap.i32(i32 %or8) #5
  %1 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %2, i32 228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #5, !srcloc !135
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %for.body6
  %3 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i46 = getelementptr i8, ptr %4, i32 228
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i46) #5, !srcloc !131
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  %and = and i32 %6, 1073741824
  %cmp9 = icmp eq i32 %and, 0
  br i1 %cmp9, label %while.body.while.body_crit_edge, label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.body
  %7 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i48 = getelementptr i8, ptr %8, i32 232
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48) #5, !srcloc !131
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  %11 = ptrtoint ptr %buf.addr.149 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %type.052, ptr %buf.addr.149, align 4
  %incdec.ptr = getelementptr i32, ptr %buf.addr.149, i32 1
  %12 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %index.050, ptr %incdec.ptr, align 4
  %incdec.ptr12 = getelementptr i32, ptr %buf.addr.149, i32 2
  %13 = ptrtoint ptr %incdec.ptr12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %6, ptr %incdec.ptr12, align 4
  %incdec.ptr13 = getelementptr i32, ptr %buf.addr.149, i32 3
  %14 = ptrtoint ptr %incdec.ptr13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %10, ptr %incdec.ptr13, align 4
  %incdec.ptr14 = getelementptr i32, ptr %buf.addr.149, i32 4
  %inc = add nuw nsw i32 %index.050, 1
  %exitcond.not = icmp eq i32 %inc, %.
  br i1 %exitcond.not, label %for.inc15, label %while.end.for.body6_crit_edge

while.end.for.body6_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body6

for.inc15:                                        ; preds = %while.end
  %inc16 = add nuw nsw i32 %type.052, 1
  %exitcond53.not = icmp eq i32 %inc16, 4
  br i1 %exitcond53.not, label %for.end17, label %for.inc15.for.body_crit_edge

for.inc15.for.body_crit_edge:                     ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end17:                                        ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @qlge_sem_unlock(ptr noundef %qdev, i32 noundef 805306368) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end17, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qlge_get_mac_protocol_registers(ptr nocapture noundef readonly %qdev, ptr nocapture noundef writeonly %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 6
  %reg_base.i = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 15
  br label %for.body

for.body:                                         ; preds = %for.inc25.for.body_crit_edge, %entry
  %initial_val.060 = phi i32 [ 67108864, %entry ], [ %initial_val.169, %for.inc25.for.body_crit_edge ]
  %type.057 = phi i32 [ 0, %entry ], [ %inc26, %for.inc25.for.body_crit_edge ]
  %buf.addr.056 = phi ptr [ %buf, %entry ], [ %buf.addr.1.lcssa, %for.inc25.for.body_crit_edge ]
  %0 = zext i32 %type.057 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type.057, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %for.body.for.cond12.preheader.lr.ph_crit_edge
    i32 2, label %for.body.for.cond12.preheader.lr.ph_crit_edge75
    i32 3, label %for.body.for.cond12.preheader.lr.ph_crit_edge76
    i32 4, label %sw.bb3
    i32 5, label %sw.bb4
    i32 6, label %sw.bb5
    i32 7, label %sw.bb6
    i32 8, label %sw.bb7
    i32 9, label %sw.bb8
  ]

for.body.for.cond12.preheader.lr.ph_crit_edge76:  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond12.preheader.lr.ph

for.body.for.cond12.preheader.lr.ph_crit_edge75:  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond12.preheader.lr.ph

for.body.for.cond12.preheader.lr.ph_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond12.preheader.lr.ph

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i32 %initial_val.060, 33554432
  br label %for.cond12.preheader.lr.ph

sw.bb3:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond12.preheader.lr.ph

sw.bb4:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond12.preheader.lr.ph

sw.bb5:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond12.preheader.lr.ph

sw.bb6:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond12.preheader.lr.ph

sw.bb7:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond12.preheader.lr.ph

sw.bb8:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond12.preheader.lr.ph

sw.epilog:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %2, ptr noundef nonnull @.str.57, i32 noundef %type.057) #8
  br label %for.inc25

for.cond12.preheader.lr.ph:                       ; preds = %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb, %for.body.for.cond12.preheader.lr.ph_crit_edge, %for.body.for.cond12.preheader.lr.ph_crit_edge75, %for.body.for.cond12.preheader.lr.ph_crit_edge76
  %initial_val.1.ph = phi i32 [ %initial_val.060, %for.body.for.cond12.preheader.lr.ph_crit_edge ], [ %initial_val.060, %for.body.for.cond12.preheader.lr.ph_crit_edge75 ], [ %initial_val.060, %for.body.for.cond12.preheader.lr.ph_crit_edge76 ], [ %or, %sw.bb ], [ %initial_val.060, %sw.bb3 ], [ %initial_val.060, %sw.bb4 ], [ %initial_val.060, %sw.bb5 ], [ %initial_val.060, %sw.bb6 ], [ %initial_val.060, %sw.bb7 ], [ %initial_val.060, %sw.bb8 ]
  %max_index.0.ph = phi i32 [ 3, %for.body.for.cond12.preheader.lr.ph_crit_edge ], [ 3, %for.body.for.cond12.preheader.lr.ph_crit_edge75 ], [ 3, %for.body.for.cond12.preheader.lr.ph_crit_edge76 ], [ 512, %sw.bb ], [ 4, %sw.bb3 ], [ 8, %sw.bb4 ], [ 16, %sw.bb5 ], [ 4, %sw.bb6 ], [ 4, %sw.bb7 ], [ 4, %sw.bb8 ]
  %exitcond.not = phi i1 [ false, %for.body.for.cond12.preheader.lr.ph_crit_edge ], [ false, %for.body.for.cond12.preheader.lr.ph_crit_edge75 ], [ false, %for.body.for.cond12.preheader.lr.ph_crit_edge76 ], [ false, %sw.bb ], [ false, %sw.bb3 ], [ false, %sw.bb4 ], [ true, %sw.bb5 ], [ true, %sw.bb6 ], [ false, %sw.bb7 ], [ true, %sw.bb8 ]
  %exitcond.not.1 = phi i1 [ false, %for.body.for.cond12.preheader.lr.ph_crit_edge ], [ false, %for.body.for.cond12.preheader.lr.ph_crit_edge75 ], [ false, %for.body.for.cond12.preheader.lr.ph_crit_edge76 ], [ false, %sw.bb ], [ true, %sw.bb3 ], [ true, %sw.bb4 ], [ false, %sw.bb5 ], [ false, %sw.bb6 ], [ false, %sw.bb7 ], [ false, %sw.bb8 ]
  %exitcond.not.2 = phi i1 [ true, %for.body.for.cond12.preheader.lr.ph_crit_edge ], [ true, %for.body.for.cond12.preheader.lr.ph_crit_edge75 ], [ true, %for.body.for.cond12.preheader.lr.ph_crit_edge76 ], [ true, %sw.bb ], [ false, %sw.bb3 ], [ false, %sw.bb4 ], [ false, %sw.bb5 ], [ false, %sw.bb6 ], [ false, %sw.bb7 ], [ false, %sw.bb8 ]
  %shl = shl nuw nsw i32 %type.057, 16
  %or15 = or i32 %initial_val.1.ph, %shl
  br label %for.body14.lr.ph

for.body14.lr.ph:                                 ; preds = %for.inc22.for.body14.lr.ph_crit_edge, %for.cond12.preheader.lr.ph
  %index.053 = phi i32 [ 0, %for.cond12.preheader.lr.ph ], [ %inc23, %for.inc22.for.body14.lr.ph_crit_edge ]
  %buf.addr.152 = phi ptr [ %buf.addr.056, %for.cond12.preheader.lr.ph ], [ %incdec.ptr21.lcssa, %for.inc22.for.body14.lr.ph_crit_edge ]
  %shl16 = shl i32 %index.053, 4
  %or17 = or i32 %or15, %shl16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %3 = tail call i32 @llvm.bswap.i32(i32 %or17) #5
  %4 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #5, !srcloc !135
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %for.body14.lr.ph
  %6 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i45 = getelementptr i8, ptr %7, i32 168
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45) #5, !srcloc !131
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  %and = and i32 %9, 1073741824
  %cmp19 = icmp eq i32 %and, 0
  br i1 %cmp19, label %while.body.while.body_crit_edge, label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.body
  %10 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i47 = getelementptr i8, ptr %11, i32 172
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47) #5, !srcloc !131
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  %14 = ptrtoint ptr %buf.addr.152 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %9, ptr %buf.addr.152, align 4
  %incdec.ptr = getelementptr i32, ptr %buf.addr.152, i32 1
  %15 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %13, ptr %incdec.ptr, align 4
  %incdec.ptr21 = getelementptr i32, ptr %buf.addr.152, i32 2
  br i1 %exitcond.not, label %while.end.for.inc22_crit_edge, label %for.body14.1

while.end.for.inc22_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc22

for.body14.1:                                     ; preds = %while.end
  %or18.1 = or i32 %or17, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %16 = tail call i32 @llvm.bswap.i32(i32 %or18.1) #5
  %17 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i.1 = getelementptr i8, ptr %18, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1, i32 %16) #5, !srcloc !135
  br label %while.body.1

while.body.1:                                     ; preds = %while.body.1.while.body.1_crit_edge, %for.body14.1
  %19 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i45.1 = getelementptr i8, ptr %20, i32 168
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45.1) #5, !srcloc !131
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  %and.1 = and i32 %22, 1073741824
  %cmp19.1 = icmp eq i32 %and.1, 0
  br i1 %cmp19.1, label %while.body.1.while.body.1_crit_edge, label %while.end.1

while.body.1.while.body.1_crit_edge:              ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.1

while.end.1:                                      ; preds = %while.body.1
  %23 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i47.1 = getelementptr i8, ptr %24, i32 172
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47.1) #5, !srcloc !131
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  %27 = ptrtoint ptr %incdec.ptr21 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %22, ptr %incdec.ptr21, align 4
  %incdec.ptr.1 = getelementptr i32, ptr %buf.addr.152, i32 3
  %28 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %26, ptr %incdec.ptr.1, align 4
  %incdec.ptr21.1 = getelementptr i32, ptr %buf.addr.152, i32 4
  br i1 %exitcond.not.1, label %while.end.1.for.inc22_crit_edge, label %for.body14.2

while.end.1.for.inc22_crit_edge:                  ; preds = %while.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc22

for.body14.2:                                     ; preds = %while.end.1
  %or18.2 = or i32 %or17, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %29 = tail call i32 @llvm.bswap.i32(i32 %or18.2) #5
  %30 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i.2 = getelementptr i8, ptr %31, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2, i32 %29) #5, !srcloc !135
  br label %while.body.2

while.body.2:                                     ; preds = %while.body.2.while.body.2_crit_edge, %for.body14.2
  %32 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i45.2 = getelementptr i8, ptr %33, i32 168
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45.2) #5, !srcloc !131
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  %and.2 = and i32 %35, 1073741824
  %cmp19.2 = icmp eq i32 %and.2, 0
  br i1 %cmp19.2, label %while.body.2.while.body.2_crit_edge, label %while.end.2

while.body.2.while.body.2_crit_edge:              ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.2

while.end.2:                                      ; preds = %while.body.2
  %36 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i47.2 = getelementptr i8, ptr %37, i32 172
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47.2) #5, !srcloc !131
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  %40 = ptrtoint ptr %incdec.ptr21.1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %35, ptr %incdec.ptr21.1, align 4
  %incdec.ptr.2 = getelementptr i32, ptr %buf.addr.152, i32 5
  %41 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %39, ptr %incdec.ptr.2, align 4
  %incdec.ptr21.2 = getelementptr i32, ptr %buf.addr.152, i32 6
  br i1 %exitcond.not.2, label %while.end.2.for.inc22_crit_edge, label %for.body14.3

while.end.2.for.inc22_crit_edge:                  ; preds = %while.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc22

for.body14.3:                                     ; preds = %while.end.2
  %or18.3 = or i32 %or17, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %42 = tail call i32 @llvm.bswap.i32(i32 %or18.3) #5
  %43 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i.3 = getelementptr i8, ptr %44, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3, i32 %42) #5, !srcloc !135
  br label %while.body.3

while.body.3:                                     ; preds = %while.body.3.while.body.3_crit_edge, %for.body14.3
  %45 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i45.3 = getelementptr i8, ptr %46, i32 168
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45.3) #5, !srcloc !131
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  %and.3 = and i32 %48, 1073741824
  %cmp19.3 = icmp eq i32 %and.3, 0
  br i1 %cmp19.3, label %while.body.3.while.body.3_crit_edge, label %while.end.3

while.body.3.while.body.3_crit_edge:              ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.3

while.end.3:                                      ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i47.3 = getelementptr i8, ptr %50, i32 172
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47.3) #5, !srcloc !131
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  %53 = ptrtoint ptr %incdec.ptr21.2 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %48, ptr %incdec.ptr21.2, align 4
  %incdec.ptr.3 = getelementptr i32, ptr %buf.addr.152, i32 7
  %54 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %52, ptr %incdec.ptr.3, align 4
  %incdec.ptr21.3 = getelementptr i32, ptr %buf.addr.152, i32 8
  br label %for.inc22

for.inc22:                                        ; preds = %while.end.3, %while.end.2.for.inc22_crit_edge, %while.end.1.for.inc22_crit_edge, %while.end.for.inc22_crit_edge
  %incdec.ptr21.lcssa = phi ptr [ %incdec.ptr21, %while.end.for.inc22_crit_edge ], [ %incdec.ptr21.1, %while.end.1.for.inc22_crit_edge ], [ %incdec.ptr21.2, %while.end.2.for.inc22_crit_edge ], [ %incdec.ptr21.3, %while.end.3 ]
  %inc23 = add nuw nsw i32 %index.053, 1
  %exitcond62.not = icmp eq i32 %inc23, %max_index.0.ph
  br i1 %exitcond62.not, label %for.inc22.for.inc25_crit_edge, label %for.inc22.for.body14.lr.ph_crit_edge

for.inc22.for.body14.lr.ph_crit_edge:             ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body14.lr.ph

for.inc22.for.inc25_crit_edge:                    ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc25

for.inc25:                                        ; preds = %for.inc22.for.inc25_crit_edge, %sw.epilog
  %initial_val.169 = phi i32 [ %initial_val.060, %sw.epilog ], [ %initial_val.1.ph, %for.inc22.for.inc25_crit_edge ]
  %buf.addr.1.lcssa = phi ptr [ %buf.addr.056, %sw.epilog ], [ %incdec.ptr21.lcssa, %for.inc22.for.inc25_crit_edge ]
  %inc26 = add nuw nsw i32 %type.057, 1
  %exitcond63.not = icmp eq i32 %inc26, 10
  br i1 %exitcond63.not, label %for.end27, label %for.inc25.for.body_crit_edge

for.inc25.for.body_crit_edge:                     ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end27:                                        ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qlge_get_sem_registers(ptr noundef %qdev, ptr nocapture noundef writeonly %buf) unnamed_addr #0 align 64 {
entry:
  %reg_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val) #5
  %0 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg_val, align 4, !annotation !133
  %call = call i32 @qlge_read_mpi_reg(ptr noundef %qdev, i32 noundef 131097, ptr noundef nonnull %reg_val) #5
  %1 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %reg_val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %spec.select = select i1 %tobool.not, i32 -559038737, i32 %2
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %spec.select, ptr %buf, align 4
  %incdec.ptr = getelementptr i32, ptr %buf, i32 1
  %call.1 = call i32 @qlge_read_mpi_reg(ptr noundef %qdev, i32 noundef 131161, ptr noundef nonnull %reg_val) #5
  %4 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg_val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  %spec.select.1 = select i1 %tobool.not.1, i32 -559038737, i32 %5
  %6 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %spec.select.1, ptr %incdec.ptr, align 4
  %incdec.ptr.1 = getelementptr i32, ptr %buf, i32 2
  %call.2 = call i32 @qlge_read_mpi_reg(ptr noundef %qdev, i32 noundef 131225, ptr noundef nonnull %reg_val) #5
  %7 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg_val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  %spec.select.2 = select i1 %tobool.not.2, i32 -559038737, i32 %8
  %9 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %spec.select.2, ptr %incdec.ptr.1, align 4
  %incdec.ptr.2 = getelementptr i32, ptr %buf, i32 3
  %call.3 = call i32 @qlge_read_mpi_reg(ptr noundef %qdev, i32 noundef 131289, ptr noundef nonnull %reg_val) #5
  %10 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg_val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool.not.3 = icmp eq i32 %call.3, 0
  %spec.select.3 = select i1 %tobool.not.3, i32 -559038737, i32 %11
  %12 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %spec.select.3, ptr %incdec.ptr.2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlge_write_mpi_reg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlge_unpause_mpi_risc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlge_hard_reset_mpi_risc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlge_dump_risc_ram_area(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlge_sem_unlock(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlge_get_dump(ptr noundef %qdev, ptr noundef %buff) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %if.else8

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @qlge_core_dump(ptr noundef %qdev, ptr noundef %buff)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %do.body

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call i32 @qlge_soft_reset_mpi_risc(ptr noundef %qdev) #5
  br label %if.end9

do.body:                                          ; preds = %if.then
  %msg_enable = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 18
  %3 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %msg_enable, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.body.if.end9_crit_edge, label %if.then6

do.body.if.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %ndev = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 6
  %5 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %6, ptr noundef nonnull @.str.54) #8
  br label %if.end9

if.else8:                                         ; preds = %entry
  %7 = getelementptr inbounds i8, ptr %buff, i32 20
  %8 = call ptr @memset(ptr %7, i32 0, i32 236)
  %9 = ptrtoint ptr %buff to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1431677610, ptr %buff, align 4
  %header_size.i = getelementptr inbounds %struct.mpi_coredump_global_header, ptr %buff, i32 0, i32 5
  %10 = ptrtoint ptr %header_size.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 256, ptr %header_size.i, align 4
  %image_size.i = getelementptr inbounds %struct.mpi_coredump_global_header, ptr %buff, i32 0, i32 4
  %11 = ptrtoint ptr %image_size.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1432, ptr %image_size.i, align 4
  %id_string.i = getelementptr inbounds %struct.mpi_coredump_global_header, ptr %buff, i32 0, i32 1
  %12 = call ptr @memcpy(ptr %id_string.i, ptr @str.61, i32 16)
  %misc_nic_seg_hdr.i = getelementptr inbounds %struct.qlge_reg_dump, ptr %buff, i32 0, i32 3
  %13 = getelementptr inbounds %struct.qlge_reg_dump, ptr %buff, i32 0, i32 3, i32 3
  %14 = call ptr @memset(ptr %13, i32 0, i32 20)
  %15 = ptrtoint ptr %misc_nic_seg_hdr.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1431677610, ptr %misc_nic_seg_hdr.i, align 4
  %seg_num.i.i = getelementptr inbounds %struct.qlge_reg_dump, ptr %buff, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %seg_num.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 30, ptr %seg_num.i.i, align 4
  %seg_size1.i.i = getelementptr inbounds %struct.qlge_reg_dump, ptr %buff, i32 0, i32 3, i32 2
  %17 = ptrtoint ptr %seg_size1.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 48, ptr %seg_size1.i.i, align 4
  %description.i.i = getelementptr inbounds %struct.qlge_reg_dump, ptr %buff, i32 0, i32 3, i32 4
  %18 = call ptr @memcpy(ptr %description.i.i, ptr @str.78, i32 15)
  %rx_ring_count.i = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 34
  %19 = ptrtoint ptr %rx_ring_count.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_ring_count.i, align 4
  %misc_nic_info.i = getelementptr inbounds %struct.qlge_reg_dump, ptr %buff, i32 0, i32 4
  %21 = ptrtoint ptr %misc_nic_info.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %misc_nic_info.i, align 4
  %tx_ring_count.i = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 32
  %22 = ptrtoint ptr %tx_ring_count.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_ring_count.i, align 4
  %tx_ring_count7.i = getelementptr inbounds %struct.qlge_reg_dump, ptr %buff, i32 0, i32 4, i32 1
  %24 = ptrtoint ptr %tx_ring_count7.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %tx_ring_count7.i, align 4
  %intr_count.i = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 29
  %25 = ptrtoint ptr %intr_count.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %intr_count.i, align 4
  %intr_count9.i = getelementptr inbounds %struct.qlge_reg_dump, ptr %buff, i32 0, i32 4, i32 2
  %27 = ptrtoint ptr %intr_count9.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %intr_count9.i, align 4
  %func.i = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 10
  %28 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %func.i, align 4
  %function.i = getelementptr inbounds %struct.qlge_reg_dump, ptr %buff, i32 0, i32 4, i32 3
  %30 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %function.i, align 4
  %nic_regs_seg_hdr.i = getelementptr inbounds %struct.qlge_reg_dump, ptr %buff, i32 0, i32 1
  %31 = getelementptr inbounds %struct.qlge_reg_dump, ptr %buff, i32 0, i32 1, i32 3
  %32 = call ptr @memset(ptr %31, i32 0, i32 20)
  %33 = ptrtoint ptr %nic_regs_seg_hdr.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1431677610, ptr %nic_regs_seg_hdr.i, align 4
  %seg_num.i58.i = getelementptr inbounds %struct.qlge_reg_dump, ptr %buff, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %seg_num.i58.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 16, ptr %seg_num.i58.i, align 4
  %seg_size1.i59.i = getelementptr inbounds %struct.qlge_reg_dump, ptr %buff, i32 0, i32 1, i32 2
  %35 = ptrtoint ptr %seg_size1.i59.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 288, ptr %seg_size1.i59.i, align 4
  %description.i60.i = getelementptr inbounds %struct.qlge_reg_dump, ptr %buff, i32 0, i32 1, i32 4
  %36 = call ptr @memcpy(ptr %description.i60.i, ptr @str.79, i32 15)
  %reg_base.i.i = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 15
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.else8
  %i.078.i = phi i32 [ 0, %if.else8 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %mul.i = shl i32 %i.078.i, 2
  %37 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg_base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %38, i32 %mul.i
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !131
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  %arrayidx.i = getelementptr %struct.qlge_reg_dump, ptr %buff, i32 0, i32 2, i32 %i.078.i
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.078.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %intr_states_seg_hdr.i = getelementptr inbounds %struct.qlge_reg_dump, ptr %buff, i32 0, i32 5
  %42 = getelementptr inbounds %struct.qlge_reg_dump, ptr %buff, i32 0, i32 5, i32 3
  %43 = call ptr @memset(ptr %42, i32 0, i32 20)
  %44 = ptrtoint ptr %intr_states_seg_hdr.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1431677610, ptr %intr_states_seg_hdr.i, align 4
  %seg_num.i62.i = getelementptr inbounds %struct.qlge_reg_dump, ptr %buff, i32 0, i32 5, i32 1
  %45 = ptrtoint ptr %seg_num.i62.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 31, ptr %seg_num.i62.i, align 4
  %seg_size1.i63.i = getelementptr inbounds %struct.qlge_reg_dump, ptr %buff, i32 0, i32 5, i32 2
  %46 = ptrtoint ptr %seg_size1.i63.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 64, ptr %seg_size1.i63.i, align 4
  %description.i64.i = getelementptr inbounds %struct.qlge_reg_dump, ptr %buff, i32 0, i32 5, i32 4
  %47 = call ptr @memcpy(ptr %description.i64.i, ptr @str.80, i32 15)
  %48 = ptrtoint ptr %rx_ring_count.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rx_ring_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp9.i.i = icmp sgt i32 %49, 0
  br i1 %cmp9.i.i, label %for.body.lr.ph.i.i, label %for.end.i.qlge_get_intr_states.exit.i_crit_edge

for.end.i.qlge_get_intr_states.exit.i_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qlge_get_intr_states.exit.i

for.body.lr.ph.i.i:                               ; preds = %for.end.i
  %intr_states.i = getelementptr inbounds %struct.qlge_reg_dump, ptr %buff, i32 0, i32 6
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.011.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %buf.addr.010.i.i = phi ptr [ %intr_states.i, %for.body.lr.ph.i.i ], [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %intr_read_mask.i.i = getelementptr %struct.qlge_adapter, ptr %qdev, i32 0, i32 31, i32 %i.011.i.i, i32 6
  %50 = ptrtoint ptr %intr_read_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %intr_read_mask.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #5
  %53 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %reg_base.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %54, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %52) #5, !srcloc !135
  %55 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %reg_base.i.i, align 8
  %add.ptr.i8.i.i = getelementptr i8, ptr %56, i32 52
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i.i) #5, !srcloc !131
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  %59 = ptrtoint ptr %buf.addr.010.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %buf.addr.010.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.011.i.i, 1
  %incdec.ptr.i.i = getelementptr i32, ptr %buf.addr.010.i.i, i32 1
  %60 = ptrtoint ptr %rx_ring_count.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rx_ring_count.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %61
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.qlge_get_intr_states.exit.i_crit_edge

for.body.i.i.qlge_get_intr_states.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qlge_get_intr_states.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

qlge_get_intr_states.exit.i:                      ; preds = %for.body.i.i.qlge_get_intr_states.exit.i_crit_edge, %for.end.i.qlge_get_intr_states.exit.i_crit_edge
  %cam_entries_seg_hdr.i = getelementptr inbounds %struct.qlge_reg_dump, ptr %buff, i32 0, i32 7
  %62 = getelementptr inbounds %struct.qlge_reg_dump, ptr %buff, i32 0, i32 7, i32 3
  %63 = call ptr @memset(ptr %62, i32 0, i32 20)
  %64 = ptrtoint ptr %cam_entries_seg_hdr.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1431677610, ptr %cam_entries_seg_hdr.i, align 4
  %seg_num.i66.i = getelementptr inbounds %struct.qlge_reg_dump, ptr %buff, i32 0, i32 7, i32 1
  %65 = ptrtoint ptr %seg_num.i66.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 32, ptr %seg_num.i66.i, align 4
  %seg_size1.i67.i = getelementptr inbounds %struct.qlge_reg_dump, ptr %buff, i32 0, i32 7, i32 2
  %66 = ptrtoint ptr %seg_size1.i67.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 608, ptr %seg_size1.i67.i, align 4
  %description.i68.i = getelementptr inbounds %struct.qlge_reg_dump, ptr %buff, i32 0, i32 7, i32 4
  %67 = call ptr @memcpy(ptr %description.i68.i, ptr @str.81, i32 15)
  %cam_entries.i = getelementptr inbounds %struct.qlge_reg_dump, ptr %buff, i32 0, i32 8
  %call14.i = tail call fastcc i32 @qlge_get_cam_entries(ptr noundef %qdev, ptr noundef %cam_entries.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %qlge_get_intr_states.exit.i.qlge_gen_reg_dump.exit_crit_edge

qlge_get_intr_states.exit.i.qlge_gen_reg_dump.exit_crit_edge: ; preds = %qlge_get_intr_states.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qlge_gen_reg_dump.exit

if.end.i:                                         ; preds = %qlge_get_intr_states.exit.i
  %nic_routing_words_seg_hdr.i = getelementptr inbounds %struct.qlge_reg_dump, ptr %buff, i32 0, i32 9
  %68 = getelementptr inbounds %struct.qlge_reg_dump, ptr %buff, i32 0, i32 9, i32 3
  %69 = call ptr @memset(ptr %68, i32 0, i32 20)
  %70 = ptrtoint ptr %nic_routing_words_seg_hdr.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1431677610, ptr %nic_routing_words_seg_hdr.i, align 4
  %seg_num.i70.i = getelementptr inbounds %struct.qlge_reg_dump, ptr %buff, i32 0, i32 9, i32 1
  %71 = ptrtoint ptr %seg_num.i70.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 33, ptr %seg_num.i70.i, align 4
  %seg_size1.i71.i = getelementptr inbounds %struct.qlge_reg_dump, ptr %buff, i32 0, i32 9, i32 2
  %72 = ptrtoint ptr %seg_size1.i71.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 96, ptr %seg_size1.i71.i, align 4
  %description.i72.i = getelementptr inbounds %struct.qlge_reg_dump, ptr %buff, i32 0, i32 9, i32 4
  %73 = call ptr @memcpy(ptr %description.i72.i, ptr @str.82, i32 15)
  %nic_routing_words.i = getelementptr inbounds %struct.qlge_reg_dump, ptr %buff, i32 0, i32 10
  %call16.i = tail call fastcc i32 @qlge_get_routing_entries(ptr noundef %qdev, ptr noundef %nic_routing_words.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.end.i.qlge_gen_reg_dump.exit_crit_edge

if.end.i.qlge_gen_reg_dump.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qlge_gen_reg_dump.exit

if.end19.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %ets_seg_hdr.i = getelementptr inbounds %struct.qlge_reg_dump, ptr %buff, i32 0, i32 11
  %74 = getelementptr inbounds %struct.qlge_reg_dump, ptr %buff, i32 0, i32 11, i32 3
  %75 = call ptr @memset(ptr %74, i32 0, i32 20)
  %76 = ptrtoint ptr %ets_seg_hdr.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1431677610, ptr %ets_seg_hdr.i, align 4
  %seg_num.i74.i = getelementptr inbounds %struct.qlge_reg_dump, ptr %buff, i32 0, i32 11, i32 1
  %77 = ptrtoint ptr %seg_num.i74.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 34, ptr %seg_num.i74.i, align 4
  %seg_size1.i75.i = getelementptr inbounds %struct.qlge_reg_dump, ptr %buff, i32 0, i32 11, i32 2
  %78 = ptrtoint ptr %seg_size1.i75.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 72, ptr %seg_size1.i75.i, align 4
  %description.i76.i = getelementptr inbounds %struct.qlge_reg_dump, ptr %buff, i32 0, i32 11, i32 4
  %79 = call ptr @memcpy(ptr %description.i76.i, ptr @str.83, i32 15)
  %ets.i = getelementptr inbounds %struct.qlge_reg_dump, ptr %buff, i32 0, i32 12
  tail call fastcc void @qlge_get_ets_regs(ptr noundef %qdev, ptr noundef %ets.i) #5
  br label %qlge_gen_reg_dump.exit

qlge_gen_reg_dump.exit:                           ; preds = %if.end19.i, %if.end.i.qlge_gen_reg_dump.exit_crit_edge, %qlge_get_intr_states.exit.i.qlge_gen_reg_dump.exit_crit_edge
  %call.i = tail call i32 @qlge_own_firmware(ptr noundef %qdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i17 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i17, label %do.body.i, label %if.end3.i

do.body.i:                                        ; preds = %qlge_gen_reg_dump.exit
  %msg_enable.i = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 18
  %80 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %do.body.i.if.end9_crit_edge, label %if.then2.i

do.body.i.if.end9_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %ndev.i = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 6
  %82 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ndev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %83, ptr noundef nonnull @.str.59) #8
  br label %if.end9

if.end3.i:                                        ; preds = %qlge_gen_reg_dump.exit
  %ndev4.i = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 6
  %84 = ptrtoint ptr %ndev4.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ndev4.i, align 4
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %85, i32 0, i32 6
  %86 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %87, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %do.body7.i, label %if.end15.i

do.body7.i:                                       ; preds = %if.end3.i
  %msg_enable8.i = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 18
  %88 = ptrtoint ptr %msg_enable8.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %msg_enable8.i, align 4
  %and9.i = and i32 %89, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %do.body7.i.if.end9_crit_edge, label %if.then11.i

do.body7.i.if.end9_crit_edge:                     ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then11.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %85, ptr noundef nonnull @.str.60) #8
  br label %if.end9

if.end15.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @qlge_queue_fw_error(ptr noundef %qdev) #5
  br label %if.end9

if.end9:                                          ; preds = %if.end15.i, %if.then11.i, %do.body7.i.if.end9_crit_edge, %if.then2.i, %do.body.i.if.end9_crit_edge, %if.then6, %do.body.if.end9_crit_edge, %if.then3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlge_soft_reset_mpi_risc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlge_read_mpi_reg(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlge_read_xgmac_reg(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qlge_wait_other_func_reg_rdy(ptr noundef %qdev, i32 noundef %reg, i32 noundef %err_bit) unnamed_addr #0 align 64 {
entry:
  %reg_val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %alt_func.i = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %while.body.preheader.for.body_crit_edge, %entry
  %count.08 = phi i32 [ 10, %entry ], [ %dec7, %while.body.preheader.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val.i) #5
  %0 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg_val.i, align 4, !annotation !133
  %1 = ptrtoint ptr %alt_func.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %alt_func.i, align 8
  %shl.i = shl i32 %2, 6
  %or.i = or i32 %shl.i, %reg
  %or1.i = or i32 %or.i, 131072
  %call.i = call i32 @qlge_read_mpi_reg(ptr noundef %qdev, i32 noundef %or1.i, ptr noundef nonnull %reg_val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %qlge_read_other_func_reg.exit, label %qlge_read_other_func_reg.exit.thread

qlge_read_other_func_reg.exit:                    ; preds = %for.body
  %3 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg_val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val.i) #5
  %and = and i32 %4, %err_bit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.else, label %qlge_read_other_func_reg.exit.cleanup_crit_edge

qlge_read_other_func_reg.exit.cleanup_crit_edge:  ; preds = %qlge_read_other_func_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

qlge_read_other_func_reg.exit.thread:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err_bit)
  %tobool1.not3 = icmp ne i32 %err_bit, 0
  %spec.select = sext i1 %tobool1.not3 to i32
  br label %cleanup

if.else:                                          ; preds = %qlge_read_other_func_reg.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %tobool3.not = icmp sgt i32 %4, -1
  br i1 %tobool3.not, label %while.body.preheader, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.preheader:                             ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %5(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %6(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %7(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %8(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %9(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %10(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %11(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %12(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %13(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %14(i32 noundef 214748000) #5
  %dec7 = add nsw i32 %count.08, -1
  %tobool.not = icmp eq i32 %dec7, 0
  br i1 %tobool.not, label %while.body.preheader.cleanup_crit_edge, label %while.body.preheader.for.body_crit_edge

while.body.preheader.for.body_crit_edge:          ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

while.body.preheader.cleanup_crit_edge:           ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %while.body.preheader.cleanup_crit_edge, %if.else.cleanup_crit_edge, %qlge_read_other_func_reg.exit.thread, %qlge_read_other_func_reg.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %qlge_read_other_func_reg.exit.thread ], [ -1, %while.body.preheader.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ -1, %qlge_read_other_func_reg.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qlge_read_other_func_serdes_reg(ptr noundef %qdev, i32 noundef %reg, ptr nocapture noundef writeonly %data) unnamed_addr #0 align 64 {
entry:
  %reg_val.i = alloca i32, align 4
  %reg_val.i.i12 = alloca i32, align 4
  %reg_val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %alt_func.i.i = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 11
  br label %for.body.i

for.body.i:                                       ; preds = %while.body.preheader.i.for.body.i_crit_edge, %entry
  %count.08.i = phi i32 [ 10, %entry ], [ %dec7.i, %while.body.preheader.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val.i.i) #5
  %0 = ptrtoint ptr %reg_val.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg_val.i.i, align 4, !annotation !133
  %1 = ptrtoint ptr %alt_func.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %alt_func.i.i, align 8
  %shl.i.i = shl i32 %2, 6
  %or1.i.i = or i32 %shl.i.i, 131132
  %call.i.i = call i32 @qlge_read_mpi_reg(ptr noundef %qdev, i32 noundef %or1.i.i, ptr noundef nonnull %reg_val.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i.i, label %qlge_read_other_func_reg.exit.i, label %qlge_read_other_func_reg.exit.thread.i

qlge_read_other_func_reg.exit.i:                  ; preds = %for.body.i
  %3 = ptrtoint ptr %reg_val.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg_val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %tobool3.not.i = icmp sgt i32 %4, -1
  br i1 %tobool3.not.i, label %while.body.preheader.i, label %qlge_read_other_func_reg.exit.i.if.end_crit_edge

qlge_read_other_func_reg.exit.i.if.end_crit_edge: ; preds = %qlge_read_other_func_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

qlge_read_other_func_reg.exit.thread.i:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val.i.i) #5
  br label %if.end

while.body.preheader.i:                           ; preds = %qlge_read_other_func_reg.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %5(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %6(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %7(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %8(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %9(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %10(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %11(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %12(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %13(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %14(i32 noundef 214748000) #5
  %dec7.i = add nsw i32 %count.08.i, -1
  %tobool.not.i = icmp eq i32 %dec7.i, 0
  br i1 %tobool.not.i, label %while.body.preheader.i.exit_crit_edge, label %while.body.preheader.i.for.body.i_crit_edge

while.body.preheader.i.for.body.i_crit_edge:      ; preds = %while.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

while.body.preheader.i.exit_crit_edge:            ; preds = %while.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end:                                           ; preds = %qlge_read_other_func_reg.exit.thread.i, %qlge_read_other_func_reg.exit.i.if.end_crit_edge
  %or = or i32 %reg, 1073741824
  %15 = ptrtoint ptr %alt_func.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %alt_func.i.i, align 8
  %shl.i = shl i32 %16, 6
  %or1.i = or i32 %shl.i, 131132
  %call.i = call i32 @qlge_write_mpi_reg(ptr noundef %qdev, i32 noundef %or1.i, i32 noundef %or) #5
  br label %for.body.i20

for.body.i20:                                     ; preds = %while.body.preheader.i26.for.body.i20_crit_edge, %if.end
  %count.08.i14 = phi i32 [ 10, %if.end ], [ %dec7.i24, %while.body.preheader.i26.for.body.i20_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val.i.i12) #5
  %17 = ptrtoint ptr %reg_val.i.i12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %reg_val.i.i12, align 4, !annotation !133
  %18 = ptrtoint ptr %alt_func.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %alt_func.i.i, align 8
  %shl.i.i15 = shl i32 %19, 6
  %or1.i.i17 = or i32 %shl.i.i15, 131132
  %call.i.i18 = call i32 @qlge_read_mpi_reg(ptr noundef %qdev, i32 noundef %or1.i.i17, ptr noundef nonnull %reg_val.i.i12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i18)
  %cmp.not.i.i19 = icmp eq i32 %call.i.i18, 0
  br i1 %cmp.not.i.i19, label %qlge_read_other_func_reg.exit.i21, label %qlge_read_other_func_reg.exit.thread.i22

qlge_read_other_func_reg.exit.i21:                ; preds = %for.body.i20
  %20 = ptrtoint ptr %reg_val.i.i12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reg_val.i.i12, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val.i.i12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %tobool3.not.i23 = icmp sgt i32 %21, -1
  br i1 %tobool3.not.i23, label %while.body.preheader.i26, label %qlge_read_other_func_reg.exit.i21.if.end5_crit_edge

qlge_read_other_func_reg.exit.i21.if.end5_crit_edge: ; preds = %qlge_read_other_func_reg.exit.i21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

qlge_read_other_func_reg.exit.thread.i22:         ; preds = %for.body.i20
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val.i.i12) #5
  br label %if.end5

while.body.preheader.i26:                         ; preds = %qlge_read_other_func_reg.exit.i21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %22(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %23(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %24(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %25(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %26(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %27(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %28(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %29(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %30(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %31(i32 noundef 214748000) #5
  %dec7.i24 = add nsw i32 %count.08.i14, -1
  %tobool.not.i25 = icmp eq i32 %dec7.i24, 0
  br i1 %tobool.not.i25, label %while.body.preheader.i26.exit_crit_edge, label %while.body.preheader.i26.for.body.i20_crit_edge

while.body.preheader.i26.for.body.i20_crit_edge:  ; preds = %while.body.preheader.i26
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i20

while.body.preheader.i26.exit_crit_edge:          ; preds = %while.body.preheader.i26
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end5:                                          ; preds = %qlge_read_other_func_reg.exit.thread.i22, %qlge_read_other_func_reg.exit.i21.if.end5_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val.i) #5
  %32 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %reg_val.i, align 4, !annotation !133
  %33 = ptrtoint ptr %alt_func.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %alt_func.i.i, align 8
  %shl.i30 = shl i32 %34, 6
  %or1.i32 = or i32 %shl.i30, 131133
  %call.i33 = call i32 @qlge_read_mpi_reg(ptr noundef %qdev, i32 noundef %or1.i32, ptr noundef nonnull %reg_val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %cmp.not.i = icmp eq i32 %call.i33, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.end5.qlge_read_other_func_reg.exit_crit_edge

if.end5.qlge_read_other_func_reg.exit_crit_edge:  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %qlge_read_other_func_reg.exit

if.end.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %reg_val.i, align 4
  br label %qlge_read_other_func_reg.exit

qlge_read_other_func_reg.exit:                    ; preds = %if.end.i, %if.end5.qlge_read_other_func_reg.exit_crit_edge
  %retval.0.i34 = phi i32 [ %36, %if.end.i ], [ -1, %if.end5.qlge_read_other_func_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val.i) #5
  %37 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %retval.0.i34, ptr %data, align 4
  br label %exit

exit:                                             ; preds = %qlge_read_other_func_reg.exit, %while.body.preheader.i26.exit_crit_edge, %while.body.preheader.i.exit_crit_edge
  %status.0 = phi i32 [ 0, %qlge_read_other_func_reg.exit ], [ -1, %while.body.preheader.i26.exit_crit_edge ], [ -1, %while.body.preheader.i.exit_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qlge_get_both_serdes(ptr noundef %qdev, i32 noundef %addr, ptr nocapture noundef writeonly %direct_ptr, ptr nocapture noundef writeonly %indirect_ptr, i1 noundef zeroext %direct_valid, i1 noundef zeroext %indirect_valid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %direct_valid, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @qlge_wait_reg_rdy(ptr noundef %qdev, i32 noundef 240, i32 noundef -2147483648, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.end.i:                                         ; preds = %if.then
  %or.i = or i32 %addr, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %0 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %reg_base.i.i = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 15
  %1 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reg_base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %0) #5, !srcloc !135
  %call1.i = tail call i32 @qlge_wait_reg_rdy(ptr noundef %qdev, i32 noundef 240, i32 noundef -2147483648, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %qlge_read_serdes_reg.exit, label %if.end.i.if.end4_crit_edge

if.end.i.if.end4_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

qlge_read_serdes_reg.exit:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_base.i.i, align 8
  %add.ptr.i12.i = getelementptr i8, ptr %4, i32 244
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i) #5, !srcloc !131
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  br label %if.end4

if.end4:                                          ; preds = %qlge_read_serdes_reg.exit, %if.end.i.if.end4_crit_edge, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %storemerge = phi i32 [ %6, %qlge_read_serdes_reg.exit ], [ -559038737, %if.end.i.if.end4_crit_edge ], [ -559038737, %if.then.if.end4_crit_edge ], [ -559038737, %entry.if.end4_crit_edge ]
  %7 = ptrtoint ptr %direct_ptr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %storemerge, ptr %direct_ptr, align 4
  br i1 %indirect_valid, label %if.then6, label %if.end4.if.then10_crit_edge

if.end4.if.then10_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.then6:                                         ; preds = %if.end4
  %call7 = tail call fastcc i32 @qlge_read_other_func_serdes_reg(ptr noundef %qdev, i32 noundef %addr, ptr noundef %indirect_ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %phi.cmp17 = icmp eq i32 %call7, 0
  br i1 %phi.cmp17, label %if.then6.if.end11_crit_edge, label %if.then6.if.then10_crit_edge

if.then6.if.then10_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.then6.if.end11_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then10:                                        ; preds = %if.then6.if.then10_crit_edge, %if.end4.if.then10_crit_edge
  %8 = ptrtoint ptr %indirect_ptr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -559038737, ptr %indirect_ptr, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.then6.if.end11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlge_wait_reg_rdy(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlge_get_mac_addr_reg(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlge_get_routing_reg(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @qlge_get_probe(ptr nocapture noundef readonly %qdev, i32 noundef %clock, i32 noundef %valid, ptr noundef writeonly %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base.i = getelementptr inbounds %struct.qlge_adapter, ptr %qdev, i32 0, i32 15
  br label %for.body

for.body:                                         ; preds = %for.inc13.for.body_crit_edge, %entry
  %module.043 = phi i32 [ 0, %entry ], [ %inc14, %for.inc13.for.body_crit_edge ]
  %buf.addr.042 = phi ptr [ %buf, %entry ], [ %buf.addr.3, %for.inc13.for.body_crit_edge ]
  %0 = shl nuw nsw i32 1, %module.043
  %1 = and i32 %0, %valid
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %for.body.for.inc13_crit_edge, label %for.body3.peel.next

for.body.for.inc13_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc13

for.body3.peel.next:                              ; preds = %for.body
  %shl = shl i32 %module.043, 9
  %or = or i32 %shl, %clock
  %or5.peel = or i32 %or, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %2 = tail call i32 @llvm.bswap.i32(i32 %or5.peel) #5
  %3 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i.peel = getelementptr i8, ptr %4, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.peel, i32 %2) #5, !srcloc !135
  %5 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i35.peel = getelementptr i8, ptr %6, i32 252
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35.peel) #5, !srcloc !131
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  %9 = ptrtoint ptr %buf.addr.042 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or5.peel, ptr %buf.addr.042, align 4
  %incdec.ptr.peel = getelementptr i32, ptr %buf.addr.042, i32 1
  %or9.peel = or i32 %or, 98304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %10 = tail call i32 @llvm.bswap.i32(i32 %or9.peel) #5
  %11 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i37.peel = getelementptr i8, ptr %12, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37.peel, i32 %10) #5, !srcloc !135
  %13 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i39.peel = getelementptr i8, ptr %14, i32 252
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39.peel) #5, !srcloc !131
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  %17 = ptrtoint ptr %incdec.ptr.peel to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %8, ptr %incdec.ptr.peel, align 4
  %incdec.ptr11.peel = getelementptr i32, ptr %buf.addr.042, i32 2
  %18 = ptrtoint ptr %incdec.ptr11.peel to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %16, ptr %incdec.ptr11.peel, align 4
  %incdec.ptr12.peel = getelementptr i32, ptr %buf.addr.042, i32 3
  br label %if.end8

if.end8:                                          ; preds = %if.end8.if.end8_crit_edge, %for.body3.peel.next
  %mux_sel.041 = phi i32 [ 1, %for.body3.peel.next ], [ %inc, %if.end8.if.end8_crit_edge ]
  %buf.addr.140 = phi ptr [ %incdec.ptr12.peel, %for.body3.peel.next ], [ %incdec.ptr12, %if.end8.if.end8_crit_edge ]
  %or4 = or i32 %or, %mux_sel.041
  %or5 = or i32 %or4, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %19 = tail call i32 @llvm.bswap.i32(i32 %or5) #5
  %20 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %21, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %19) #5, !srcloc !135
  %22 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i35 = getelementptr i8, ptr %23, i32 252
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35) #5, !srcloc !131
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  %or9 = or i32 %or4, 98304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %26 = tail call i32 @llvm.bswap.i32(i32 %or9) #5
  %27 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i37 = getelementptr i8, ptr %28, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 %26) #5, !srcloc !135
  %29 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i39 = getelementptr i8, ptr %30, i32 252
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39) #5, !srcloc !131
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  %33 = ptrtoint ptr %buf.addr.140 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %25, ptr %buf.addr.140, align 4
  %incdec.ptr11 = getelementptr i32, ptr %buf.addr.140, i32 1
  %34 = ptrtoint ptr %incdec.ptr11 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %32, ptr %incdec.ptr11, align 4
  %incdec.ptr12 = getelementptr i32, ptr %buf.addr.140, i32 2
  %inc = add nuw nsw i32 %mux_sel.041, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %if.end8.for.inc13_crit_edge, label %if.end8.if.end8_crit_edge, !llvm.loop !136

if.end8.if.end8_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.end8.for.inc13_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc13

for.inc13:                                        ; preds = %if.end8.for.inc13_crit_edge, %for.body.for.inc13_crit_edge
  %buf.addr.3 = phi ptr [ %buf.addr.042, %for.body.for.inc13_crit_edge ], [ %incdec.ptr12, %if.end8.for.inc13_crit_edge ]
  %inc14 = add nuw nsw i32 %module.043, 1
  %exitcond46.not = icmp eq i32 %inc14, 21
  br i1 %exitcond46.not, label %for.end15, label %for.inc13.for.body_crit_edge

for.inc13.for.body_crit_edge:                     ; preds = %for.inc13
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end15:                                        ; preds = %for.inc13
  call void @__sanitizer_cov_trace_pc() #7
  ret ptr %buf.addr.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlge_own_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlge_queue_fw_error(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120}
!llvm.module.flags = !{!122, !123, !124, !125, !126, !127, !128, !129}
!llvm.ident = !{!130}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 718, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 730, i32 3}
!4 = distinct !{null, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 743, i32 53}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 750, i32 44}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 755, i32 45}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 761, i32 42}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 766, i32 42}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 798, i32 12}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 805, i32 12}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 810, i32 12}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 816, i32 12}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 822, i32 12}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 828, i32 12}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 834, i32 12}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 840, i32 12}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 846, i32 12}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 852, i32 12}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 858, i32 12}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 864, i32 12}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 870, i32 12}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 876, i32 12}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 882, i32 12}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 888, i32 12}
!46 = distinct !{null, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 892, i32 3}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 903, i32 12}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 921, i32 12}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 932, i32 12}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 943, i32 12}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 955, i32 12}
!58 = distinct !{null, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 967, i32 12}
!60 = distinct !{null, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 978, i32 12}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 989, i32 12}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 1000, i32 12}
!66 = distinct !{null, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 1011, i32 12}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 1022, i32 12}
!70 = distinct !{null, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 1033, i32 12}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 1044, i32 12}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 1055, i32 12}
!76 = distinct !{null, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 1066, i32 12}
!78 = distinct !{null, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 1076, i32 12}
!80 = distinct !{null, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 1088, i32 12}
!82 = distinct !{null, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 1095, i32 12}
!84 = distinct !{null, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 1104, i32 12}
!86 = distinct !{null, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 1115, i32 12}
!88 = distinct !{null, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 1124, i32 12}
!90 = distinct !{null, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 1131, i32 12}
!92 = distinct !{null, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 1141, i32 12}
!94 = distinct !{null, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 1148, i32 44}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 1158, i32 3}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 1166, i32 3}
!100 = distinct !{null, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 1175, i32 12}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 1179, i32 3}
!104 = distinct !{null, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 1190, i32 12}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 1194, i32 3}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 1309, i32 4}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 426, i32 4}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 462, i32 4}
!114 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 649, i32 27}
!116 = distinct !{null, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 1250, i32 12}
!118 = !{ptr @.str.59, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 1207, i32 3}
!120 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/staging/qlge/qlge_dbg.c", i32 1212, i32 3}
!122 = !{i32 1, !"wchar_size", i32 2}
!123 = !{i32 1, !"min_enum_size", i32 4}
!124 = !{i32 8, !"branch-target-enforcement", i32 0}
!125 = !{i32 8, !"sign-return-address", i32 0}
!126 = !{i32 8, !"sign-return-address-all", i32 0}
!127 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!128 = !{i32 7, !"uwtable", i32 1}
!129 = !{i32 7, !"frame-pointer", i32 2}
!130 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!131 = !{i64 4747391}
!132 = !{i64 2156462677}
!133 = !{!"auto-init"}
!134 = !{i64 2156463063}
!135 = !{i64 4746973}
!136 = distinct !{!136, !137}
!137 = !{!"llvm.loop.peeled.count", i32 1}
