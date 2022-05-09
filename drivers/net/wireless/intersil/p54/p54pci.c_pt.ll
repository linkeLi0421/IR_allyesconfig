; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intersil/p54/p54pci.c_pt.bc'
source_filename = "../drivers/net/wireless/intersil/p54/p54pci.c"
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.99, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%union.anon.99 = type { ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.129, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.129 = type { i32, i16 }
%struct.p54p_priv = type { %struct.p54_common, ptr, ptr, %struct.tasklet_struct, ptr, %struct.spinlock, ptr, i32, i32, i32, i32, i32, [8 x ptr], [4 x ptr], [32 x ptr], [4 x ptr], %struct.completion, %struct.completion }
%struct.p54_common = type { ptr, ptr, ptr, ptr, ptr, %struct.sk_buff_head, %struct.sk_buff_head, %struct.mutex, i8, i32, i32, i16, i8, i8, i32, i32, i32, i8, i8, %struct.spinlock, [8 x %struct.p54_tx_queue_stats], [8 x %struct.p54_edcf_queue_param], i16, i8, i8, i32, ptr, ptr, ptr, i32, %struct.completion, i8, %struct.anon.133, i32, ptr, i32, ptr, ptr, ptr, [6 x ptr], [6 x i8], [6 x i8], [4 x [6 x i8]], i16, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i32, %struct.completion, i8, i8, ptr, [4 x %struct.p54_led_dev], %struct.delayed_work, i16, %struct.ieee80211_low_level_stats, %struct.delayed_work, ptr, %struct.completion, %struct.mutex }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.p54_tx_queue_stats = type { i32, i32, i32 }
%struct.p54_edcf_queue_param = type { i16, i16, i16, i16 }
%struct.anon.133 = type { i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.p54_led_dev = type { ptr, %struct.led_classdev, [32 x i8], i32, i32, i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.135, i32 }
%union.anon.135 = type { ptr }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.125, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.possible_net_t = type { ptr }
%struct.anon.125 = type { i64, i64, i8 }
%struct.p54p_csr = type { i32, [12 x i8], i32, i32, i32, [4 x i8], %union.anon.134, [8 x i8], i32, [44 x i8], i32, i32, i32, [12 x i8], i32, [1924 x i8], [2048 x i8], [4096 x i8] }
%union.anon.134 = type { [2 x i32] }
%struct.firmware = type { i32, ptr, ptr }
%struct.p54p_ring_control = type { [4 x i32], [4 x i32], [8 x %struct.p54p_desc], [32 x %struct.p54p_desc], [4 x %struct.p54p_desc], [4 x %struct.p54p_desc] }
%struct.p54p_desc = type { i32, i32, i16, i16 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.p54_hdr = type { i16, i16, i32, i16, i8, i8, [0 x i8] }
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }

@__UNIQUE_ID_author350 = internal constant [51 x i8] c"p54pci.author=Michael Wu <flamingice@sourmilk.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description351 = internal constant [47 x i8] c"p54pci.description=Prism54 PCI wireless driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file352 = internal constant [53 x i8] c"p54pci.file=drivers/net/wireless/intersil/p54/p54pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license353 = internal constant [19 x i8] c"p54pci.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias354 = internal constant [24 x i8] c"p54pci.alias=prism54pci\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware355 = internal constant [27 x i8] c"p54pci.firmware=isl3886pci\00", section ".modinfo", align 1
@__initcall__kmod_p54pci__358_708_p54p_driver_init6 = internal global ptr @p54p_driver_init, section ".initcall6.init", align 4
@p54p_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @p54p_table, ptr @p54p_probe, ptr @p54p_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @p54pci_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_p54p_driver_exit = internal global ptr @p54p_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"p54pci\00", [25 x i8] zeroinitializer }, align 32
@p54p_table = internal constant { [6 x %struct.pci_device_id], [32 x i8] } { [6 x %struct.pci_device_id] [%struct.pci_device_id { i32 4704, i32 14480, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4279, i32 24577, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4704, i32 14455, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4704, i32 14470, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4704, i32 65535, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@p54pci_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @p54p_suspend, ptr @p54p_resume, ptr @p54p_suspend, ptr @p54p_resume, ptr @p54p_suspend, ptr @p54p_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@p54p_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 559, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Cannot enable new PCI device\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"p54p_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/wireless/intersil/p54/p54pci.c\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@p54p_probe._entry_ptr = internal global ptr @p54p_probe._entry, section ".printk_index", align 4
@p54p_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 566, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Too short PCI resources\0A\00", [39 x i8] zeroinitializer }, align 32
@p54p_probe._entry_ptr.8 = internal global ptr @p54p_probe._entry.6, section ".printk_index", align 4
@p54p_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 573, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Cannot obtain PCI resources\0A\00", [35 x i8] zeroinitializer }, align 32
@p54p_probe._entry_ptr.11 = internal global ptr @p54p_probe._entry.9, section ".printk_index", align 4
@p54p_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 581, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"No suitable DMA available\0A\00", [37 x i8] zeroinitializer }, align 32
@p54p_probe._entry_ptr.14 = internal global ptr @p54p_probe._entry.12, section ".printk_index", align 4
@p54p_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 593, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ieee80211 alloc failed\0A\00", [40 x i8] zeroinitializer }, align 32
@p54p_probe._entry_ptr.17 = internal global ptr @p54p_probe._entry.15, section ".printk_index", align 4
@p54p_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 607, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Cannot map device memory\0A\00", [38 x i8] zeroinitializer }, align 32
@p54p_probe._entry_ptr.20 = internal global ptr @p54p_probe._entry.18, section ".printk_index", align 4
@p54p_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 616, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Cannot allocate rings\0A\00", [41 x i8] zeroinitializer }, align 32
@p54p_probe._entry_ptr.23 = internal global ptr @p54p_probe._entry.21, section ".printk_index", align 4
@p54p_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"isl3886pci\00", [21 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@p54p_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 443, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to register IRQ handler\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"p54p_open\00", [22 x i8] zeroinitializer }, align 32
@p54p_open._entry_ptr = internal global ptr @p54p_open._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@p54p_open._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.3, i32 478, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Cannot boot firmware!\0A\00", [41 x i8] zeroinitializer }, align 32
@p54p_open._entry_ptr.31 = internal global ptr @p54p_open._entry.29, section ".printk_index", align 4
@p54p_upload_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 85, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"wrong firmware, please get a LM86(PCI) firmware a try again.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"p54p_upload_firmware\00", [43 x i8] zeroinitializer }, align 32
@p54p_upload_firmware._entry_ptr = internal global ptr @p54p_upload_firmware._entry, section ".printk_index", align 4
@p54p_refill_rx_ring._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 164, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RX DMA Mapping error\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"p54p_refill_rx_ring\00", [44 x i8] zeroinitializer }, align 32
@p54p_refill_rx_ring._entry_ptr = internal global ptr @p54p_refill_rx_ring._entry, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@p54p_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 348, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TX DMA mapping error\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"p54p_tx\00", [24 x i8] zeroinitializer }, align 32
@p54p_tx._entry_ptr = internal global ptr @p54p_tx._entry, section ".printk_index", align 4
@p54p_check_rx_ring._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 213, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"rx'd frame size exceeds length threshold.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"p54p_check_rx_ring\00", [45 x i8] zeroinitializer }, align 32
@p54p_check_rx_ring._entry_ptr = internal global ptr @p54p_check_rx_ring._entry, section ".printk_index", align 4
@p54p_firmware_step2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.3, i32 505, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Cannot find firmware (isl3886pci)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"p54p_firmware_step2\00", [44 x i8] zeroinitializer }, align 32
@p54p_firmware_step2._entry_ptr = internal global ptr @p54p_firmware_step2._entry, section ".printk_index", align 4
@___asan_gen_.44 = private unnamed_addr constant [12 x i8] c"p54p_driver\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 700, i32 26 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 708, i32 1 }
@___asan_gen_.50 = private unnamed_addr constant [11 x i8] c"p54p_table\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 32, i32 35 }
@___asan_gen_.53 = private unnamed_addr constant [14 x i8] c"p54pci_pm_ops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 693, i32 8 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 559, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 566, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 573, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 581, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 593, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 607, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 616, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 624, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 627, i32 48 }
@___asan_gen_.119 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 87, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 443, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 478, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 84, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 163, i32 5 }
@___asan_gen_.162 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 326, i32 6 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 348, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 212, i32 5 }
@___asan_gen_.182 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.189 = private constant [46 x i8] c"../drivers/net/wireless/intersil/p54/p54pci.c\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 505, i32 3 }
@llvm.compiler.used = appending global [72 x ptr] [ptr @__UNIQUE_ID_alias354, ptr @__UNIQUE_ID_author350, ptr @__UNIQUE_ID_description351, ptr @__UNIQUE_ID_file352, ptr @__UNIQUE_ID_firmware355, ptr @__UNIQUE_ID_license353, ptr @__exitcall_p54p_driver_exit, ptr @__initcall__kmod_p54pci__358_708_p54p_driver_init6, ptr @p54p_check_rx_ring._entry, ptr @p54p_check_rx_ring._entry_ptr, ptr @p54p_driver_exit, ptr @p54p_firmware_step2._entry, ptr @p54p_firmware_step2._entry_ptr, ptr @p54p_open._entry, ptr @p54p_open._entry.29, ptr @p54p_open._entry_ptr, ptr @p54p_open._entry_ptr.31, ptr @p54p_probe._entry, ptr @p54p_probe._entry.12, ptr @p54p_probe._entry.15, ptr @p54p_probe._entry.18, ptr @p54p_probe._entry.21, ptr @p54p_probe._entry.6, ptr @p54p_probe._entry.9, ptr @p54p_probe._entry_ptr, ptr @p54p_probe._entry_ptr.11, ptr @p54p_probe._entry_ptr.14, ptr @p54p_probe._entry_ptr.17, ptr @p54p_probe._entry_ptr.20, ptr @p54p_probe._entry_ptr.23, ptr @p54p_probe._entry_ptr.8, ptr @p54p_refill_rx_ring._entry, ptr @p54p_refill_rx_ring._entry_ptr, ptr @p54p_tx._entry, ptr @p54p_tx._entry_ptr, ptr @p54p_upload_firmware._entry, ptr @p54p_upload_firmware._entry_ptr, ptr @p54p_driver, ptr @.str, ptr @p54p_table, ptr @p54pci_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @p54p_probe.__key, ptr @.str.24, ptr @.str.25, ptr @init_completion.__key, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54p_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54p_table to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54pci_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54p_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54p_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54p_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54p_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54p_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54p_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54p_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54p_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54p_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54p_open._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54p_upload_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54p_refill_rx_ring._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54p_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54p_check_rx_ring._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54p_firmware_step2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @p54p_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @p54p_driver, ptr noundef null, ptr noundef nonnull @.str) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @p54p_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pci_unregister_driver(ptr noundef nonnull @p54p_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p54p_probe(ptr noundef %pdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pci_dev_get(ptr noundef %pdev) #5
  %call1 = tail call i32 @pci_enable_device(ptr noundef %pdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.1) #8
  br label %err_put

if.end:                                           ; preds = %entry
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %resource, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %sub = sub i32 1, %1
  %add = add i32 %sub, %3
  %cond = select i1 %cmp, i32 0, i32 %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %cond)
  %cmp11 = icmp ult i32 %cond, 8192
  br i1 %cmp11, label %do.end15, label %if.end17

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.7) #8
  br label %err_disable_dev

if.end17:                                         ; preds = %if.end
  %call18 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  %dev26 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  br i1 %tobool19.not, label %if.end25, label %do.end23

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.10) #8
  br label %err_disable_dev

if.end25:                                         ; preds = %if.end17
  %call27 = tail call i32 @dma_set_mask(ptr noundef %dev26, i64 noundef 4294967295) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end32, label %if.end25.do.end37_crit_edge

if.end25.do.end37_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end37

if.end32:                                         ; preds = %if.end25
  %call31 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev26, i64 noundef 4294967295) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool33.not = icmp eq i32 %call31, 0
  br i1 %tobool33.not, label %if.end39, label %if.end32.do.end37_crit_edge

if.end32.do.end37_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end37

do.end37:                                         ; preds = %if.end32.do.end37_crit_edge, %if.end25.do.end37_crit_edge
  %err.0148 = phi i32 [ %call31, %if.end32.do.end37_crit_edge ], [ %call27, %if.end25.do.end37_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.13) #8
  br label %err_free_reg

if.end39:                                         ; preds = %if.end32
  tail call void @pci_set_master(ptr noundef %pdev) #5
  %call40 = tail call i32 @pci_try_set_mwi(ptr noundef %pdev) #5
  %call41 = tail call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 64, i8 noundef zeroext 0) #5
  %call42 = tail call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 65, i8 noundef zeroext 0) #5
  %call43 = tail call ptr @p54_init_common(i32 noundef 3352) #5
  %tobool44.not = icmp eq ptr %call43, null
  br i1 %tobool44.not, label %do.end48, label %if.end50

do.end48:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.16) #8
  br label %err_free_reg

if.end50:                                         ; preds = %if.end39
  %priv51 = getelementptr inbounds %struct.ieee80211_hw, ptr %call43, i32 0, i32 3
  %4 = ptrtoint ptr %priv51 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv51, align 8
  %pdev52 = getelementptr inbounds %struct.p54p_priv, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pdev52 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %pdev, ptr %pdev52, align 8
  %fw_loaded = getelementptr inbounds %struct.p54p_priv, ptr %5, i32 0, i32 17
  %7 = ptrtoint ptr %fw_loaded to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %fw_loaded, align 4
  %wait.i = getelementptr inbounds %struct.p54p_priv, ptr %5, i32 0, i32 17, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @init_completion.__key) #5
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %call43, i32 0, i32 1
  %8 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wiphy.i, align 8
  %parent.i.i = getelementptr inbounds %struct.wiphy, ptr %9, i32 0, i32 56, i32 1
  %10 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev26, ptr %parent.i.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call43, ptr %driver_data.i.i, align 4
  %call54 = tail call ptr @ioremap(i32 noundef %1, i32 noundef %cond) #5
  %map = getelementptr inbounds %struct.p54p_priv, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call54, ptr %map, align 4
  %tobool56.not = icmp eq ptr %call54, null
  br i1 %tobool56.not, label %do.end60, label %if.end62

do.end60:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.19) #8
  br label %err_free_dev

if.end62:                                         ; preds = %if.end50
  %ring_control_dma = getelementptr inbounds %struct.p54p_priv, ptr %5, i32 0, i32 7
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev26, i32 noundef 608, ptr noundef %ring_control_dma, i32 noundef 3264, i32 noundef 0) #5
  %ring_control = getelementptr inbounds %struct.p54p_priv, ptr %5, i32 0, i32 6
  %13 = ptrtoint ptr %ring_control to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %ring_control, align 8
  %tobool66.not = icmp eq ptr %call.i, null
  br i1 %tobool66.not, label %do.end70, label %if.end72

do.end70:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.22) #8
  br label %err_iounmap

if.end72:                                         ; preds = %if.end62
  %open = getelementptr inbounds %struct.p54_common, ptr %5, i32 0, i32 3
  %14 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @p54p_open, ptr %open, align 4
  %stop = getelementptr inbounds %struct.p54_common, ptr %5, i32 0, i32 4
  %15 = ptrtoint ptr %stop to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @p54p_stop, ptr %stop, align 8
  %tx = getelementptr inbounds %struct.p54_common, ptr %5, i32 0, i32 2
  %16 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @p54p_tx, ptr %tx, align 8
  %lock = getelementptr inbounds %struct.p54p_priv, ptr %5, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.24, ptr noundef nonnull @p54p_probe.__key, i16 noundef signext 3) #5
  %tasklet = getelementptr inbounds %struct.p54p_priv, ptr %5, i32 0, i32 3
  tail call void @tasklet_setup(ptr noundef %tasklet, ptr noundef nonnull @p54p_tasklet) #5
  %17 = ptrtoint ptr %pdev52 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev52, align 8
  %dev80 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %call81 = tail call i32 @request_firmware_nowait(ptr noundef null, i1 noundef zeroext true, ptr noundef nonnull @.str.25, ptr noundef %dev80, i32 noundef 3264, ptr noundef %5, ptr noundef nonnull @p54p_firmware_step2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end72.cleanup_crit_edge, label %if.end84

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end84:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %ring_control to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ring_control, align 8
  %21 = ptrtoint ptr %ring_control_dma to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ring_control_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev26, i32 noundef 608, ptr noundef %20, i32 noundef %22, i32 noundef 0) #5
  br label %err_iounmap

err_iounmap:                                      ; preds = %if.end84, %do.end70
  %err.1 = phi i32 [ %call81, %if.end84 ], [ -12, %do.end70 ]
  %23 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %map, align 4
  tail call void @iounmap(ptr noundef %24) #5
  br label %err_free_dev

err_free_dev:                                     ; preds = %err_iounmap, %do.end60
  %err.2 = phi i32 [ %err.1, %err_iounmap ], [ -12, %do.end60 ]
  tail call void @p54_free_common(ptr noundef nonnull %call43) #5
  br label %err_free_reg

err_free_reg:                                     ; preds = %err_free_dev, %do.end48, %do.end37
  %err.3 = phi i32 [ %err.0148, %do.end37 ], [ %err.2, %err_free_dev ], [ -12, %do.end48 ]
  tail call void @pci_release_regions(ptr noundef %pdev) #5
  br label %err_disable_dev

err_disable_dev:                                  ; preds = %err_free_reg, %do.end23, %do.end15
  %err.4 = phi i32 [ -19, %do.end15 ], [ %call18, %do.end23 ], [ %err.3, %err_free_reg ]
  tail call void @pci_disable_device(ptr noundef %pdev) #5
  br label %err_put

err_put:                                          ; preds = %err_disable_dev, %do.end
  %err.5 = phi i32 [ %call1, %do.end ], [ %err.4, %err_disable_dev ]
  tail call void @pci_dev_put(ptr noundef %pdev) #5
  br label %cleanup

cleanup:                                          ; preds = %err_put, %if.end72.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.5, %err_put ], [ 0, %if.end72.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @p54p_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 8
  %fw_loaded = getelementptr inbounds %struct.p54p_priv, ptr %3, i32 0, i32 17
  tail call void @wait_for_completion(ptr noundef %fw_loaded) #5
  tail call void @p54_unregister_common(ptr noundef nonnull %1) #5
  %firmware = getelementptr inbounds %struct.p54p_priv, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %firmware, align 8
  tail call void @release_firmware(ptr noundef %5) #5
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %ring_control = getelementptr inbounds %struct.p54p_priv, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %ring_control to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ring_control, align 8
  %ring_control_dma = getelementptr inbounds %struct.p54p_priv, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %ring_control_dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ring_control_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev2, i32 noundef 608, ptr noundef %7, i32 noundef %9, i32 noundef 0) #5
  %map = getelementptr inbounds %struct.p54p_priv, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map, align 4
  tail call void @iounmap(ptr noundef %11) #5
  tail call void @pci_release_regions(ptr noundef %pdev) #5
  tail call void @pci_disable_device(ptr noundef %pdev) #5
  tail call void @p54_free_common(ptr noundef nonnull %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_dev_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_try_set_mwi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @p54_init_common(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p54p_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %boot_comp = getelementptr inbounds %struct.p54p_priv, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %boot_comp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %boot_comp, align 4
  %wait.i = getelementptr inbounds %struct.p54p_priv, ptr %1, i32 0, i32 16, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @init_completion.__key) #5
  %pdev = getelementptr inbounds %struct.p54p_priv, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 46
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %6, ptr noundef nonnull @p54p_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 8
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.27) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %ring_control = getelementptr inbounds %struct.p54p_priv, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %ring_control to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ring_control, align 8
  %11 = call ptr @memset(ptr %10, i32 0, i32 608)
  %12 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv1, align 8
  %map.i = getelementptr inbounds %struct.p54p_priv, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %map.i, align 4
  %int_enable.i = getelementptr inbounds %struct.p54p_csr, ptr %15, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_enable.i, i32 0) #5, !srcloc !108
  %16 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %map.i, align 4
  %int_enable3.i = getelementptr inbounds %struct.p54p_csr, ptr %17, i32 0, i32 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %int_enable3.i) #5, !srcloc !109
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 2147480) #5
  %20 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %map.i, align 4
  %ctrl_stat.i = getelementptr inbounds %struct.p54p_csr, ptr %21, i32 0, i32 14
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ctrl_stat.i) #5, !srcloc !109
  %and6.i = and i32 %22, -49
  %23 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %map.i, align 4
  %ctrl_stat8.i = getelementptr inbounds %struct.p54p_csr, ptr %24, i32 0, i32 14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ctrl_stat8.i, i32 %and6.i) #5, !srcloc !108
  %25 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %map.i, align 4
  %ctrl_stat10.i = getelementptr inbounds %struct.p54p_csr, ptr %26, i32 0, i32 14
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ctrl_stat10.i) #5, !srcloc !109
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 2147480) #5
  %or.i = or i32 %and6.i, 16
  %29 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %map.i, align 4
  %ctrl_stat13.i = getelementptr inbounds %struct.p54p_csr, ptr %30, i32 0, i32 14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ctrl_stat13.i, i32 %or.i) #5, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !110
  tail call void @arm_heavy_mb() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 2147480) #5
  %32 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %map.i, align 4
  %ctrl_stat16.i = getelementptr inbounds %struct.p54p_csr, ptr %33, i32 0, i32 14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ctrl_stat16.i, i32 %and6.i) #5, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  tail call void @arm_heavy_mb() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748000) #5
  %firmware.i = getelementptr inbounds %struct.p54p_priv, ptr %13, i32 0, i32 4
  %44 = ptrtoint ptr %firmware.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %firmware.i, align 8
  %call20.i = tail call i32 @p54_parse_firmware(ptr noundef %dev, ptr noundef %45) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end.i, label %if.end.if.then6_crit_edge

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then6

if.end.i:                                         ; preds = %if.end
  %fw_interface.i = getelementptr inbounds %struct.p54_common, ptr %13, i32 0, i32 16
  %46 = ptrtoint ptr %fw_interface.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fw_interface.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1280129078, i32 %47)
  %cmp.not.i = icmp eq i32 %47, 1280129078
  br i1 %cmp.not.i, label %if.end27.i, label %do.end25.i

do.end25.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %pdev.i = getelementptr inbounds %struct.p54p_priv, ptr %13, i32 0, i32 1
  %48 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdev.i, align 8
  %dev26.i = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26.i, ptr noundef nonnull @.str.32) #8
  br label %if.then6

if.end27.i:                                       ; preds = %if.end.i
  %50 = ptrtoint ptr %firmware.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %firmware.i, align 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool32.not132.i = icmp eq i32 %53, 0
  br i1 %tobool32.not132.i, label %if.end27.i.while.end48.i_crit_edge, label %while.body33.preheader.i

if.end27.i.while.end48.i_crit_edge:               ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end48.i

while.body33.preheader.i:                         ; preds = %if.end27.i
  %data29.i = getelementptr inbounds %struct.firmware, ptr %51, i32 0, i32 1
  %54 = ptrtoint ptr %data29.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data29.i, align 4
  br label %while.body33.i

while.body33.i:                                   ; preds = %while.end44.i.while.body33.i_crit_edge, %while.body33.preheader.i
  %device_addr.0135.i = phi i32 [ %add.i, %while.end44.i.while.body33.i_crit_edge ], [ 131072, %while.body33.preheader.i ]
  %remains.0134.i = phi i32 [ %sub.i, %while.end44.i.while.body33.i_crit_edge ], [ %53, %while.body33.preheader.i ]
  %data.0133.i = phi ptr [ %incdec.ptr.i, %while.end44.i.while.body33.i_crit_edge ], [ %55, %while.body33.preheader.i ]
  %56 = tail call i32 @llvm.umin.i32(i32 %remains.0134.i, i32 4096) #5
  %57 = tail call i32 @llvm.bswap.i32(i32 %device_addr.0135.i) #5
  %58 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %map.i, align 4
  %direct_mem_base.i = getelementptr inbounds %struct.p54p_csr, ptr %59, i32 0, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %direct_mem_base.i, i32 %57) #5, !srcloc !108
  %60 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %map.i, align 4
  %int_enable37.i = getelementptr inbounds %struct.p54p_csr, ptr %61, i32 0, i32 4
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %int_enable37.i) #5, !srcloc !109
  br label %while.body41.i

while.body41.i:                                   ; preds = %while.body41.i.while.body41.i_crit_edge, %while.body33.i
  %i.0131.i = phi i32 [ %add43.i, %while.body41.i.while.body41.i_crit_edge ], [ 0, %while.body33.i ]
  %data.1130.i = phi ptr [ %incdec.ptr.i, %while.body41.i.while.body41.i_crit_edge ], [ %data.0133.i, %while.body33.i ]
  %incdec.ptr.i = getelementptr i32, ptr %data.1130.i, i32 1
  %63 = ptrtoint ptr %data.1130.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %data.1130.i, align 4
  %65 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %map.i, align 4
  %arrayidx.i = getelementptr %struct.p54p_csr, ptr %66, i32 0, i32 17, i32 %i.0131.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %64) #5, !srcloc !108
  %add43.i = add nuw nsw i32 %i.0131.i, 4
  %cmp40.i = icmp ult i32 %add43.i, %56
  br i1 %cmp40.i, label %while.body41.i.while.body41.i_crit_edge, label %while.end44.i

while.body41.i.while.body41.i_crit_edge:          ; preds = %while.body41.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body41.i

while.end44.i:                                    ; preds = %while.body41.i
  %add.i = add i32 %device_addr.0135.i, 4096
  %sub.i = sub i32 %remains.0134.i, %56
  %67 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %map.i, align 4
  %int_enable46.i = getelementptr inbounds %struct.p54p_csr, ptr %68, i32 0, i32 4
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %int_enable46.i) #5, !srcloc !109
  %tobool32.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool32.not.i, label %while.end44.i.while.end48.i_crit_edge, label %while.end44.i.while.body33.i_crit_edge

while.end44.i.while.body33.i_crit_edge:           ; preds = %while.end44.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body33.i

while.end44.i.while.end48.i_crit_edge:            ; preds = %while.end44.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end48.i

while.end48.i:                                    ; preds = %while.end44.i.while.end48.i_crit_edge, %if.end27.i.while.end48.i_crit_edge
  %70 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %map.i, align 4
  %ctrl_stat50.i = getelementptr inbounds %struct.p54p_csr, ptr %71, i32 0, i32 14
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ctrl_stat50.i) #5, !srcloc !109
  %and53.i = and i32 %72, -32817
  %or54.i = or i32 %and53.i, 32
  %73 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %map.i, align 4
  %ctrl_stat56.i = getelementptr inbounds %struct.p54p_csr, ptr %74, i32 0, i32 14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ctrl_stat56.i, i32 %or54.i) #5, !srcloc !108
  %75 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %map.i, align 4
  %ctrl_stat58.i = getelementptr inbounds %struct.p54p_csr, ptr %76, i32 0, i32 14
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ctrl_stat58.i) #5, !srcloc !109
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %78(i32 noundef 2147480) #5
  %or60.i = or i32 %and53.i, 48
  %79 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %map.i, align 4
  %ctrl_stat62.i = getelementptr inbounds %struct.p54p_csr, ptr %80, i32 0, i32 14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ctrl_stat62.i, i32 %or60.i) #5, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  tail call void @arm_heavy_mb() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %81(i32 noundef 2147480) #5
  %82 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %map.i, align 4
  %ctrl_stat68.i = getelementptr inbounds %struct.p54p_csr, ptr %83, i32 0, i32 14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ctrl_stat68.i, i32 %or54.i) #5, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !113
  tail call void @arm_heavy_mb() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %84 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %84(i32 noundef 2147480) #5
  br label %while.body76.i

while.body76.i:                                   ; preds = %while.body76.i.while.body76.i_crit_edge, %while.end48.i
  %__ms72.0136.i = phi i32 [ 100, %while.end48.i ], [ %dec74.i, %while.body76.i.while.body76.i_crit_edge ]
  %dec74.i = add nsw i32 %__ms72.0136.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %85(i32 noundef 214748000) #5
  %tobool75.not.i = icmp eq i32 %dec74.i, 0
  br i1 %tobool75.not.i, label %if.end10, label %while.body76.i.while.body76.i_crit_edge

while.body76.i.while.body76.i_crit_edge:          ; preds = %while.body76.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body76.i

if.then6:                                         ; preds = %do.end25.i, %if.end.if.then6_crit_edge
  %retval.0.i.ph = phi i32 [ %call20.i, %if.end.if.then6_crit_edge ], [ -22, %do.end25.i ]
  %86 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pdev, align 8
  %irq8 = getelementptr inbounds %struct.pci_dev, ptr %87, i32 0, i32 46
  %88 = ptrtoint ptr %irq8 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %irq8, align 4
  %call9 = tail call ptr @free_irq(i32 noundef %89, ptr noundef %dev) #5
  br label %cleanup

if.end10:                                         ; preds = %while.body76.i
  %rx_idx_data = getelementptr inbounds %struct.p54p_priv, ptr %1, i32 0, i32 8
  %90 = call ptr @memset(ptr %rx_idx_data, i32 0, i32 16)
  %91 = ptrtoint ptr %ring_control to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ring_control, align 8
  %rx_data = getelementptr inbounds %struct.p54p_ring_control, ptr %92, i32 0, i32 2
  %rx_buf_data = getelementptr inbounds %struct.p54p_priv, ptr %1, i32 0, i32 12
  tail call fastcc void @p54p_refill_rx_ring(ptr noundef %dev, i32 noundef 0, ptr noundef %rx_data, i32 noundef 8, ptr noundef %rx_buf_data, i32 noundef 0)
  %93 = ptrtoint ptr %ring_control to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ring_control, align 8
  %rx_mgmt = getelementptr inbounds %struct.p54p_ring_control, ptr %94, i32 0, i32 4
  %rx_buf_mgmt = getelementptr inbounds %struct.p54p_priv, ptr %1, i32 0, i32 13
  tail call fastcc void @p54p_refill_rx_ring(ptr noundef %dev, i32 noundef 2, ptr noundef %rx_mgmt, i32 noundef 4, ptr noundef %rx_buf_mgmt, i32 noundef 0)
  %ring_control_dma = getelementptr inbounds %struct.p54p_priv, ptr %1, i32 0, i32 7
  %95 = ptrtoint ptr %ring_control_dma to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %ring_control_dma, align 4
  %97 = tail call i32 @llvm.bswap.i32(i32 %96)
  %map = getelementptr inbounds %struct.p54p_priv, ptr %1, i32 0, i32 2
  %98 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %map, align 4
  %100 = getelementptr inbounds %struct.p54p_csr, ptr %99, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %97) #5, !srcloc !108
  %101 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %map, align 4
  %103 = getelementptr inbounds %struct.p54p_csr, ptr %102, i32 0, i32 6
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %103) #5, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !114
  tail call void @arm_heavy_mb() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %105 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %105(i32 noundef 2147480) #5
  %106 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %map, align 4
  %int_enable = getelementptr inbounds %struct.p54p_csr, ptr %107, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_enable, i32 67108864) #5, !srcloc !108
  %108 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %map, align 4
  %int_enable23 = getelementptr inbounds %struct.p54p_csr, ptr %109, i32 0, i32 4
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %int_enable23) #5, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %111 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %111(i32 noundef 2147480) #5
  %112 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %map, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 16777216) #5, !srcloc !108
  %114 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %map, align 4
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %115) #5, !srcloc !109
  %call33 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %boot_comp, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call33)
  %cmp = icmp slt i32 %call33, 1
  br i1 %cmp, label %do.end37, label %if.end40

do.end37:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 1
  %117 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %wiphy, align 8
  %dev38 = getelementptr inbounds %struct.wiphy, ptr %118, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev38, ptr noundef nonnull @.str.30) #8
  tail call void @p54p_stop(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool39.not = icmp eq i32 %call33, 0
  %cond = select i1 %tobool39.not, i32 -110, i32 -512
  br label %cleanup

if.end40:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %119 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %map, align 4
  %int_enable42 = getelementptr inbounds %struct.p54p_csr, ptr %120, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_enable42, i32 33554432) #5, !srcloc !108
  %121 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %map, align 4
  %int_enable44 = getelementptr inbounds %struct.p54p_csr, ptr %122, i32 0, i32 4
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %int_enable44) #5, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !116
  tail call void @arm_heavy_mb() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %124 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %124(i32 noundef 2147480) #5
  %125 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %map, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %126, i32 33554432) #5, !srcloc !108
  %127 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %map, align 4
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %128) #5, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !117
  tail call void @arm_heavy_mb() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %130 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %130(i32 noundef 2147480) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %do.end37, %if.then6, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %retval.0.i.ph, %if.then6 ], [ %cond, %do.end37 ], [ 0, %if.end40 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @p54p_stop(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %ring_control2 = getelementptr inbounds %struct.p54p_priv, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %ring_control2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring_control2, align 8
  %map = getelementptr inbounds %struct.p54p_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 4
  %int_enable = getelementptr inbounds %struct.p54p_csr, ptr %5, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_enable, i32 0) #5, !srcloc !108
  %6 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map, align 4
  %int_enable4 = getelementptr inbounds %struct.p54p_csr, ptr %7, i32 0, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %int_enable4) #5, !srcloc !109
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 2147480) #5
  %pdev = getelementptr inbounds %struct.p54p_priv, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 46
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  %call5 = tail call ptr @free_irq(i32 noundef %13, ptr noundef %dev) #5
  %tasklet = getelementptr inbounds %struct.p54p_priv, ptr %1, i32 0, i32 3
  tail call void @tasklet_kill(ptr noundef %tasklet) #5
  %14 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %map, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 16777216) #5, !srcloc !108
  %rx_mtu = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 11
  br label %for.body

for.cond13.preheader:                             ; preds = %if.end
  %arrayidx17 = getelementptr %struct.p54p_ring_control, ptr %3, i32 0, i32 4, i32 0
  %16 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %arrayidx17, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool19.not = icmp eq i32 %17, 0
  br i1 %tobool19.not, label %for.cond13.preheader.if.end28_crit_edge, label %if.then20

for.cond13.preheader.if.end28_crit_edge:          ; preds = %for.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.0131 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.p54p_ring_control, ptr %3, i32 0, i32 2, i32 %i.0131
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev, align 8
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %22 = tail call i32 @llvm.bswap.i32(i32 %19)
  %23 = ptrtoint ptr %rx_mtu to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %rx_mtu, align 4
  %conv = zext i16 %24 to i32
  %add = add nuw nsw i32 %conv, 32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev8, i32 noundef %22, i32 noundef %add, i32 noundef 2, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %arrayidx10 = getelementptr %struct.p54p_priv, ptr %1, i32 0, i32 12, i32 %i.0131
  %25 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx10, align 4
  tail call void @kfree_skb_reason(ptr noundef %26, i32 noundef 0) #5
  %27 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %arrayidx10, align 4
  %inc = add nuw nsw i32 %i.0131, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.cond13.preheader, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.then20:                                        ; preds = %for.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev, align 8
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %30 = tail call i32 @llvm.bswap.i32(i32 %17)
  %31 = ptrtoint ptr %rx_mtu to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %rx_mtu, align 4
  %conv26 = zext i16 %32 to i32
  %add27 = add nuw nsw i32 %conv26, 32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev22, i32 noundef %30, i32 noundef %add27, i32 noundef 2, i32 noundef 0) #5
  br label %if.end28

if.end28:                                         ; preds = %if.then20, %for.cond13.preheader.if.end28_crit_edge
  %arrayidx29 = getelementptr %struct.p54p_priv, ptr %1, i32 0, i32 13, i32 0
  %33 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx29, align 4
  tail call void @kfree_skb_reason(ptr noundef %34, i32 noundef 0) #5
  %35 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %arrayidx29, align 4
  %arrayidx17.1 = getelementptr %struct.p54p_ring_control, ptr %3, i32 0, i32 4, i32 1
  %36 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %arrayidx17.1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool19.not.1 = icmp eq i32 %37, 0
  br i1 %tobool19.not.1, label %if.end28.if.end28.1_crit_edge, label %if.then20.1

if.end28.if.end28.1_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28.1

if.then20.1:                                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev, align 8
  %dev22.1 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  %40 = tail call i32 @llvm.bswap.i32(i32 %37)
  %41 = ptrtoint ptr %rx_mtu to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %rx_mtu, align 4
  %conv26.1 = zext i16 %42 to i32
  %add27.1 = add nuw nsw i32 %conv26.1, 32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev22.1, i32 noundef %40, i32 noundef %add27.1, i32 noundef 2, i32 noundef 0) #5
  br label %if.end28.1

if.end28.1:                                       ; preds = %if.then20.1, %if.end28.if.end28.1_crit_edge
  %arrayidx29.1 = getelementptr %struct.p54p_priv, ptr %1, i32 0, i32 13, i32 1
  %43 = ptrtoint ptr %arrayidx29.1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx29.1, align 4
  tail call void @kfree_skb_reason(ptr noundef %44, i32 noundef 0) #5
  %45 = ptrtoint ptr %arrayidx29.1 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %arrayidx29.1, align 4
  %arrayidx17.2 = getelementptr %struct.p54p_ring_control, ptr %3, i32 0, i32 4, i32 2
  %46 = ptrtoint ptr %arrayidx17.2 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %arrayidx17.2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool19.not.2 = icmp eq i32 %47, 0
  br i1 %tobool19.not.2, label %if.end28.1.if.end28.2_crit_edge, label %if.then20.2

if.end28.1.if.end28.2_crit_edge:                  ; preds = %if.end28.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28.2

if.then20.2:                                      ; preds = %if.end28.1
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdev, align 8
  %dev22.2 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  %50 = tail call i32 @llvm.bswap.i32(i32 %47)
  %51 = ptrtoint ptr %rx_mtu to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %rx_mtu, align 4
  %conv26.2 = zext i16 %52 to i32
  %add27.2 = add nuw nsw i32 %conv26.2, 32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev22.2, i32 noundef %50, i32 noundef %add27.2, i32 noundef 2, i32 noundef 0) #5
  br label %if.end28.2

if.end28.2:                                       ; preds = %if.then20.2, %if.end28.1.if.end28.2_crit_edge
  %arrayidx29.2 = getelementptr %struct.p54p_priv, ptr %1, i32 0, i32 13, i32 2
  %53 = ptrtoint ptr %arrayidx29.2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx29.2, align 4
  tail call void @kfree_skb_reason(ptr noundef %54, i32 noundef 0) #5
  %55 = ptrtoint ptr %arrayidx29.2 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %arrayidx29.2, align 4
  %arrayidx17.3 = getelementptr %struct.p54p_ring_control, ptr %3, i32 0, i32 4, i32 3
  %56 = ptrtoint ptr %arrayidx17.3 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %arrayidx17.3, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool19.not.3 = icmp eq i32 %57, 0
  br i1 %tobool19.not.3, label %if.end28.2.if.end28.3_crit_edge, label %if.then20.3

if.end28.2.if.end28.3_crit_edge:                  ; preds = %if.end28.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28.3

if.then20.3:                                      ; preds = %if.end28.2
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pdev, align 8
  %dev22.3 = getelementptr inbounds %struct.pci_dev, ptr %59, i32 0, i32 44
  %60 = tail call i32 @llvm.bswap.i32(i32 %57)
  %61 = ptrtoint ptr %rx_mtu to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %rx_mtu, align 4
  %conv26.3 = zext i16 %62 to i32
  %add27.3 = add nuw nsw i32 %conv26.3, 32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev22.3, i32 noundef %60, i32 noundef %add27.3, i32 noundef 2, i32 noundef 0) #5
  br label %if.end28.3

if.end28.3:                                       ; preds = %if.then20.3, %if.end28.2.if.end28.3_crit_edge
  %arrayidx29.3 = getelementptr %struct.p54p_priv, ptr %1, i32 0, i32 13, i32 3
  %63 = ptrtoint ptr %arrayidx29.3 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx29.3, align 4
  tail call void @kfree_skb_reason(ptr noundef %64, i32 noundef 0) #5
  %65 = ptrtoint ptr %arrayidx29.3 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %arrayidx29.3, align 4
  br label %for.body38

for.body38:                                       ; preds = %if.end47.for.body38_crit_edge, %if.end28.3
  %i.2133 = phi i32 [ %inc52, %if.end47.for.body38_crit_edge ], [ 0, %if.end28.3 ]
  %arrayidx39 = getelementptr %struct.p54p_ring_control, ptr %3, i32 0, i32 3, i32 %i.2133
  %66 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %arrayidx39, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool41.not = icmp eq i32 %67, 0
  br i1 %tobool41.not, label %for.body38.if.end47_crit_edge, label %if.then42

for.body38.if.end47_crit_edge:                    ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.then42:                                        ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #7
  %68 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pdev, align 8
  %dev44 = getelementptr inbounds %struct.pci_dev, ptr %69, i32 0, i32 44
  %70 = tail call i32 @llvm.bswap.i32(i32 %67)
  %len = getelementptr %struct.p54p_ring_control, ptr %3, i32 0, i32 3, i32 %i.2133, i32 2
  %71 = ptrtoint ptr %len to i32
  call void @__asan_loadN_noabort(i32 %71, i32 2)
  %72 = load i16, ptr %len, align 1
  %73 = tail call i16 @llvm.bswap.i16(i16 %72)
  %conv46 = zext i16 %73 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev44, i32 noundef %70, i32 noundef %conv46, i32 noundef 1, i32 noundef 0) #5
  br label %if.end47

if.end47:                                         ; preds = %if.then42, %for.body38.if.end47_crit_edge
  %arrayidx48 = getelementptr %struct.p54p_priv, ptr %1, i32 0, i32 14, i32 %i.2133
  %74 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx48, align 4
  tail call void @p54_free_skb(ptr noundef %dev, ptr noundef %75) #5
  %76 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %arrayidx48, align 4
  %inc52 = add nuw nsw i32 %i.2133, 1
  %exitcond138.not = icmp eq i32 %inc52, 32
  br i1 %exitcond138.not, label %for.body57.preheader, label %if.end47.for.body38_crit_edge

if.end47.for.body38_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body38

for.body57.preheader:                             ; preds = %if.end47
  %arrayidx58 = getelementptr %struct.p54p_ring_control, ptr %3, i32 0, i32 5, i32 0
  %77 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %arrayidx58, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool60.not = icmp eq i32 %78, 0
  br i1 %tobool60.not, label %for.body57.preheader.if.end67_crit_edge, label %if.then61

for.body57.preheader.if.end67_crit_edge:          ; preds = %for.body57.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

if.then61:                                        ; preds = %for.body57.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %79 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pdev, align 8
  %dev63 = getelementptr inbounds %struct.pci_dev, ptr %80, i32 0, i32 44
  %81 = tail call i32 @llvm.bswap.i32(i32 %78)
  %len65 = getelementptr %struct.p54p_ring_control, ptr %3, i32 0, i32 5, i32 0, i32 2
  %82 = ptrtoint ptr %len65 to i32
  call void @__asan_loadN_noabort(i32 %82, i32 2)
  %83 = load i16, ptr %len65, align 1
  %84 = tail call i16 @llvm.bswap.i16(i16 %83)
  %conv66 = zext i16 %84 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev63, i32 noundef %81, i32 noundef %conv66, i32 noundef 1, i32 noundef 0) #5
  br label %if.end67

if.end67:                                         ; preds = %if.then61, %for.body57.preheader.if.end67_crit_edge
  %arrayidx68 = getelementptr %struct.p54p_priv, ptr %1, i32 0, i32 15, i32 0
  %85 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx68, align 4
  tail call void @p54_free_skb(ptr noundef %dev, ptr noundef %86) #5
  %87 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %arrayidx68, align 4
  %arrayidx58.1 = getelementptr %struct.p54p_ring_control, ptr %3, i32 0, i32 5, i32 1
  %88 = ptrtoint ptr %arrayidx58.1 to i32
  call void @__asan_loadN_noabort(i32 %88, i32 4)
  %89 = load i32, ptr %arrayidx58.1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool60.not.1 = icmp eq i32 %89, 0
  br i1 %tobool60.not.1, label %if.end67.if.end67.1_crit_edge, label %if.then61.1

if.end67.if.end67.1_crit_edge:                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67.1

if.then61.1:                                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  %90 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pdev, align 8
  %dev63.1 = getelementptr inbounds %struct.pci_dev, ptr %91, i32 0, i32 44
  %92 = tail call i32 @llvm.bswap.i32(i32 %89)
  %len65.1 = getelementptr %struct.p54p_ring_control, ptr %3, i32 0, i32 5, i32 1, i32 2
  %93 = ptrtoint ptr %len65.1 to i32
  call void @__asan_loadN_noabort(i32 %93, i32 2)
  %94 = load i16, ptr %len65.1, align 1
  %95 = tail call i16 @llvm.bswap.i16(i16 %94)
  %conv66.1 = zext i16 %95 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev63.1, i32 noundef %92, i32 noundef %conv66.1, i32 noundef 1, i32 noundef 0) #5
  br label %if.end67.1

if.end67.1:                                       ; preds = %if.then61.1, %if.end67.if.end67.1_crit_edge
  %arrayidx68.1 = getelementptr %struct.p54p_priv, ptr %1, i32 0, i32 15, i32 1
  %96 = ptrtoint ptr %arrayidx68.1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx68.1, align 4
  tail call void @p54_free_skb(ptr noundef %dev, ptr noundef %97) #5
  %98 = ptrtoint ptr %arrayidx68.1 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %arrayidx68.1, align 4
  %arrayidx58.2 = getelementptr %struct.p54p_ring_control, ptr %3, i32 0, i32 5, i32 2
  %99 = ptrtoint ptr %arrayidx58.2 to i32
  call void @__asan_loadN_noabort(i32 %99, i32 4)
  %100 = load i32, ptr %arrayidx58.2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool60.not.2 = icmp eq i32 %100, 0
  br i1 %tobool60.not.2, label %if.end67.1.if.end67.2_crit_edge, label %if.then61.2

if.end67.1.if.end67.2_crit_edge:                  ; preds = %if.end67.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67.2

if.then61.2:                                      ; preds = %if.end67.1
  call void @__sanitizer_cov_trace_pc() #7
  %101 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pdev, align 8
  %dev63.2 = getelementptr inbounds %struct.pci_dev, ptr %102, i32 0, i32 44
  %103 = tail call i32 @llvm.bswap.i32(i32 %100)
  %len65.2 = getelementptr %struct.p54p_ring_control, ptr %3, i32 0, i32 5, i32 2, i32 2
  %104 = ptrtoint ptr %len65.2 to i32
  call void @__asan_loadN_noabort(i32 %104, i32 2)
  %105 = load i16, ptr %len65.2, align 1
  %106 = tail call i16 @llvm.bswap.i16(i16 %105)
  %conv66.2 = zext i16 %106 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev63.2, i32 noundef %103, i32 noundef %conv66.2, i32 noundef 1, i32 noundef 0) #5
  br label %if.end67.2

if.end67.2:                                       ; preds = %if.then61.2, %if.end67.1.if.end67.2_crit_edge
  %arrayidx68.2 = getelementptr %struct.p54p_priv, ptr %1, i32 0, i32 15, i32 2
  %107 = ptrtoint ptr %arrayidx68.2 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx68.2, align 4
  tail call void @p54_free_skb(ptr noundef %dev, ptr noundef %108) #5
  %109 = ptrtoint ptr %arrayidx68.2 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr null, ptr %arrayidx68.2, align 4
  %arrayidx58.3 = getelementptr %struct.p54p_ring_control, ptr %3, i32 0, i32 5, i32 3
  %110 = ptrtoint ptr %arrayidx58.3 to i32
  call void @__asan_loadN_noabort(i32 %110, i32 4)
  %111 = load i32, ptr %arrayidx58.3, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool60.not.3 = icmp eq i32 %111, 0
  br i1 %tobool60.not.3, label %if.end67.2.if.end67.3_crit_edge, label %if.then61.3

if.end67.2.if.end67.3_crit_edge:                  ; preds = %if.end67.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67.3

if.then61.3:                                      ; preds = %if.end67.2
  call void @__sanitizer_cov_trace_pc() #7
  %112 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pdev, align 8
  %dev63.3 = getelementptr inbounds %struct.pci_dev, ptr %113, i32 0, i32 44
  %114 = tail call i32 @llvm.bswap.i32(i32 %111)
  %len65.3 = getelementptr %struct.p54p_ring_control, ptr %3, i32 0, i32 5, i32 3, i32 2
  %115 = ptrtoint ptr %len65.3 to i32
  call void @__asan_loadN_noabort(i32 %115, i32 2)
  %116 = load i16, ptr %len65.3, align 1
  %117 = tail call i16 @llvm.bswap.i16(i16 %116)
  %conv66.3 = zext i16 %117 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev63.3, i32 noundef %114, i32 noundef %conv66.3, i32 noundef 1, i32 noundef 0) #5
  br label %if.end67.3

if.end67.3:                                       ; preds = %if.then61.3, %if.end67.2.if.end67.3_crit_edge
  %arrayidx68.3 = getelementptr %struct.p54p_priv, ptr %1, i32 0, i32 15, i32 3
  %118 = ptrtoint ptr %arrayidx68.3 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx68.3, align 4
  tail call void @p54_free_skb(ptr noundef %dev, ptr noundef %119) #5
  %120 = ptrtoint ptr %arrayidx68.3 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr null, ptr %arrayidx68.3, align 4
  %121 = call ptr @memset(ptr %3, i32 0, i32 608)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @p54p_tx(ptr noundef %dev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %ring_control2 = getelementptr inbounds %struct.p54p_priv, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %ring_control2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring_control2, align 8
  %lock = getelementptr inbounds %struct.p54p_priv, ptr %1, i32 0, i32 5
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %arrayidx = getelementptr [4 x i32], ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %arrayidx, align 1
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %req_id = getelementptr inbounds %struct.p54_hdr, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %req_id to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %req_id, align 1
  %pdev = getelementptr inbounds %struct.p54p_priv, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %7) #5
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !118

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev7) #5
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44, i32 3
  %14 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev7, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %17, %if.end.i.i ], [ %15, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.37, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #5
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @debug_dma_map_single(ptr noundef %dev7, ptr noundef %7, i32 noundef %13) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %18 = load ptr, ptr @mem_map, align 4
  %19 = ptrtoint ptr %7 to i32
  %sub.i = add i32 %19, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %18, i32 %shr.i
  %and.i = and i32 %19, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev7, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %13, i32 noundef 1, i32 noundef 0) #5
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %20 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev, align 8
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev11, i32 noundef %retval.0.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #5
  tail call void @p54_free_skb(ptr noundef %dev, ptr noundef %skb) #5
  %22 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev, align 8
  %dev18 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull @.str.38) #8
  br label %cleanup

if.end:                                           ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #7
  %24 = tail call i32 @llvm.bswap.i32(i32 %5)
  %rem = and i32 %24, 31
  %arrayidx19 = getelementptr %struct.p54p_priv, ptr %1, i32 0, i32 14, i32 %rem
  %25 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %skb, ptr %arrayidx19, align 4
  %arrayidx20 = getelementptr %struct.p54p_ring_control, ptr %3, i32 0, i32 3, i32 %rem
  %26 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i)
  %27 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %26, ptr %arrayidx20, align 1
  %device_addr21 = getelementptr %struct.p54p_ring_control, ptr %3, i32 0, i32 3, i32 %rem, i32 1
  %28 = ptrtoint ptr %device_addr21 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %9, ptr %device_addr21, align 1
  %29 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len, align 4
  %conv23 = trunc i32 %30 to i16
  %31 = tail call i16 @llvm.bswap.i16(i16 %conv23)
  %len24 = getelementptr %struct.p54p_ring_control, ptr %3, i32 0, i32 3, i32 %rem, i32 2
  %32 = ptrtoint ptr %len24 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 %31, ptr %len24, align 1
  %flags25 = getelementptr %struct.p54p_ring_control, ptr %3, i32 0, i32 3, i32 %rem, i32 3
  %33 = ptrtoint ptr %flags25 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 0, ptr %flags25, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !119
  tail call void @arm_heavy_mb() #5
  %add = add i32 %24, 1
  %34 = tail call i32 @llvm.bswap.i32(i32 %add)
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %34, ptr %arrayidx, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #5
  %map = getelementptr inbounds %struct.p54p_priv, ptr %1, i32 0, i32 2
  %36 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %map, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 33554432) #5, !srcloc !108
  %38 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %map, align 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #5, !srcloc !109
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @p54p_tasklet(ptr nocapture noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr i8, ptr %t, i32 -8
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %ring_control1 = getelementptr i8, ptr %t, i32 72
  %4 = ptrtoint ptr %ring_control1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ring_control1, align 8
  %tx_idx_mgmt = getelementptr i8, ptr %t, i32 92
  %tx_mgmt = getelementptr inbounds %struct.p54p_ring_control, ptr %5, i32 0, i32 5
  %tx_buf_mgmt = getelementptr i8, ptr %t, i32 272
  %priv1.i = getelementptr inbounds %struct.ieee80211_hw, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv1.i, align 8
  %ring_control2.i = getelementptr inbounds %struct.p54p_priv, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %ring_control2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ring_control2.i, align 8
  %10 = ptrtoint ptr %tx_idx_mgmt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_idx_mgmt, align 4
  %arrayidx.i = getelementptr %struct.p54p_ring_control, ptr %9, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %arrayidx.i, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #5
  %15 = ptrtoint ptr %tx_idx_mgmt to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %tx_idx_mgmt, align 4
  %rem3.i = and i32 %14, 3
  %i.034.i = and i32 %11, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %i.034.i, i32 %rem3.i)
  %cmp.not35.i = icmp eq i32 %i.034.i, %rem3.i
  br i1 %cmp.not35.i, label %entry.p54p_check_tx_ring.exit_crit_edge, label %while.body.lr.ph.i

entry.p54p_check_tx_ring.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %p54p_check_tx_ring.exit

while.body.lr.ph.i:                               ; preds = %entry
  %pdev.i = getelementptr inbounds %struct.p54p_priv, ptr %7, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %i.036.i = phi i32 [ %i.034.i, %while.body.lr.ph.i ], [ %i.0.i, %if.end.i.while.body.i_crit_edge ]
  %arrayidx4.i = getelementptr %struct.p54p_desc, ptr %tx_mgmt, i32 %i.036.i
  %arrayidx5.i = getelementptr ptr, ptr %tx_buf_mgmt, i32 %i.036.i
  %16 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx5.i, align 4
  store ptr null, ptr %arrayidx5.i, align 4
  %18 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev.i, align 8
  %dev7.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %20 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %arrayidx4.i, align 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #5
  %len.i = getelementptr %struct.p54p_desc, ptr %tx_mgmt, i32 %i.036.i, i32 2
  %23 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %len.i, align 1
  %25 = tail call i16 @llvm.bswap.i16(i16 %24) #5
  %conv.i = zext i16 %25 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev7.i, i32 noundef %22, i32 noundef %conv.i, i32 noundef 1, i32 noundef 0) #5
  %tobool.not.i = icmp eq ptr %17, null
  %26 = call ptr @memset(ptr %arrayidx4.i, i32 0, i32 12)
  br i1 %tobool.not.i, label %while.body.i.if.end.i_crit_edge, label %land.lhs.true.i

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 19
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %28, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 384, i16 %30)
  %cmp12.i = icmp eq i16 %30, 384
  br i1 %cmp12.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @p54_free_skb(ptr noundef %3, ptr noundef nonnull %17) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %while.body.i.if.end.i_crit_edge
  %inc.i = add nuw nsw i32 %i.036.i, 1
  %i.0.i = and i32 %inc.i, 3
  %cmp.not.i = icmp eq i32 %i.0.i, %rem3.i
  br i1 %cmp.not.i, label %if.end.i.p54p_check_tx_ring.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

if.end.i.p54p_check_tx_ring.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %p54p_check_tx_ring.exit

p54p_check_tx_ring.exit:                          ; preds = %if.end.i.p54p_check_tx_ring.exit_crit_edge, %entry.p54p_check_tx_ring.exit_crit_edge
  %tx_idx_data = getelementptr i8, ptr %t, i32 84
  %tx_data = getelementptr inbounds %struct.p54p_ring_control, ptr %5, i32 0, i32 3
  %tx_buf_data = getelementptr i8, ptr %t, i32 144
  %31 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv1.i, align 8
  %ring_control2.i26 = getelementptr inbounds %struct.p54p_priv, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %ring_control2.i26 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ring_control2.i26, align 8
  %35 = ptrtoint ptr %tx_idx_data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tx_idx_data, align 4
  %arrayidx.i27 = getelementptr %struct.p54p_ring_control, ptr %34, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %arrayidx.i27 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %arrayidx.i27, align 1
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #5
  %40 = ptrtoint ptr %tx_idx_data to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %tx_idx_data, align 4
  %rem3.i28 = and i32 %39, 31
  %i.034.i29 = and i32 %36, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %i.034.i29, i32 %rem3.i28)
  %cmp.not35.i30 = icmp eq i32 %i.034.i29, %rem3.i28
  br i1 %cmp.not35.i30, label %p54p_check_tx_ring.exit.p54p_check_tx_ring.exit49_crit_edge, label %while.body.lr.ph.i32

p54p_check_tx_ring.exit.p54p_check_tx_ring.exit49_crit_edge: ; preds = %p54p_check_tx_ring.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %p54p_check_tx_ring.exit49

while.body.lr.ph.i32:                             ; preds = %p54p_check_tx_ring.exit
  %pdev.i31 = getelementptr inbounds %struct.p54p_priv, ptr %32, i32 0, i32 1
  br label %while.body.i40

while.body.i40:                                   ; preds = %if.end.i48.while.body.i40_crit_edge, %while.body.lr.ph.i32
  %i.036.i33 = phi i32 [ %i.034.i29, %while.body.lr.ph.i32 ], [ %i.0.i46, %if.end.i48.while.body.i40_crit_edge ]
  %arrayidx4.i34 = getelementptr %struct.p54p_desc, ptr %tx_data, i32 %i.036.i33
  %arrayidx5.i35 = getelementptr ptr, ptr %tx_buf_data, i32 %i.036.i33
  %41 = ptrtoint ptr %arrayidx5.i35 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx5.i35, align 4
  store ptr null, ptr %arrayidx5.i35, align 4
  %43 = ptrtoint ptr %pdev.i31 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdev.i31, align 8
  %dev7.i36 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  %45 = ptrtoint ptr %arrayidx4.i34 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %arrayidx4.i34, align 1
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #5
  %len.i37 = getelementptr %struct.p54p_desc, ptr %tx_data, i32 %i.036.i33, i32 2
  %48 = ptrtoint ptr %len.i37 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %len.i37, align 1
  %50 = tail call i16 @llvm.bswap.i16(i16 %49) #5
  %conv.i38 = zext i16 %50 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev7.i36, i32 noundef %47, i32 noundef %conv.i38, i32 noundef 1, i32 noundef 0) #5
  %tobool.not.i39 = icmp eq ptr %42, null
  %51 = call ptr @memset(ptr %arrayidx4.i34, i32 0, i32 12)
  br i1 %tobool.not.i39, label %while.body.i40.if.end.i48_crit_edge, label %land.lhs.true.i43

while.body.i40.if.end.i48_crit_edge:              ; preds = %while.body.i40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i48

land.lhs.true.i43:                                ; preds = %while.body.i40
  %data.i41 = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 19
  %52 = ptrtoint ptr %data.i41 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.i41, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %55 = load i16, ptr %53, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 384, i16 %55)
  %cmp12.i42 = icmp eq i16 %55, 384
  br i1 %cmp12.i42, label %if.then.i44, label %land.lhs.true.i43.if.end.i48_crit_edge

land.lhs.true.i43.if.end.i48_crit_edge:           ; preds = %land.lhs.true.i43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i48

if.then.i44:                                      ; preds = %land.lhs.true.i43
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @p54_free_skb(ptr noundef %3, ptr noundef nonnull %42) #5
  br label %if.end.i48

if.end.i48:                                       ; preds = %if.then.i44, %land.lhs.true.i43.if.end.i48_crit_edge, %while.body.i40.if.end.i48_crit_edge
  %inc.i45 = add nuw nsw i32 %i.036.i33, 1
  %i.0.i46 = and i32 %inc.i45, 31
  %cmp.not.i47 = icmp eq i32 %i.0.i46, %rem3.i28
  br i1 %cmp.not.i47, label %if.end.i48.p54p_check_tx_ring.exit49_crit_edge, label %if.end.i48.while.body.i40_crit_edge

if.end.i48.while.body.i40_crit_edge:              ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i40

if.end.i48.p54p_check_tx_ring.exit49_crit_edge:   ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #7
  br label %p54p_check_tx_ring.exit49

p54p_check_tx_ring.exit49:                        ; preds = %if.end.i48.p54p_check_tx_ring.exit49_crit_edge, %p54p_check_tx_ring.exit.p54p_check_tx_ring.exit49_crit_edge
  %rx_idx_mgmt = getelementptr i8, ptr %t, i32 88
  %rx_mgmt = getelementptr inbounds %struct.p54p_ring_control, ptr %5, i32 0, i32 4
  %rx_buf_mgmt = getelementptr i8, ptr %t, i32 128
  tail call fastcc void @p54p_check_rx_ring(ptr noundef %3, ptr noundef %rx_idx_mgmt, i32 noundef 2, ptr noundef %rx_mgmt, i32 noundef 4, ptr noundef %rx_buf_mgmt)
  %rx_idx_data = getelementptr i8, ptr %t, i32 80
  %rx_data = getelementptr inbounds %struct.p54p_ring_control, ptr %5, i32 0, i32 2
  %rx_buf_data = getelementptr i8, ptr %t, i32 96
  tail call fastcc void @p54p_check_rx_ring(ptr noundef %3, ptr noundef %rx_idx_data, i32 noundef 0, ptr noundef %rx_data, i32 noundef 8, ptr noundef %rx_buf_data)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !120
  tail call void @arm_heavy_mb() #5
  %map = getelementptr i8, ptr %t, i32 -4
  %56 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %map, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 33554432) #5, !srcloc !108
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_nowait(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @p54p_firmware_step2(ptr noundef %fw, ptr noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 8
  %pdev1 = getelementptr inbounds %struct.p54p_priv, ptr %context, i32 0, i32 1
  %2 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1, align 8
  %tobool.not = icmp eq ptr %fw, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.42) #8
  br label %out.thread

if.end:                                           ; preds = %entry
  %firmware = getelementptr inbounds %struct.p54p_priv, ptr %context, i32 0, i32 4
  %4 = ptrtoint ptr %firmware to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %fw, ptr %firmware, align 8
  %call = tail call i32 @p54p_open(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out.thread_crit_edge

if.end.out.thread_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.thread

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @p54_read_eeprom(ptr noundef %1) #5
  tail call void @p54p_stop(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %out, label %if.end5.out.thread_crit_edge

if.end5.out.thread_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.thread

out.thread:                                       ; preds = %if.end5.out.thread_crit_edge, %if.end.out.thread_crit_edge, %do.end
  %fw_loaded45 = getelementptr inbounds %struct.p54p_priv, ptr %context, i32 0, i32 17
  tail call void @complete(ptr noundef %fw_loaded45) #5
  br label %if.then16

out:                                              ; preds = %if.end5
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %call11 = tail call i32 @p54_register_common(ptr noundef %1, ptr noundef %dev10) #5
  %fw_loaded = getelementptr inbounds %struct.p54p_priv, ptr %context, i32 0, i32 17
  tail call void @complete(ptr noundef %fw_loaded) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool15.not = icmp eq i32 %call11, 0
  br i1 %tobool15.not, label %out.if.end26_crit_edge, label %out.if.then16_crit_edge

out.if.then16_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16

out.if.end26_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then16:                                        ; preds = %out.if.then16_crit_edge, %out.thread
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %parent18 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 1
  %5 = ptrtoint ptr %parent18 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent18, align 8
  %tobool19.not = icmp eq ptr %6, null
  br i1 %tobool19.not, label %if.end25.critedge, label %if.then20

if.then20:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  %mutex.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  tail call void @device_release_driver(ptr noundef %dev17) #5
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  br label %if.end26

if.end25.critedge:                                ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @device_release_driver(ptr noundef %dev17) #5
  br label %if.end26

if.end26:                                         ; preds = %if.end25.critedge, %if.then20, %out.if.end26_crit_edge
  tail call void @pci_dev_put(ptr noundef %3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @p54_free_common(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p54p_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %map = getelementptr inbounds %struct.p54p_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map, align 4
  %int_ident = getelementptr inbounds %struct.p54p_csr, ptr %3, i32 0, i32 2
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %int_ident) #5, !srcloc !109
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp = icmp eq i32 %4, -1
  br i1 %cmp, label %entry.out_crit_edge, label %if.end, !prof !121

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map, align 4
  %int_ack = getelementptr inbounds %struct.p54p_csr, ptr %6, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_ack, i32 %4) #5, !srcloc !108
  %7 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map, align 4
  %int_enable = getelementptr inbounds %struct.p54p_csr, ptr %8, i32 0, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %int_enable) #5, !srcloc !109
  %and = and i32 %9, %4
  %and6 = and i32 %and, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end
  %state.i = getelementptr inbounds %struct.p54p_priv, ptr %1, i32 0, i32 3, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then8.out_crit_edge

if.then8.out_crit_edge:                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  %tasklet = getelementptr inbounds %struct.p54p_priv, ptr %1, i32 0, i32 3
  tail call void @__tasklet_schedule(ptr noundef %tasklet) #5
  br label %out

if.else:                                          ; preds = %if.end
  %and9 = and i32 %and, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.else.out_crit_edge, label %if.then11

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %boot_comp = getelementptr inbounds %struct.p54p_priv, ptr %1, i32 0, i32 16
  tail call void @complete(ptr noundef %boot_comp) #5
  br label %out

out:                                              ; preds = %if.then11, %if.else.out_crit_edge, %if.then.i, %if.then8.out_crit_edge, %entry.out_crit_edge
  %reg.0 = phi i32 [ -1, %entry.out_crit_edge ], [ %and, %if.then11 ], [ %and, %if.else.out_crit_edge ], [ %and, %if.then8.out_crit_edge ], [ %and, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reg.0)
  %tobool14.not = icmp ne i32 %reg.0, 0
  %cond = zext i1 %tobool14.not to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @p54p_refill_rx_ring(ptr nocapture noundef readonly %dev, i32 noundef %ring_index, ptr nocapture noundef %ring, i32 noundef %ring_limit, ptr nocapture noundef writeonly %rx_buf, i32 noundef %index) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %ring_control2 = getelementptr inbounds %struct.p54p_priv, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %ring_control2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring_control2, align 8
  %arrayidx = getelementptr [4 x i32], ptr %3, i32 0, i32 %ring_index
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %arrayidx, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %sub.neg = add i32 %index, %ring_limit
  %sub3 = sub i32 %sub.neg, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub3)
  %cmp79 = icmp ugt i32 %sub3, 1
  br i1 %cmp79, label %while.body.lr.ph, label %entry.do.body36_crit_edge

entry.do.body36_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body36

while.body.lr.ph:                                 ; preds = %entry
  %rx_mtu = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 11
  %pdev = getelementptr inbounds %struct.p54p_priv, ptr %1, i32 0, i32 1
  %7 = add i32 %sub.neg, -1
  br label %while.body

while.body:                                       ; preds = %cleanup33.while.body_crit_edge, %while.body.lr.ph
  %dec83.in = phi i32 [ %sub3, %while.body.lr.ph ], [ %dec83, %cleanup33.while.body_crit_edge ]
  %.pn = phi i32 [ %6, %while.body.lr.ph ], [ %inc, %cleanup33.while.body_crit_edge ]
  %idx.080 = phi i32 [ %6, %while.body.lr.ph ], [ %inc31, %cleanup33.while.body_crit_edge ]
  %i.082 = urem i32 %.pn, %ring_limit
  %dec83 = add i32 %dec83.in, -1
  %arrayidx4 = getelementptr %struct.p54p_desc, ptr %ring, i32 %i.082
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.then, label %while.body.cleanup33_crit_edge

while.body.cleanup33_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup33

if.then:                                          ; preds = %while.body
  %10 = ptrtoint ptr %rx_mtu to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %rx_mtu, align 4
  %conv = zext i16 %11 to i32
  %add = add nuw nsw i32 %conv, 32
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add, i32 noundef 2592) #5
  %tobool5.not = icmp eq ptr %call.i.i, null
  br i1 %tobool5.not, label %if.then.do.body36_crit_edge, label %if.end

if.then.do.body36_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body36

if.end:                                           ; preds = %if.then
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 8
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %14 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i, align 8
  %16 = ptrtoint ptr %rx_mtu to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %rx_mtu, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %15) #5
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !118

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev7) #5
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44, i32 3
  %18 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev7, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %21, %if.end.i.i ], [ %19, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.37, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #5
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv11 = zext i16 %17 to i32
  %add12 = add nuw nsw i32 %conv11, 32
  tail call void @debug_dma_map_single(ptr noundef %dev7, ptr noundef %15, i32 noundef %add12) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %22 = load ptr, ptr @mem_map, align 4
  %23 = ptrtoint ptr %15 to i32
  %sub.i = add i32 %23, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %22, i32 %shr.i
  %and.i = and i32 %23, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev7, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %add12, i32 noundef 2, i32 noundef 0) #5
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %24 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev, align 8
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev15, i32 noundef %retval.0.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %if.then18, label %cleanup

if.then18:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i, i32 noundef 1) #5
  %26 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev, align 8
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.34) #8
  br label %do.body36

cleanup:                                          ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #7
  %28 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i)
  %29 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %28, ptr %arrayidx4, align 1
  %device_addr = getelementptr %struct.p54p_desc, ptr %ring, i32 %i.082, i32 1
  %30 = ptrtoint ptr %device_addr to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 0, ptr %device_addr, align 1
  %31 = ptrtoint ptr %rx_mtu to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %rx_mtu, align 4
  %add26 = add i16 %32, 32
  %33 = tail call i16 @llvm.bswap.i16(i16 %add26)
  %len = getelementptr %struct.p54p_desc, ptr %ring, i32 %i.082, i32 2
  %34 = ptrtoint ptr %len to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 %33, ptr %len, align 1
  %flags = getelementptr %struct.p54p_desc, ptr %ring, i32 %i.082, i32 3
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 0, ptr %flags, align 1
  %arrayidx28 = getelementptr ptr, ptr %rx_buf, i32 %i.082
  %36 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i.i, ptr %arrayidx28, align 4
  br label %cleanup33

cleanup33:                                        ; preds = %cleanup, %while.body.cleanup33_crit_edge
  %inc = add nuw i32 %i.082, 1
  %inc31 = add i32 %idx.080, 1
  %cmp = icmp ugt i32 %dec83, 1
  br i1 %cmp, label %cleanup33.while.body_crit_edge, label %cleanup33.do.body36_crit_edge

cleanup33.do.body36_crit_edge:                    ; preds = %cleanup33
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body36

cleanup33.while.body_crit_edge:                   ; preds = %cleanup33
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

do.body36:                                        ; preds = %cleanup33.do.body36_crit_edge, %if.then18, %if.then.do.body36_crit_edge, %entry.do.body36_crit_edge
  %idx.076 = phi i32 [ %idx.080, %if.then18 ], [ %6, %entry.do.body36_crit_edge ], [ %7, %cleanup33.do.body36_crit_edge ], [ %idx.080, %if.then.do.body36_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !122
  tail call void @arm_heavy_mb() #5
  %37 = tail call i32 @llvm.bswap.i32(i32 %idx.076)
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %37, ptr %arrayidx, align 1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p54_parse_firmware(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @p54_free_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @p54p_check_rx_ring(ptr noundef %dev, ptr nocapture noundef %index, i32 noundef %ring_index, ptr nocapture noundef %ring, i32 noundef %ring_limit, ptr nocapture noundef %rx_buf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %ring_control2 = getelementptr inbounds %struct.p54p_priv, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %ring_control2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring_control2, align 8
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.p54p_ring_control, ptr %3, i32 0, i32 1, i32 %ring_index
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %arrayidx, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %index, align 4
  %rem3 = urem i32 %8, %ring_limit
  %i.095 = urem i32 %5, %ring_limit
  call void @__sanitizer_cov_trace_cmp4(i32 %i.095, i32 %rem3)
  %cmp.not96 = icmp eq i32 %i.095, %rem3
  br i1 %cmp.not96, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %rx_mtu = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 11
  %pdev = getelementptr inbounds %struct.p54p_priv, ptr %1, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %i.097 = phi i32 [ %i.095, %while.body.lr.ph ], [ %i.0, %cleanup.while.body_crit_edge ]
  %arrayidx4 = getelementptr %struct.p54p_desc, ptr %ring, i32 %i.097
  %len5 = getelementptr %struct.p54p_desc, ptr %ring, i32 %i.097, i32 2
  %arrayidx6 = getelementptr ptr, ptr %rx_buf, i32 %i.097
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx6, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %while.body.cleanup_crit_edge, label %if.end

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %while.body
  %12 = ptrtoint ptr %len5 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %len5, align 1
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %15 = ptrtoint ptr %rx_mtu to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %rx_mtu, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %16)
  %cmp9 = icmp ugt i16 %14, %16
  br i1 %cmp9, label %if.then13, label %if.end.if.end20_crit_edge, !prof !121

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then13:                                        ; preds = %if.end
  %call = tail call i32 @net_ratelimit() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool14.not = icmp eq i32 %call, 0
  br i1 %tobool14.not, label %if.then13.if.end17_crit_edge, label %do.end

if.then13.if.end17_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

do.end:                                           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 8
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.40) #8
  br label %if.end17

if.end17:                                         ; preds = %do.end, %if.then13.if.end17_crit_edge
  %19 = ptrtoint ptr %rx_mtu to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %rx_mtu, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end17, %if.end.if.end20_crit_edge
  %len.0 = phi i16 [ %20, %if.end17 ], [ %14, %if.end.if.end20_crit_edge ]
  %21 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %arrayidx4, align 1
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %24 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev, align 8
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %26 = ptrtoint ptr %rx_mtu to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %rx_mtu, align 4
  %conv25 = zext i16 %27 to i32
  %add = add nuw nsw i32 %conv25, 32
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev22, i32 noundef %23, i32 noundef %add, i32 noundef 2) #5
  %conv26 = zext i16 %len.0 to i32
  %call27 = tail call ptr @skb_put(ptr noundef nonnull %11, i32 noundef %conv26) #5
  %call28 = tail call i32 @p54_rx(ptr noundef %dev, ptr noundef nonnull %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev, align 8
  %dev32 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %30 = ptrtoint ptr %rx_mtu to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %rx_mtu, align 4
  %conv35 = zext i16 %31 to i32
  %add36 = add nuw nsw i32 %conv35, 32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev32, i32 noundef %23, i32 noundef %add36, i32 noundef 2, i32 noundef 0) #5
  %32 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %arrayidx6, align 4
  %33 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 0, ptr %arrayidx4, align 1
  br label %cleanup

if.else:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @skb_trim(ptr noundef nonnull %11, i32 noundef 0) #5
  %34 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev, align 8
  %dev40 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %36 = ptrtoint ptr %rx_mtu to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %rx_mtu, align 4
  %conv43 = zext i16 %37 to i32
  %add44 = add nuw nsw i32 %conv43, 32
  tail call void @dma_sync_single_for_device(ptr noundef %dev40, i32 noundef %23, i32 noundef %add44, i32 noundef 2) #5
  %38 = ptrtoint ptr %rx_mtu to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %rx_mtu, align 4
  %add48 = add i16 %39, 32
  %40 = tail call i16 @llvm.bswap.i16(i16 %add48)
  %41 = ptrtoint ptr %len5 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 %40, ptr %len5, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then30, %while.body.cleanup_crit_edge
  %inc52.pn = add nuw i32 %i.097, 1
  %i.0 = urem i32 %inc52.pn, %ring_limit
  %cmp.not = icmp eq i32 %i.0, %rem3
  br i1 %cmp.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %entry.while.end_crit_edge
  %42 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %index, align 4
  tail call fastcc void @p54p_refill_rx_ring(ptr noundef %dev, i32 noundef %ring_index, ptr noundef %ring, i32 noundef %ring_limit, ptr noundef %rx_buf, i32 noundef %43)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p54_rx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p54_read_eeprom(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p54_register_common(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_release_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @p54_unregister_common(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p54p_suspend(ptr noundef %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %device, i32 -136
  %call = tail call i32 @pci_save_state(ptr noundef %add.ptr) #5
  %call1 = tail call i32 @pci_set_power_state(ptr noundef %add.ptr, i32 noundef 3) #5
  tail call void @pci_disable_device(ptr noundef %add.ptr) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p54p_resume(ptr noundef %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %device, i32 -136
  %call = tail call i32 @pci_reenable_device(ptr noundef %add.ptr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 @pci_set_power_state(ptr noundef %add.ptr, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_reenable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !15, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !56, !58, !59, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !97}
!llvm.module.flags = !{!99, !100, !101, !102, !103, !104, !105, !106}
!llvm.ident = !{!107}

!0 = !{ptr @__UNIQUE_ID_author350, !1, !"__UNIQUE_ID_author350", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intersil/p54/p54pci.c", i32 26, i32 1}
!2 = !{ptr @__UNIQUE_ID_description351, !3, !"__UNIQUE_ID_description351", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intersil/p54/p54pci.c", i32 27, i32 1}
!4 = !{ptr @__UNIQUE_ID_file352, !5, !"__UNIQUE_ID_file352", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/intersil/p54/p54pci.c", i32 28, i32 1}
!6 = !{ptr @__UNIQUE_ID_license353, !5, !"__UNIQUE_ID_license353", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias354, !8, !"__UNIQUE_ID_alias354", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/intersil/p54/p54pci.c", i32 29, i32 1}
!9 = !{ptr @__UNIQUE_ID_firmware355, !10, !"__UNIQUE_ID_firmware355", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/intersil/p54/p54pci.c", i32 30, i32 1}
!11 = !{ptr @__initcall__kmod_p54pci__358_708_p54p_driver_init6, !12, !"__initcall__kmod_p54pci__358_708_p54p_driver_init6", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/intersil/p54/p54pci.c", i32 708, i32 1}
!13 = !{ptr @__exitcall_p54p_driver_exit, !12, !"__exitcall_p54p_driver_exit", i1 false, i1 false}
!14 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @p54p_driver, !16, !"p54p_driver", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/intersil/p54/p54pci.c", i32 700, i32 26}
!17 = !{ptr @p54p_table, !18, !"p54p_table", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/intersil/p54/p54pci.c", i32 32, i32 35}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/intersil/p54/p54pci.c", i32 559, i32 3}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @p54p_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @p54p_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/intersil/p54/p54pci.c", i32 566, i32 3}
!29 = !{ptr @p54p_probe._entry.6, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @p54p_probe._entry_ptr.8, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/intersil/p54/p54pci.c", i32 573, i32 3}
!33 = !{ptr @p54p_probe._entry.9, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @p54p_probe._entry_ptr.11, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/intersil/p54/p54pci.c", i32 581, i32 3}
!37 = !{ptr @p54p_probe._entry.12, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @p54p_probe._entry_ptr.14, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/intersil/p54/p54pci.c", i32 593, i32 3}
!41 = !{ptr @p54p_probe._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @p54p_probe._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/intersil/p54/p54pci.c", i32 607, i32 3}
!45 = !{ptr @p54p_probe._entry.18, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @p54p_probe._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/intersil/p54/p54pci.c", i32 616, i32 3}
!49 = !{ptr @p54p_probe._entry.21, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @p54p_probe._entry_ptr.23, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @p54p_probe.__key, !52, !"__key", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/intersil/p54/p54pci.c", i32 624, i32 2}
!53 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/intersil/p54/p54pci.c", i32 627, i32 48}
!56 = !{ptr @init_completion.__key, !57, !"__key", i1 false, i1 false}
!57 = !{!"../include/linux/completion.h", i32 87, i32 2}
!58 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/intersil/p54/p54pci.c", i32 443, i32 3}
!61 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @p54p_open._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @p54p_open._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/intersil/p54/p54pci.c", i32 478, i32 3}
!66 = !{ptr @p54p_open._entry.29, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @p54p_open._entry_ptr.31, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/intersil/p54/p54pci.c", i32 84, i32 3}
!70 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @p54p_upload_firmware._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @p54p_upload_firmware._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/intersil/p54/p54pci.c", i32 163, i32 5}
!75 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @p54p_refill_rx_ring._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @p54p_refill_rx_ring._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = distinct !{null, !79, !"__already_done", i1 false, i1 false}
!79 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!80 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/intersil/p54/p54pci.c", i32 348, i32 3}
!84 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @p54p_tx._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @p54p_tx._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/intersil/p54/p54pci.c", i32 212, i32 5}
!89 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @p54p_check_rx_ring._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @p54p_check_rx_ring._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/intersil/p54/p54pci.c", i32 505, i32 3}
!94 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @p54p_firmware_step2._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @p54p_firmware_step2._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @p54pci_pm_ops, !98, !"p54pci_pm_ops", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/intersil/p54/p54pci.c", i32 693, i32 8}
!99 = !{i32 1, !"wchar_size", i32 2}
!100 = !{i32 1, !"min_enum_size", i32 4}
!101 = !{i32 8, !"branch-target-enforcement", i32 0}
!102 = !{i32 8, !"sign-return-address", i32 0}
!103 = !{i32 8, !"sign-return-address-all", i32 0}
!104 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!105 = !{i32 7, !"uwtable", i32 1}
!106 = !{i32 7, !"frame-pointer", i32 2}
!107 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!108 = !{i64 4994925}
!109 = !{i64 4995343}
!110 = !{i64 2157710379}
!111 = !{i64 2157711276}
!112 = !{i64 2157717993}
!113 = !{i64 2157718890}
!114 = !{i64 2157742433}
!115 = !{i64 2157743445}
!116 = !{i64 2157746492}
!117 = !{i64 2157747498}
!118 = !{!"branch_weights", i32 2000, i32 1}
!119 = !{i64 2157734219}
!120 = !{i64 2157730289}
!121 = !{!"branch_weights", i32 1, i32 2000}
!122 = !{i64 2157723033}
