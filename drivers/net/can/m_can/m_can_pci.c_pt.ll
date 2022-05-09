; ModuleID = '/llk/IR_all_yes/drivers/net/can/m_can/m_can_pci.c_pt.bc'
source_filename = "../drivers/net/can/m_can/m_can_pci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.m_can_pci_config = type { ptr, ptr, i32 }
%struct.can_bittiming_const = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.m_can_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.126, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.126 = type { ptr }
%struct.m_can_pci_priv = type { %struct.m_can_classdev, ptr }
%struct.m_can_classdev = type { %struct.can_priv, %struct.can_rx_offload, %struct.napi_struct, ptr, ptr, ptr, ptr, ptr, %struct.work_struct, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, [7 x %struct.mram_cfg] }
%struct.can_priv = type { ptr, %struct.can_device_stats, ptr, ptr, %struct.can_bittiming, %struct.can_bittiming, ptr, %struct.can_tdc, i32, ptr, ptr, i32, i32, %struct.can_clock, i32, ptr, i16, ptr, [2 x i16], i32, ptr, i32, i32, i32, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_device_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_tdc = type { i32, i32, i32 }
%struct.can_clock = type { i32 }
%struct.can_rx_offload = type { ptr, ptr, %struct.sk_buff_head, %struct.sk_buff_head, i32, i32, i32, %struct.napi_struct, i8 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.mram_cfg = type { i16, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.131, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.145, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.131 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.145 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }

@__initcall__kmod_m_can_pci__464_237_m_can_pci_driver_init6 = internal global ptr @m_can_pci_driver_init, section ".initcall6.init", align 4
@m_can_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @m_can_pci_id_table, ptr @m_can_pci_probe, ptr @m_can_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @m_can_pci_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_m_can_pci_driver_exit = internal global ptr @m_can_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author465 = internal constant [38 x i8] c"m_can_pci.author=Felipe Balbi (Intel)\00", section ".modinfo", align 1
@__UNIQUE_ID_author466 = internal constant [63 x i8] c"m_can_pci.author=Jarkko Nikula <jarkko.nikula@linux.intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author467 = internal constant [53 x i8] c"m_can_pci.author=Raymond Tan <raymond.tan@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file468 = internal constant [47 x i8] c"m_can_pci.file=drivers/net/can/m_can/m_can_pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license469 = internal constant [22 x i8] c"m_can_pci.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description470 = internal constant [75 x i8] c"m_can_pci.description=CAN bus driver for Bosch M_CAN controller on PCI bus\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"m_can_pci\00", [22 x i8] zeroinitializer }, align 32
@m_can_pci_id_table = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 19393, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @m_can_pci_ehl to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 19394, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @m_can_pci_ehl to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@m_can_pci_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @m_can_pci_suspend, ptr @m_can_pci_resume, ptr @m_can_pci_suspend, ptr @m_can_pci_resume, ptr @m_can_pci_suspend, ptr @m_can_pci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@m_can_pci_ehl = internal constant { %struct.m_can_pci_config, [20 x i8] } { %struct.m_can_pci_config { ptr @m_can_bittiming_const_ehl, ptr @m_can_data_bittiming_const_ehl, i32 200000000 }, [20 x i8] zeroinitializer }, align 32
@m_can_bittiming_const_ehl = internal constant { %struct.can_bittiming_const, [48 x i8] } { %struct.can_bittiming_const { [16 x i8] c"m_can_pci\00\00\00\00\00\00\00", i32 2, i32 64, i32 1, i32 128, i32 128, i32 1, i32 512, i32 1 }, [48 x i8] zeroinitializer }, align 32
@m_can_data_bittiming_const_ehl = internal constant { %struct.can_bittiming_const, [48 x i8] } { %struct.can_bittiming_const { [16 x i8] c"m_can_pci\00\00\00\00\00\00\00", i32 2, i32 16, i32 1, i32 8, i32 4, i32 1, i32 32, i32 1 }, [48 x i8] zeroinitializer }, align 32
@m_can_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 144, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed to map BARs\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"m_can_pci_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/net/can/m_can/m_can_pci.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@m_can_pci_probe._entry_ptr = internal global ptr @m_can_pci_probe._entry, section ".printk_index", align 4
@m_can_pci_ops = internal global { %struct.m_can_ops, [40 x i8] } { %struct.m_can_ops { ptr null, ptr @iomap_read_reg, ptr @iomap_write_reg, ptr @iomap_read_fifo, ptr @iomap_write_fifo, ptr null }, [40 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"m_can_pci_driver\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 227, i32 26 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 237, i32 1 }
@___asan_gen_.12 = private unnamed_addr constant [19 x i8] c"m_can_pci_id_table\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 220, i32 35 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"m_can_pci_pm_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 217, i32 8 }
@___asan_gen_.18 = private unnamed_addr constant [14 x i8] c"m_can_pci_ehl\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 116, i32 38 }
@___asan_gen_.21 = private unnamed_addr constant [26 x i8] c"m_can_bittiming_const_ehl\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 92, i32 41 }
@___asan_gen_.24 = private unnamed_addr constant [31 x i8] c"m_can_data_bittiming_const_ehl\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 104, i32 41 }
@___asan_gen_.27 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 144, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [14 x i8] c"m_can_pci_ops\00", align 1
@___asan_gen_.46 = private constant [37 x i8] c"../drivers/net/can/m_can/m_can_pci.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 85, i32 25 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_author465, ptr @__UNIQUE_ID_author466, ptr @__UNIQUE_ID_author467, ptr @__UNIQUE_ID_description470, ptr @__UNIQUE_ID_file468, ptr @__UNIQUE_ID_license469, ptr @__exitcall_m_can_pci_driver_exit, ptr @__initcall__kmod_m_can_pci__464_237_m_can_pci_driver_init6, ptr @m_can_pci_driver_exit, ptr @m_can_pci_probe._entry, ptr @m_can_pci_probe._entry_ptr, ptr @m_can_pci_driver, ptr @.str, ptr @m_can_pci_id_table, ptr @m_can_pci_pm_ops, ptr @m_can_pci_ehl, ptr @m_can_bittiming_const_ehl, ptr @m_can_data_bittiming_const_ehl, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @m_can_pci_ops], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m_can_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m_can_pci_id_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m_can_pci_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m_can_pci_ehl to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m_can_bittiming_const_ehl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m_can_data_bittiming_const_ehl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m_can_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m_can_pci_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @m_can_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @m_can_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @m_can_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pci_unregister_driver(ptr noundef nonnull @m_can_pci_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m_can_pci_probe(ptr noundef %pci, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  %call = tail call i32 @pcim_enable_device(ptr noundef %pci) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @pci_set_master(ptr noundef %pci) #7
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 3
  %0 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.pci_name.exit_crit_edge

if.end.pci_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %3, %if.end.i.i ], [ %1, %if.end.pci_name.exit_crit_edge ]
  %call3 = tail call i32 @pcim_iomap_regions(ptr noundef %pci, i32 noundef 1, ptr noundef %retval.0.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %pci_name.exit.cleanup_crit_edge

pci_name.exit.cleanup_crit_edge:                  ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %pci_name.exit
  %call7 = tail call ptr @pcim_iomap_table(ptr noundef %pci) #7
  %4 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call7, align 4
  %tobool8.not = icmp eq ptr %5, null
  br i1 %tobool8.not, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %call12 = tail call ptr @m_can_class_allocate_dev(ptr noundef %dev1, i32 noundef 1040) #7
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %6 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_data, align 4
  %base17 = getelementptr inbounds %struct.m_can_pci_priv, ptr %call12, i32 0, i32 1
  %8 = ptrtoint ptr %base17 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %base17, align 8
  %call.i = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %pci, i32 noundef 1, i32 noundef 1, i32 noundef 7, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end15.cleanup_crit_edge, label %if.end20

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %9 = inttoptr i32 %7 to ptr
  %dev22 = getelementptr inbounds %struct.m_can_classdev, ptr %call12, i32 0, i32 4
  %10 = ptrtoint ptr %dev22 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev1, ptr %dev22, align 4
  %call23 = tail call i32 @pci_irq_vector(ptr noundef %pci, i32 noundef 0) #7
  %net = getelementptr inbounds %struct.m_can_classdev, ptr %call12, i32 0, i32 3
  %11 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net, align 8
  %irq = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 64
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call23, ptr %irq, align 4
  %pm_clock_support = getelementptr inbounds %struct.m_can_classdev, ptr %call12, i32 0, i32 16
  %14 = ptrtoint ptr %pm_clock_support to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %pm_clock_support, align 4
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %9, align 4
  %bit_timing24 = getelementptr inbounds %struct.m_can_classdev, ptr %call12, i32 0, i32 11
  %17 = ptrtoint ptr %bit_timing24 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %bit_timing24, align 8
  %data_timing = getelementptr inbounds %struct.m_can_pci_config, ptr %9, i32 0, i32 1
  %18 = ptrtoint ptr %data_timing to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data_timing, align 4
  %data_timing25 = getelementptr inbounds %struct.m_can_classdev, ptr %call12, i32 0, i32 12
  %20 = ptrtoint ptr %data_timing25 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %data_timing25, align 4
  %clock_freq = getelementptr inbounds %struct.m_can_pci_config, ptr %9, i32 0, i32 2
  %21 = ptrtoint ptr %clock_freq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %clock_freq, align 4
  %clock = getelementptr inbounds %struct.can_priv, ptr %call12, i32 0, i32 13
  %23 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %clock, align 8
  %ops = getelementptr inbounds %struct.m_can_classdev, ptr %call12, i32 0, i32 13
  %24 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @m_can_pci_ops, ptr %ops, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %25 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call12, ptr %driver_data.i.i, align 4
  %call26 = tail call i32 @m_can_class_register(ptr noundef nonnull %call12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %do.body30, label %err

do.body30:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  %add.ptr = getelementptr i8, ptr %5, i32 1288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #7, !srcloc !47
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 1000) #7
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #7
  tail call fastcc void @pm_runtime_put_noidle(ptr noundef %dev1)
  tail call void @pm_runtime_allow(ptr noundef %dev1) #7
  br label %cleanup

err:                                              ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pci_free_irq_vectors(ptr noundef %pci) #7
  br label %cleanup

cleanup:                                          ; preds = %err, %do.body30, %if.end15.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %do.end, %pci_name.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call26, %err ], [ 0, %do.body30 ], [ -12, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ %call3, %pci_name.exit.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ], [ %call.i, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @m_can_pci_remove(ptr noundef %pci) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  tail call void @pm_runtime_forbid(ptr noundef %dev) #7
  %usage_count.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  tail call void @arm_heavy_mb() #7
  %base = getelementptr inbounds %struct.m_can_pci_priv, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %4, i32 1288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !47
  tail call void @m_can_class_unregister(ptr noundef %1) #7
  tail call void @pci_free_irq_vectors(ptr noundef %pci) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @m_can_class_allocate_dev(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @m_can_class_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !50
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #7, !srcloc !51
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !52
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_allow(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iomap_read_reg(ptr nocapture noundef readonly %cdev, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.m_can_pci_priv, ptr %cdev, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !53
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !54
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iomap_write_reg(ptr nocapture noundef readonly %cdev, i32 noundef %reg, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !55
  tail call void @arm_heavy_mb() #7
  %0 = tail call i32 @llvm.bswap.i32(i32 %val)
  %base = getelementptr inbounds %struct.m_can_pci_priv, ptr %cdev, i32 0, i32 1
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %2, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #7, !srcloc !47
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iomap_read_fifo(ptr nocapture noundef readonly %cdev, i32 noundef %offset, ptr nocapture noundef writeonly %val, i32 noundef %val_count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val_count)
  %tobool.not6 = icmp eq i32 %val_count, 0
  br i1 %tobool.not6, label %entry.while.end_crit_edge, label %while.body.preheader

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.preheader:                             ; preds = %entry
  %base = getelementptr inbounds %struct.m_can_pci_priv, ptr %cdev, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %src.09 = phi ptr [ %add.ptr3, %while.body.while.body_crit_edge ], [ %add.ptr, %while.body.preheader ]
  %val.addr.08 = phi ptr [ %add.ptr2, %while.body.while.body_crit_edge ], [ %val, %while.body.preheader ]
  %val_count.addr.07 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %val_count, %while.body.preheader ]
  %dec = add i32 %val_count.addr.07, -1
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %src.09) #7, !srcloc !53
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  %4 = ptrtoint ptr %val.addr.08 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %val.addr.08, align 4
  %add.ptr2 = getelementptr i8, ptr %val.addr.08, i32 4
  %add.ptr3 = getelementptr i8, ptr %src.09, i32 4
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iomap_write_fifo(ptr nocapture noundef readonly %cdev, i32 noundef %offset, ptr nocapture noundef readonly %val, i32 noundef %val_count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val_count)
  %tobool.not5 = icmp eq i32 %val_count, 0
  br i1 %tobool.not5, label %entry.while.end_crit_edge, label %while.body.preheader

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.preheader:                             ; preds = %entry
  %base = getelementptr inbounds %struct.m_can_pci_priv, ptr %cdev, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %dst.08 = phi ptr [ %add.ptr2, %while.body.while.body_crit_edge ], [ %add.ptr, %while.body.preheader ]
  %val.addr.07 = phi ptr [ %add.ptr1, %while.body.while.body_crit_edge ], [ %val, %while.body.preheader ]
  %val_count.addr.06 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %val_count, %while.body.preheader ]
  %dec = add i32 %val_count.addr.06, -1
  %2 = ptrtoint ptr %val.addr.07 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val.addr.07, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.08, i32 %4) #7, !srcloc !47
  %add.ptr1 = getelementptr i8, ptr %val.addr.07, i32 4
  %add.ptr2 = getelementptr i8, ptr %dst.08, i32 4
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_forbid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @m_can_class_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m_can_pci_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @m_can_class_suspend(ptr noundef %dev) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m_can_pci_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @m_can_class_resume(ptr noundef %dev) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @m_can_class_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @m_can_class_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !15, !17, !19, !21, !23, !25, !27, !28, !29, !30, !31, !32, !33, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__initcall__kmod_m_can_pci__464_237_m_can_pci_driver_init6, !1, !"__initcall__kmod_m_can_pci__464_237_m_can_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/can/m_can/m_can_pci.c", i32 237, i32 1}
!2 = !{ptr @__exitcall_m_can_pci_driver_exit, !1, !"__exitcall_m_can_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author465, !4, !"__UNIQUE_ID_author465", i1 false, i1 false}
!4 = !{!"../drivers/net/can/m_can/m_can_pci.c", i32 239, i32 1}
!5 = !{ptr @__UNIQUE_ID_author466, !6, !"__UNIQUE_ID_author466", i1 false, i1 false}
!6 = !{!"../drivers/net/can/m_can/m_can_pci.c", i32 240, i32 1}
!7 = !{ptr @__UNIQUE_ID_author467, !8, !"__UNIQUE_ID_author467", i1 false, i1 false}
!8 = !{!"../drivers/net/can/m_can/m_can_pci.c", i32 241, i32 1}
!9 = !{ptr @__UNIQUE_ID_file468, !10, !"__UNIQUE_ID_file468", i1 false, i1 false}
!10 = !{!"../drivers/net/can/m_can/m_can_pci.c", i32 242, i32 1}
!11 = !{ptr @__UNIQUE_ID_license469, !10, !"__UNIQUE_ID_license469", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_description470, !13, !"__UNIQUE_ID_description470", i1 false, i1 false}
!13 = !{!"../drivers/net/can/m_can/m_can_pci.c", i32 243, i32 1}
!14 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @m_can_pci_driver, !16, !"m_can_pci_driver", i1 false, i1 false}
!16 = !{!"../drivers/net/can/m_can/m_can_pci.c", i32 227, i32 26}
!17 = !{ptr @m_can_pci_id_table, !18, !"m_can_pci_id_table", i1 false, i1 false}
!18 = !{!"../drivers/net/can/m_can/m_can_pci.c", i32 220, i32 35}
!19 = !{ptr @m_can_pci_ehl, !20, !"m_can_pci_ehl", i1 false, i1 false}
!20 = !{!"../drivers/net/can/m_can/m_can_pci.c", i32 116, i32 38}
!21 = !{ptr @m_can_bittiming_const_ehl, !22, !"m_can_bittiming_const_ehl", i1 false, i1 false}
!22 = !{!"../drivers/net/can/m_can/m_can_pci.c", i32 92, i32 41}
!23 = !{ptr @m_can_data_bittiming_const_ehl, !24, !"m_can_data_bittiming_const_ehl", i1 false, i1 false}
!24 = !{!"../drivers/net/can/m_can/m_can_pci.c", i32 104, i32 41}
!25 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/can/m_can/m_can_pci.c", i32 144, i32 3}
!27 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @m_can_pci_probe._entry, !26, !"_entry", i1 false, i1 false}
!32 = !{ptr @m_can_pci_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @m_can_pci_ops, !34, !"m_can_pci_ops", i1 false, i1 false}
!34 = !{!"../drivers/net/can/m_can/m_can_pci.c", i32 85, i32 25}
!35 = !{ptr @m_can_pci_pm_ops, !36, !"m_can_pci_pm_ops", i1 false, i1 false}
!36 = !{!"../drivers/net/can/m_can/m_can_pci.c", i32 217, i32 8}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{i64 2157631481}
!47 = !{i64 6713088}
!48 = !{i64 2148213602, i64 2148213628, i64 2148213657, i64 2148213691, i64 2148213722, i64 2148213745}
!49 = !{i64 2157631872}
!50 = !{i64 2148213021}
!51 = !{i64 697844, i64 697869, i64 697891, i64 697907, i64 697919, i64 697939, i64 697963, i64 697979, i64 697991}
!52 = !{i64 2148213209}
!53 = !{i64 6713506}
!54 = !{i64 2157629127}
!55 = !{i64 2157629349}
!56 = !{i64 2154253855}
!57 = !{i64 2154255210}
