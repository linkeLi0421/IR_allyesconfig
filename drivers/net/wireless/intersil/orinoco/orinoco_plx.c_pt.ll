; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intersil/orinoco/orinoco_plx.c_pt.bc'
source_filename = "../drivers/net/wireless/intersil/orinoco/orinoco_plx.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.103, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.103 = type { ptr }
%struct.orinoco_pci_card = type { ptr, ptr }
%struct.orinoco_private = type { ptr, ptr, ptr, ptr, %struct.ieee80211_supported_band, [14 x %struct.ieee80211_channel], [3 x i32], %struct.spinlock, i32, %struct.work_struct, %struct.tasklet_struct, %struct.list_head, i32, i16, %struct.work_struct, %struct.work_struct, ptr, %struct.iw_statistics, %struct.hermes, i16, i32, i32, i32, i16, i16, i32, i32, i16, i16, [4 x %struct.key_params], i32, [33 x i8], [33 x i8], [6 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, %struct.iw_spy_data, %struct.iw_public_data, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, i8, ptr, ptr, %struct.notifier_block }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.135, i32 }
%union.anon.135 = type { ptr }
%struct.iw_statistics = type { i16, %struct.iw_quality, %struct.iw_discarded, %struct.iw_missed }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.iw_discarded = type { i32, i32, i32, i32, i32 }
%struct.iw_missed = type { i32 }
%struct.hermes = type { ptr, i32, i16, i8, ptr, ptr }
%struct.key_params = type { ptr, ptr, i32, i32, i16, i32, i32 }
%struct.iw_spy_data = type { i32, [8 x [6 x i8]], [8 x %struct.iw_quality], %struct.iw_quality, %struct.iw_quality, [8 x i8] }
%struct.iw_public_data = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }

@__UNIQUE_ID_author375 = internal constant [50 x i8] c"orinoco_plx.author=Daniel Barlow <dan@telent.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description376 = internal constant [83 x i8] c"orinoco_plx.description=Driver for wireless LAN cards using the PLX9052 PCI bridge\00", section ".modinfo", align 1
@__UNIQUE_ID_file377 = internal constant [67 x i8] c"orinoco_plx.file=drivers/net/wireless/intersil/orinoco/orinoco_plx\00", section ".modinfo", align 1
@__UNIQUE_ID_license378 = internal constant [33 x i8] c"orinoco_plx.license=Dual MPL/GPL\00", section ".modinfo", align 1
@orinoco_plx_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @orinoco_plx_id_table, ptr @orinoco_plx_init_one, ptr @orinoco_plx_remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @orinoco_pci_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_orinoco_plx__379_361_orinoco_plx_init6 = internal global ptr @orinoco_plx_init, section ".initcall6.init", align 4
@__exitcall_orinoco_plx_exit = internal global ptr @orinoco_plx_exit, section ".exitcall.exit", align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"orinoco_plx\00", [20 x i8] zeroinitializer }, align 32
@orinoco_plx_id_table = internal constant { [11 x %struct.pci_device_id], [64 x i8] } { [11 x %struct.pci_device_id] [%struct.pci_device_id { i32 4378, i32 4131, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4997, i32 16640, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5608, i32 304, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5688, i32 4352, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5803, i32 4352, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5803, i32 4353, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5803, i32 4354, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5868, i32 13957, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 60544, i32 60416, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4279, i32 30576, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [64 x i8] zeroinitializer }, align 32
@orinoco_pci_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @orinoco_pci_suspend, ptr @orinoco_pci_resume, ptr @orinoco_pci_suspend, ptr @orinoco_pci_resume, ptr @orinoco_pci_suspend, ptr @orinoco_pci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@orinoco_plx_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013orinoco_plx: Cannot enable PCI device\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"orinoco_plx_init_one\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/wireless/intersil/orinoco/orinoco_plx.c\00", [44 x i8] zeroinitializer }, align 32
@orinoco_plx_init_one._entry_ptr = internal global ptr @orinoco_plx_init_one._entry, section ".printk_index", align 4
@orinoco_plx_init_one._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013orinoco_plx: Cannot obtain PCI resources\0A\00", [52 x i8] zeroinitializer }, align 32
@orinoco_plx_init_one._entry_ptr.6 = internal global ptr @orinoco_plx_init_one._entry.4, section ".printk_index", align 4
@orinoco_plx_init_one._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013orinoco_plx: Cannot map bridge registers\0A\00", [52 x i8] zeroinitializer }, align 32
@orinoco_plx_init_one._entry_ptr.9 = internal global ptr @orinoco_plx_init_one._entry.7, section ".printk_index", align 4
@orinoco_plx_init_one._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013orinoco_plx: Cannot map PCMCIA attributes\0A\00", [51 x i8] zeroinitializer }, align 32
@orinoco_plx_init_one._entry_ptr.12 = internal global ptr @orinoco_plx_init_one._entry.10, section ".printk_index", align 4
@orinoco_plx_init_one._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013orinoco_plx: Cannot map chipset registers\0A\00", [51 x i8] zeroinitializer }, align 32
@orinoco_plx_init_one._entry_ptr.15 = internal global ptr @orinoco_plx_init_one._entry.13, section ".printk_index", align 4
@orinoco_plx_init_one._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013orinoco_plx: Cannot allocate network device\0A\00", [49 x i8] zeroinitializer }, align 32
@orinoco_plx_init_one._entry_ptr.18 = internal global ptr @orinoco_plx_init_one._entry.16, section ".printk_index", align 4
@orinoco_plx_init_one._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013orinoco_plx: Cannot allocate IRQ %d\0A\00", [57 x i8] zeroinitializer }, align 32
@orinoco_plx_init_one._entry_ptr.21 = internal global ptr @orinoco_plx_init_one._entry.19, section ".printk_index", align 4
@orinoco_plx_init_one._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013orinoco_plx: Hardware initialization failed\0A\00", [49 x i8] zeroinitializer }, align 32
@orinoco_plx_init_one._entry_ptr.24 = internal global ptr @orinoco_plx_init_one._entry.22, section ".printk_index", align 4
@orinoco_plx_init_one._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013orinoco_plx: Initial reset failed\0A\00", [59 x i8] zeroinitializer }, align 32
@orinoco_plx_init_one._entry_ptr.27 = internal global ptr @orinoco_plx_init_one._entry.25, section ".printk_index", align 4
@orinoco_plx_init_one._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013orinoco_plx: orinoco_init() failed\0A\00", [58 x i8] zeroinitializer }, align 32
@orinoco_plx_init_one._entry_ptr.30 = internal global ptr @orinoco_plx_init_one._entry.28, section ".printk_index", align 4
@orinoco_plx_init_one._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.2, ptr @.str.3, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013orinoco_plx: orinoco_if_add() failed\0A\00", [56 x i8] zeroinitializer }, align 32
@orinoco_plx_init_one._entry_ptr.33 = internal global ptr @orinoco_plx_init_one._entry.31, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@orinoco_plx_cor_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013orinoco_plx: Busy timeout\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"orinoco_plx_cor_reset\00", [42 x i8] zeroinitializer }, align 32
@orinoco_plx_cor_reset._entry_ptr = internal global ptr @orinoco_plx_cor_reset._entry, section ".printk_index", align 4
@orinoco_plx_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017orinoco_plx: CIS: \00", [43 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"orinoco_plx_hw_init\00", [44 x i8] zeroinitializer }, align 32
@orinoco_plx_hw_init._entry_ptr = internal global ptr @orinoco_plx_hw_init._entry, section ".printk_index", align 4
@orinoco_plx_hw_init._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.3, i32 150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02X:\00", [26 x i8] zeroinitializer }, align 32
@orinoco_plx_hw_init._entry_ptr.40 = internal global ptr @orinoco_plx_hw_init._entry.38, section ".printk_index", align 4
@orinoco_plx_hw_init._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.37, ptr @.str.3, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@orinoco_plx_hw_init._entry_ptr.43 = internal global ptr @orinoco_plx_hw_init._entry.41, section ".printk_index", align 4
@orinoco_plx_hw_init._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.37, ptr @.str.3, i32 158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013orinoco_plx: The CIS value of Prism2 PC card is unexpected\0A\00", [34 x i8] zeroinitializer }, align 32
@orinoco_plx_hw_init._entry_ptr.46 = internal global ptr @orinoco_plx_hw_init._entry.44, section ".printk_index", align 4
@orinoco_plx_hw_init._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.37, ptr @.str.3, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013orinoco_plx: Cannot enable interrupts\0A\00", [55 x i8] zeroinitializer }, align 32
@orinoco_plx_hw_init._entry_ptr.49 = internal global ptr @orinoco_plx_hw_init._entry.47, section ".printk_index", align 4
@orinoco_pci_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.52, i32 43, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: cannot re-allocate IRQ on resume\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"orinoco_pci_resume\00", [45 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/wireless/intersil/orinoco/orinoco_pci.h\00", [44 x i8] zeroinitializer }, align 32
@orinoco_pci_resume._entry_ptr = internal global ptr @orinoco_pci_resume._entry, section ".printk_index", align 4
@orinoco_plx_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.3, i32 352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\017%s\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"orinoco_plx_init\00", [47 x i8] zeroinitializer }, align 32
@orinoco_plx_init._entry_ptr = internal global ptr @orinoco_plx_init._entry, section ".printk_index", align 4
@version = internal global [126 x i8] c"orinoco_plx 0.15 (Pavel Roskin <proski@gnu.org>, David Gibson <hermes@gibson.dropbear.id.au>, Daniel Barlow <dan@telent.net>)\00", section ".init.data", align 1
@___asan_gen_.55 = private unnamed_addr constant [19 x i8] c"orinoco_plx_driver\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 334, i32 26 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 335, i32 11 }
@___asan_gen_.61 = private unnamed_addr constant [21 x i8] c"orinoco_plx_id_table\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 314, i32 35 }
@___asan_gen_.64 = private unnamed_addr constant [19 x i8] c"orinoco_pci_pm_ops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 50, i32 8 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 190, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 196, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 202, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 209, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 216, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 225, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 239, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 246, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 252, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 258, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 264, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 133, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 148, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 150, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 151, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 157, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 172, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant [55 x i8] c"../drivers/net/wireless/intersil/orinoco/orinoco_pci.h\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 42, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.200 = private constant [55 x i8] c"../drivers/net/wireless/intersil/orinoco/orinoco_plx.c\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 352, i32 2 }
@llvm.compiler.used = appending global [75 x ptr] [ptr @__UNIQUE_ID_author375, ptr @__UNIQUE_ID_description376, ptr @__UNIQUE_ID_file377, ptr @__UNIQUE_ID_license378, ptr @__exitcall_orinoco_plx_exit, ptr @__initcall__kmod_orinoco_plx__379_361_orinoco_plx_init6, ptr @orinoco_pci_resume._entry, ptr @orinoco_pci_resume._entry_ptr, ptr @orinoco_plx_cor_reset._entry, ptr @orinoco_plx_cor_reset._entry_ptr, ptr @orinoco_plx_exit, ptr @orinoco_plx_hw_init._entry, ptr @orinoco_plx_hw_init._entry.38, ptr @orinoco_plx_hw_init._entry.41, ptr @orinoco_plx_hw_init._entry.44, ptr @orinoco_plx_hw_init._entry.47, ptr @orinoco_plx_hw_init._entry_ptr, ptr @orinoco_plx_hw_init._entry_ptr.40, ptr @orinoco_plx_hw_init._entry_ptr.43, ptr @orinoco_plx_hw_init._entry_ptr.46, ptr @orinoco_plx_hw_init._entry_ptr.49, ptr @orinoco_plx_init._entry, ptr @orinoco_plx_init._entry_ptr, ptr @orinoco_plx_init_one._entry, ptr @orinoco_plx_init_one._entry.10, ptr @orinoco_plx_init_one._entry.13, ptr @orinoco_plx_init_one._entry.16, ptr @orinoco_plx_init_one._entry.19, ptr @orinoco_plx_init_one._entry.22, ptr @orinoco_plx_init_one._entry.25, ptr @orinoco_plx_init_one._entry.28, ptr @orinoco_plx_init_one._entry.31, ptr @orinoco_plx_init_one._entry.4, ptr @orinoco_plx_init_one._entry.7, ptr @orinoco_plx_init_one._entry_ptr, ptr @orinoco_plx_init_one._entry_ptr.12, ptr @orinoco_plx_init_one._entry_ptr.15, ptr @orinoco_plx_init_one._entry_ptr.18, ptr @orinoco_plx_init_one._entry_ptr.21, ptr @orinoco_plx_init_one._entry_ptr.24, ptr @orinoco_plx_init_one._entry_ptr.27, ptr @orinoco_plx_init_one._entry_ptr.30, ptr @orinoco_plx_init_one._entry_ptr.33, ptr @orinoco_plx_init_one._entry_ptr.6, ptr @orinoco_plx_init_one._entry_ptr.9, ptr @orinoco_plx_driver, ptr @.str, ptr @orinoco_plx_id_table, ptr @orinoco_pci_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_plx_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_plx_id_table to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_pci_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_plx_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_plx_init_one._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_plx_init_one._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_plx_init_one._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_plx_init_one._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_plx_init_one._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_plx_init_one._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_plx_init_one._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_plx_init_one._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_plx_init_one._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_plx_init_one._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_plx_cor_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_plx_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_plx_hw_init._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_plx_hw_init._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_plx_hw_init._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_plx_hw_init._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_pci_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_plx_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @orinoco_plx_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pci_unregister_driver(ptr noundef nonnull @orinoco_plx_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @orinoco_plx_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @version) #8
  %call1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @orinoco_plx_driver, ptr noundef null, ptr noundef nonnull @.str) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orinoco_plx_init_one(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end10, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #8
  br label %fail_resources

if.end10:                                         ; preds = %if.end
  %call11 = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 1, i32 noundef 0) #5
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %do.end16, label %if.end19

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #8
  br label %fail_map_bridge

if.end19:                                         ; preds = %if.end10
  %call20 = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 2, i32 noundef 0) #5
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %do.end25, label %if.end28

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #8
  br label %fail_map_attr

if.end28:                                         ; preds = %if.end19
  %call29 = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 3, i32 noundef 0) #5
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %do.end34, label %if.end37

do.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #8
  br label %fail_map_hermes

if.end37:                                         ; preds = %if.end28
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call38 = tail call ptr @alloc_orinocodev(i32 noundef 8, ptr noundef %dev, ptr noundef nonnull @orinoco_plx_cor_reset, ptr noundef null) #5
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %do.end43, label %if.end46

do.end43:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #8
  br label %fail_alloc

if.end46:                                         ; preds = %if.end37
  %0 = ptrtoint ptr %call38 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call38, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call11, ptr %1, align 4
  %attr_io49 = getelementptr inbounds %struct.orinoco_pci_card, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %attr_io49 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call20, ptr %attr_io49, align 4
  %hw = getelementptr inbounds %struct.orinoco_private, ptr %call38, i32 0, i32 18
  tail call void @hermes_struct_init(ptr noundef %hw, ptr noundef nonnull %call29, i32 noundef 0) #5
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %5, ptr noundef nonnull @orinoco_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull %call38) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool51.not = icmp eq i32 %call.i, 0
  br i1 %tobool51.not, label %if.end59, label %do.end55

do.end55:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %7) #8
  br label %fail_irq

if.end59:                                         ; preds = %if.end46
  %call.i144 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #8
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end3.i.do.end3.i_crit_edge, %if.end59
  %i.064.i = phi i32 [ 0, %if.end59 ], [ %inc.i, %do.end3.i.do.end3.i_crit_edge ]
  %8 = ptrtoint ptr %attr_io49 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %attr_io49, align 4
  %shl.i = shl nuw i32 %i.064.i, 1
  %add.ptr.i = getelementptr i8, ptr %9, i32 %shl.i
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #5, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !116
  %conv.i = zext i8 %10 to i32
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %conv.i) #8
  %inc.i = add nuw nsw i32 %i.064.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %do.end9.i, label %do.end3.i.do.end3.i_crit_edge

do.end3.i.do.end3.i_crit_edge:                    ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end3.i

do.end9.i:                                        ; preds = %do.end3.i
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #8
  %11 = ptrtoint ptr %attr_io49 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %attr_io49, align 4
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %12) #5, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !116
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp22.not.i = icmp eq i8 %13, 1
  br i1 %cmp22.not.i, label %for.cond12.i, label %do.end9.i.do.end65_crit_edge

do.end9.i.do.end65_crit_edge:                     ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end65

for.cond12.i:                                     ; preds = %do.end9.i
  %14 = ptrtoint ptr %attr_io49 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %attr_io49, align 4
  %add.ptr19.1.i = getelementptr i8, ptr %15, i32 2
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr19.1.i) #5, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !116
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %16)
  %cmp22.not.1.i = icmp eq i8 %16, 3
  br i1 %cmp22.not.1.i, label %for.cond12.1.i, label %for.cond12.i.do.end65_crit_edge

for.cond12.i.do.end65_crit_edge:                  ; preds = %for.cond12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end65

for.cond12.1.i:                                   ; preds = %for.cond12.i
  %17 = ptrtoint ptr %attr_io49 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %attr_io49, align 4
  %add.ptr19.2.i = getelementptr i8, ptr %18, i32 4
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr19.2.i) #5, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !116
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp22.not.2.i = icmp eq i8 %19, 0
  br i1 %cmp22.not.2.i, label %for.cond12.2.i, label %for.cond12.1.i.do.end65_crit_edge

for.cond12.1.i.do.end65_crit_edge:                ; preds = %for.cond12.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end65

for.cond12.2.i:                                   ; preds = %for.cond12.1.i
  %20 = ptrtoint ptr %attr_io49 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %attr_io49, align 4
  %add.ptr19.3.i = getelementptr i8, ptr %21, i32 6
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr19.3.i) #5, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !116
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp22.not.3.i = icmp eq i8 %22, 0
  br i1 %cmp22.not.3.i, label %for.cond12.3.i, label %for.cond12.2.i.do.end65_crit_edge

for.cond12.2.i.do.end65_crit_edge:                ; preds = %for.cond12.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end65

for.cond12.3.i:                                   ; preds = %for.cond12.2.i
  %23 = ptrtoint ptr %attr_io49 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %attr_io49, align 4
  %add.ptr19.4.i = getelementptr i8, ptr %24, i32 8
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr19.4.i) #5, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !116
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %25)
  %cmp22.not.4.i = icmp eq i8 %25, -1
  br i1 %cmp22.not.4.i, label %for.cond12.4.i, label %for.cond12.3.i.do.end65_crit_edge

for.cond12.3.i.do.end65_crit_edge:                ; preds = %for.cond12.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end65

for.cond12.4.i:                                   ; preds = %for.cond12.3.i
  %26 = ptrtoint ptr %attr_io49 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %attr_io49, align 4
  %add.ptr19.5.i = getelementptr i8, ptr %27, i32 10
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr19.5.i) #5, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !116
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %28)
  %cmp22.not.5.i = icmp eq i8 %28, 23
  br i1 %cmp22.not.5.i, label %for.cond12.5.i, label %for.cond12.4.i.do.end65_crit_edge

for.cond12.4.i.do.end65_crit_edge:                ; preds = %for.cond12.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end65

for.cond12.5.i:                                   ; preds = %for.cond12.4.i
  %29 = ptrtoint ptr %attr_io49 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %attr_io49, align 4
  %add.ptr19.6.i = getelementptr i8, ptr %30, i32 12
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr19.6.i) #5, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !116
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %31)
  %cmp22.not.6.i = icmp eq i8 %31, 4
  br i1 %cmp22.not.6.i, label %for.cond12.6.i, label %for.cond12.5.i.do.end65_crit_edge

for.cond12.5.i.do.end65_crit_edge:                ; preds = %for.cond12.5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end65

for.cond12.6.i:                                   ; preds = %for.cond12.5.i
  %32 = ptrtoint ptr %attr_io49 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %attr_io49, align 4
  %add.ptr19.7.i = getelementptr i8, ptr %33, i32 14
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr19.7.i) #5, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !116
  call void @__sanitizer_cov_trace_const_cmp1(i8 103, i8 %34)
  %cmp22.not.7.i = icmp eq i8 %34, 103
  br i1 %cmp22.not.7.i, label %for.cond12.7.i, label %for.cond12.6.i.do.end65_crit_edge

for.cond12.6.i.do.end65_crit_edge:                ; preds = %for.cond12.6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end65

for.cond12.7.i:                                   ; preds = %for.cond12.6.i
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %add.ptr32.i = getelementptr i8, ptr %36, i32 76
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32.i) #5, !srcloc !117
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !118
  %and.i = and i32 %38, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then34.i, label %for.cond12.7.i.if.end68_crit_edge

for.cond12.7.i.if.end68_crit_edge:                ; preds = %for.cond12.7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68

if.then34.i:                                      ; preds = %for.cond12.7.i
  %or.i = or i32 %38, 64
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %add.ptr36.i = getelementptr i8, ptr %40, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !119
  tail call void @arm_heavy_mb() #5
  %41 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i, i32 %41) #5, !srcloc !120
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %add.ptr38.i = getelementptr i8, ptr %43, i32 76
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38.i) #5, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !118
  %45 = and i32 %44, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool41.not.i = icmp eq i32 %45, 0
  br i1 %tobool41.not.i, label %if.then34.i.do.end65_crit_edge, label %if.then34.i.if.end68_crit_edge

if.then34.i.if.end68_crit_edge:                   ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68

if.then34.i.do.end65_crit_edge:                   ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end65

do.end65:                                         ; preds = %if.then34.i.do.end65_crit_edge, %for.cond12.6.i.do.end65_crit_edge, %for.cond12.5.i.do.end65_crit_edge, %for.cond12.4.i.do.end65_crit_edge, %for.cond12.3.i.do.end65_crit_edge, %for.cond12.2.i.do.end65_crit_edge, %for.cond12.1.i.do.end65_crit_edge, %for.cond12.i.do.end65_crit_edge, %do.end9.i.do.end65_crit_edge
  %.str.48.sink.i = phi ptr [ @.str.45, %for.cond12.6.i.do.end65_crit_edge ], [ @.str.45, %for.cond12.5.i.do.end65_crit_edge ], [ @.str.45, %for.cond12.4.i.do.end65_crit_edge ], [ @.str.45, %for.cond12.3.i.do.end65_crit_edge ], [ @.str.45, %for.cond12.2.i.do.end65_crit_edge ], [ @.str.45, %for.cond12.1.i.do.end65_crit_edge ], [ @.str.45, %for.cond12.i.do.end65_crit_edge ], [ @.str.45, %do.end9.i.do.end65_crit_edge ], [ @.str.48, %if.then34.i.do.end65_crit_edge ]
  %retval.0.ph.i = phi i32 [ -19, %for.cond12.6.i.do.end65_crit_edge ], [ -19, %for.cond12.5.i.do.end65_crit_edge ], [ -19, %for.cond12.4.i.do.end65_crit_edge ], [ -19, %for.cond12.3.i.do.end65_crit_edge ], [ -19, %for.cond12.2.i.do.end65_crit_edge ], [ -19, %for.cond12.1.i.do.end65_crit_edge ], [ -19, %for.cond12.i.do.end65_crit_edge ], [ -19, %do.end9.i.do.end65_crit_edge ], [ -5, %if.then34.i.do.end65_crit_edge ]
  %call47.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.48.sink.i) #8
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #8
  br label %fail

if.end68:                                         ; preds = %if.then34.i.if.end68_crit_edge, %for.cond12.7.i.if.end68_crit_edge
  %call69 = tail call i32 @orinoco_plx_cor_reset(ptr noundef nonnull %call38)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end77, label %do.end74

do.end74:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #8
  br label %fail

if.end77:                                         ; preds = %if.end68
  %call78 = tail call i32 @orinoco_init(ptr noundef nonnull %call38) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end86, label %do.end83

do.end83:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #8
  br label %fail

if.end86:                                         ; preds = %if.end77
  %call87 = tail call i32 @orinoco_if_add(ptr noundef nonnull %call38, i32 noundef 0, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end95, label %priv_to_wiphy.exit

priv_to_wiphy.exit:                               ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #7
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #8
  %add.ptr.i146 = getelementptr i8, ptr %call38, i32 -1408
  tail call void @wiphy_unregister(ptr noundef %add.ptr.i146) #5
  br label %fail

if.end95:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %46 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call38, ptr %driver_data.i.i, align 4
  br label %cleanup

fail:                                             ; preds = %priv_to_wiphy.exit, %do.end83, %do.end74, %do.end65
  %err.0 = phi i32 [ %retval.0.ph.i, %do.end65 ], [ %call69, %do.end74 ], [ %call78, %do.end83 ], [ %call87, %priv_to_wiphy.exit ]
  %47 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %irq, align 4
  %call98 = tail call ptr @free_irq(i32 noundef %48, ptr noundef nonnull %call38) #5
  br label %fail_irq

fail_irq:                                         ; preds = %fail, %do.end55
  %err.1 = phi i32 [ -16, %do.end55 ], [ %err.0, %fail ]
  tail call void @free_orinocodev(ptr noundef nonnull %call38) #5
  br label %fail_alloc

fail_alloc:                                       ; preds = %fail_irq, %do.end43
  %err.2 = phi i32 [ %err.1, %fail_irq ], [ -12, %do.end43 ]
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %call29) #5
  br label %fail_map_hermes

fail_map_hermes:                                  ; preds = %fail_alloc, %do.end34
  %err.3 = phi i32 [ %err.2, %fail_alloc ], [ -5, %do.end34 ]
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %call20) #5
  br label %fail_map_attr

fail_map_attr:                                    ; preds = %fail_map_hermes, %do.end25
  %err.4 = phi i32 [ %err.3, %fail_map_hermes ], [ -5, %do.end25 ]
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %call11) #5
  br label %fail_map_bridge

fail_map_bridge:                                  ; preds = %fail_map_attr, %do.end16
  %err.5 = phi i32 [ %err.4, %fail_map_attr ], [ -5, %do.end16 ]
  tail call void @pci_release_regions(ptr noundef %pdev) #5
  br label %fail_resources

fail_resources:                                   ; preds = %fail_map_bridge, %do.end7
  %err.6 = phi i32 [ %call2, %do.end7 ], [ %err.5, %fail_map_bridge ]
  tail call void @pci_disable_device(ptr noundef %pdev) #5
  br label %cleanup

cleanup:                                          ; preds = %fail_resources, %if.end95, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %err.6, %fail_resources ], [ 0, %if.end95 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @orinoco_plx_remove_one(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @orinoco_if_del(ptr noundef %1) #5
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.body4.i, label %priv_to_wiphy.exit, !prof !121

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5227, 0\0A.popsection", ""() #5, !srcloc !122
  unreachable

priv_to_wiphy.exit:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i = getelementptr i8, ptr %1, i32 -1408
  tail call void @wiphy_unregister(ptr noundef %add.ptr.i) #5
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call3 = tail call ptr @free_irq(i32 noundef %5, ptr noundef nonnull %1) #5
  tail call void @free_orinocodev(ptr noundef nonnull %1) #5
  %hw = getelementptr inbounds %struct.orinoco_private, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %7) #5
  %attr_io = getelementptr inbounds %struct.orinoco_pci_card, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %attr_io to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %attr_io, align 4
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %9) #5
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %11) #5
  tail call void @pci_release_regions(ptr noundef %pdev) #5
  tail call void @pci_disable_device(ptr noundef %pdev) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_orinocodev(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orinoco_plx_cor_reset(ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %attr_io = getelementptr inbounds %struct.orinoco_pci_card, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %attr_io to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attr_io, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 992
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 -63) #5, !srcloc !124
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #5
  %5 = ptrtoint ptr %attr_io to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %attr_io, align 4
  %add.ptr4 = getelementptr i8, ptr %6, i32 992
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4, i8 65) #5, !srcloc !124
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %9 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw1, align 4
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %10) #5, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !126
  %add.neg = sub i32 -50, %8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %sub25 = add i32 %add.neg, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub25)
  %cmp26 = icmp sgt i32 %sub25, -1
  %.mask = and i16 %11, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask)
  %tobool.not27 = icmp eq i16 %.mask, 0
  %or.cond28 = select i1 %cmp26, i1 true, i1 %tobool.not27
  br i1 %or.cond28, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #5
  %14 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw1, align 4
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %15) #5, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !126
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp = icmp sgt i32 %sub, -1
  %.mask29 = and i16 %16, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask29)
  %tobool.not = icmp eq i16 %.mask29, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not
  br i1 %or.cond, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %tobool.not.lcssa = phi i1 [ %tobool.not27, %entry.while.end_crit_edge ], [ %tobool.not, %while.body.while.end_crit_edge ]
  br i1 %tobool.not.lcssa, label %while.end.cleanup_crit_edge, label %do.end

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %while.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end ], [ 0, %while.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hermes_struct_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orinoco_interrupt(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orinoco_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orinoco_if_add(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_orinocodev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @orinoco_if_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orinoco_pci_suspend(ptr nocapture noundef readonly %dev_d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev_d, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @orinoco_down(ptr noundef %1) #5
  %irq = getelementptr i8, ptr %dev_d, i32 932
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orinoco_pci_resume(ptr nocapture noundef readonly %dev_d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev_d, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ndev = getelementptr inbounds %struct.orinoco_private, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 4
  %irq = getelementptr i8, ptr %dev_d, i32 932
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %5, ptr noundef nonnull @orinoco_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %3, ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %3) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call i32 @orinoco_up(ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ %call6, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @orinoco_down(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orinoco_up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !95, !96, !97, !98, !99, !101, !102, !103, !104}
!llvm.module.flags = !{!106, !107, !108, !109, !110, !111, !112, !113}
!llvm.ident = !{!114}

!0 = !{ptr @__UNIQUE_ID_author375, !1, !"__UNIQUE_ID_author375", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_plx.c", i32 346, i32 1}
!2 = !{ptr @__UNIQUE_ID_description376, !3, !"__UNIQUE_ID_description376", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_plx.c", i32 347, i32 1}
!4 = !{ptr @__UNIQUE_ID_file377, !5, !"__UNIQUE_ID_file377", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_plx.c", i32 348, i32 1}
!6 = !{ptr @__UNIQUE_ID_license378, !5, !"__UNIQUE_ID_license378", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_orinoco_plx__379_361_orinoco_plx_init6, !8, !"__initcall__kmod_orinoco_plx__379_361_orinoco_plx_init6", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_plx.c", i32 361, i32 1}
!9 = !{ptr @__exitcall_orinoco_plx_exit, !10, !"__exitcall_orinoco_plx_exit", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_plx.c", i32 362, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_plx.c", i32 335, i32 11}
!13 = !{ptr @orinoco_plx_driver, !14, !"orinoco_plx_driver", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_plx.c", i32 334, i32 26}
!15 = !{ptr @orinoco_plx_id_table, !16, !"orinoco_plx_id_table", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_plx.c", i32 314, i32 35}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_plx.c", i32 190, i32 3}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @orinoco_plx_init_one._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @orinoco_plx_init_one._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_plx.c", i32 196, i32 3}
!25 = !{ptr @orinoco_plx_init_one._entry.4, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @orinoco_plx_init_one._entry_ptr.6, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_plx.c", i32 202, i32 3}
!29 = !{ptr @orinoco_plx_init_one._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @orinoco_plx_init_one._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_plx.c", i32 209, i32 3}
!33 = !{ptr @orinoco_plx_init_one._entry.10, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @orinoco_plx_init_one._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_plx.c", i32 216, i32 3}
!37 = !{ptr @orinoco_plx_init_one._entry.13, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @orinoco_plx_init_one._entry_ptr.15, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_plx.c", i32 225, i32 3}
!41 = !{ptr @orinoco_plx_init_one._entry.16, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @orinoco_plx_init_one._entry_ptr.18, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_plx.c", i32 239, i32 3}
!45 = !{ptr @orinoco_plx_init_one._entry.19, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @orinoco_plx_init_one._entry_ptr.21, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_plx.c", i32 246, i32 3}
!49 = !{ptr @orinoco_plx_init_one._entry.22, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @orinoco_plx_init_one._entry_ptr.24, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_plx.c", i32 252, i32 3}
!53 = !{ptr @orinoco_plx_init_one._entry.25, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @orinoco_plx_init_one._entry_ptr.27, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_plx.c", i32 258, i32 3}
!57 = !{ptr @orinoco_plx_init_one._entry.28, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @orinoco_plx_init_one._entry_ptr.30, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_plx.c", i32 264, i32 3}
!61 = !{ptr @orinoco_plx_init_one._entry.31, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @orinoco_plx_init_one._entry_ptr.33, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_plx.c", i32 133, i32 3}
!65 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @orinoco_plx_cor_reset._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @orinoco_plx_cor_reset._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = distinct !{null, !69, !"cis_magic", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_plx.c", i32 144, i32 18}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_plx.c", i32 148, i32 2}
!72 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @orinoco_plx_hw_init._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @orinoco_plx_hw_init._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_plx.c", i32 150, i32 3}
!77 = !{ptr @orinoco_plx_hw_init._entry.38, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @orinoco_plx_hw_init._entry_ptr.40, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.42, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_plx.c", i32 151, i32 2}
!81 = !{ptr @orinoco_plx_hw_init._entry.41, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @orinoco_plx_hw_init._entry_ptr.43, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.45, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_plx.c", i32 157, i32 4}
!85 = !{ptr @orinoco_plx_hw_init._entry.44, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @orinoco_plx_hw_init._entry_ptr.46, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.48, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_plx.c", i32 172, i32 4}
!89 = !{ptr @orinoco_plx_hw_init._entry.47, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @orinoco_plx_hw_init._entry_ptr.49, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @orinoco_pci_pm_ops, !92, !"orinoco_pci_pm_ops", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_pci.h", i32 50, i32 8}
!93 = !{ptr @.str.50, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_pci.h", i32 42, i32 3}
!95 = !{ptr @.str.51, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.52, !94, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @orinoco_pci_resume._entry, !94, !"_entry", i1 false, i1 false}
!98 = !{ptr @orinoco_pci_resume._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.53, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_plx.c", i32 352, i32 2}
!101 = !{ptr @.str.54, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @orinoco_plx_init._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @orinoco_plx_init._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @version, !105, !"version", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/intersil/orinoco/orinoco_plx.c", i32 342, i32 13}
!106 = !{i32 1, !"wchar_size", i32 2}
!107 = !{i32 1, !"min_enum_size", i32 4}
!108 = !{i32 8, !"branch-target-enforcement", i32 0}
!109 = !{i32 8, !"sign-return-address", i32 0}
!110 = !{i32 8, !"sign-return-address-all", i32 0}
!111 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!112 = !{i32 7, !"uwtable", i32 1}
!113 = !{i32 7, !"frame-pointer", i32 2}
!114 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!115 = !{i64 4997515}
!116 = !{i64 2152536860}
!117 = !{i64 4997735}
!118 = !{i64 2152538084}
!119 = !{i64 2152539439}
!120 = !{i64 4997317}
!121 = !{!"branch_weights", i32 1, i32 2000}
!122 = !{i64 2157827671, i64 2157828159, i64 2157827708, i64 2157827764, i64 2157827798, i64 2157827822, i64 2157827863, i64 2157827884, i64 2157827912, i64 2157827946}
!123 = !{i64 2152538465}
!124 = !{i64 4997120}
!125 = !{i64 4996897}
!126 = !{i64 2152537472}
