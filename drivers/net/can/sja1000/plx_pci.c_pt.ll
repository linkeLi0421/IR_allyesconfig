; ModuleID = '/llk/IR_all_yes/drivers/net/can/sja1000/plx_pci.c_pt.bc'
source_filename = "../drivers/net/can/sja1000/plx_pci.c"
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
%struct.plx_pci_card_info = type { ptr, i32, i32, i8, i8, %struct.plx_pci_channel_map, [2 x %struct.plx_pci_channel_map], ptr }
%struct.plx_pci_channel_map = type { i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.plx_pci_card = type { i32, [2 x ptr], ptr, ptr }
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
%struct.sja1000_priv = type { %struct.can_priv, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i16, i8, i8 }
%struct.can_priv = type { ptr, %struct.can_device_stats, ptr, ptr, %struct.can_bittiming, %struct.can_bittiming, ptr, %struct.can_tdc, i32, ptr, ptr, i32, i32, %struct.can_clock, i32, ptr, i16, ptr, [2 x i16], i32, ptr, i32, i32, i32, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_device_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_tdc = type { i32, i32, i32 }
%struct.can_clock = type { i32 }

@__UNIQUE_ID_author461 = internal constant [58 x i8] c"plx_pci.author=Pavel Cheblakov <P.B.Cheblakov@inp.nsk.su>\00", section ".modinfo", align 1
@__UNIQUE_ID_description462 = internal constant [90 x i8] c"plx_pci.description=Socket-CAN driver for PLX90xx PCI-bridge cards with the SJA1000 chips\00", section ".modinfo", align 1
@__UNIQUE_ID_file463 = internal constant [45 x i8] c"plx_pci.file=drivers/net/can/sja1000/plx_pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license464 = internal constant [23 x i8] c"plx_pci.license=GPL v2\00", section ".modinfo", align 1
@__initcall__kmod_plx_pci__465_756_plx_pci_driver_init6 = internal global ptr @plx_pci_driver_init, section ".initcall6.init", align 4
@plx_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @plx_pci_tbl, ptr @plx_pci_add_card, ptr @plx_pci_del_card, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_plx_pci_driver_exit = internal global ptr @plx_pci_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"plx_pci\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sja1000_plx_pci\00", [16 x i8] zeroinitializer }, align 32
@plx_pci_tbl = internal constant { [18 x %struct.pci_device_id], [128 x i8] } { [18 x %struct.pci_device_id] [%struct.pci_device_id { i32 5194, i32 30785, i32 -1, i32 -1, i32 163840, i32 -1, i32 ptrtoint (ptr @plx_pci_card_info_adlink to i32), i32 0 }, %struct.pci_device_id { i32 5194, i32 30785, i32 -1, i32 -1, i32 491520, i32 -1, i32 ptrtoint (ptr @plx_pci_card_info_adlink_se to i32), i32 0 }, %struct.pci_device_id { i32 4277, i32 36944, i32 4862, i32 4, i32 0, i32 0, i32 ptrtoint (ptr @plx_pci_card_info_esd200 to i32), i32 0 }, %struct.pci_device_id { i32 4277, i32 36912, i32 4862, i32 267, i32 0, i32 0, i32 ptrtoint (ptr @plx_pci_card_info_esd200 to i32), i32 0 }, %struct.pci_device_id { i32 4277, i32 36912, i32 4862, i32 1281, i32 0, i32 0, i32 ptrtoint (ptr @plx_pci_card_info_esd200 to i32), i32 0 }, %struct.pci_device_id { i32 4277, i32 36950, i32 4862, i32 9, i32 0, i32 0, i32 ptrtoint (ptr @plx_pci_card_info_esd266 to i32), i32 0 }, %struct.pci_device_id { i32 4277, i32 36950, i32 4862, i32 14, i32 0, i32 0, i32 ptrtoint (ptr @plx_pci_card_info_esd266 to i32), i32 0 }, %struct.pci_device_id { i32 4277, i32 36950, i32 4862, i32 512, i32 0, i32 0, i32 ptrtoint (ptr @plx_pci_card_info_esd2000 to i32), i32 0 }, %struct.pci_device_id { i32 4277, i32 36944, i32 -1, i32 9536, i32 0, i32 0, i32 ptrtoint (ptr @plx_pci_card_info_ixxat to i32), i32 0 }, %struct.pci_device_id { i32 4277, i32 10005, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @plx_pci_card_info_marathon_pci to i32), i32 0 }, %struct.pci_device_id { i32 4277, i32 13362, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @plx_pci_card_info_marathon_pcie to i32), i32 0 }, %struct.pci_device_id { i32 5272, i32 810, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @plx_pci_card_info_tews to i32), i32 0 }, %struct.pci_device_id { i32 4277, i32 36912, i32 4804, i32 2304, i32 0, i32 0, i32 ptrtoint (ptr @plx_pci_card_info_cti to i32), i32 0 }, %struct.pci_device_id { i32 4277, i32 36912, i32 57797, i32 769, i32 0, i32 0, i32 ptrtoint (ptr @plx_pci_card_info_elcus to i32), i32 0 }, %struct.pci_device_id { i32 5011, i32 256, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @plx_pci_card_info_moxa to i32), i32 0 }, %struct.pci_device_id { i32 4277, i32 36912, i32 12288, i32 4097, i32 0, i32 0, i32 ptrtoint (ptr @plx_pci_card_info_asem_dual_can to i32), i32 0 }, %struct.pci_device_id { i32 4277, i32 36912, i32 12288, i32 4098, i32 0, i32 0, i32 ptrtoint (ptr @plx_pci_card_info_asem_dual_can to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [128 x i8] zeroinitializer }, align 32
@plx_pci_card_info_adlink = internal global { %struct.plx_pci_card_info, [40 x i8] } { %struct.plx_pci_card_info { ptr @.str.2, i32 2, i32 8000000, i8 -40, i8 71, %struct.plx_pci_channel_map { i32 1, i32 0, i32 0 }, [2 x %struct.plx_pci_channel_map] [%struct.plx_pci_channel_map { i32 2, i32 0, i32 128 }, %struct.plx_pci_channel_map { i32 2, i32 128, i32 128 }], ptr @plx_pci_reset_common }, [40 x i8] zeroinitializer }, align 32
@plx_pci_card_info_adlink_se = internal global { %struct.plx_pci_card_info, [40 x i8] } { %struct.plx_pci_card_info { ptr @.str.3, i32 2, i32 8000000, i8 -40, i8 71, %struct.plx_pci_channel_map zeroinitializer, [2 x %struct.plx_pci_channel_map] [%struct.plx_pci_channel_map { i32 2, i32 0, i32 128 }, %struct.plx_pci_channel_map { i32 2, i32 128, i32 128 }], ptr @plx_pci_reset_common }, [40 x i8] zeroinitializer }, align 32
@plx_pci_card_info_esd200 = internal global { %struct.plx_pci_card_info, [40 x i8] } { %struct.plx_pci_card_info { ptr @.str.4, i32 2, i32 8000000, i8 -40, i8 71, %struct.plx_pci_channel_map zeroinitializer, [2 x %struct.plx_pci_channel_map] [%struct.plx_pci_channel_map { i32 2, i32 0, i32 128 }, %struct.plx_pci_channel_map { i32 2, i32 256, i32 128 }], ptr @plx_pci_reset_common }, [40 x i8] zeroinitializer }, align 32
@plx_pci_card_info_esd266 = internal global { %struct.plx_pci_card_info, [40 x i8] } { %struct.plx_pci_card_info { ptr @.str.5, i32 2, i32 8000000, i8 -40, i8 71, %struct.plx_pci_channel_map zeroinitializer, [2 x %struct.plx_pci_channel_map] [%struct.plx_pci_channel_map { i32 2, i32 0, i32 128 }, %struct.plx_pci_channel_map { i32 2, i32 256, i32 128 }], ptr @plx9056_pci_reset_common }, [40 x i8] zeroinitializer }, align 32
@plx_pci_card_info_esd2000 = internal global { %struct.plx_pci_card_info, [40 x i8] } { %struct.plx_pci_card_info { ptr @.str.6, i32 2, i32 8000000, i8 -40, i8 71, %struct.plx_pci_channel_map zeroinitializer, [2 x %struct.plx_pci_channel_map] [%struct.plx_pci_channel_map { i32 2, i32 0, i32 128 }, %struct.plx_pci_channel_map { i32 2, i32 256, i32 128 }], ptr @plx9056_pci_reset_common }, [40 x i8] zeroinitializer }, align 32
@plx_pci_card_info_ixxat = internal global { %struct.plx_pci_card_info, [40 x i8] } { %struct.plx_pci_card_info { ptr @.str.7, i32 2, i32 8000000, i8 -40, i8 71, %struct.plx_pci_channel_map zeroinitializer, [2 x %struct.plx_pci_channel_map] [%struct.plx_pci_channel_map { i32 2, i32 0, i32 128 }, %struct.plx_pci_channel_map { i32 2, i32 512, i32 128 }], ptr @plx_pci_reset_common }, [40 x i8] zeroinitializer }, align 32
@plx_pci_card_info_marathon_pci = internal global { %struct.plx_pci_card_info, [40 x i8] } { %struct.plx_pci_card_info { ptr @.str.8, i32 2, i32 8000000, i8 -40, i8 71, %struct.plx_pci_channel_map zeroinitializer, [2 x %struct.plx_pci_channel_map] [%struct.plx_pci_channel_map { i32 2, i32 0, i32 0 }, %struct.plx_pci_channel_map { i32 4, i32 0, i32 0 }], ptr @plx_pci_reset_marathon_pci }, [40 x i8] zeroinitializer }, align 32
@plx_pci_card_info_marathon_pcie = internal global { %struct.plx_pci_card_info, [40 x i8] } { %struct.plx_pci_card_info { ptr @.str.14, i32 2, i32 8000000, i8 -40, i8 71, %struct.plx_pci_channel_map zeroinitializer, [2 x %struct.plx_pci_channel_map] [%struct.plx_pci_channel_map { i32 2, i32 0, i32 0 }, %struct.plx_pci_channel_map { i32 3, i32 128, i32 0 }], ptr @plx_pci_reset_marathon_pcie }, [40 x i8] zeroinitializer }, align 32
@plx_pci_card_info_tews = internal global { %struct.plx_pci_card_info, [40 x i8] } { %struct.plx_pci_card_info { ptr @.str.16, i32 2, i32 8000000, i8 -40, i8 71, %struct.plx_pci_channel_map zeroinitializer, [2 x %struct.plx_pci_channel_map] [%struct.plx_pci_channel_map { i32 2, i32 0, i32 128 }, %struct.plx_pci_channel_map { i32 2, i32 256, i32 128 }], ptr @plx_pci_reset_common }, [40 x i8] zeroinitializer }, align 32
@plx_pci_card_info_cti = internal global { %struct.plx_pci_card_info, [40 x i8] } { %struct.plx_pci_card_info { ptr @.str.17, i32 2, i32 8000000, i8 -40, i8 71, %struct.plx_pci_channel_map zeroinitializer, [2 x %struct.plx_pci_channel_map] [%struct.plx_pci_channel_map { i32 2, i32 0, i32 128 }, %struct.plx_pci_channel_map { i32 2, i32 256, i32 128 }], ptr @plx_pci_reset_common }, [40 x i8] zeroinitializer }, align 32
@plx_pci_card_info_elcus = internal global { %struct.plx_pci_card_info, [40 x i8] } { %struct.plx_pci_card_info { ptr @.str.18, i32 2, i32 8000000, i8 -40, i8 71, %struct.plx_pci_channel_map { i32 1, i32 0, i32 0 }, [2 x %struct.plx_pci_channel_map] [%struct.plx_pci_channel_map { i32 2, i32 0, i32 128 }, %struct.plx_pci_channel_map { i32 3, i32 0, i32 128 }], ptr @plx_pci_reset_common }, [40 x i8] zeroinitializer }, align 32
@plx_pci_card_info_moxa = internal global { %struct.plx_pci_card_info, [40 x i8] } { %struct.plx_pci_card_info { ptr @.str.19, i32 2, i32 8000000, i8 -40, i8 71, %struct.plx_pci_channel_map zeroinitializer, [2 x %struct.plx_pci_channel_map] [%struct.plx_pci_channel_map { i32 0, i32 0, i32 128 }, %struct.plx_pci_channel_map { i32 1, i32 0, i32 128 }], ptr @plx_pci_reset_common }, [40 x i8] zeroinitializer }, align 32
@plx_pci_card_info_asem_dual_can = internal global { %struct.plx_pci_card_info, [40 x i8] } { %struct.plx_pci_card_info { ptr @.str.20, i32 2, i32 8000000, i8 -2, i8 71, %struct.plx_pci_channel_map zeroinitializer, [2 x %struct.plx_pci_channel_map] [%struct.plx_pci_channel_map { i32 2, i32 0, i32 0 }, %struct.plx_pci_channel_map { i32 4, i32 0, i32 0 }], ptr @plx_pci_reset_asem_dual_can_raw }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Adlink PCI-7841/cPCI-7841\00", [38 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Adlink PCI-7841/cPCI-7841 SE\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"esd CAN-PCI/CPCI/PCI104/200\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"esd CAN-PCI/PMC/266\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"esd CAN-PCIe/2000\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IXXAT PC-I 04/PCI\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Marathon CAN-bus-PCI\00", [43 x i8] zeroinitializer }, align 32
@plx_pci_reset_marathon_pci._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 504, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to remap reset space %d (BAR%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"plx_pci_reset_marathon_pci\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/net/can/sja1000/plx_pci.c\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@plx_pci_reset_marathon_pci._entry_ptr = internal global ptr @plx_pci_reset_marathon_pci._entry, section ".printk_index", align 4
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Marathon CAN-bus-PCIe\00", [42 x i8] zeroinitializer }, align 32
@plx_pci_reset_marathon_pcie._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.15, ptr @.str.11, i32 529, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"plx_pci_reset_marathon_pcie\00", [36 x i8] zeroinitializer }, align 32
@plx_pci_reset_marathon_pcie._entry_ptr = internal global ptr @plx_pci_reset_marathon_pcie._entry, section ".printk_index", align 4
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"TEWS TECHNOLOGIES TPMC810\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Connect Tech Inc. CANpro/104-Plus Opto (CRG001)\00", [48 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Eclus CAN-200-PCI\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MOXA\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ASEM Dual CAN raw PCI\00", [42 x i8] zeroinitializer }, align 32
@plx_pci_reset_asem_dual_can_raw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.11, i32 552, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to remap reset space 0 (BAR0)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"plx_pci_reset_asem_dual_can_raw\00", [32 x i8] zeroinitializer }, align 32
@plx_pci_reset_asem_dual_can_raw._entry_ptr = internal global ptr @plx_pci_reset_asem_dual_can_raw._entry, section ".printk_index", align 4
@plx_pci_add_card._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.11, i32 625, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to enable PCI device\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"plx_pci_add_card\00", [47 x i8] zeroinitializer }, align 32
@plx_pci_add_card._entry_ptr = internal global ptr @plx_pci_add_card._entry, section ".printk_index", align 4
@plx_pci_add_card._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.11, i32 630, ptr @.str.27, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Detected \22%s\22 card at slot #%i\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@plx_pci_add_card._entry_ptr.28 = internal global ptr @plx_pci_add_card._entry.25, section ".printk_index", align 4
@plx_pci_add_card._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.24, ptr @.str.11, i32 648, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to remap configuration space (BAR%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@plx_pci_add_card._entry_ptr.31 = internal global ptr @plx_pci_add_card._entry.29, section ".printk_index", align 4
@plx_pci_add_card._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.24, ptr @.str.11, i32 680, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to remap BAR%d\0A\00", [41 x i8] zeroinitializer }, align 32
@plx_pci_add_card._entry_ptr.34 = internal global ptr @plx_pci_add_card._entry.32, section ".printk_index", align 4
@plx_pci_add_card._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.24, ptr @.str.11, i32 701, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Registering device failed (err=%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@plx_pci_add_card._entry_ptr.37 = internal global ptr @plx_pci_add_card._entry.35, section ".printk_index", align 4
@plx_pci_add_card._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.24, ptr @.str.11, i32 709, ptr @.str.27, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Channel #%d at 0x%p, irq %d registered as %s\0A\00", [50 x i8] zeroinitializer }, align 32
@plx_pci_add_card._entry_ptr.40 = internal global ptr @plx_pci_add_card._entry.38, section ".printk_index", align 4
@plx_pci_add_card._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.24, ptr @.str.11, i32 712, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Channel #%d not detected\0A\00", [38 x i8] zeroinitializer }, align 32
@plx_pci_add_card._entry_ptr.43 = internal global ptr @plx_pci_add_card._entry.41, section ".printk_index", align 4
@plx_pci_add_card._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.24, ptr @.str.11, i32 742, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error: %d. Cleaning Up.\0A\00", [39 x i8] zeroinitializer }, align 32
@plx_pci_add_card._entry_ptr.46 = internal global ptr @plx_pci_add_card._entry.44, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@plx_pci_del_card._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.11, i32 579, ptr @.str.27, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Removing %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"plx_pci_del_card\00", [47 x i8] zeroinitializer }, align 32
@plx_pci_del_card._entry_ptr = internal global ptr @plx_pci_del_card._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 13362, i64 36950]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 16, i64 13362, i64 36950]
@___asan_gen_.50 = private unnamed_addr constant [15 x i8] c"plx_pci_driver\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 749, i32 26 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 756, i32 1 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 750, i32 10 }
@___asan_gen_.59 = private unnamed_addr constant [12 x i8] c"plx_pci_tbl\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 273, i32 35 }
@___asan_gen_.62 = private unnamed_addr constant [25 x i8] c"plx_pci_card_info_adlink\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 169, i32 33 }
@___asan_gen_.65 = private unnamed_addr constant [28 x i8] c"plx_pci_card_info_adlink_se\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 177, i32 33 }
@___asan_gen_.68 = private unnamed_addr constant [25 x i8] c"plx_pci_card_info_esd200\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 185, i32 33 }
@___asan_gen_.71 = private unnamed_addr constant [25 x i8] c"plx_pci_card_info_esd266\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 193, i32 33 }
@___asan_gen_.74 = private unnamed_addr constant [26 x i8] c"plx_pci_card_info_esd2000\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 201, i32 33 }
@___asan_gen_.77 = private unnamed_addr constant [24 x i8] c"plx_pci_card_info_ixxat\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 209, i32 33 }
@___asan_gen_.80 = private unnamed_addr constant [31 x i8] c"plx_pci_card_info_marathon_pci\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 217, i32 33 }
@___asan_gen_.83 = private unnamed_addr constant [32 x i8] c"plx_pci_card_info_marathon_pcie\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 225, i32 33 }
@___asan_gen_.86 = private unnamed_addr constant [23 x i8] c"plx_pci_card_info_tews\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 233, i32 33 }
@___asan_gen_.89 = private unnamed_addr constant [22 x i8] c"plx_pci_card_info_cti\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 241, i32 33 }
@___asan_gen_.92 = private unnamed_addr constant [24 x i8] c"plx_pci_card_info_elcus\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 249, i32 33 }
@___asan_gen_.95 = private unnamed_addr constant [23 x i8] c"plx_pci_card_info_moxa\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 257, i32 33 }
@___asan_gen_.98 = private unnamed_addr constant [32 x i8] c"plx_pci_card_info_asem_dual_can\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 265, i32 33 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 170, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 178, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 186, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 194, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 202, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 210, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 218, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 503, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 226, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 528, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 234, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 242, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 250, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 258, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 266, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 552, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 625, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 629, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 647, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 680, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 700, i32 5 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 707, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 711, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 742, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.233 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.234 = private constant [37 x i8] c"../drivers/net/can/sja1000/plx_pci.c\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 579, i32 3 }
@llvm.compiler.used = appending global [81 x ptr] [ptr @__UNIQUE_ID_author461, ptr @__UNIQUE_ID_description462, ptr @__UNIQUE_ID_file463, ptr @__UNIQUE_ID_license464, ptr @__exitcall_plx_pci_driver_exit, ptr @__initcall__kmod_plx_pci__465_756_plx_pci_driver_init6, ptr @plx_pci_add_card._entry, ptr @plx_pci_add_card._entry.25, ptr @plx_pci_add_card._entry.29, ptr @plx_pci_add_card._entry.32, ptr @plx_pci_add_card._entry.35, ptr @plx_pci_add_card._entry.38, ptr @plx_pci_add_card._entry.41, ptr @plx_pci_add_card._entry.44, ptr @plx_pci_add_card._entry_ptr, ptr @plx_pci_add_card._entry_ptr.28, ptr @plx_pci_add_card._entry_ptr.31, ptr @plx_pci_add_card._entry_ptr.34, ptr @plx_pci_add_card._entry_ptr.37, ptr @plx_pci_add_card._entry_ptr.40, ptr @plx_pci_add_card._entry_ptr.43, ptr @plx_pci_add_card._entry_ptr.46, ptr @plx_pci_del_card._entry, ptr @plx_pci_del_card._entry_ptr, ptr @plx_pci_driver_exit, ptr @plx_pci_reset_asem_dual_can_raw._entry, ptr @plx_pci_reset_asem_dual_can_raw._entry_ptr, ptr @plx_pci_reset_marathon_pci._entry, ptr @plx_pci_reset_marathon_pci._entry_ptr, ptr @plx_pci_reset_marathon_pcie._entry, ptr @plx_pci_reset_marathon_pcie._entry_ptr, ptr @plx_pci_driver, ptr @.str, ptr @.str.1, ptr @plx_pci_tbl, ptr @plx_pci_card_info_adlink, ptr @plx_pci_card_info_adlink_se, ptr @plx_pci_card_info_esd200, ptr @plx_pci_card_info_esd266, ptr @plx_pci_card_info_esd2000, ptr @plx_pci_card_info_ixxat, ptr @plx_pci_card_info_marathon_pci, ptr @plx_pci_card_info_marathon_pcie, ptr @plx_pci_card_info_tews, ptr @plx_pci_card_info_cti, ptr @plx_pci_card_info_elcus, ptr @plx_pci_card_info_moxa, ptr @plx_pci_card_info_asem_dual_can, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plx_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plx_pci_tbl to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plx_pci_card_info_adlink to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plx_pci_card_info_adlink_se to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plx_pci_card_info_esd200 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plx_pci_card_info_esd266 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plx_pci_card_info_esd2000 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plx_pci_card_info_ixxat to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plx_pci_card_info_marathon_pci to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plx_pci_card_info_marathon_pcie to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plx_pci_card_info_tews to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plx_pci_card_info_cti to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plx_pci_card_info_elcus to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plx_pci_card_info_moxa to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plx_pci_card_info_asem_dual_can to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plx_pci_reset_marathon_pci._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plx_pci_reset_marathon_pcie._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plx_pci_reset_asem_dual_can_raw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plx_pci_add_card._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plx_pci_add_card._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plx_pci_add_card._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plx_pci_add_card._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plx_pci_add_card._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plx_pci_add_card._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plx_pci_add_card._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plx_pci_add_card._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plx_pci_del_card._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @plx_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @plx_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @plx_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_unregister_driver(ptr noundef nonnull @plx_pci_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @plx_pci_add_card(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %2 = inttoptr i32 %1 to ptr
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  br i1 %cmp, label %do.end, label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23) #9
  br label %cleanup109

do.end4:                                          ; preds = %entry
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 6
  %5 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %devfn, align 4
  %shr = lshr i32 %6, 3
  %and = and i32 %shr, 31
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.26, ptr noundef %4, i32 noundef %and) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 20) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_disable_device(ptr noundef %pdev) #6
  br label %cleanup109

if.end8:                                          ; preds = %do.end4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %call7.i.i, align 8
  %conf_map = getelementptr inbounds %struct.plx_pci_card_info, ptr %2, i32 0, i32 5
  %10 = ptrtoint ptr %conf_map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %conf_map, align 4
  %size = getelementptr inbounds %struct.plx_pci_card_info, ptr %2, i32 0, i32 5, i32 2
  %12 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size, align 4
  %call10 = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef %11, i32 noundef %13) #6
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.then12, label %if.end19

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %conf_map to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %conf_map, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.30, i32 noundef %15) #9
  br label %do.end107

if.end19:                                         ; preds = %if.end8
  %offset = getelementptr inbounds %struct.plx_pci_card_info, ptr %2, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %call10, i32 %17
  %conf_addr = getelementptr inbounds %struct.plx_pci_card, ptr %call7.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %conf_addr to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr, ptr %conf_addr, align 4
  %reset_func = getelementptr inbounds %struct.plx_pci_card_info, ptr %2, i32 0, i32 7
  %19 = ptrtoint ptr %reset_func to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reset_func, align 4
  tail call void %20(ptr noundef %pdev) #6
  %21 = ptrtoint ptr %reset_func to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reset_func, align 4
  %reset_func22 = getelementptr inbounds %struct.plx_pci_card, ptr %call7.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %reset_func22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %reset_func22, align 8
  %channel_count = getelementptr inbounds %struct.plx_pci_card_info, ptr %2, i32 0, i32 1
  %24 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %channel_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp23204 = icmp sgt i32 %25, 0
  br i1 %cmp23204, label %for.body.lr.ph, label %if.end19.for.end_crit_edge

if.end19.for.end_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end19
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %can_clock = getelementptr inbounds %struct.plx_pci_card_info, ptr %2, i32 0, i32 2
  %ocr = getelementptr inbounds %struct.plx_pci_card_info, ptr %2, i32 0, i32 3
  %cdr = getelementptr inbounds %struct.plx_pci_card_info, ptr %2, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0205 = phi i32 [ 0, %for.body.lr.ph ], [ %inc76.pre-phi, %for.inc.for.body_crit_edge ]
  %call24 = tail call ptr @alloc_sja1000dev(i32 noundef 0) #6
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %for.body.do.end107_crit_edge, label %if.end27

for.body.do.end107_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end107

if.end27:                                         ; preds = %for.body
  %arrayidx = getelementptr %struct.plx_pci_card_info, ptr %2, i32 0, i32 6, i32 %i.0205
  %arrayidx28 = getelementptr %struct.plx_pci_card, ptr %call7.i.i, i32 0, i32 1, i32 %i.0205
  %26 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call24, ptr %arrayidx28, align 4
  %add.ptr.i = getelementptr i8, ptr %call24, i32 2304
  %priv30 = getelementptr i8, ptr %call24, i32 2636
  %27 = ptrtoint ptr %priv30 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i, ptr %priv30, align 4
  %irq_flags = getelementptr i8, ptr %call24, i32 2648
  %28 = ptrtoint ptr %irq_flags to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 128, ptr %irq_flags, align 4
  %29 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq, align 4
  %irq31 = getelementptr inbounds %struct.net_device, ptr %call24, i32 0, i32 64
  %31 = ptrtoint ptr %irq31 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %irq31, align 4
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx, align 4
  %size33 = getelementptr %struct.plx_pci_card_info, ptr %2, i32 0, i32 6, i32 %i.0205, i32 2
  %34 = ptrtoint ptr %size33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size33, align 4
  %call34 = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef %33, i32 noundef %35) #6
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %if.then36, label %if.end42

if.then36:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.33, i32 noundef %37) #9
  br label %do.end107

if.end42:                                         ; preds = %if.end27
  %offset43 = getelementptr %struct.plx_pci_card_info, ptr %2, i32 0, i32 6, i32 %i.0205, i32 1
  %38 = ptrtoint ptr %offset43 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %offset43, align 4
  %add.ptr44 = getelementptr i8, ptr %call34, i32 %39
  %reg_base = getelementptr i8, ptr %call24, i32 2644
  %40 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr44, ptr %reg_base, align 4
  %read_reg = getelementptr i8, ptr %call24, i32 2620
  %41 = ptrtoint ptr %read_reg to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @plx_pci_read_reg, ptr %read_reg, align 4
  %write_reg = getelementptr i8, ptr %call24, i32 2624
  %42 = ptrtoint ptr %write_reg to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @plx_pci_write_reg, ptr %write_reg, align 4
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr44) #6, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !137
  %44 = and i8 %43, -95
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %44)
  %cmp.i = icmp eq i8 %44, 33
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end42.if.end.i_crit_edge

if.end42.if.end.i_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end42
  %45 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %read_reg, align 4
  %call3.i = tail call zeroext i8 %46(ptr noundef %add.ptr.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %call3.i)
  %cmp5.i = icmp eq i8 %call3.i, 12
  br i1 %cmp5.i, label %land.lhs.true7.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %read_reg, align 4
  %call9.i = tail call zeroext i8 %48(ptr noundef %add.ptr.i, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %call9.i)
  %cmp11.i = icmp eq i8 %call9.i, -32
  %spec.select.i = zext i1 %cmp11.i to i32
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true7.i, %land.lhs.true.i.if.end.i_crit_edge, %if.end42.if.end.i_crit_edge
  %flag.0.i = phi i32 [ 0, %land.lhs.true.i.if.end.i_crit_edge ], [ 0, %if.end42.if.end.i_crit_edge ], [ %spec.select.i, %land.lhs.true7.i ]
  %49 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write_reg, align 4
  tail call void %50(ptr noundef %add.ptr.i, i32 noundef 31, i8 noundef zeroext -128) #6
  %51 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %read_reg, align 4
  %call14.i = tail call zeroext i8 %52(ptr noundef %add.ptr.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call14.i)
  %cmp16.i = icmp eq i8 %call14.i, 1
  br i1 %cmp16.i, label %land.lhs.true18.i, label %if.end.i.do.end70_crit_edge

if.end.i.do.end70_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end70

land.lhs.true18.i:                                ; preds = %if.end.i
  %53 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %read_reg, align 4
  %call20.i = tail call zeroext i8 %54(ptr noundef %add.ptr.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 60, i8 %call20.i)
  %cmp22.i = icmp eq i8 %call20.i, 60
  br i1 %cmp22.i, label %land.lhs.true24.i, label %land.lhs.true18.i.do.end70_crit_edge

land.lhs.true18.i.do.end70_crit_edge:             ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end70

land.lhs.true24.i:                                ; preds = %land.lhs.true18.i
  %55 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %read_reg, align 4
  %call26.i = tail call zeroext i8 %56(ptr noundef %add.ptr.i, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call26.i)
  %cmp28.i = icmp ne i8 %call26.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flag.0.i)
  %tobool46.not = icmp eq i32 %flag.0.i, 0
  %or.cond = select i1 %cmp28.i, i1 true, i1 %tobool46.not
  br i1 %or.cond, label %land.lhs.true24.i.do.end70_crit_edge, label %if.then47

land.lhs.true24.i.do.end70_crit_edge:             ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end70

if.then47:                                        ; preds = %land.lhs.true24.i
  %57 = ptrtoint ptr %can_clock to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %can_clock, align 4
  %clock = getelementptr i8, ptr %call24, i32 2440
  %59 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %clock, align 4
  %60 = ptrtoint ptr %ocr to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %ocr, align 4
  %ocr48 = getelementptr i8, ptr %call24, i32 2698
  %62 = ptrtoint ptr %ocr48 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %ocr48, align 2
  %63 = ptrtoint ptr %cdr to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %cdr, align 1
  %cdr49 = getelementptr i8, ptr %call24, i32 2699
  %65 = ptrtoint ptr %cdr49 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %cdr49, align 1
  %parent = getelementptr inbounds %struct.net_device, ptr %call24, i32 0, i32 133, i32 1
  %66 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %dev1, ptr %parent, align 8
  %conv = trunc i32 %i.0205 to i16
  %dev_id = getelementptr inbounds %struct.net_device, ptr %call24, i32 0, i32 60
  %67 = ptrtoint ptr %dev_id to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %conv, ptr %dev_id, align 2
  %call52 = tail call i32 @register_sja1000dev(ptr noundef nonnull %call24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end59, label %do.end57

do.end57:                                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.36, i32 noundef %call52) #9
  br label %do.end107

if.end59:                                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %call7.i.i, align 8
  %inc = add i32 %69, 1
  store i32 %inc, ptr %call7.i.i, align 8
  %add = add nuw nsw i32 %i.0205, 1
  %70 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %reg_base, align 4
  %72 = ptrtoint ptr %irq31 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %irq31, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.39, i32 noundef %add, ptr noundef %71, i32 noundef %73, ptr noundef nonnull %call24) #9
  br label %for.inc

do.end70:                                         ; preds = %land.lhs.true24.i.do.end70_crit_edge, %land.lhs.true18.i.do.end70_crit_edge, %if.end.i.do.end70_crit_edge
  %add72 = add nuw nsw i32 %i.0205, 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.42, i32 noundef %add72) #9
  tail call void @free_sja1000dev(ptr noundef nonnull %call24) #6
  %74 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %arrayidx28, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end70, %if.end59
  %inc76.pre-phi = phi i32 [ %add72, %do.end70 ], [ %add, %if.end59 ]
  %75 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %channel_count, align 4
  %cmp23 = icmp slt i32 %inc76.pre-phi, %76
  br i1 %cmp23, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end19.for.end_crit_edge
  %77 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool78.not = icmp eq i32 %78, 0
  br i1 %tobool78.not, label %for.end.do.end107_crit_edge, label %if.end80

for.end.do.end107_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end107

if.end80:                                         ; preds = %for.end
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %79 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %device, align 2
  %81 = zext i16 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values)
  switch i16 %80, label %if.then88 [
    i16 -28586, label %if.end80.if.else101_crit_edge
    i16 13362, label %if.end80.if.else101_crit_edge224
  ]

if.end80.if.else101_crit_edge224:                 ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else101

if.end80.if.else101_crit_edge:                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else101

if.then88:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  %82 = ptrtoint ptr %conf_addr to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %conf_addr, align 4
  %add.ptr90 = getelementptr i8, ptr %83, i32 76
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr90) #6, !srcloc !138
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !139
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 9
  %86 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %subsystem_vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4862, i16 %87)
  %cmp93 = icmp eq i16 %87, 4862
  %val.0.v = select i1 %cmp93, i32 65, i32 73
  %val.0 = or i32 %val.0.v, %85
  %88 = ptrtoint ptr %conf_addr to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %conf_addr, align 4
  %add.ptr100 = getelementptr i8, ptr %89, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !140
  tail call void @arm_heavy_mb() #6
  %90 = tail call i32 @llvm.bswap.i32(i32 %val.0) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr100, i32 %90) #6, !srcloc !141
  br label %cleanup109

if.else101:                                       ; preds = %if.end80.if.else101_crit_edge, %if.end80.if.else101_crit_edge224
  %91 = ptrtoint ptr %conf_addr to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %conf_addr, align 4
  %add.ptr103 = getelementptr i8, ptr %92, i32 104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !140
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr103, i32 589824) #6, !srcloc !141
  br label %cleanup109

do.end107:                                        ; preds = %for.end.do.end107_crit_edge, %do.end57, %if.then36, %for.body.do.end107_crit_edge, %if.then12
  %err.3 = phi i32 [ -12, %if.then12 ], [ -19, %for.end.do.end107_crit_edge ], [ -12, %if.then36 ], [ %call52, %do.end57 ], [ -12, %for.body.do.end107_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.45, i32 noundef %err.3) #9
  tail call void @plx_pci_del_card(ptr noundef %pdev)
  br label %cleanup109

cleanup109:                                       ; preds = %do.end107, %if.else101, %if.then88, %if.then7, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %err.3, %do.end107 ], [ -12, %if.then7 ], [ 0, %if.else101 ], [ 0, %if.then88 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @plx_pci_del_card(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %arrayidx = getelementptr %struct.plx_pci_card, ptr %1, i32 0, i32 1, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %do.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.end:                                           ; preds = %entry
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.47, ptr noundef nonnull %3) #9
  tail call void @unregister_sja1000dev(ptr noundef nonnull %3) #6
  %reg_base = getelementptr i8, ptr %3, i32 2644
  %4 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %do.end.if.end6_crit_edge, label %if.then4

do.end.if.end6_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %5) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %do.end.if.end6_crit_edge
  tail call void @free_sja1000dev(ptr noundef nonnull %3) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end6, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.plx_pci_card, ptr %1, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %7, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %do.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

do.end.1:                                         ; preds = %for.inc
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.47, ptr noundef nonnull %7) #9
  tail call void @unregister_sja1000dev(ptr noundef nonnull %7) #6
  %reg_base.1 = getelementptr i8, ptr %7, i32 2644
  %8 = ptrtoint ptr %reg_base.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_base.1, align 4
  %tobool3.not.1 = icmp eq ptr %9, null
  br i1 %tobool3.not.1, label %do.end.1.if.end6.1_crit_edge, label %if.then4.1

do.end.1.if.end6.1_crit_edge:                     ; preds = %do.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.1

if.then4.1:                                       ; preds = %do.end.1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %9) #6
  br label %if.end6.1

if.end6.1:                                        ; preds = %if.then4.1, %do.end.1.if.end6.1_crit_edge
  tail call void @free_sja1000dev(ptr noundef nonnull %7) #6
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end6.1, %for.inc.for.inc.1_crit_edge
  %reset_func = getelementptr inbounds %struct.plx_pci_card, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %reset_func to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reset_func, align 4
  tail call void %11(ptr noundef %pdev) #6
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %device, align 2
  %14 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.49)
  switch i16 %13, label %if.then13 [
    i16 -28586, label %for.inc.1.if.else_crit_edge
    i16 13362, label %for.inc.1.if.else_crit_edge45
  ]

for.inc.1.if.else_crit_edge45:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

for.inc.1.if.else_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then13:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  %conf_addr = getelementptr inbounds %struct.plx_pci_card, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %conf_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %conf_addr, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !140
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !141
  br label %if.end16

if.else:                                          ; preds = %for.inc.1.if.else_crit_edge, %for.inc.1.if.else_crit_edge45
  %conf_addr14 = getelementptr inbounds %struct.plx_pci_card, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %conf_addr14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %conf_addr14, align 4
  %add.ptr15 = getelementptr i8, ptr %18, i32 104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !140
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 0) #6, !srcloc !141
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then13
  %conf_addr17 = getelementptr inbounds %struct.plx_pci_card, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %conf_addr17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %conf_addr17, align 4
  %tobool18.not = icmp eq ptr %20, null
  br i1 %tobool18.not, label %if.end16.if.end21_crit_edge, label %if.then19

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %20) #6
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end16.if.end21_crit_edge
  tail call void @kfree(ptr noundef %1) #6
  tail call void @pci_disable_device(ptr noundef %pdev) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @plx_pci_reset_common(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %conf_addr = getelementptr inbounds %struct.plx_pci_card, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %conf_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conf_addr, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 80
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !138
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !139
  %or = or i32 %5, 1073741824
  %6 = ptrtoint ptr %conf_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %conf_addr, align 4
  %add.ptr3 = getelementptr i8, ptr %7, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !140
  tail call void @arm_heavy_mb() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %8) #6, !srcloc !141
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 21474800) #6
  %10 = and i32 %5, -1073741825
  %11 = ptrtoint ptr %conf_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %conf_addr, align 4
  %add.ptr5 = getelementptr i8, ptr %12, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !140
  tail call void @arm_heavy_mb() #6
  %13 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %13) #6, !srcloc !141
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @plx9056_pci_reset_common(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %conf_addr = getelementptr inbounds %struct.plx_pci_card, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %conf_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conf_addr, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 108
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !138
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !139
  %or = or i32 %5, 1073741824
  %6 = ptrtoint ptr %conf_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %conf_addr, align 4
  %add.ptr3 = getelementptr i8, ptr %7, i32 108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !140
  tail call void @arm_heavy_mb() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %8) #6, !srcloc !141
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 21474800) #6
  %10 = and i32 %5, -1073741825
  %11 = ptrtoint ptr %conf_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %conf_addr, align 4
  %add.ptr5 = getelementptr i8, ptr %12, i32 108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !140
  tail call void @arm_heavy_mb() #6
  %13 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %13) #6, !srcloc !141
  %or6 = or i32 %10, 536870912
  %14 = ptrtoint ptr %conf_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %conf_addr, align 4
  %add.ptr8 = getelementptr i8, ptr %15, i32 108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !140
  tail call void @arm_heavy_mb() #6
  %16 = tail call i32 @llvm.bswap.i32(i32 %or6) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %16) #6, !srcloc !141
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #6
  %27 = and i32 %5, -1610612737
  %28 = ptrtoint ptr %conf_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %conf_addr, align 4
  %add.ptr11 = getelementptr i8, ptr %29, i32 108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !140
  tail call void @arm_heavy_mb() #6
  %30 = tail call i32 @llvm.bswap.i32(i32 %27) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %30) #6, !srcloc !141
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @plx_pci_reset_marathon_pci(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %conf_addr.i = getelementptr inbounds %struct.plx_pci_card, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %conf_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conf_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 80
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !138
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !139
  %or.i = or i32 %5, 1073741824
  %6 = ptrtoint ptr %conf_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %conf_addr.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %7, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !140
  tail call void @arm_heavy_mb() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %8) #6, !srcloc !141
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 21474800) #6
  %10 = and i32 %5, -1073741825
  %11 = ptrtoint ptr %conf_addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %conf_addr.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %12, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !140
  tail call void @arm_heavy_mb() #6
  %13 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %13) #6, !srcloc !141
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 3, i32 noundef 0) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef 3) #9
  br label %for.inc

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !142
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %call, i8 1) #6, !srcloc !143
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 21474800) #6
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %call) #6
  br label %for.inc

for.inc:                                          ; preds = %if.else, %do.end
  %call.1 = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 5, i32 noundef 0) #6
  %tobool.not.1 = icmp eq ptr %call.1, null
  br i1 %tobool.not.1, label %do.end.1, label %if.else.1

if.else.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !142
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %call.1, i8 1) #6, !srcloc !143
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 21474800) #6
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %call.1) #6
  br label %for.inc.1

do.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef 1, i32 noundef 5) #9
  br label %for.inc.1

for.inc.1:                                        ; preds = %do.end.1, %if.else.1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @plx_pci_reset_marathon_pcie(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @plx9056_pci_reset_common(ptr noundef %pdev)
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %0 = load i32, ptr getelementptr inbounds (%struct.plx_pci_card_info, ptr @plx_pci_card_info_marathon_pcie, i32 0, i32 6, i32 0), align 4
  %1 = load i32, ptr getelementptr inbounds (%struct.plx_pci_card_info, ptr @plx_pci_card_info_marathon_pcie, i32 0, i32 6, i32 0, i32 2), align 4
  %call = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef %0, i32 noundef %1) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = load i32, ptr getelementptr inbounds (%struct.plx_pci_card_info, ptr @plx_pci_card_info_marathon_pcie, i32 0, i32 6, i32 0), align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef %2) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = load i32, ptr getelementptr inbounds (%struct.plx_pci_card_info, ptr @plx_pci_card_info_marathon_pcie, i32 0, i32 6, i32 0, i32 1), align 4
  %add.ptr = getelementptr i8, ptr %call, i32 %3
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !142
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2, i8 1) #6, !srcloc !143
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 21474800) #6
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %call) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  %5 = load i32, ptr getelementptr inbounds (%struct.plx_pci_card_info, ptr @plx_pci_card_info_marathon_pcie, i32 0, i32 6, i32 1), align 4
  %6 = load i32, ptr getelementptr inbounds (%struct.plx_pci_card_info, ptr @plx_pci_card_info_marathon_pcie, i32 0, i32 6, i32 1, i32 2), align 4
  %call.1 = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef %5, i32 noundef %6) #6
  %tobool.not.1 = icmp eq ptr %call.1, null
  br i1 %tobool.not.1, label %do.end.1, label %if.else.1

if.else.1:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %7 = load i32, ptr getelementptr inbounds (%struct.plx_pci_card_info, ptr @plx_pci_card_info_marathon_pcie, i32 0, i32 6, i32 1, i32 1), align 4
  %add.ptr.1 = getelementptr i8, ptr %call.1, i32 %7
  %add.ptr2.1 = getelementptr i8, ptr %add.ptr.1, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !142
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.1, i8 1) #6, !srcloc !143
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 21474800) #6
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %call.1) #6
  br label %if.end.1

do.end.1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %9 = load i32, ptr getelementptr inbounds (%struct.plx_pci_card_info, ptr @plx_pci_card_info_marathon_pcie, i32 0, i32 6, i32 1), align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef 1, i32 noundef %9) #9
  br label %if.end.1

if.end.1:                                         ; preds = %do.end.1, %if.else.1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @plx_pci_reset_asem_dual_can_raw(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %conf_addr.i = getelementptr inbounds %struct.plx_pci_card, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %conf_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conf_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 80
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !138
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !139
  %or.i = or i32 %5, 1073741824
  %6 = ptrtoint ptr %conf_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %conf_addr.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %7, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !140
  tail call void @arm_heavy_mb() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %8) #6, !srcloc !141
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 21474800) #6
  %10 = and i32 %5, -1073741825
  %11 = ptrtoint ptr %conf_addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %conf_addr.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %12, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !140
  tail call void @arm_heavy_mb() #6
  %13 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %13) #6, !srcloc !141
  %call = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 0, i32 noundef 0) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %call, i32 84
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !137
  %15 = and i8 %14, -37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !142
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %15) #6, !srcloc !143
  tail call void @usleep_range_state(i32 noundef 300, i32 noundef 400, i32 noundef 2) #6
  %16 = or i8 %14, 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !142
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %16) #6, !srcloc !143
  tail call void @usleep_range_state(i32 noundef 300, i32 noundef 400, i32 noundef 2) #6
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_sja1000dev(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @plx_pci_read_reg(ptr nocapture noundef readonly %priv, i32 noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.sja1000_priv, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %port
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !137
  ret i8 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @plx_pci_write_reg(ptr nocapture noundef readonly %priv, i32 noundef %port, i8 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.sja1000_priv, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %port
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !142
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %val) #6, !srcloc !143
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_sja1000dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_sja1000dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_sja1000dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !50, !51, !52, !53, !54, !55, !57, !59, !61, !62, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126}
!llvm.module.flags = !{!127, !128, !129, !130, !131, !132, !133, !134}
!llvm.ident = !{!135}

!0 = !{ptr @__UNIQUE_ID_author461, !1, !"__UNIQUE_ID_author461", i1 false, i1 false}
!1 = !{!"../drivers/net/can/sja1000/plx_pci.c", i32 25, i32 1}
!2 = !{ptr @__UNIQUE_ID_description462, !3, !"__UNIQUE_ID_description462", i1 false, i1 false}
!3 = !{!"../drivers/net/can/sja1000/plx_pci.c", i32 26, i32 1}
!4 = !{ptr @__UNIQUE_ID_file463, !5, !"__UNIQUE_ID_file463", i1 false, i1 false}
!5 = !{!"../drivers/net/can/sja1000/plx_pci.c", i32 28, i32 1}
!6 = !{ptr @__UNIQUE_ID_license464, !5, !"__UNIQUE_ID_license464", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_plx_pci__465_756_plx_pci_driver_init6, !8, !"__initcall__kmod_plx_pci__465_756_plx_pci_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/net/can/sja1000/plx_pci.c", i32 756, i32 1}
!9 = !{ptr @__exitcall_plx_pci_driver_exit, !8, !"__exitcall_plx_pci_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/can/sja1000/plx_pci.c", i32 750, i32 10}
!13 = !{ptr @plx_pci_driver, !14, !"plx_pci_driver", i1 false, i1 false}
!14 = !{!"../drivers/net/can/sja1000/plx_pci.c", i32 749, i32 26}
!15 = !{ptr @plx_pci_tbl, !16, !"plx_pci_tbl", i1 false, i1 false}
!16 = !{!"../drivers/net/can/sja1000/plx_pci.c", i32 273, i32 35}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/can/sja1000/plx_pci.c", i32 170, i32 2}
!19 = !{ptr @plx_pci_card_info_adlink, !20, !"plx_pci_card_info_adlink", i1 false, i1 false}
!20 = !{!"../drivers/net/can/sja1000/plx_pci.c", i32 169, i32 33}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/can/sja1000/plx_pci.c", i32 178, i32 2}
!23 = !{ptr @plx_pci_card_info_adlink_se, !24, !"plx_pci_card_info_adlink_se", i1 false, i1 false}
!24 = !{!"../drivers/net/can/sja1000/plx_pci.c", i32 177, i32 33}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/can/sja1000/plx_pci.c", i32 186, i32 2}
!27 = !{ptr @plx_pci_card_info_esd200, !28, !"plx_pci_card_info_esd200", i1 false, i1 false}
!28 = !{!"../drivers/net/can/sja1000/plx_pci.c", i32 185, i32 33}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/can/sja1000/plx_pci.c", i32 194, i32 2}
!31 = !{ptr @plx_pci_card_info_esd266, !32, !"plx_pci_card_info_esd266", i1 false, i1 false}
!32 = !{!"../drivers/net/can/sja1000/plx_pci.c", i32 193, i32 33}
!33 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/can/sja1000/plx_pci.c", i32 202, i32 2}
!35 = !{ptr @plx_pci_card_info_esd2000, !36, !"plx_pci_card_info_esd2000", i1 false, i1 false}
!36 = !{!"../drivers/net/can/sja1000/plx_pci.c", i32 201, i32 33}
!37 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/can/sja1000/plx_pci.c", i32 210, i32 2}
!39 = !{ptr @plx_pci_card_info_ixxat, !40, !"plx_pci_card_info_ixxat", i1 false, i1 false}
!40 = !{!"../drivers/net/can/sja1000/plx_pci.c", i32 209, i32 33}
!41 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/can/sja1000/plx_pci.c", i32 218, i32 2}
!43 = !{ptr @plx_pci_card_info_marathon_pci, !44, !"plx_pci_card_info_marathon_pci", i1 false, i1 false}
!44 = !{!"../drivers/net/can/sja1000/plx_pci.c", i32 217, i32 33}
!45 = distinct !{null, !46, !"reset_bar", i1 false, i1 false}
!46 = !{!"../drivers/net/can/sja1000/plx_pci.c", i32 496, i32 19}
!47 = !{ptr @.str.9, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/can/sja1000/plx_pci.c", i32 503, i32 4}
!49 = !{ptr @.str.10, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.12, !48, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @plx_pci_reset_marathon_pci._entry, !48, !"_entry", i1 false, i1 false}
!54 = !{ptr @plx_pci_reset_marathon_pci._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.14, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/can/sja1000/plx_pci.c", i32 226, i32 2}
!57 = !{ptr @plx_pci_card_info_marathon_pcie, !58, !"plx_pci_card_info_marathon_pcie", i1 false, i1 false}
!58 = !{!"../drivers/net/can/sja1000/plx_pci.c", i32 225, i32 33}
!59 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/can/sja1000/plx_pci.c", i32 528, i32 4}
!61 = !{ptr @plx_pci_reset_marathon_pcie._entry, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @plx_pci_reset_marathon_pcie._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.16, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/can/sja1000/plx_pci.c", i32 234, i32 2}
!65 = !{ptr @plx_pci_card_info_tews, !66, !"plx_pci_card_info_tews", i1 false, i1 false}
!66 = !{!"../drivers/net/can/sja1000/plx_pci.c", i32 233, i32 33}
!67 = !{ptr @.str.17, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/can/sja1000/plx_pci.c", i32 242, i32 2}
!69 = !{ptr @plx_pci_card_info_cti, !70, !"plx_pci_card_info_cti", i1 false, i1 false}
!70 = !{!"../drivers/net/can/sja1000/plx_pci.c", i32 241, i32 33}
!71 = !{ptr @.str.18, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/can/sja1000/plx_pci.c", i32 250, i32 2}
!73 = !{ptr @plx_pci_card_info_elcus, !74, !"plx_pci_card_info_elcus", i1 false, i1 false}
!74 = !{!"../drivers/net/can/sja1000/plx_pci.c", i32 249, i32 33}
!75 = !{ptr @.str.19, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/can/sja1000/plx_pci.c", i32 258, i32 2}
!77 = !{ptr @plx_pci_card_info_moxa, !78, !"plx_pci_card_info_moxa", i1 false, i1 false}
!78 = !{!"../drivers/net/can/sja1000/plx_pci.c", i32 257, i32 33}
!79 = !{ptr @.str.20, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/can/sja1000/plx_pci.c", i32 266, i32 2}
!81 = !{ptr @plx_pci_card_info_asem_dual_can, !82, !"plx_pci_card_info_asem_dual_can", i1 false, i1 false}
!82 = !{!"../drivers/net/can/sja1000/plx_pci.c", i32 265, i32 33}
!83 = !{ptr @.str.21, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/can/sja1000/plx_pci.c", i32 552, i32 3}
!85 = !{ptr @.str.22, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @plx_pci_reset_asem_dual_can_raw._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @plx_pci_reset_asem_dual_can_raw._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.23, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/can/sja1000/plx_pci.c", i32 625, i32 3}
!90 = !{ptr @.str.24, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @plx_pci_add_card._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @plx_pci_add_card._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.26, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/can/sja1000/plx_pci.c", i32 629, i32 2}
!95 = !{ptr @.str.27, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @plx_pci_add_card._entry.25, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @plx_pci_add_card._entry_ptr.28, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.30, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/can/sja1000/plx_pci.c", i32 647, i32 3}
!100 = !{ptr @plx_pci_add_card._entry.29, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @plx_pci_add_card._entry_ptr.31, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.33, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/can/sja1000/plx_pci.c", i32 680, i32 4}
!104 = !{ptr @plx_pci_add_card._entry.32, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @plx_pci_add_card._entry_ptr.34, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.36, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/can/sja1000/plx_pci.c", i32 700, i32 5}
!108 = !{ptr @plx_pci_add_card._entry.35, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @plx_pci_add_card._entry_ptr.37, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.39, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/can/sja1000/plx_pci.c", i32 707, i32 4}
!112 = !{ptr @plx_pci_add_card._entry.38, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @plx_pci_add_card._entry_ptr.40, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.42, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/can/sja1000/plx_pci.c", i32 711, i32 4}
!116 = !{ptr @plx_pci_add_card._entry.41, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @plx_pci_add_card._entry_ptr.43, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.45, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/can/sja1000/plx_pci.c", i32 742, i32 2}
!120 = !{ptr @plx_pci_add_card._entry.44, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @plx_pci_add_card._entry_ptr.46, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.47, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/can/sja1000/plx_pci.c", i32 579, i32 3}
!124 = !{ptr @.str.48, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @plx_pci_del_card._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @plx_pci_del_card._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{i32 1, !"wchar_size", i32 2}
!128 = !{i32 1, !"min_enum_size", i32 4}
!129 = !{i32 8, !"branch-target-enforcement", i32 0}
!130 = !{i32 8, !"sign-return-address", i32 0}
!131 = !{i32 8, !"sign-return-address-all", i32 0}
!132 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!133 = !{i32 7, !"uwtable", i32 1}
!134 = !{i32 7, !"frame-pointer", i32 2}
!135 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!136 = !{i64 4635159}
!137 = !{i64 2152174504}
!138 = !{i64 4635379}
!139 = !{i64 2152175728}
!140 = !{i64 2152177083}
!141 = !{i64 4634961}
!142 = !{i64 2152176109}
!143 = !{i64 4634764}
