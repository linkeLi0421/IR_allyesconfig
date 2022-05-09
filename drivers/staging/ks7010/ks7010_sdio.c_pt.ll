; ModuleID = '/llk/IR_all_yes/drivers/staging/ks7010/ks7010_sdio.c_pt.bc'
source_filename = "../drivers/staging/ks7010/ks7010_sdio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sdio_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdio_device_id = type { i8, i16, i16, i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ks_wlan_private = type { ptr, ptr, %struct.delayed_work, %struct.tasklet_struct, ptr, %struct.net_device_stats, %struct.iw_statistics, %struct.completion, %struct.tx_device, %struct.rx_device, %struct.sme_info, ptr, i32, %struct.tasklet_struct, %struct.work_struct, i32, [6 x i8], %struct.local_aplist, %struct.local_ap, %struct.power_save_status, %struct.sleep_status, %struct.wpa_status, %struct.pmk_list, %struct.ks_wlan_parameter, i8, [33 x i8], %struct.spinlock, %struct.spinlock, %struct.wait_queue_head, i32, i8, %struct.atomic_t, %struct.atomic_t, i32, [20 x ptr], [20 x i32], [129 x i8], i32, i8, i32, ptr, i32, i32, i32, i8, [33 x i8], %struct.local_gain, %struct.wps_status, i8, i8, %struct.local_eeprom_sum, i8, %struct.hostt, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iw_statistics = type { i16, %struct.iw_quality, %struct.iw_discarded, %struct.iw_missed }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.iw_discarded = type { i32, i32, i32, i32, i32 }
%struct.iw_missed = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.25 }
%union.anon.25 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.tx_device = type { [1024 x %struct.tx_device_buffer], i32, i32, %struct.spinlock }
%struct.tx_device_buffer = type { ptr, i32, ptr, ptr }
%struct.rx_device = type { [32 x %struct.rx_device_buffer], i32, i32, %struct.spinlock }
%struct.rx_device_buffer = type { [2352 x i8], i32 }
%struct.sme_info = type { i32, [128 x i32], i32, i32, %struct.spinlock, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.0, i32 }
%union.anon.0 = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.local_aplist = type { i32, [32 x %struct.local_ap] }
%struct.local_ap = type { [6 x i8], i8, i8, %struct.anon.115, %struct.anon.116, i16, i8, i8, %struct.rsn_ie, %struct.rsn_ie, %struct.wps_ie }
%struct.anon.115 = type { i8, [32 x i8], i8 }
%struct.anon.116 = type { i8, [16 x i8], i8 }
%struct.rsn_ie = type { i8, i8, [64 x i8] }
%struct.wps_ie = type { i8, i8, [255 x i8] }
%struct.power_save_status = type { %struct.atomic_t, %struct.completion, %struct.atomic_t, %struct.atomic_t }
%struct.sleep_status = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.wpa_status = type { i32, i8, i32, i32, i32, i32, i32, i32, [4 x %struct.wpa_key], %struct.scan_ext, %struct.mic_failure }
%struct.wpa_key = type { i32, [8 x i8], [8 x i8], %struct.sockaddr, i16, i16, [64 x i8], [8 x i8], [8 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.scan_ext = type { i32, [33 x i8] }
%struct.mic_failure = type { i16, i16, i32, i32 }
%struct.pmk_list = type { i16, %struct.list_head, [8 x %struct.pmk] }
%struct.pmk = type { %struct.list_head, [6 x i8], [16 x i8] }
%struct.ks_wlan_parameter = type { i8, i8, i8, %struct.anon.117, [6 x i8], %struct.anon.118, i8, i8, i32, i32, i32, i32, i32, i32, [4 x %struct.anon.119], i16, i16, i16, i16 }
%struct.anon.117 = type { i8, [16 x i8] }
%struct.anon.118 = type { i8, [33 x i8] }
%struct.anon.119 = type { i8, [27 x i8] }
%struct.spinlock = type { %union.anon.24 }
%union.anon.24 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.local_gain = type { i8, i8, i8, i8 }
%struct.wps_status = type { i32, i32, [255 x i8] }
%struct.local_eeprom_sum = type { i8, i8 }
%struct.hostt = type { [128 x i32], i32, i32 }
%struct.hostif_hdr = type { i16, i16 }
%struct.sdio_func = type { ptr, %struct.device, ptr, i32, i8, i16, i16, i32, i32, i32, i32, ptr, i8, i8, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mmc_card = type { ptr, %struct.device, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i8, [4 x i32], [4 x i32], [2 x i32], [16 x i32], %struct.mmc_cid, %struct.mmc_csd, %struct.mmc_ext_csd, %struct.sd_scr, %struct.sd_ssr, %struct.sd_switch_caps, %struct.sd_ext_reg, %struct.sd_ext_reg, i32, %struct.atomic_t, %struct.sdio_cccr, %struct.sdio_cis, [7 x ptr], ptr, i8, i8, i32, ptr, ptr, i32, i32, i32, ptr, [7 x %struct.mmc_part], i32, ptr }
%struct.mmc_cid = type { i32, [8 x i8], i8, i32, i16, i16, i8, i8, i8 }
%struct.mmc_csd = type { i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.mmc_ext_csd = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i8, i8, i32, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, i32 }
%struct.sd_scr = type { i8, i8, i8, i8, i8, i8 }
%struct.sd_ssr = type { i32, i32, i32 }
%struct.sd_switch_caps = type { i32, i32, i32, i32, i32 }
%struct.sd_ext_reg = type { i8, i8, i16, i8, i8, i8 }
%struct.sdio_cccr = type { i32, i32, i8 }
%struct.sdio_cis = type { i16, i16, i16, i32 }
%struct.mmc_part = type { i64, i32, [20 x i8], i8, i32 }
%struct.ks_sdio_card = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.114, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.114 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.firmware = type { i32, ptr, ptr }

@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"write WAKEUP_REG\0A\00", [46 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unknown event=%04X\0A\00", [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_ks7010__349_1141_ks7010_sdio_driver_init6 = internal global ptr @ks7010_sdio_driver_init, section ".initcall6.init", align 4
@ks7010_sdio_driver = internal global { %struct.sdio_driver, [36 x i8] } { %struct.sdio_driver { ptr @.str.3, ptr @ks7010_sdio_ids, ptr @ks7010_sdio_probe, ptr @ks7010_sdio_remove, %struct.device_driver zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ks7010_sdio_driver_exit = internal global ptr @ks7010_sdio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author350 = internal constant [55 x i8] c"ks7010.author=Sang Engineering, Qi-Hardware, KeyStream\00", section ".modinfo", align 1
@__UNIQUE_ID_description351 = internal constant [64 x i8] c"ks7010.description=Driver for KeyStream KS7010 based SDIO cards\00", section ".modinfo", align 1
@__UNIQUE_ID_file352 = internal constant [42 x i8] c"ks7010.file=drivers/staging/ks7010/ks7010\00", section ".modinfo", align 1
@__UNIQUE_ID_license353 = internal constant [22 x i8] c"ks7010.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware354 = internal constant [29 x i8] c"ks7010.firmware=ks7010sd.rom\00", section ".modinfo", align 1
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tx buffer overflow\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ks7010_sdio\00", [20 x i8] zeroinitializer }, align 32
@ks7010_sdio_ids = internal constant { [3 x %struct.sdio_device_id], [60 x i8] } { [3 x %struct.sdio_device_id] [%struct.sdio_device_id { i8 -1, i16 91, i16 30992, i32 0 }, %struct.sdio_device_id { i8 -1, i16 35, i16 30992, i32 0 }, %struct.sdio_device_id zeroinitializer], [60 x i8] zeroinitializer }, align 32
@ks7010_sdio_probe.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, i8 0, i8 -13, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ks7010\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ks7010_sdio_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/staging/ks7010/ks7010_sdio.c\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"multi_block=%d sdio_set_block_size()=%d %d\0A\00", [52 x i8] zeroinitializer }, align 32
@ks7010_sdio_probe.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, i8 0, i8 -9, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"class = 0x%X, vendor = 0x%X, device = 0x%X\0A\00", [52 x i8] zeroinitializer }, align 32
@ks7010_sdio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.6, i32 993, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unable to alloc new net device\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ks7010_sdio_probe._entry_ptr = internal global ptr @ks7010_sdio_probe._entry, section ".printk_index", align 4
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wlan%d\00", [25 x i8] zeroinitializer }, align 32
@ks7010_sdio_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.6, i32 999, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Couldn't get name!\0A\00", [44 x i8] zeroinitializer }, align 32
@ks7010_sdio_probe._entry_ptr.15 = internal global ptr @ks7010_sdio_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"firmware load failed !! ret = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"wq\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"create_workqueue failed !!\0A\00", [36 x i8] zeroinitializer }, align 32
@ks7010_sdio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&(&priv->rw_dwork)->work)\00", [52 x i8] zeroinitializer }, align 32
@ks7010_sdio_probe.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&(&priv->rw_dwork)->timer\00", [38 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"read INT_PENDING_REG\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"read GCR_B_REG\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"read WSTATUS_RSIZE_REG\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rx buffer overflow\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"write READ_STATUS_REG\0A\00", [41 x i8] zeroinitializer }, align 32
@ks_wlan_hw_rx.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.27, ptr @.str.6, ptr @.str.28, i8 0, i8 117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ks_wlan_hw_rx\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IS_HIF_CONF true !!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"write_to_device error !!(%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"write DATA_WINDOW\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"write WRITE_STATUS_REG\0A\00", [40 x i8] zeroinitializer }, align 32
@trx_device_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&priv->tx_dev.tx_dev_lock\00", [38 x i8] zeroinitializer }, align 32
@trx_device_init.__key.33 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&priv->rx_dev.rx_dev_lock\00", [38 x i8] zeroinitializer }, align 32
@ks7010_upload_firmware.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.35, ptr @.str.6, ptr @.str.36, i8 0, i8 -65, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ks7010_upload_firmware\00", [41 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"MAC firmware running ...\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ks7010sd.rom\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"firmware can't start\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"data compare error (%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"write INT_PENDING_REG\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"write INT_ENABLE_REG\0A\00", [42 x i8] zeroinitializer }, align 32
@ks7010_rw_function.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.42, ptr @.str.6, ptr @.str.43, i8 0, i8 121, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ks7010_rw_function\00", [45 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wait after DOZE\0A\00", [47 x i8] zeroinitializer }, align 32
@ks7010_rw_function.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.42, ptr @.str.6, ptr @.str.44, i8 0, i8 123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wait after WAKEUP\0A\00", [45 x i8] zeroinitializer }, align 32
@ks7010_rw_function._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.42, ptr @.str.6, i32 495, ptr @.str.46, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wake: %lu %lu\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ks7010_rw_function._entry_ptr = internal global ptr @ks7010_rw_function._entry, section ".printk_index", align 4
@.str.47 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"read WSTATUS_RSIZE_REG psstatus=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"write GCR_B_REG\0A\00", [47 x i8] zeroinitializer }, align 32
@_ks_wlan_hw_power_save.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.49, ptr @.str.6, ptr @.str.50, i8 0, i8 61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"_ks_wlan_hw_power_save\00", [41 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [107 x i8], [53 x i8] } { [107 x i8] c"STATUS:\0A- psstatus.status = %d\0A- psstatus.confirm_wait = %d\0A- psstatus.snooze_guard = %d\0A- txq_count = %d\0A\00", [53 x i8] zeroinitializer }, align 32
@ks7010_card_init.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.51, ptr @.str.6, ptr @.str.52, i8 0, i8 -48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ks7010_card_init\00", [47 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wait time out!! SME_START\0A\00", [37 x i8] zeroinitializer }, align 32
@ks7010_card_init.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.51, ptr @.str.6, ptr @.str.53, i8 0, i8 -46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"wait time out!! wireless parameter set\0A\00", [56 x i8] zeroinitializer }, align 32
@ks7010_card_init.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.51, ptr @.str.6, ptr @.str.54, i8 0, i8 -45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DEVICE READY!!\0A\00", [16 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 6, i64 12, i64 17]
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 211, i32 30 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 390, i32 29 }
@___asan_gen_.62 = private unnamed_addr constant [19 x i8] c"ks7010_sdio_driver\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 1134, i32 27 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 298, i32 29 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 1135, i32 10 }
@___asan_gen_.71 = private unnamed_addr constant [16 x i8] c"ks7010_sdio_ids\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 1127, i32 36 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 972, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 987, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 993, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 997, i32 31 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 999, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 1013, i32 7 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 1021, i32 29 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 1023, i32 29 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 1027, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 556, i32 29 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 569, i32 30 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 585, i32 30 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 432, i32 29 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 452, i32 30 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 468, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 364, i32 8 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 337, i32 29 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 343, i32 29 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 618, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 619, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 767, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 772, i32 36 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 792, i32 29 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 684, i32 29 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 914, i32 29 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 922, i32 29 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 486, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 493, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 494, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 524, i32 29 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 171, i32 30 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 238, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 833, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 843, i32 3 }
@___asan_gen_.234 = private constant [40 x i8] c"../drivers/staging/ks7010/ks7010_sdio.c\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 847, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.239 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.240 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 87, i32 2 }
@llvm.compiler.used = appending global [73 x ptr] [ptr @__UNIQUE_ID_author350, ptr @__UNIQUE_ID_description351, ptr @__UNIQUE_ID_file352, ptr @__UNIQUE_ID_firmware354, ptr @__UNIQUE_ID_license353, ptr @__exitcall_ks7010_sdio_driver_exit, ptr @__initcall__kmod_ks7010__349_1141_ks7010_sdio_driver_init6, ptr @ks7010_rw_function._entry, ptr @ks7010_rw_function._entry_ptr, ptr @ks7010_sdio_driver_exit, ptr @ks7010_sdio_probe._entry, ptr @ks7010_sdio_probe._entry.13, ptr @ks7010_sdio_probe._entry_ptr, ptr @ks7010_sdio_probe._entry_ptr.15, ptr @.str, ptr @.str.1, ptr @ks7010_sdio_driver, ptr @.str.2, ptr @.str.3, ptr @ks7010_sdio_ids, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @ks7010_sdio_probe.__key, ptr @.str.19, ptr @ks7010_sdio_probe.__key.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @trx_device_init.__key, ptr @.str.32, ptr @trx_device_init.__key.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @init_completion.__key, ptr @.str.55], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks7010_sdio_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks7010_sdio_ids to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks7010_sdio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks7010_sdio_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks7010_sdio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks7010_sdio_probe.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trx_device_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trx_device_init.__key.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks7010_rw_function._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 107, i32 160, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ks_wlan_hw_wakeup_request(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %ret.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %psstatus = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 19
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %psstatus, i32 noundef 4) #10
  %0 = ptrtoint ptr %psstatus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %psstatus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i) #10
  %6 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %ret.i, align 4, !annotation !140
  call void @sdio_writeb(ptr noundef %5, i8 noundef zeroext 90, i32 noundef 32792, ptr noundef nonnull %ret.i) #10
  %7 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ret.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %net_dev = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %9 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net_dev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %10, ptr noundef nonnull @.str) #13
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %last_wakeup = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 54
  %12 = ptrtoint ptr %last_wakeup to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %last_wakeup, align 4
  %wakeup_count = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 55
  %13 = ptrtoint ptr %wakeup_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %wakeup_count, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %wakeup_count, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry.if.end3_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ks_wlan_hw_power_save(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wq = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wq, align 4
  %rw_dwork = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 2
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %rw_dwork, i32 noundef 1) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ks_wlan_hw_tx(ptr noundef %priv, ptr noundef %p, i32 noundef %size, ptr noundef %complete_handler, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %event = getelementptr inbounds %struct.hostif_hdr, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %event to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %event, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %3 = add i16 %2, 8175
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16, i16 %3)
  %4 = icmp ult i16 %3, -16
  br i1 %4, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %net_dev = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %5 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net_dev, align 4
  %conv7 = zext i16 %1 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %6, ptr noundef nonnull @.str.1, i32 noundef %conv7) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i16 %2 to i32
  %hostt = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 52
  %qtail = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 52, i32 2
  %7 = ptrtoint ptr %qtail to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %qtail, align 4
  %arrayidx = getelementptr [128 x i32], ptr %hostt, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %arrayidx, align 4
  %10 = load i32, ptr %qtail, align 4
  %add = add i32 %10, 1
  %rem = and i32 %add, 127
  store i32 %rem, ptr %qtail, align 4
  %tx_dev_lock = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 8, i32 3
  tail call void @_raw_spin_lock(ptr noundef %tx_dev_lock) #10
  %dev_state.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 39
  %11 = ptrtoint ptr %dev_state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dev_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp.i = icmp slt i32 %12, 2
  br i1 %cmp.i, label %if.end.err_complete.i_crit_edge, label %if.end.i

if.end.err_complete.i_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_complete.i

if.end.i:                                         ; preds = %if.end
  %qtail.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 8, i32 2
  %13 = ptrtoint ptr %qtail.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %qtail.i.i, align 4
  %sub.i.i = sub i32 1024, %14
  %qhead.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 8, i32 1
  %15 = ptrtoint ptr %qhead.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qhead.i.i, align 4
  %add.i.i = add i32 %16, %sub.i.i
  %and.i.i = and i32 %add.i.i, 1023
  %17 = tail call i32 @llvm.smin.i32(i32 %and.i.i, i32 %sub.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1022, i32 %17)
  %cmp1.i = icmp ugt i32 %17, 1022
  br i1 %cmp1.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %net_dev.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %18 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net_dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %19, ptr noundef nonnull @.str.2) #13
  br label %err_complete.i

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %tx_dev.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 8
  %arrayidx.i = getelementptr [1024 x %struct.tx_device_buffer], ptr %tx_dev.i, i32 0, i32 %14
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %p, ptr %arrayidx.i, align 4
  %size5.i = getelementptr [1024 x %struct.tx_device_buffer], ptr %tx_dev.i, i32 0, i32 %14, i32 1
  %21 = ptrtoint ptr %size5.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %size, ptr %size5.i, align 4
  %complete_handler6.i = getelementptr [1024 x %struct.tx_device_buffer], ptr %tx_dev.i, i32 0, i32 %14, i32 2
  %22 = ptrtoint ptr %complete_handler6.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %complete_handler, ptr %complete_handler6.i, align 4
  %skb7.i = getelementptr [1024 x %struct.tx_device_buffer], ptr %tx_dev.i, i32 0, i32 %14, i32 3
  %23 = ptrtoint ptr %skb7.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %skb, ptr %skb7.i, align 4
  %24 = ptrtoint ptr %qtail.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %qtail.i.i, align 4
  %add.i25.i = add i32 %25, 1
  %rem.i.i = and i32 %add.i25.i, 1023
  store i32 %rem.i.i, ptr %qtail.i.i, align 4
  br label %enqueue_txdev.exit

err_complete.i:                                   ; preds = %if.then2.i, %if.end.err_complete.i_crit_edge
  %ret.0.i = phi i32 [ -75, %if.then2.i ], [ -1, %if.end.err_complete.i_crit_edge ]
  tail call void @kfree(ptr noundef %p) #10
  %tobool.not.i = icmp eq ptr %complete_handler, null
  br i1 %tobool.not.i, label %err_complete.i.enqueue_txdev.exit_crit_edge, label %if.then8.i

err_complete.i.enqueue_txdev.exit_crit_edge:      ; preds = %err_complete.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %enqueue_txdev.exit

if.then8.i:                                       ; preds = %err_complete.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %complete_handler(ptr noundef %priv, ptr noundef %skb) #10
  br label %enqueue_txdev.exit

enqueue_txdev.exit:                               ; preds = %if.then8.i, %err_complete.i.enqueue_txdev.exit_crit_edge, %if.end3.i
  %retval.0.i = phi i32 [ 0, %if.end3.i ], [ %ret.0.i, %if.then8.i ], [ %ret.0.i, %err_complete.i.enqueue_txdev.exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %tx_dev_lock) #10
  %qtail.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 8, i32 2
  %26 = ptrtoint ptr %qtail.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %qtail.i, align 4
  %qhead.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 8, i32 1
  %28 = ptrtoint ptr %qhead.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %qhead.i, align 4
  %add.neg.i = xor i32 %29, -1
  %sub.i = add i32 %27, %add.neg.i
  %and.i = and i32 %sub.i, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i36.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i36.not, label %enqueue_txdev.exit.cleanup_crit_edge, label %if.then18

enqueue_txdev.exit.cleanup_crit_edge:             ; preds = %enqueue_txdev.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then18:                                        ; preds = %enqueue_txdev.exit
  call void @__sanitizer_cov_trace_pc() #12
  %wq = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 1
  %30 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wq, align 4
  %rw_dwork = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 2
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %31, ptr noundef %rw_dwork, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %enqueue_txdev.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %retval.0.i, %if.then18 ], [ %retval.0.i, %enqueue_txdev.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ks7010_sdio_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sdio_register_driver(ptr noundef nonnull @ks7010_sdio_driver) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ks7010_sdio_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @sdio_unregister_driver(ptr noundef nonnull @ks7010_sdio_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_unregister_driver(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_writeb(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_register_driver(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks7010_sdio_probe(ptr noundef %func, ptr nocapture noundef readnone %device) #0 align 64 {
entry:
  %ret.i13.i = alloca i32, align 4
  %ret.i.i = alloca i32, align 4
  %ret.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 8) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %func, ptr %call7.i.i, align 8
  tail call void @sdio_claim_host(ptr noundef %func) #10
  %call2 = tail call i32 @sdio_set_block_size(ptr noundef %func, i32 noundef 512) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.body, label %if.end.err_free_card_crit_edge

if.end.err_free_card_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_card

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks7010_sdio_probe.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks7010_sdio_probe, %if.then10)) #10
          to label %do.end [label %if.then10], !srcloc !141

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call7.i.i, align 8
  %dev = getelementptr inbounds %struct.sdio_func, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %func, align 8
  %multi_block = getelementptr inbounds %struct.mmc_card, ptr %5, i32 0, i32 29, i32 2
  %6 = ptrtoint ptr %multi_block to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %multi_block, align 8
  %bf.lshr = lshr i8 %bf.load, 7
  %bf.cast = zext i8 %bf.lshr to i32
  %cur_blksize = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 8
  %7 = ptrtoint ptr %cur_blksize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cur_blksize, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ks7010_sdio_probe.__UNIQUE_ID_ddebug347, ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %bf.cast, i32 noundef %8, i32 noundef 0) #10
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %call14 = tail call i32 @sdio_enable_func(ptr noundef %func) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %do.end.err_free_card_crit_edge

do.end.err_free_card_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_card

if.end17:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i) #10
  %9 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %ret.i, align 4, !annotation !140
  call void @sdio_writeb(ptr noundef %func, i8 noundef zeroext 0, i32 noundef 32, ptr noundef nonnull %ret.i) #10
  %10 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end17.ks7010_sdio_setup_irqs.exit.thread_crit_edge

if.end17.ks7010_sdio_setup_irqs.exit.thread_crit_edge: ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %ks7010_sdio_setup_irqs.exit.thread

if.end.i:                                         ; preds = %if.end17
  call void @sdio_writeb(ptr noundef %func, i8 noundef zeroext -1, i32 noundef 36, ptr noundef nonnull %ret.i) #10
  %12 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool1.not.i = icmp eq i32 %13, 0
  br i1 %tobool1.not.i, label %ks7010_sdio_setup_irqs.exit, label %if.end.i.ks7010_sdio_setup_irqs.exit.thread_crit_edge

if.end.i.ks7010_sdio_setup_irqs.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ks7010_sdio_setup_irqs.exit.thread

ks7010_sdio_setup_irqs.exit.thread:               ; preds = %if.end.i.ks7010_sdio_setup_irqs.exit.thread_crit_edge, %if.end17.ks7010_sdio_setup_irqs.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #10
  br label %err_disable_func

ks7010_sdio_setup_irqs.exit:                      ; preds = %if.end.i
  %call.i = call i32 @sdio_claim_irq(ptr noundef %func, ptr noundef nonnull @ks_sdio_interrupt) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool19.not = icmp eq i32 %call.i, 0
  br i1 %tobool19.not, label %if.end21, label %ks7010_sdio_setup_irqs.exit.err_disable_func_crit_edge

ks7010_sdio_setup_irqs.exit.err_disable_func_crit_edge: ; preds = %ks7010_sdio_setup_irqs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_disable_func

if.end21:                                         ; preds = %ks7010_sdio_setup_irqs.exit
  call void @sdio_release_host(ptr noundef %func) #10
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 8
  %14 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks7010_sdio_probe.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks7010_sdio_probe, %if.then35)) #10
          to label %do.end43 [label %if.then35], !srcloc !141

if.then35:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call7.i.i, align 8
  %dev37 = getelementptr inbounds %struct.sdio_func, ptr %16, i32 0, i32 1
  %class = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 4
  %17 = ptrtoint ptr %class to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %class, align 8
  %conv = zext i8 %18 to i32
  %vendor = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 5
  %19 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %vendor, align 2
  %conv38 = zext i16 %20 to i32
  %device39 = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 6
  %21 = ptrtoint ptr %device39 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %device39, align 4
  %conv40 = zext i16 %22 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ks7010_sdio_probe.__UNIQUE_ID_ddebug348, ptr noundef %dev37, ptr noundef nonnull @.str.8, i32 noundef %conv, i32 noundef %conv38, i32 noundef %conv40) #10
  br label %do.end43

do.end43:                                         ; preds = %if.then35, %if.end21
  %call44 = call ptr @alloc_etherdev_mqs(i32 noundef 110324, i32 noundef 1, i32 noundef 1) #10
  %tobool45.not = icmp eq ptr %call44, null
  br i1 %tobool45.not, label %do.end49, label %if.end52

do.end49:                                         ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call7.i.i, align 8
  %dev51 = getelementptr inbounds %struct.sdio_func, ptr %24, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev51, ptr noundef nonnull @.str.9) #13
  br label %err_release_irq

if.end52:                                         ; preds = %do.end43
  %call53 = call i32 @dev_alloc_name(ptr noundef nonnull %call44, ptr noundef nonnull @.str.12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp = icmp slt i32 %call53, 0
  br i1 %cmp, label %do.end58, label %if.end61

do.end58:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call7.i.i, align 8
  %dev60 = getelementptr inbounds %struct.sdio_func, ptr %26, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev60, ptr noundef nonnull @.str.14) #13
  br label %err_free_netdev

if.end61:                                         ; preds = %if.end52
  %add.ptr.i = getelementptr i8, ptr %call44, i32 2304
  %priv63 = getelementptr inbounds %struct.ks_sdio_card, ptr %call7.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %priv63 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr.i, ptr %priv63, align 4
  %28 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call7.i.i, align 8
  %dev65 = getelementptr inbounds %struct.sdio_func, ptr %29, i32 0, i32 1
  %parent = getelementptr inbounds %struct.net_device, ptr %call44, i32 0, i32 133, i32 1
  %30 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %dev65, ptr %parent, align 8
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i.i, ptr %add.ptr.i, align 4
  %dev_state.i = getelementptr i8, ptr %call44, i32 111764
  %32 = ptrtoint ptr %dev_state.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %dev_state.i, align 4
  %net_dev.i = getelementptr i8, ptr %call44, i32 2436
  %33 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call44, ptr %net_dev.i, align 4
  %firmware_version.i = getelementptr i8, ptr %call44, i32 111624
  %34 = ptrtoint ptr %firmware_version.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %firmware_version.i, align 4
  %version_size.i = getelementptr i8, ptr %call44, i32 111756
  %35 = ptrtoint ptr %version_size.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %version_size.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %last_doze.i = getelementptr i8, ptr %call44, i32 112616
  %37 = ptrtoint ptr %last_doze.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %last_doze.i, align 4
  %38 = load volatile i32, ptr @jiffies, align 128
  %last_wakeup.i = getelementptr i8, ptr %call44, i32 112620
  %39 = ptrtoint ptr %last_wakeup.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %last_wakeup.i, align 4
  %nstats.i = getelementptr i8, ptr %call44, i32 2440
  %sleepstatus.i = getelementptr i8, ptr %call44, i32 110216
  %40 = call ptr @memset(ptr %nstats.i, i32 0, i32 124)
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sleepstatus.i, i32 noundef 4) #10
  %41 = ptrtoint ptr %sleepstatus.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 0, ptr %sleepstatus.i, align 4
  %doze_request.i = getelementptr i8, ptr %call44, i32 110220
  %call.i.i20.i = call zeroext i1 @__kasan_check_write(ptr noundef %doze_request.i, i32 noundef 4) #10
  %42 = ptrtoint ptr %doze_request.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile i32 0, ptr %doze_request.i, align 4
  %wakeup_request.i = getelementptr i8, ptr %call44, i32 110224
  %call.i.i21.i = call zeroext i1 @__kasan_check_write(ptr noundef %wakeup_request.i, i32 noundef 4) #10
  %43 = ptrtoint ptr %wakeup_request.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile i32 0, ptr %wakeup_request.i, align 4
  %qhead.i.i = getelementptr i8, ptr %call44, i32 19004
  %44 = ptrtoint ptr %qhead.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %qhead.i.i, align 4
  %qtail.i.i = getelementptr i8, ptr %call44, i32 19008
  %45 = ptrtoint ptr %qtail.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %qtail.i.i, align 4
  %qhead2.i.i = getelementptr i8, ptr %call44, i32 94448
  %46 = ptrtoint ptr %qhead2.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %qhead2.i.i, align 4
  %qtail4.i.i = getelementptr i8, ptr %call44, i32 94452
  %47 = ptrtoint ptr %qtail4.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %qtail4.i.i, align 4
  %tx_dev_lock.i.i = getelementptr i8, ptr %call44, i32 19012
  call void @__raw_spin_lock_init(ptr noundef %tx_dev_lock.i.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @trx_device_init.__key, i16 noundef signext 3) #10
  %rx_dev_lock.i.i = getelementptr i8, ptr %call44, i32 94456
  call void @__raw_spin_lock_init(ptr noundef %rx_dev_lock.i.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @trx_device_init.__key.33, i16 noundef signext 3) #10
  %rx_bh_task.i.i = getelementptr i8, ptr %call44, i32 2412
  call void @tasklet_setup(ptr noundef %rx_bh_task.i.i, ptr noundef nonnull @rx_event_task) #10
  %call3.i = call i32 @hostif_init(ptr noundef %add.ptr.i) #10
  %call4.i = call i32 @ks_wlan_net_start(ptr noundef nonnull %call44) #10
  %tx_rate.i.i = getelementptr i8, ptr %call44, i32 111062
  %preamble.i.i = getelementptr i8, ptr %call44, i32 111120
  %48 = ptrtoint ptr %preamble.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %preamble.i.i, align 4
  %power_mgmt.i.i = getelementptr i8, ptr %call44, i32 111121
  %49 = ptrtoint ptr %power_mgmt.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %power_mgmt.i.i, align 1
  %scan_type.i.i = getelementptr i8, ptr %call44, i32 111124
  %50 = ptrtoint ptr %scan_type.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %scan_type.i.i, align 4
  %beacon_lost_count.i.i = getelementptr i8, ptr %call44, i32 111128
  %51 = ptrtoint ptr %beacon_lost_count.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 20, ptr %beacon_lost_count.i.i, align 4
  %rts.i.i = getelementptr i8, ptr %call44, i32 111132
  %52 = ptrtoint ptr %rts.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 2347, ptr %rts.i.i, align 4
  %fragment.i.i = getelementptr i8, ptr %call44, i32 111136
  %53 = ptrtoint ptr %fragment.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 2346, ptr %fragment.i.i, align 4
  %phy_type.i.i = getelementptr i8, ptr %call44, i32 111262
  %54 = ptrtoint ptr %phy_type.i.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 2, ptr %phy_type.i.i, align 2
  %cts_mode.i.i = getelementptr i8, ptr %call44, i32 111264
  %55 = ptrtoint ptr %cts_mode.i.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 0, ptr %cts_mode.i.i, align 4
  %rate_set.i.i = getelementptr i8, ptr %call44, i32 111063
  %body.i.i = getelementptr i8, ptr %call44, i32 111064
  %arrayidx.i.i = getelementptr i8, ptr %call44, i32 111075
  %56 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 108, ptr %arrayidx.i.i, align 1
  %arrayidx13.i.i = getelementptr i8, ptr %call44, i32 111074
  %57 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 96, ptr %arrayidx13.i.i, align 1
  %arrayidx17.i.i = getelementptr i8, ptr %call44, i32 111073
  %58 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 72, ptr %arrayidx17.i.i, align 1
  %arrayidx21.i.i = getelementptr i8, ptr %call44, i32 111072
  %59 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 36, ptr %arrayidx21.i.i, align 1
  %arrayidx25.i.i = getelementptr i8, ptr %call44, i32 111071
  %60 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 18, ptr %arrayidx25.i.i, align 1
  %arrayidx29.i.i = getelementptr i8, ptr %call44, i32 111070
  %61 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 -80, ptr %arrayidx29.i.i, align 1
  %arrayidx33.i.i = getelementptr i8, ptr %call44, i32 111069
  %62 = ptrtoint ptr %arrayidx33.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 -104, ptr %arrayidx33.i.i, align 1
  %arrayidx37.i.i = getelementptr i8, ptr %call44, i32 111068
  %63 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 -116, ptr %arrayidx37.i.i, align 1
  %arrayidx41.i.i = getelementptr i8, ptr %call44, i32 111067
  %64 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 -106, ptr %arrayidx41.i.i, align 1
  %arrayidx45.i.i = getelementptr i8, ptr %call44, i32 111066
  %65 = ptrtoint ptr %arrayidx45.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 -117, ptr %arrayidx45.i.i, align 1
  %arrayidx49.i.i = getelementptr i8, ptr %call44, i32 111065
  %66 = ptrtoint ptr %arrayidx49.i.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 -124, ptr %arrayidx49.i.i, align 1
  %67 = ptrtoint ptr %body.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 -126, ptr %body.i.i, align 1
  %68 = ptrtoint ptr %tx_rate.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %tx_rate.i.i, align 2
  %69 = ptrtoint ptr %rate_set.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 12, ptr %rate_set.i.i, align 1
  %call67 = call fastcc i32 @ks7010_upload_firmware(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %if.then69

if.then69:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %net_dev.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %71, ptr noundef nonnull @.str.16, i32 noundef %call67) #13
  br label %err_free_netdev

if.end70:                                         ; preds = %if.end61
  call void @sdio_claim_host(ptr noundef %func) #10
  %72 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %add.ptr.i, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i.i) #10
  %76 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -1, ptr %ret.i.i, align 4, !annotation !140
  call void @sdio_writeb(ptr noundef %75, i8 noundef zeroext -1, i32 noundef 36, ptr noundef nonnull %ret.i.i) #10
  %77 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %ret.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i.i) #10
  call void @sdio_release_host(ptr noundef %func) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.not.i168 = icmp eq i32 %78, 0
  br i1 %tobool.not.i168, label %if.end70.if.end.i170_crit_edge, label %if.then.i

if.end70.if.end.i170_crit_edge:                   ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i170

if.then.i:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  %79 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %net_dev.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %80, ptr noundef nonnull @.str.40) #13
  br label %if.end.i170

if.end.i170:                                      ; preds = %if.then.i, %if.end70.if.end.i170_crit_edge
  call void @sdio_claim_host(ptr noundef %func) #10
  %81 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %add.ptr.i, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i13.i) #10
  %85 = ptrtoint ptr %ret.i13.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 -1, ptr %ret.i13.i, align 4, !annotation !140
  call void @sdio_writeb(ptr noundef %84, i8 noundef zeroext -92, i32 noundef 32, ptr noundef nonnull %ret.i13.i) #10
  %86 = ptrtoint ptr %ret.i13.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %ret.i13.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i13.i) #10
  call void @sdio_release_host(ptr noundef %func) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool2.not.i = icmp eq i32 %87, 0
  br i1 %tobool2.not.i, label %if.end.i170.ks7010_sdio_init_irqs.exit_crit_edge, label %if.then3.i

if.end.i170.ks7010_sdio_init_irqs.exit_crit_edge: ; preds = %if.end.i170
  call void @__sanitizer_cov_trace_pc() #12
  br label %ks7010_sdio_init_irqs.exit

if.then3.i:                                       ; preds = %if.end.i170
  call void @__sanitizer_cov_trace_pc() #12
  %88 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %net_dev.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %89, ptr noundef nonnull @.str.41) #13
  br label %ks7010_sdio_init_irqs.exit

ks7010_sdio_init_irqs.exit:                       ; preds = %if.then3.i, %if.end.i170.ks7010_sdio_init_irqs.exit_crit_edge
  %90 = ptrtoint ptr %dev_state.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 2, ptr %dev_state.i, align 4
  %call71 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.17, i32 noundef 8, i32 noundef 1) #10
  %wq = getelementptr i8, ptr %call44, i32 2308
  %91 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call71, ptr %wq, align 4
  %tobool73.not = icmp eq ptr %call71, null
  br i1 %tobool73.not, label %if.then74, label %do.body78

if.then74:                                        ; preds = %ks7010_sdio_init_irqs.exit
  call void @__sanitizer_cov_trace_pc() #12
  %92 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %net_dev.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %93, ptr noundef nonnull @.str.18) #13
  br label %err_free_netdev

do.body78:                                        ; preds = %ks7010_sdio_init_irqs.exit
  %rw_dwork = getelementptr i8, ptr %call44, i32 2312
  call void @__init_work(ptr noundef %rw_dwork, i32 noundef 0) #10
  %94 = ptrtoint ptr %rw_dwork to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 -64, ptr %rw_dwork, align 4
  %lockdep_map = getelementptr i8, ptr %call44, i32 2328
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.19, ptr noundef nonnull @ks7010_sdio_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry85 = getelementptr i8, ptr %call44, i32 2316
  %95 = ptrtoint ptr %entry85 to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %entry85, ptr %entry85, align 4
  %prev.i = getelementptr i8, ptr %call44, i32 2320
  %96 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %entry85, ptr %prev.i, align 4
  %func88 = getelementptr i8, ptr %call44, i32 2324
  %97 = ptrtoint ptr %func88 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @ks7010_rw_function, ptr %func88, align 4
  %timer = getelementptr i8, ptr %call44, i32 2356
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.21, ptr noundef nonnull @ks7010_sdio_probe.__key.20) #10
  call fastcc void @ks7010_card_init(ptr noundef %add.ptr.i)
  %98 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %net_dev.i, align 4
  %call98 = call i32 @register_netdev(ptr noundef %99) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %do.body78.cleanup_crit_edge, label %err_destroy_wq

do.body78.cleanup_crit_edge:                      ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_destroy_wq:                                   ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #12
  %100 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %wq, align 4
  call void @destroy_workqueue(ptr noundef %101) #10
  br label %err_free_netdev

err_free_netdev:                                  ; preds = %err_destroy_wq, %if.then74, %if.then69, %do.end58
  call void @free_netdev(ptr noundef nonnull %call44) #10
  br label %err_release_irq

err_release_irq:                                  ; preds = %err_free_netdev, %do.end49
  call void @sdio_claim_host(ptr noundef %func) #10
  %call103 = call i32 @sdio_release_irq(ptr noundef %func) #10
  br label %err_disable_func

err_disable_func:                                 ; preds = %err_release_irq, %ks7010_sdio_setup_irqs.exit.err_disable_func_crit_edge, %ks7010_sdio_setup_irqs.exit.thread
  %call104 = call i32 @sdio_disable_func(ptr noundef %func) #10
  br label %err_free_card

err_free_card:                                    ; preds = %err_disable_func, %do.end.err_free_card_crit_edge, %if.end.err_free_card_crit_edge
  call void @sdio_release_host(ptr noundef %func) #10
  %driver_data.i171 = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 8
  %102 = ptrtoint ptr %driver_data.i171 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %driver_data.i171, align 4
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %err_free_card, %do.body78.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %err_free_card ], [ -12, %entry.cleanup_crit_edge ], [ 0, %do.body78.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ks7010_sdio_remove(ptr noundef %func) #0 align 64 {
entry:
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #10
  %0 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ret, align 4, !annotation !140
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv1 = getelementptr inbounds %struct.ks_sdio_card, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv1, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %if.end.err_free_card_crit_edge, label %if.end4

if.end.err_free_card_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_card

if.end4:                                          ; preds = %if.end
  %net_dev = getelementptr inbounds %struct.ks_wlan_private, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net_dev, align 4
  %call5 = tail call i32 @ks_wlan_net_stop(ptr noundef %6) #10
  tail call void @sdio_claim_host(ptr noundef %func) #10
  call void @sdio_writeb(ptr noundef %func, i8 noundef zeroext 0, i32 noundef 32, ptr noundef nonnull %ret) #10
  call void @sdio_writeb(ptr noundef %func, i8 noundef zeroext -1, i32 noundef 36, ptr noundef nonnull %ret) #10
  call void @sdio_release_host(ptr noundef %func) #10
  %7 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 32) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %send_stop_request.exit, label %if.end9

send_stop_request.exit:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -12, ptr %ret, align 4
  br label %err_free_card

if.end9:                                          ; preds = %if.end4
  %11 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 512, ptr %call7.i.i.i, align 8
  %event.i = getelementptr inbounds %struct.hostif_hdr, ptr %call7.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %event.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1760, ptr %event.i, align 2
  call void @sdio_claim_host(ptr noundef %func) #10
  %priv.i = getelementptr inbounds %struct.ks_sdio_card, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv.i, align 4
  %call6.i = call fastcc i32 @write_to_device(ptr noundef %14, ptr noundef nonnull %call7.i.i.i, i32 noundef 32) #10
  call void @sdio_release_host(ptr noundef %func) #10
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  %15 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %ret, align 4
  %wq = getelementptr inbounds %struct.ks_wlan_private, ptr %4, i32 0, i32 1
  %16 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wq, align 4
  %tobool10.not = icmp eq ptr %17, null
  br i1 %tobool10.not, label %if.end9.if.end14_crit_edge, label %if.then11

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  call void @flush_workqueue(ptr noundef nonnull %17) #10
  %18 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wq, align 4
  call void @destroy_workqueue(ptr noundef %19) #10
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end9.if.end14_crit_edge
  call void @hostif_exit(ptr noundef nonnull %4) #10
  %20 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net_dev, align 4
  call void @unregister_netdev(ptr noundef %21) #10
  %qtail.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %4, i32 0, i32 8, i32 2
  %qhead.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %4, i32 0, i32 8, i32 1
  %22 = ptrtoint ptr %qtail.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %qtail.i.i, align 4
  %24 = ptrtoint ptr %qhead.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %qhead.i.i, align 4
  %add.neg.i12.i = xor i32 %25, -1
  %sub.i13.i = add i32 %23, %add.neg.i12.i
  %and.i14.i = and i32 %sub.i13.i, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i14.i)
  %cmp.i.not15.i = icmp eq i32 %and.i14.i, 0
  br i1 %cmp.i.not15.i, label %if.end14.trx_device_exit.exit_crit_edge, label %while.body.lr.ph.i

if.end14.trx_device_exit.exit_crit_edge:          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %trx_device_exit.exit

while.body.lr.ph.i:                               ; preds = %if.end14
  %tx_dev.i = getelementptr inbounds %struct.ks_wlan_private, ptr %4, i32 0, i32 8
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i46.while.body.i_crit_edge, %while.body.lr.ph.i
  %26 = phi i32 [ %25, %while.body.lr.ph.i ], [ %rem.i.i, %if.end.i46.while.body.i_crit_edge ]
  %arrayidx.i = getelementptr [1024 x %struct.tx_device_buffer], ptr %tx_dev.i, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i, align 4
  call void @kfree(ptr noundef %28) #10
  %complete_handler.i = getelementptr [1024 x %struct.tx_device_buffer], ptr %tx_dev.i, i32 0, i32 %26, i32 2
  %29 = ptrtoint ptr %complete_handler.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %complete_handler.i, align 4
  %tobool.not.i45 = icmp eq ptr %30, null
  br i1 %tobool.not.i45, label %while.body.i.if.end.i46_crit_edge, label %if.then.i

while.body.i.if.end.i46_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i46

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %skb.i = getelementptr [1024 x %struct.tx_device_buffer], ptr %tx_dev.i, i32 0, i32 %26, i32 3
  %31 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %skb.i, align 4
  call void %30(ptr noundef nonnull %4, ptr noundef %32) #10
  br label %if.end.i46

if.end.i46:                                       ; preds = %if.then.i, %while.body.i.if.end.i46_crit_edge
  %33 = ptrtoint ptr %qhead.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %qhead.i.i, align 4
  %add.i.i = add i32 %34, 1
  %rem.i.i = and i32 %add.i.i, 1023
  store i32 %rem.i.i, ptr %qhead.i.i, align 4
  %35 = ptrtoint ptr %qtail.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %qtail.i.i, align 4
  %notlhs.i = sub i32 1022, %34
  %sub.i.i = add i32 %notlhs.i, %36
  %and.i.i = and i32 %sub.i.i, 1023
  %cmp.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.not.i, label %if.end.i46.trx_device_exit.exit_crit_edge, label %if.end.i46.while.body.i_crit_edge

if.end.i46.while.body.i_crit_edge:                ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end.i46.trx_device_exit.exit_crit_edge:        ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #12
  br label %trx_device_exit.exit

trx_device_exit.exit:                             ; preds = %if.end.i46.trx_device_exit.exit_crit_edge, %if.end14.trx_device_exit.exit_crit_edge
  %rx_bh_task.i = getelementptr inbounds %struct.ks_wlan_private, ptr %4, i32 0, i32 3
  call void @tasklet_kill(ptr noundef %rx_bh_task.i) #10
  %37 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %net_dev, align 4
  call void @free_netdev(ptr noundef %38) #10
  %39 = ptrtoint ptr %priv1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %priv1, align 4
  call void @sdio_claim_host(ptr noundef %func) #10
  %call18 = call i32 @sdio_release_irq(ptr noundef %func) #10
  %call19 = call i32 @sdio_disable_func(ptr noundef %func) #10
  call void @sdio_release_host(ptr noundef %func) #10
  br label %err_free_card

err_free_card:                                    ; preds = %trx_device_exit.exit, %send_stop_request.exit, %if.end.err_free_card_crit_edge
  %40 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %driver_data.i, align 4
  call void @kfree(ptr noundef nonnull %2) #10
  br label %cleanup

cleanup:                                          ; preds = %err_free_card, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_claim_host(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_set_block_size(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_enable_func(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_release_host(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_alloc_name(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ks7010_upload_firmware(ptr nocapture noundef readonly %card) unnamed_addr #0 align 64 {
entry:
  %ret.i53 = alloca i32, align 4
  %ret.i.i = alloca i32, align 4
  %index.addr.i.i = alloca i32, align 4
  %ret.i = alloca i32, align 4
  %fw_entry = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ks_sdio_card, ptr %card, i32 0, i32 1
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_entry) #10
  %6 = ptrtoint ptr %fw_entry to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %fw_entry, align 4
  tail call void @sdio_claim_host(ptr noundef %5) #10
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i) #10
  %11 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %ret.i, align 4, !annotation !140
  %call1.i = call zeroext i8 @sdio_readb(ptr noundef %10, i32 noundef 40, ptr noundef nonnull %ret.i) #10
  %12 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ret.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.end, label %entry.release_host_crit_edge

entry.release_host_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_host

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call1.i)
  %cmp = icmp eq i8 %call1.i, 2
  br i1 %cmp, label %do.body5, label %if.end14

do.body5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks7010_upload_firmware.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks7010_upload_firmware, %if.then10)) #10
          to label %release_host [label %if.then10], !srcloc !141

if.then10:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  %net_dev = getelementptr inbounds %struct.ks_wlan_private, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net_dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks7010_upload_firmware.__UNIQUE_ID_ddebug343, ptr noundef %15, ptr noundef nonnull @.str.36) #10
  br label %release_host

if.end14:                                         ; preds = %if.end
  %dev = getelementptr inbounds %struct.sdio_func, ptr %5, i32 0, i32 1
  %call15 = call i32 @request_firmware(ptr noundef nonnull %fw_entry, ptr noundef nonnull @.str.37, ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.release_host_crit_edge

if.end14.release_host_crit_edge:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_host

if.end18:                                         ; preds = %if.end14
  %16 = ptrtoint ptr %fw_entry to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fw_entry, align 4
  %call1.i.i.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 65536, i32 noundef 3264, i32 noundef 4) #15
  %tobool.not.i = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not.i, label %if.end18.release_firmware_crit_edge, label %if.end.i

if.end18.release_firmware_crit_edge:              ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_firmware

if.end.i:                                         ; preds = %if.end18
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %19)
  %cmp66.i = icmp ugt i32 %19, 65535
  %size.069.i = select i1 %cmp66.i, i32 65536, i32 %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.069.i)
  %cmp470.i = icmp eq i32 %size.069.i, 0
  br i1 %cmp470.i, label %if.end.i.ks7010_copy_firmware.exit_crit_edge, label %if.end6.lr.ph.i

if.end.i.ks7010_copy_firmware.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ks7010_copy_firmware.exit

if.end6.lr.ph.i:                                  ; preds = %if.end.i
  %sub67.i = add i32 %19, -65536
  %length.168.i = select i1 %cmp66.i, i32 %sub67.i, i32 0
  %data.i = getelementptr inbounds %struct.firmware, ptr %17, i32 0, i32 1
  br label %if.end6.i

do.body.i:                                        ; preds = %if.end4.i52.i
  %add19.i = add i32 %n.071.i, %size.073.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %length.172.i)
  %cmp.i = icmp ugt i32 %length.172.i, 65535
  %sub.i = add i32 %length.172.i, -65536
  %length.1.i = select i1 %cmp.i, i32 %sub.i, i32 0
  %size.0.i = select i1 %cmp.i, i32 65536, i32 %length.172.i
  %cmp4.i = icmp eq i32 %size.0.i, 0
  br i1 %cmp4.i, label %do.body.i.ks7010_copy_firmware.exit_crit_edge, label %do.body.i.if.end6.i_crit_edge

do.body.i.if.end6.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i

do.body.i.ks7010_copy_firmware.exit_crit_edge:    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ks7010_copy_firmware.exit

if.end6.i:                                        ; preds = %do.body.i.if.end6.i_crit_edge, %if.end6.lr.ph.i
  %size.073.i = phi i32 [ %size.069.i, %if.end6.lr.ph.i ], [ %size.0.i, %do.body.i.if.end6.i_crit_edge ]
  %length.172.i = phi i32 [ %length.168.i, %if.end6.lr.ph.i ], [ %length.1.i, %do.body.i.if.end6.i_crit_edge ]
  %n.071.i = phi i32 [ 0, %if.end6.lr.ph.i ], [ %add19.i, %do.body.i.if.end6.i_crit_edge ]
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 %n.071.i
  %22 = call ptr @memcpy(ptr %call1.i.i.i, ptr %add.ptr.i, i32 %size.073.i)
  %add.i = add i32 %n.071.i, 100663296
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index.addr.i.i) #10
  %23 = ptrtoint ptr %index.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add.i, ptr %index.addr.i.i, align 4
  %call.i.i = call ptr @kmemdup(ptr noundef nonnull %index.addr.i.i, i32 noundef 4, i32 noundef 3264) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end6.i.ks7010_sdio_update_index.exit.thread.i_crit_edge, label %if.end.i.i

if.end6.i.ks7010_sdio_update_index.exit.thread.i_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ks7010_sdio_update_index.exit.thread.i

if.end.i.i:                                       ; preds = %if.end6.i
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %call1.i.i47.i = call i32 @sdio_memcpy_toio(ptr noundef %27, i32 noundef 16, ptr noundef nonnull %call.i.i, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i47.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i47.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %if.end.i.i.err_free_data_buf.i.i_crit_edge

if.end.i.i.err_free_data_buf.i.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_data_buf.i.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %call1.i16.i.i = call i32 @sdio_memcpy_toio(ptr noundef %31, i32 noundef 4, ptr noundef nonnull %call.i.i, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i16.i.i)
  %tobool6.not.i.i = icmp eq i32 %call1.i16.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end10.i, label %if.end4.i.i.err_free_data_buf.i.i_crit_edge

if.end4.i.i.err_free_data_buf.i.i_crit_edge:      ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_data_buf.i.i

err_free_data_buf.i.i:                            ; preds = %if.end4.i.i.err_free_data_buf.i.i_crit_edge, %if.end.i.i.err_free_data_buf.i.i_crit_edge
  %ret.0.i.i = phi i32 [ %call1.i.i47.i, %if.end.i.i.err_free_data_buf.i.i_crit_edge ], [ %call1.i16.i.i, %if.end4.i.i.err_free_data_buf.i.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call.i.i) #10
  br label %ks7010_sdio_update_index.exit.thread.i

ks7010_sdio_update_index.exit.thread.i:           ; preds = %err_free_data_buf.i.i, %if.end6.i.ks7010_sdio_update_index.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %ret.0.i.i, %err_free_data_buf.i.i ], [ -12, %if.end6.i.ks7010_sdio_update_index.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index.addr.i.i) #10
  br label %ks7010_copy_firmware.exit.thread59

if.end10.i:                                       ; preds = %if.end4.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index.addr.i.i) #10
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %call1.i.i = call i32 @sdio_memcpy_toio(ptr noundef %35, i32 noundef 65536, ptr noundef nonnull %call1.i.i.i, i32 noundef %size.073.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool12.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end10.i.ks7010_copy_firmware.exit.thread59_crit_edge

if.end10.i.ks7010_copy_firmware.exit.thread59_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ks7010_copy_firmware.exit.thread59

if.end14.i:                                       ; preds = %if.end10.i
  %call1.i.i.i.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 65536, i32 noundef 3264, i32 noundef 4) #15
  %tobool.not.i48.i = icmp eq ptr %call1.i.i.i.i, null
  br i1 %tobool.not.i48.i, label %if.end14.i.ks7010_copy_firmware.exit.thread59_crit_edge, label %if.end.i51.i

if.end14.i.ks7010_copy_firmware.exit.thread59_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ks7010_copy_firmware.exit.thread59

if.end.i51.i:                                     ; preds = %if.end14.i
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %call1.i.i49.i = call i32 @sdio_memcpy_fromio(ptr noundef %39, ptr noundef nonnull %call1.i.i.i.i, i32 noundef 65536, i32 noundef %size.073.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i49.i)
  %tobool2.not.i50.i = icmp eq i32 %call1.i.i49.i, 0
  br i1 %tobool2.not.i50.i, label %if.end4.i52.i, label %if.end.i51.i.err_free_read_buf.i.i_crit_edge

if.end.i51.i.err_free_read_buf.i.i_crit_edge:     ; preds = %if.end.i51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_read_buf.i.i

if.end4.i52.i:                                    ; preds = %if.end.i51.i
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %call1.i.i.i, ptr nonnull %call1.i.i.i.i, i32 %size.073.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp.not.i.i, label %do.body.i, label %if.then6.i.i

if.then6.i.i:                                     ; preds = %if.end4.i52.i
  call void @__sanitizer_cov_trace_pc() #12
  %net_dev.i.i = getelementptr inbounds %struct.ks_wlan_private, ptr %1, i32 0, i32 4
  %40 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %net_dev.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %41, ptr noundef nonnull @.str.39, i32 noundef -5) #13
  br label %err_free_read_buf.i.i

err_free_read_buf.i.i:                            ; preds = %if.then6.i.i, %if.end.i51.i.err_free_read_buf.i.i_crit_edge
  %ret.0.i53.i = phi i32 [ -5, %if.then6.i.i ], [ %call1.i.i49.i, %if.end.i51.i.err_free_read_buf.i.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call1.i.i.i.i) #10
  br label %ks7010_copy_firmware.exit.thread59

ks7010_copy_firmware.exit.thread59:               ; preds = %err_free_read_buf.i.i, %if.end14.i.ks7010_copy_firmware.exit.thread59_crit_edge, %if.end10.i.ks7010_copy_firmware.exit.thread59_crit_edge, %ks7010_sdio_update_index.exit.thread.i
  %ret.0.i.ph = phi i32 [ %ret.0.i53.i, %err_free_read_buf.i.i ], [ %retval.0.i.ph.i, %ks7010_sdio_update_index.exit.thread.i ], [ -12, %if.end14.i.ks7010_copy_firmware.exit.thread59_crit_edge ], [ %call1.i.i, %if.end10.i.ks7010_copy_firmware.exit.thread59_crit_edge ]
  call void @kfree(ptr noundef nonnull %call1.i.i.i) #10
  br label %release_firmware

ks7010_copy_firmware.exit:                        ; preds = %do.body.i.ks7010_copy_firmware.exit_crit_edge, %if.end.i.ks7010_copy_firmware.exit_crit_edge
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i.i) #10
  %46 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %ret.i.i, align 4, !annotation !140
  call void @sdio_writeb(ptr noundef %45, i8 noundef zeroext 1, i32 noundef 40, ptr noundef nonnull %ret.i.i) #10
  %47 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ret.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i.i) #10
  call void @kfree(ptr noundef nonnull %call1.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool20.not = icmp eq i32 %48, 0
  br i1 %tobool20.not, label %ks7010_copy_firmware.exit.for.body_crit_edge, label %ks7010_copy_firmware.exit.release_firmware_crit_edge

ks7010_copy_firmware.exit.release_firmware_crit_edge: ; preds = %ks7010_copy_firmware.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_firmware

ks7010_copy_firmware.exit.for.body_crit_edge:     ; preds = %ks7010_copy_firmware.exit
  br label %for.body

for.cond:                                         ; preds = %if.end28
  %inc = add nuw nsw i32 %n.073, 1
  %exitcond.not = icmp eq i32 %inc, 50
  br i1 %exitcond.not, label %if.then36, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %ks7010_copy_firmware.exit.for.body_crit_edge
  %n.073 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %ks7010_copy_firmware.exit.for.body_crit_edge ]
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #10
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i53) #10
  %53 = ptrtoint ptr %ret.i53 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %ret.i53, align 4, !annotation !140
  %call1.i54 = call zeroext i8 @sdio_readb(ptr noundef %52, i32 noundef 40, ptr noundef nonnull %ret.i53) #10
  %54 = ptrtoint ptr %ret.i53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ret.i53, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i53) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool26.not = icmp eq i32 %55, 0
  br i1 %tobool26.not, label %if.end28, label %for.body.release_firmware_crit_edge

for.body.release_firmware_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_firmware

if.end28:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call1.i54)
  %cmp30 = icmp eq i8 %call1.i54, 2
  br i1 %cmp30, label %if.end28.release_firmware_crit_edge, label %for.cond

if.end28.release_firmware_crit_edge:              ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_firmware

if.then36:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  %net_dev37 = getelementptr inbounds %struct.ks_wlan_private, ptr %1, i32 0, i32 4
  %56 = ptrtoint ptr %net_dev37 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %net_dev37, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %57, ptr noundef nonnull @.str.38) #13
  br label %release_firmware

release_firmware:                                 ; preds = %if.then36, %if.end28.release_firmware_crit_edge, %for.body.release_firmware_crit_edge, %ks7010_copy_firmware.exit.release_firmware_crit_edge, %ks7010_copy_firmware.exit.thread59, %if.end18.release_firmware_crit_edge
  %ret.0 = phi i32 [ %48, %ks7010_copy_firmware.exit.release_firmware_crit_edge ], [ -5, %if.then36 ], [ %ret.0.i.ph, %ks7010_copy_firmware.exit.thread59 ], [ -12, %if.end18.release_firmware_crit_edge ], [ 0, %if.end28.release_firmware_crit_edge ], [ %55, %for.body.release_firmware_crit_edge ]
  %58 = ptrtoint ptr %fw_entry to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %fw_entry, align 4
  call void @release_firmware(ptr noundef %59) #10
  br label %release_host

release_host:                                     ; preds = %release_firmware, %if.end14.release_host_crit_edge, %if.then10, %do.body5, %entry.release_host_crit_edge
  %ret.1 = phi i32 [ %13, %entry.release_host_crit_edge ], [ %call15, %if.end14.release_host_crit_edge ], [ %ret.0, %release_firmware ], [ -16, %if.then10 ], [ -16, %do.body5 ]
  call void @sdio_release_host(ptr noundef %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_entry) #10
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ks7010_rw_function(ptr noundef %work) #0 align 64 {
entry:
  %ret.i = alloca i32, align 4
  %ret.i.i121 = alloca i32, align 4
  %ret.i.i114 = alloca i32, align 4
  %ret.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %last_doze = getelementptr i8, ptr %work, i32 110304
  %5 = ptrtoint ptr %last_doze to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %last_doze, align 4
  %add.neg = add i32 %4, -3
  %sub = sub i32 %add.neg, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.body2, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %last_wakeup = getelementptr i8, ptr %work, i32 110308
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %8 = ptrtoint ptr %last_wakeup to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %last_wakeup, align 4
  %add13.neg142 = add i32 %7, -3
  %sub14143 = sub i32 %add13.neg142, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub14143)
  %cmp15144 = icmp slt i32 %sub14143, 0
  br i1 %cmp15144, label %do.body17.lr.ph, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.body17.lr.ph:                                  ; preds = %while.cond.preheader
  %net_dev30 = getelementptr i8, ptr %work, i32 124
  %dev = getelementptr inbounds %struct.sdio_func, ptr %3, i32 0, i32 1
  br label %do.body17

do.body2:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks7010_rw_function.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks7010_rw_function, %if.then7)) #10
          to label %do.end9 [label %if.then7], !srcloc !141

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  %net_dev = getelementptr i8, ptr %work, i32 124
  %10 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks7010_rw_function.__UNIQUE_ID_ddebug341, ptr noundef %11, ptr noundef nonnull @.str.43) #10
  br label %do.end9

do.end9:                                          ; preds = %if.then7, %do.body2
  %wq = getelementptr i8, ptr %work, i32 -4
  %12 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wq, align 4
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %13, ptr noundef %work, i32 noundef 1) #10
  br label %cleanup

do.body17:                                        ; preds = %do.end38.do.body17_crit_edge, %do.body17.lr.ph
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks7010_rw_function.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks7010_rw_function, %if.then29)) #10
          to label %do.end38 [label %if.then29], !srcloc !141

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %net_dev30 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net_dev30, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks7010_rw_function.__UNIQUE_ID_ddebug342, ptr noundef %15, ptr noundef nonnull @.str.44) #10
  br label %do.end38

do.end38:                                         ; preds = %if.then29, %do.body17
  %16 = ptrtoint ptr %last_wakeup to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %last_wakeup, align 4
  %add41 = add i32 %17, 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.45, i32 noundef %add41, i32 noundef %18) #13
  tail call void @msleep(i32 noundef 30) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %20 = ptrtoint ptr %last_wakeup to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %last_wakeup, align 4
  %add13.neg = add i32 %19, -3
  %sub14 = sub i32 %add13.neg, %21
  %cmp15 = icmp slt i32 %sub14, 0
  br i1 %cmp15, label %do.end38.do.body17_crit_edge, label %do.end38.while.end_crit_edge

do.end38.while.end_crit_edge:                     ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end38.do.body17_crit_edge:                     ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body17

while.end:                                        ; preds = %do.end38.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  tail call void @sdio_claim_host(ptr noundef %3) #10
  %psstatus = getelementptr i8, ptr %work, i32 107836
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %psstatus, i32 noundef 4) #10
  %22 = ptrtoint ptr %psstatus to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %psstatus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %23)
  %cmp43 = icmp eq i32 %23, 4
  br i1 %cmp43, label %if.then44, label %if.end51

if.then44:                                        ; preds = %while.end
  %qtail.i = getelementptr i8, ptr %work, i32 16696
  %24 = ptrtoint ptr %qtail.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %qtail.i, align 4
  %qhead.i = getelementptr i8, ptr %work, i32 16692
  %26 = ptrtoint ptr %qhead.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %qhead.i, align 4
  %add.neg.i = xor i32 %27, -1
  %sub.i = add i32 %25, %add.neg.i
  %and.i = and i32 %sub.i, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %if.then44.release_host_crit_edge, label %if.then46

if.then44.release_host_crit_edge:                 ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_host

if.then46:                                        ; preds = %if.then44
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %psstatus, i32 noundef 4) #10
  %28 = ptrtoint ptr %psstatus to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %psstatus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %29)
  %cmp.i112 = icmp eq i32 %29, 4
  br i1 %cmp.i112, label %if.then.i, label %if.then46.ks_wlan_hw_wakeup_request.exit_crit_edge

if.then46.ks_wlan_hw_wakeup_request.exit_crit_edge: ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  br label %ks_wlan_hw_wakeup_request.exit

if.then.i:                                        ; preds = %if.then46
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i.i) #10
  %34 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %ret.i.i, align 4, !annotation !140
  call void @sdio_writeb(ptr noundef %33, i8 noundef zeroext 90, i32 noundef 32792, ptr noundef nonnull %ret.i.i) #10
  %35 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ret.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then2.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %net_dev.i = getelementptr i8, ptr %work, i32 124
  %37 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %net_dev.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %38, ptr noundef nonnull @.str) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.then.i.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  %40 = ptrtoint ptr %last_wakeup to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %last_wakeup, align 4
  %wakeup_count.i = getelementptr i8, ptr %work, i32 110312
  %41 = ptrtoint ptr %wakeup_count.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %wakeup_count.i, align 4
  %inc.i = add i32 %42, 1
  store i32 %inc.i, ptr %wakeup_count.i, align 4
  br label %ks_wlan_hw_wakeup_request.exit

ks_wlan_hw_wakeup_request.exit:                   ; preds = %if.end.i, %if.then46.ks_wlan_hw_wakeup_request.exit_crit_edge
  %wq47 = getelementptr i8, ptr %work, i32 -4
  %43 = ptrtoint ptr %wq47 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %wq47, align 4
  %call.i113 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %44, ptr noundef %work, i32 noundef 1) #10
  br label %release_host

if.end51:                                         ; preds = %while.end
  %doze_request = getelementptr i8, ptr %work, i32 107908
  %call.i.i109 = tail call zeroext i1 @__kasan_check_read(ptr noundef %doze_request, i32 noundef 4) #10
  %45 = ptrtoint ptr %doze_request to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %doze_request, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp53 = icmp eq i32 %46, 1
  br i1 %cmp53, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.end51
  %sleepstatus.i = getelementptr i8, ptr %work, i32 107904
  %call.i.i.i115 = tail call zeroext i1 @__kasan_check_write(ptr noundef %doze_request, i32 noundef 4) #10
  %47 = ptrtoint ptr %doze_request to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile i32 0, ptr %doze_request, align 4
  %call.i.i17.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sleepstatus.i, i32 noundef 4) #10
  %48 = ptrtoint ptr %sleepstatus.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %sleepstatus.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp.i116 = icmp eq i32 %49, 0
  br i1 %cmp.i116, label %if.then.i118, label %if.then54.ks_wlan_hw_sleep_doze_request.exit_crit_edge

if.then54.ks_wlan_hw_sleep_doze_request.exit_crit_edge: ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  br label %ks_wlan_hw_sleep_doze_request.exit

if.then.i118:                                     ; preds = %if.then54
  %50 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i.i114) #10
  %54 = ptrtoint ptr %ret.i.i114 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %ret.i.i114, align 4, !annotation !140
  call void @sdio_writeb(ptr noundef %53, i8 noundef zeroext 1, i32 noundef 44, ptr noundef nonnull %ret.i.i114) #10
  %55 = ptrtoint ptr %ret.i.i114 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ret.i.i114, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i.i114) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i117 = icmp eq i32 %56, 0
  br i1 %tobool.not.i117, label %if.end.i120, label %if.then3.i

if.then3.i:                                       ; preds = %if.then.i118
  call void @__sanitizer_cov_trace_pc() #12
  %net_dev.i119 = getelementptr i8, ptr %work, i32 124
  %57 = ptrtoint ptr %net_dev.i119 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %net_dev.i119, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %58, ptr noundef nonnull @.str.48) #13
  br label %ks_wlan_hw_sleep_doze_request.exit

if.end.i120:                                      ; preds = %if.then.i118
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i18.i = call zeroext i1 @__kasan_check_write(ptr noundef %sleepstatus.i, i32 noundef 4) #10
  %59 = ptrtoint ptr %sleepstatus.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile i32 1, ptr %sleepstatus.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %60 = load volatile i32, ptr @jiffies, align 128
  %61 = ptrtoint ptr %last_doze to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %last_doze, align 4
  br label %ks_wlan_hw_sleep_doze_request.exit

ks_wlan_hw_sleep_doze_request.exit:               ; preds = %if.end.i120, %if.then3.i, %if.then54.ks_wlan_hw_sleep_doze_request.exit_crit_edge
  %call.i.i19.i = call zeroext i1 @__kasan_check_read(ptr noundef %sleepstatus.i, i32 noundef 4) #10
  %62 = ptrtoint ptr %sleepstatus.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %sleepstatus.i, align 4
  %conv.i = trunc i32 %63 to i8
  %sleep_mode.i = getelementptr i8, ptr %work, i32 109776
  %64 = ptrtoint ptr %sleep_mode.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv.i, ptr %sleep_mode.i, align 4
  br label %release_host

if.end55:                                         ; preds = %if.end51
  %wakeup_request = getelementptr i8, ptr %work, i32 107912
  %call.i.i110 = tail call zeroext i1 @__kasan_check_read(ptr noundef %wakeup_request, i32 noundef 4) #10
  %65 = ptrtoint ptr %wakeup_request to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %wakeup_request, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %66)
  %cmp58 = icmp eq i32 %66, 1
  br i1 %cmp58, label %if.then59, label %if.end60

if.then59:                                        ; preds = %if.end55
  %sleepstatus.i122 = getelementptr i8, ptr %work, i32 107904
  %call.i.i.i123 = tail call zeroext i1 @__kasan_check_write(ptr noundef %wakeup_request, i32 noundef 4) #10
  %67 = ptrtoint ptr %wakeup_request to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile i32 0, ptr %wakeup_request, align 4
  %call.i.i18.i124 = tail call zeroext i1 @__kasan_check_read(ptr noundef %sleepstatus.i122, i32 noundef 4) #10
  %68 = ptrtoint ptr %sleepstatus.i122 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %sleepstatus.i122, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %69)
  %cmp.i125 = icmp eq i32 %69, 1
  br i1 %cmp.i125, label %if.then.i127, label %if.then59.ks_wlan_hw_sleep_wakeup_request.exit_crit_edge

if.then59.ks_wlan_hw_sleep_wakeup_request.exit_crit_edge: ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  br label %ks_wlan_hw_sleep_wakeup_request.exit

if.then.i127:                                     ; preds = %if.then59
  %70 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %add.ptr, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i.i121) #10
  %74 = ptrtoint ptr %ret.i.i121 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 -1, ptr %ret.i.i121, align 4, !annotation !140
  call void @sdio_writeb(ptr noundef %73, i8 noundef zeroext 90, i32 noundef 32792, ptr noundef nonnull %ret.i.i121) #10
  %75 = ptrtoint ptr %ret.i.i121 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ret.i.i121, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i.i121) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.not.i126 = icmp eq i32 %76, 0
  br i1 %tobool.not.i126, label %if.end.i134, label %if.then3.i129

if.then3.i129:                                    ; preds = %if.then.i127
  call void @__sanitizer_cov_trace_pc() #12
  %net_dev.i128 = getelementptr i8, ptr %work, i32 124
  %77 = ptrtoint ptr %net_dev.i128 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %net_dev.i128, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %78, ptr noundef nonnull @.str) #13
  br label %ks_wlan_hw_sleep_wakeup_request.exit

if.end.i134:                                      ; preds = %if.then.i127
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i19.i130 = call zeroext i1 @__kasan_check_write(ptr noundef %sleepstatus.i122, i32 noundef 4) #10
  %79 = ptrtoint ptr %sleepstatus.i122 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile i32 0, ptr %sleepstatus.i122, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %80 = load volatile i32, ptr @jiffies, align 128
  %81 = ptrtoint ptr %last_wakeup to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %last_wakeup, align 4
  %wakeup_count.i132 = getelementptr i8, ptr %work, i32 110312
  %82 = ptrtoint ptr %wakeup_count.i132 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %wakeup_count.i132, align 4
  %inc.i133 = add i32 %83, 1
  store i32 %inc.i133, ptr %wakeup_count.i132, align 4
  br label %ks_wlan_hw_sleep_wakeup_request.exit

ks_wlan_hw_sleep_wakeup_request.exit:             ; preds = %if.end.i134, %if.then3.i129, %if.then59.ks_wlan_hw_sleep_wakeup_request.exit_crit_edge
  %call.i.i20.i = call zeroext i1 @__kasan_check_read(ptr noundef %sleepstatus.i122, i32 noundef 4) #10
  %84 = ptrtoint ptr %sleepstatus.i122 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %sleepstatus.i122, align 4
  %conv.i135 = trunc i32 %85 to i8
  %sleep_mode.i136 = getelementptr i8, ptr %work, i32 109776
  %86 = ptrtoint ptr %sleep_mode.i136 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv.i135, ptr %sleep_mode.i136, align 4
  br label %release_host

if.end60:                                         ; preds = %if.end55
  %87 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %add.ptr, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i) #10
  %91 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 -1, ptr %ret.i, align 4, !annotation !140
  %call1.i = call zeroext i8 @sdio_readb(ptr noundef %90, i32 noundef 20, ptr noundef nonnull %ret.i) #10
  %92 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %ret.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool62.not = icmp eq i32 %93, 0
  br i1 %tobool62.not, label %if.end68, label %if.then63

if.then63:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  %net_dev64 = getelementptr i8, ptr %work, i32 124
  %94 = ptrtoint ptr %net_dev64 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %net_dev64, align 4
  %call.i.i111 = call zeroext i1 @__kasan_check_read(ptr noundef %psstatus, i32 noundef 4) #10
  %96 = ptrtoint ptr %psstatus to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %psstatus, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %95, ptr noundef nonnull @.str.47, i32 noundef %97) #13
  br label %release_host

if.end68:                                         ; preds = %if.end60
  %98 = and i8 %call1.i, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool69.not = icmp eq i8 %98, 0
  br i1 %tobool69.not, label %if.end68.if.end73_crit_edge, label %if.then70

if.end68.if.end73_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

if.then70:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  %and = zext i8 %98 to i32
  %shl = shl nuw nsw i32 %and, 4
  call fastcc void @ks_wlan_hw_rx(ptr noundef %add.ptr, i32 noundef %shl)
  br label %if.end73

if.end73:                                         ; preds = %if.then70, %if.end68.if.end73_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call1.i)
  %tobool76.not = icmp sgt i8 %call1.i, -1
  br i1 %tobool76.not, label %if.end73.if.end78_crit_edge, label %if.then77

if.end73.if.end78_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

if.then77:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @tx_device_task(ptr noundef %add.ptr)
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %if.end73.if.end78_crit_edge
  call fastcc void @_ks_wlan_hw_power_save(ptr noundef %add.ptr)
  br label %release_host

release_host:                                     ; preds = %if.end78, %if.then63, %ks_wlan_hw_sleep_wakeup_request.exit, %ks_wlan_hw_sleep_doze_request.exit, %ks_wlan_hw_wakeup_request.exit, %if.then44.release_host_crit_edge
  call void @sdio_release_host(ptr noundef %3) #10
  br label %cleanup

cleanup:                                          ; preds = %release_host, %do.end9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ks7010_card_init(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %confirm_wait = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 7
  %0 = ptrtoint ptr %confirm_wait to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %confirm_wait, align 4
  %wait.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 7, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.55, ptr noundef nonnull @init_completion.__key) #10
  tail call void @hostif_sme_enqueue(ptr noundef %priv, i16 noundef zeroext 0) #10
  %call = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %confirm_wait, i32 noundef 500) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body2, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks7010_card_init.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks7010_card_init, %if.then7)) #10
          to label %if.end9 [label %if.then7], !srcloc !141

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  %net_dev = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %1 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks7010_card_init.__UNIQUE_ID_ddebug344, ptr noundef %2, ptr noundef nonnull @.str.52) #10
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %do.body2, %entry.if.end9_crit_edge
  %mac_address_valid = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 38
  %3 = ptrtoint ptr %mac_address_valid to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %mac_address_valid, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool10.not = icmp eq i8 %4, 0
  br i1 %tobool10.not, label %if.end9.if.end12_crit_edge, label %land.lhs.true

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end9
  %version_size = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 37
  %5 = ptrtoint ptr %version_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %version_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %land.lhs.true.if.end12_crit_edge, label %if.then11

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %dev_state = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 39
  %7 = ptrtoint ptr %dev_state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %dev_state, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %land.lhs.true.if.end12_crit_edge, %if.end9.if.end12_crit_edge
  tail call void @hostif_sme_enqueue(ptr noundef %priv, i16 noundef zeroext 42) #10
  tail call void @hostif_sme_enqueue(ptr noundef %priv, i16 noundef zeroext 20) #10
  tail call void @hostif_sme_enqueue(ptr noundef %priv, i16 noundef zeroext 21) #10
  tail call void @hostif_sme_enqueue(ptr noundef %priv, i16 noundef zeroext 22) #10
  tail call void @hostif_sme_enqueue(ptr noundef %priv, i16 noundef zeroext 23) #10
  tail call void @hostif_sme_enqueue(ptr noundef %priv, i16 noundef zeroext 24) #10
  tail call void @hostif_sme_enqueue(ptr noundef %priv, i16 noundef zeroext 25) #10
  tail call void @hostif_sme_enqueue(ptr noundef %priv, i16 noundef zeroext 26) #10
  tail call void @hostif_sme_enqueue(ptr noundef %priv, i16 noundef zeroext 27) #10
  tail call void @hostif_sme_enqueue(ptr noundef %priv, i16 noundef zeroext 28) #10
  tail call void @hostif_sme_enqueue(ptr noundef %priv, i16 noundef zeroext 32) #10
  tail call void @hostif_sme_enqueue(ptr noundef %priv, i16 noundef zeroext 40) #10
  tail call void @hostif_sme_enqueue(ptr noundef %priv, i16 noundef zeroext 41) #10
  %call14 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %confirm_wait, i32 noundef 500) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %do.body18, label %if.end12.if.end35_crit_edge

if.end12.if.end35_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

do.body18:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks7010_card_init.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks7010_card_init, %if.then30)) #10
          to label %if.end35 [label %if.then30], !srcloc !141

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  %net_dev31 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %8 = ptrtoint ptr %net_dev31 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_dev31, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks7010_card_init.__UNIQUE_ID_ddebug345, ptr noundef %9, ptr noundef nonnull @.str.53) #10
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %do.body18, %if.end12.if.end35_crit_edge
  %dev_state36 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 39
  %10 = ptrtoint ptr %dev_state36 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dev_state36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp37 = icmp sgt i32 %11, 2
  br i1 %cmp37, label %do.body40, label %if.end35.if.end58_crit_edge

if.end35.if.end58_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

do.body40:                                        ; preds = %if.end35
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks7010_card_init.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks7010_card_init, %if.then52)) #10
          to label %do.end56 [label %if.then52], !srcloc !141

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #12
  %net_dev53 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %12 = ptrtoint ptr %net_dev53 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net_dev53, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks7010_card_init.__UNIQUE_ID_ddebug346, ptr noundef %13, ptr noundef nonnull @.str.54) #10
  br label %do.end56

do.end56:                                         ; preds = %if.then52, %do.body40
  %14 = ptrtoint ptr %dev_state36 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 5, ptr %dev_state36, align 4
  br label %if.end58

if.end58:                                         ; preds = %do.end56, %if.end35.if.end58_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_release_irq(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_disable_func(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_claim_irq(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ks_sdio_interrupt(ptr nocapture noundef readonly %func) #0 align 64 {
entry:
  %ret.i.i = alloca i32, align 4
  %ret.i100 = alloca i32, align 4
  %ret.i98 = alloca i32, align 4
  %ret.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv1 = getelementptr inbounds %struct.ks_sdio_card, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  %dev_state = getelementptr inbounds %struct.ks_wlan_private, ptr %3, i32 0, i32 39
  %4 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dev_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp slt i32 %5, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i) #10
  %10 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %ret.i, align 4, !annotation !140
  %call1.i = call zeroext i8 @sdio_readb(ptr noundef %9, i32 noundef 36, ptr noundef nonnull %ret.i) #10
  %11 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ret.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.end4, label %if.end.queue_delayed_work.sink.split_crit_edge

if.end.queue_delayed_work.sink.split_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %queue_delayed_work.sink.split

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call1.i)
  %tobool5.not = icmp sgt i8 %call1.i, -1
  br i1 %tobool5.not, label %lor.lhs.false, label %if.end4.if.then10_crit_edge

if.end4.if.then10_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

lor.lhs.false:                                    ; preds = %if.end4
  %psstatus = getelementptr inbounds %struct.ks_wlan_private, ptr %3, i32 0, i32 19
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %psstatus, i32 noundef 4) #10
  %13 = ptrtoint ptr %psstatus to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %psstatus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %cmp8 = icmp eq i32 %14, 4
  br i1 %cmp8, label %lor.lhs.false.if.then10_crit_edge, label %lor.lhs.false.if.end31_crit_edge

lor.lhs.false.if.end31_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

lor.lhs.false.if.then10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

if.then10:                                        ; preds = %lor.lhs.false.if.then10_crit_edge, %if.end4.if.then10_crit_edge
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i98) #10
  %19 = ptrtoint ptr %ret.i98 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %ret.i98, align 4, !annotation !140
  %call1.i99 = call zeroext i8 @sdio_readb(ptr noundef %18, i32 noundef 44, ptr noundef nonnull %ret.i98) #10
  %20 = ptrtoint ptr %ret.i98 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ret.i98, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i98) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool12.not = icmp eq i32 %21, 0
  br i1 %tobool12.not, label %if.end15, label %if.then10.queue_delayed_work.sink.split_crit_edge

if.then10.queue_delayed_work.sink.split_crit_edge: ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %queue_delayed_work.sink.split

if.end15:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call1.i99)
  %cmp17 = icmp eq i8 %call1.i99, 0
  br i1 %cmp17, label %if.then19, label %if.end15.if.end31_crit_edge

if.end15.if.end31_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then19:                                        ; preds = %if.end15
  %psstatus20 = getelementptr inbounds %struct.ks_wlan_private, ptr %3, i32 0, i32 19
  %call.i.i95 = call zeroext i1 @__kasan_check_read(ptr noundef %psstatus20, i32 noundef 4) #10
  %22 = ptrtoint ptr %psstatus20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %psstatus20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %23)
  %cmp23 = icmp eq i32 %23, 4
  br i1 %cmp23, label %if.then25, label %if.then19.if.end28_crit_edge

if.then19.if.end28_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then25:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i96 = call zeroext i1 @__kasan_check_write(ptr noundef %psstatus20, i32 noundef 4) #10
  %24 = ptrtoint ptr %psstatus20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 5, ptr %psstatus20, align 4
  %wakeup_count = getelementptr inbounds %struct.ks_wlan_private, ptr %3, i32 0, i32 55
  %25 = ptrtoint ptr %wakeup_count to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %wakeup_count, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.then19.if.end28_crit_edge
  %wakeup_wait = getelementptr inbounds %struct.ks_wlan_private, ptr %3, i32 0, i32 19, i32 1
  call void @complete(ptr noundef %wakeup_wait) #10
  br label %if.end31

if.end31:                                         ; preds = %if.end28, %if.end15.if.end31_crit_edge, %lor.lhs.false.if.end31_crit_edge
  %psstatus50 = getelementptr inbounds %struct.ks_wlan_private, ptr %3, i32 0, i32 19
  %qtail.i = getelementptr inbounds %struct.ks_wlan_private, ptr %3, i32 0, i32 8, i32 2
  %qhead.i = getelementptr inbounds %struct.ks_wlan_private, ptr %3, i32 0, i32 8, i32 1
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.end31
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %3, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i100) #10
  %30 = ptrtoint ptr %ret.i100 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %ret.i100, align 4, !annotation !140
  %call1.i101 = call zeroext i8 @sdio_readb(ptr noundef %29, i32 noundef 20, ptr noundef nonnull %ret.i100) #10
  %31 = ptrtoint ptr %ret.i100 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ret.i100, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool33.not = icmp eq i32 %32, 0
  br i1 %tobool33.not, label %if.end36, label %do.body.queue_delayed_work.sink.split_crit_edge

do.body.queue_delayed_work.sink.split_crit_edge:  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %queue_delayed_work.sink.split

if.end36:                                         ; preds = %do.body
  %33 = and i8 %call1.i101, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp41.not = icmp eq i8 %33, 0
  br i1 %cmp41.not, label %if.end36.if.end45_crit_edge, label %if.then43

if.end36.if.end45_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then43:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %conv40 = zext i8 %33 to i32
  %shl = shl nuw nsw i32 %conv40, 4
  call fastcc void @ks_wlan_hw_rx(ptr noundef %3, i32 noundef %shl)
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end36.if.end45_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call1.i101)
  %tobool48.not = icmp sgt i8 %call1.i101, -1
  br i1 %tobool48.not, label %if.end45.do.cond_crit_edge, label %if.then49

if.end45.do.cond_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond

if.then49:                                        ; preds = %if.end45
  %call.i.i97 = call zeroext i1 @__kasan_check_read(ptr noundef %psstatus50, i32 noundef 4) #10
  %34 = ptrtoint ptr %psstatus50 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %psstatus50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %35)
  %cmp53 = icmp eq i32 %35, 4
  br i1 %cmp53, label %if.then55, label %if.else

if.then55:                                        ; preds = %if.then49
  %36 = ptrtoint ptr %qtail.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %qtail.i, align 4
  %38 = ptrtoint ptr %qhead.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %qhead.i, align 4
  %add.neg.i = xor i32 %39, -1
  %sub.i = add i32 %37, %add.neg.i
  %and.i = and i32 %sub.i, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %if.then55.do.cond_crit_edge, label %if.then57

if.then55.do.cond_crit_edge:                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond

if.then57:                                        ; preds = %if.then55
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %psstatus50, i32 noundef 4) #10
  %40 = ptrtoint ptr %psstatus50 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %psstatus50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %41)
  %cmp.i102 = icmp eq i32 %41, 4
  br i1 %cmp.i102, label %if.then.i, label %if.then57.cleanup_crit_edge

if.then57.cleanup_crit_edge:                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.then57
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %3, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i.i) #10
  %46 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %ret.i.i, align 4, !annotation !140
  call void @sdio_writeb(ptr noundef %45, i8 noundef zeroext 90, i32 noundef 32792, ptr noundef nonnull %ret.i.i) #10
  %47 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ret.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i = icmp eq i32 %48, 0
  br i1 %tobool.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then2.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %net_dev.i = getelementptr inbounds %struct.ks_wlan_private, ptr %3, i32 0, i32 4
  %49 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %net_dev.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %50, ptr noundef nonnull @.str) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.then.i.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %51 = load volatile i32, ptr @jiffies, align 128
  %last_wakeup.i = getelementptr inbounds %struct.ks_wlan_private, ptr %3, i32 0, i32 54
  %52 = ptrtoint ptr %last_wakeup.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %last_wakeup.i, align 4
  %wakeup_count.i = getelementptr inbounds %struct.ks_wlan_private, ptr %3, i32 0, i32 55
  %53 = ptrtoint ptr %wakeup_count.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %wakeup_count.i, align 4
  %inc.i = add i32 %54, 1
  store i32 %inc.i, ptr %wakeup_count.i, align 4
  br label %cleanup

if.else:                                          ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @tx_device_task(ptr noundef %3)
  br label %do.cond

do.cond:                                          ; preds = %if.else, %if.then55.do.cond_crit_edge, %if.end45.do.cond_crit_edge
  br i1 %cmp41.not, label %do.cond.cleanup_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.cond.cleanup_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

queue_delayed_work.sink.split:                    ; preds = %do.body.queue_delayed_work.sink.split_crit_edge, %if.then10.queue_delayed_work.sink.split_crit_edge, %if.end.queue_delayed_work.sink.split_crit_edge
  %.str.24.sink = phi ptr [ @.str.22, %if.end.queue_delayed_work.sink.split_crit_edge ], [ @.str.23, %if.then10.queue_delayed_work.sink.split_crit_edge ], [ @.str.24, %do.body.queue_delayed_work.sink.split_crit_edge ]
  %net_dev35 = getelementptr inbounds %struct.ks_wlan_private, ptr %3, i32 0, i32 4
  %55 = ptrtoint ptr %net_dev35 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %net_dev35, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %56, ptr noundef nonnull %.str.24.sink) #13
  br label %cleanup

cleanup:                                          ; preds = %queue_delayed_work.sink.split, %do.cond.cleanup_crit_edge, %if.end.i, %if.then57.cleanup_crit_edge, %entry.cleanup_crit_edge
  %.sink106 = phi i32 [ 1, %if.then57.cleanup_crit_edge ], [ 1, %if.end.i ], [ 0, %queue_delayed_work.sink.split ], [ 0, %entry.cleanup_crit_edge ], [ 0, %do.cond.cleanup_crit_edge ]
  %wq63 = getelementptr inbounds %struct.ks_wlan_private, ptr %3, i32 0, i32 1
  %57 = ptrtoint ptr %wq63 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %wq63, align 4
  %rw_dwork64 = getelementptr inbounds %struct.ks_wlan_private, ptr %3, i32 0, i32 2
  %call.i103 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %58, ptr noundef %rw_dwork64, i32 noundef %.sink106) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ks_wlan_hw_rx(ptr noundef %priv, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  %ret.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %qtail.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 9, i32 2
  %0 = ptrtoint ptr %qtail.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qtail.i, align 4
  %sub.i = sub i32 32, %1
  %qhead.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %qhead.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qhead.i, align 4
  %add.i = add i32 %3, %sub.i
  %and.i = and i32 %add.i, 31
  %4 = tail call i32 @llvm.smin.i32(i32 %and.i, i32 %sub.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %4)
  %cmp = icmp ugt i32 %4, 30
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %net_dev = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %5 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %6, ptr noundef nonnull @.str.25) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_dev = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 9
  %arrayidx = getelementptr [32 x %struct.rx_device_buffer], ptr %rx_dev, i32 0, i32 %1
  %add.i68 = add i32 %size, 31
  %and.i69 = and i32 %add.i68, -32
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %call1.i = tail call i32 @sdio_memcpy_fromio(ptr noundef %10, ptr noundef %arrayidx, i32 noundef 65536, i32 noundef %and.i69) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %if.end15, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %arrayidx, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %conv = zext i16 %13 to i32
  %add = add nuw nsw i32 %conv, 2
  %size19 = getelementptr [32 x %struct.rx_device_buffer], ptr %rx_dev, i32 0, i32 %1, i32 1
  %14 = ptrtoint ptr %size19 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add, ptr %size19, align 4
  %event20 = getelementptr inbounds %struct.hostif_hdr, ptr %arrayidx, i32 0, i32 1
  %15 = ptrtoint ptr %event20 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %event20, align 1
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  %18 = ptrtoint ptr %qtail.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %qtail.i, align 4
  %add.i71 = add i32 %19, 1
  %rem.i = and i32 %add.i71, 31
  store i32 %rem.i, ptr %qtail.i, align 4
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i) #10
  %24 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %ret.i, align 4, !annotation !140
  call void @sdio_writeb(ptr noundef %23, i8 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %ret.i) #10
  %25 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ret.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool22.not = icmp eq i32 %26, 0
  br i1 %tobool22.not, label %if.end15.if.end25_crit_edge, label %if.then23

if.end15.if.end25_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then23:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %net_dev24 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %27 = ptrtoint ptr %net_dev24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %net_dev24, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %28, ptr noundef nonnull @.str.26) #13
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end15.if.end25_crit_edge
  %confirm_wait = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 19, i32 2
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %confirm_wait, i32 noundef 4) #10
  %29 = ptrtoint ptr %confirm_wait to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %confirm_wait, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool27.not = icmp eq i32 %30, 0
  br i1 %tobool27.not, label %if.end25.if.end43_crit_edge, label %land.lhs.true

if.end25.if.end43_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

land.lhs.true:                                    ; preds = %if.end25
  %conv.i = zext i16 %17 to i32
  %and.i72 = and i32 %conv.i, 59392
  call void @__sanitizer_cov_trace_const_cmp4(i32 59392, i32 %and.i72)
  %cmp.i = icmp eq i32 %and.i72, 59392
  br i1 %cmp.i, label %land.lhs.true.i, label %land.lhs.true.if.end43_crit_edge

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

land.lhs.true.i:                                  ; preds = %land.lhs.true
  %and3.i = and i32 %conv.i, 6143
  %31 = add nsw i32 %and3.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %31)
  %32 = icmp ult i32 %31, 17
  br i1 %32, label %land.rhs.i.i, label %land.lhs.true.i.if.end43_crit_edge

land.lhs.true.i.if.end43_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

land.rhs.i.i:                                     ; preds = %land.lhs.true.i
  %33 = zext i32 %and3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and3.i, label %do.body31 [
    i32 1, label %land.rhs.i.i.if.end43_crit_edge
    i32 6, label %land.rhs.i.i.if.end43_crit_edge74
    i32 12, label %land.rhs.i.i.if.end43_crit_edge75
    i32 17, label %land.rhs.i.i.if.end43_crit_edge76
  ]

land.rhs.i.i.if.end43_crit_edge76:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

land.rhs.i.i.if.end43_crit_edge75:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

land.rhs.i.i.if.end43_crit_edge74:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

land.rhs.i.i.if.end43_crit_edge:                  ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

do.body31:                                        ; preds = %land.rhs.i.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks_wlan_hw_rx.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks_wlan_hw_rx, %if.then36)) #10
          to label %do.end40 [label %if.then36], !srcloc !141

if.then36:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #12
  %net_dev37 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %34 = ptrtoint ptr %net_dev37 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %net_dev37, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks_wlan_hw_rx.__UNIQUE_ID_ddebug340, ptr noundef %35, ptr noundef nonnull @.str.28) #10
  br label %do.end40

do.end40:                                         ; preds = %if.then36, %do.body31
  %call.i.i67 = call zeroext i1 @__kasan_check_write(ptr noundef %confirm_wait, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %confirm_wait, i32 1, i32 3, i32 1) #10
  %36 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %confirm_wait, ptr %confirm_wait, i32 1, ptr elementtype(i32) %confirm_wait) #10, !srcloc !143
  br label %if.end43

if.end43:                                         ; preds = %do.end40, %land.rhs.i.i.if.end43_crit_edge, %land.rhs.i.i.if.end43_crit_edge74, %land.rhs.i.i.if.end43_crit_edge75, %land.rhs.i.i.if.end43_crit_edge76, %land.lhs.true.i.if.end43_crit_edge, %land.lhs.true.if.end43_crit_edge, %if.end25.if.end43_crit_edge
  %state.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 3, i32 1
  %call.i = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %rx_bh_task = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 3
  call void @__tasklet_schedule(ptr noundef %rx_bh_task) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end43.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tx_device_task(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %qtail.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 8, i32 2
  %0 = ptrtoint ptr %qtail.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qtail.i, align 4
  %qhead.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %qhead.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qhead.i, align 4
  %add.neg.i = xor i32 %3, -1
  %sub.i = add i32 %1, %add.neg.i
  %and.i = and i32 %sub.i, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %psstatus = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 19
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %psstatus, i32 noundef 4) #10
  %4 = ptrtoint ptr %psstatus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %psstatus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp = icmp eq i32 %5, 4
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %tx_dev = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 8
  %6 = ptrtoint ptr %qhead.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %qhead.i, align 4
  %arrayidx = getelementptr [1024 x %struct.tx_device_buffer], ptr %tx_dev, i32 0, i32 %7
  %dev_state = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 39
  %8 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dev_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp3 = icmp sgt i32 %9, 1
  br i1 %cmp3, label %if.then4, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then4:                                         ; preds = %if.end
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %size = getelementptr [1024 x %struct.tx_device_buffer], ptr %tx_dev, i32 0, i32 %7, i32 1
  %12 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size, align 4
  %call5 = tail call fastcc i32 @write_to_device(ptr noundef %priv, ptr noundef %11, i32 noundef %13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then4.if.end9_crit_edge, label %if.then6

if.then4.if.end9_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  %net_dev = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %14 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str.29, i32 noundef %call5) #13
  br label %cleanup.sink.split

if.end9:                                          ; preds = %if.then4.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %17) #10
  %complete_handler = getelementptr [1024 x %struct.tx_device_buffer], ptr %tx_dev, i32 0, i32 %7, i32 2
  %18 = ptrtoint ptr %complete_handler to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %complete_handler, align 4
  %tobool11.not = icmp eq ptr %19, null
  br i1 %tobool11.not, label %if.end9.if.end14_crit_edge, label %if.then12

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %skb = getelementptr [1024 x %struct.tx_device_buffer], ptr %tx_dev, i32 0, i32 %7, i32 3
  %20 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %skb, align 4
  tail call void %19(ptr noundef %priv, ptr noundef %21) #10
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end9.if.end14_crit_edge
  %22 = ptrtoint ptr %qhead.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %qhead.i, align 4
  %add.i = add i32 %23, 1
  %rem.i = and i32 %add.i, 1023
  store i32 %rem.i, ptr %qhead.i, align 4
  %24 = ptrtoint ptr %qtail.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %qtail.i, align 4
  %notlhs = sub i32 1022, %23
  %sub.i45 = add i32 %notlhs, %25
  %and.i46 = and i32 %sub.i45, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i46)
  %cmp.i47.not = icmp eq i32 %and.i46, 0
  br i1 %cmp.i47.not, label %if.end14.cleanup_crit_edge, label %if.end14.cleanup.sink.split_crit_edge

if.end14.cleanup.sink.split_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end14.cleanup.sink.split_crit_edge, %if.then6
  %.sink49 = phi i32 [ 1, %if.then6 ], [ 0, %if.end14.cleanup.sink.split_crit_edge ]
  %wq17 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 1
  %26 = ptrtoint ptr %wq17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wq17, align 4
  %rw_dwork18 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 2
  %call.i48 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %27, ptr noundef %rw_dwork18, i32 noundef %.sink49) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end14.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @sdio_readb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_memcpy_fromio(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_to_device(ptr nocapture noundef readonly %priv, ptr noundef %buffer, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  %ret.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %event = getelementptr inbounds %struct.hostif_hdr, ptr %buffer, i32 0, i32 1
  %0 = ptrtoint ptr %event to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %event, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %3 = add i16 %2, 8175
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16, i16 %3)
  %4 = icmp ult i16 %3, -16
  br i1 %4, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %net_dev = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %5 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net_dev, align 4
  %conv7 = zext i16 %1 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %6, ptr noundef nonnull @.str.1, i32 noundef %conv7) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %call1.i = tail call i32 @sdio_memcpy_toio(ptr noundef %10, i32 noundef 65536, ptr noundef %buffer, i32 noundef %size) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %net_dev9 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %11 = ptrtoint ptr %net_dev9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net_dev9, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %12, ptr noundef nonnull @.str.30) #13
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i) #10
  %17 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %ret.i, align 4, !annotation !140
  call void @sdio_writeb(ptr noundef %16, i8 noundef zeroext 0, i32 noundef 12, ptr noundef nonnull %ret.i) #10
  %18 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ret.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool12.not = icmp eq i32 %19, 0
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.then13

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %net_dev14 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %20 = ptrtoint ptr %net_dev14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net_dev14, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %21, ptr noundef nonnull @.str.31) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end10.cleanup_crit_edge, %if.then8, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call1.i, %if.then8 ], [ %19, %if.then13 ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_memcpy_toio(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hostif_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ks_wlan_net_start(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rx_event_task(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -108
  %qtail.i = getelementptr i8, ptr %t, i32 92040
  %0 = ptrtoint ptr %qtail.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qtail.i, align 4
  %qhead.i = getelementptr i8, ptr %t, i32 92036
  %2 = ptrtoint ptr %qhead.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qhead.i, align 4
  %add.neg.i = xor i32 %3, -1
  %sub.i = add i32 %1, %add.neg.i
  %and.i = and i32 %sub.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %entry.if.end4_crit_edge, label %land.lhs.true

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

land.lhs.true:                                    ; preds = %entry
  %dev_state = getelementptr i8, ptr %t, i32 109352
  %4 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dev_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp sgt i32 %5, 1
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end4_crit_edge

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then:                                          ; preds = %land.lhs.true
  %rx_dev = getelementptr i8, ptr %t, i32 16644
  %6 = ptrtoint ptr %qhead.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %qhead.i, align 4
  %arrayidx = getelementptr [32 x %struct.rx_device_buffer], ptr %rx_dev, i32 0, i32 %7
  %size = getelementptr inbounds %struct.rx_device_buffer, ptr %arrayidx, i32 0, i32 1
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 4
  tail call void @hostif_receive(ptr noundef %add.ptr, ptr noundef %arrayidx, i32 noundef %9) #10
  %10 = ptrtoint ptr %qhead.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %qhead.i, align 4
  %add.i = add i32 %11, 1
  %rem.i = and i32 %add.i, 31
  store i32 %rem.i, ptr %qhead.i, align 4
  %12 = ptrtoint ptr %qtail.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qtail.i, align 4
  %notlhs = sub i32 30, %11
  %sub.i17 = add i32 %notlhs, %13
  %and.i18 = and i32 %sub.i17, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i18)
  %cmp.i19.not = icmp eq i32 %and.i18, 0
  br i1 %cmp.i19.not, label %if.then.if.end4_crit_edge, label %if.then3

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then3:                                         ; preds = %if.then
  %state.i = getelementptr inbounds %struct.tasklet_struct, ptr %t, i32 0, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then3.if.end4_crit_edge

if.then3.if.end4_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__tasklet_schedule(ptr noundef %t) #10
  br label %if.end4

if.end4:                                          ; preds = %if.then.i, %if.then3.if.end4_crit_edge, %if.then.if.end4_crit_edge, %land.lhs.true.if.end4_crit_edge, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hostif_receive(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_ks_wlan_hw_power_save(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  %ret.i100 = alloca i32, align 4
  %ret.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %power_mgmt = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 23, i32 7
  %0 = ptrtoint ptr %power_mgmt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %power_mgmt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 23
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp4.not = icmp eq i8 %3, 1
  br i1 %cmp4.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %connect_status = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 42
  %4 = ptrtoint ptr %connect_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %connect_status, align 4
  %call = tail call zeroext i1 @is_connect_status(i32 noundef %5) #10
  br i1 %call, label %if.end9, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end7
  %dev_state = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 39
  %6 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %7)
  %cmp10.not = icmp eq i32 %7, 6
  br i1 %cmp10.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %psstatus = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 19
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %psstatus, i32 noundef 4) #10
  %8 = ptrtoint ptr %psstatus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %psstatus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp15 = icmp eq i32 %9, 4
  br i1 %cmp15, label %if.end13.cleanup_crit_edge, label %do.body19

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body19:                                        ; preds = %if.end13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_ks_wlan_hw_power_save.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_ks_wlan_hw_power_save, %if.then23)) #10
          to label %do.end34 [label %if.then23], !srcloc !141

if.then23:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #12
  %net_dev = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %10 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net_dev, align 4
  %call.i.i90 = tail call zeroext i1 @__kasan_check_read(ptr noundef %psstatus, i32 noundef 4) #10
  %12 = ptrtoint ptr %psstatus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %psstatus, align 4
  %confirm_wait = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 19, i32 2
  %call.i.i91 = tail call zeroext i1 @__kasan_check_read(ptr noundef %confirm_wait, i32 noundef 4) #10
  %14 = ptrtoint ptr %confirm_wait to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %confirm_wait, align 4
  %snooze_guard = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 19, i32 3
  %call.i.i92 = tail call zeroext i1 @__kasan_check_read(ptr noundef %snooze_guard, i32 noundef 4) #10
  %16 = ptrtoint ptr %snooze_guard to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %snooze_guard, align 4
  %qtail.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 8, i32 2
  %18 = ptrtoint ptr %qtail.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %qtail.i, align 4
  %sub.i = sub i32 1024, %19
  %qhead.i = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 8, i32 1
  %20 = ptrtoint ptr %qhead.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %qhead.i, align 4
  %add.i = add i32 %21, %sub.i
  %and.i = and i32 %add.i, 1023
  %22 = tail call i32 @llvm.smin.i32(i32 %and.i, i32 %sub.i) #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @_ks_wlan_hw_power_save.__UNIQUE_ID_ddebug339, ptr noundef %11, ptr noundef nonnull @.str.50, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %22) #10
  br label %do.end34

do.end34:                                         ; preds = %if.then23, %do.body19
  %confirm_wait36 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 19, i32 2
  %call.i.i93 = tail call zeroext i1 @__kasan_check_read(ptr noundef %confirm_wait36, i32 noundef 4) #10
  %23 = ptrtoint ptr %confirm_wait36 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %confirm_wait36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool38.not = icmp eq i32 %24, 0
  br i1 %tobool38.not, label %lor.lhs.false, label %do.end34.if.then46_crit_edge

do.end34.if.then46_crit_edge:                     ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then46

lor.lhs.false:                                    ; preds = %do.end34
  %snooze_guard40 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 19, i32 3
  %call.i.i94 = tail call zeroext i1 @__kasan_check_read(ptr noundef %snooze_guard40, i32 noundef 4) #10
  %25 = ptrtoint ptr %snooze_guard40 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %snooze_guard40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool42.not = icmp eq i32 %26, 0
  br i1 %tobool42.not, label %lor.lhs.false43, label %lor.lhs.false.if.then46_crit_edge

lor.lhs.false.if.then46_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then46

lor.lhs.false43:                                  ; preds = %lor.lhs.false
  %qtail.i96 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 8, i32 2
  %27 = ptrtoint ptr %qtail.i96 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %qtail.i96, align 4
  %qhead.i97 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 8, i32 1
  %29 = ptrtoint ptr %qhead.i97 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %qhead.i97, align 4
  %add.neg.i = xor i32 %30, -1
  %sub.i98 = add i32 %28, %add.neg.i
  %and.i99 = and i32 %sub.i98, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i99)
  %cmp.i.not = icmp eq i32 %and.i99, 0
  br i1 %cmp.i.not, label %if.end48, label %lor.lhs.false43.if.then46_crit_edge

lor.lhs.false43.if.then46_crit_edge:              ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then46

if.then46:                                        ; preds = %lor.lhs.false43.if.then46_crit_edge, %lor.lhs.false.if.then46_crit_edge, %do.end34.if.then46_crit_edge
  %wq = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 1
  %31 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wq, align 4
  %rw_dwork = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 2
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %32, ptr noundef %rw_dwork, i32 noundef 0) #10
  br label %cleanup

if.end48:                                         ; preds = %lor.lhs.false43
  %33 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %priv, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i) #10
  %37 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %ret.i, align 4, !annotation !140
  %call1.i = call zeroext i8 @sdio_readb(ptr noundef %36, i32 noundef 36, ptr noundef nonnull %ret.i) #10
  %38 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ret.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool50.not = icmp eq i32 %39, 0
  br i1 %tobool50.not, label %if.end53, label %if.end48.queue_delayed_work.sink.split_crit_edge

if.end48.queue_delayed_work.sink.split_crit_edge: ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %queue_delayed_work.sink.split

if.end53:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call1.i)
  %tobool54.not = icmp eq i8 %call1.i, 0
  br i1 %tobool54.not, label %if.end56, label %if.end53.queue_delayed_work_crit_edge

if.end53.queue_delayed_work_crit_edge:            ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %queue_delayed_work

if.end56:                                         ; preds = %if.end53
  %40 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %priv, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i100) #10
  %44 = ptrtoint ptr %ret.i100 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %ret.i100, align 4, !annotation !140
  call void @sdio_writeb(ptr noundef %43, i8 noundef zeroext 1, i32 noundef 44, ptr noundef nonnull %ret.i100) #10
  %45 = ptrtoint ptr %ret.i100 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ret.i100, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool58.not = icmp eq i32 %46, 0
  br i1 %tobool58.not, label %if.end61, label %if.end56.queue_delayed_work.sink.split_crit_edge

if.end56.queue_delayed_work.sink.split_crit_edge: ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %queue_delayed_work.sink.split

if.end61:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i95 = call zeroext i1 @__kasan_check_write(ptr noundef %psstatus, i32 noundef 4) #10
  %47 = ptrtoint ptr %psstatus to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile i32 4, ptr %psstatus, align 4
  br label %cleanup

queue_delayed_work.sink.split:                    ; preds = %if.end56.queue_delayed_work.sink.split_crit_edge, %if.end48.queue_delayed_work.sink.split_crit_edge
  %.str.48.sink = phi ptr [ @.str.22, %if.end48.queue_delayed_work.sink.split_crit_edge ], [ @.str.48, %if.end56.queue_delayed_work.sink.split_crit_edge ]
  %net_dev60 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 4
  %48 = ptrtoint ptr %net_dev60 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %net_dev60, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %49, ptr noundef nonnull %.str.48.sink) #13
  br label %queue_delayed_work

queue_delayed_work:                               ; preds = %queue_delayed_work.sink.split, %if.end53.queue_delayed_work_crit_edge
  %wq64 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 1
  %50 = ptrtoint ptr %wq64 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %wq64, align 4
  %rw_dwork65 = getelementptr inbounds %struct.ks_wlan_private, ptr %priv, i32 0, i32 2
  %call.i101 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %51, ptr noundef %rw_dwork65, i32 noundef 1) #10
  br label %cleanup

cleanup:                                          ; preds = %queue_delayed_work, %if.end61, %if.then46, %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_connect_status(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @hostif_sme_enqueue(ptr noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ks_wlan_net_stop(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @hostif_exit(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !32, !33, !35, !36, !37, !38, !39, !41, !43, !44, !45, !47, !49, !51, !53, !54, !55, !56, !58, !60, !62, !64, !66, !68, !69, !70, !72, !74, !76, !78, !79, !81, !82, !84, !85, !86, !88, !90, !92, !94, !96, !98, !99, !100, !102, !103, !105, !106, !107, !108, !110, !112, !114, !115, !116, !118, !119, !120, !122, !123, !125, !126, !128, !129}
!llvm.module.flags = !{!131, !132, !133, !134, !135, !136, !137, !138}
!llvm.ident = !{!139}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/ks7010/ks7010_sdio.c", i32 211, i32 30}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/staging/ks7010/ks7010_sdio.c", i32 390, i32 29}
!4 = !{ptr @__initcall__kmod_ks7010__349_1141_ks7010_sdio_driver_init6, !5, !"__initcall__kmod_ks7010__349_1141_ks7010_sdio_driver_init6", i1 false, i1 false}
!5 = !{!"../drivers/staging/ks7010/ks7010_sdio.c", i32 1141, i32 1}
!6 = !{ptr @__exitcall_ks7010_sdio_driver_exit, !5, !"__exitcall_ks7010_sdio_driver_exit", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author350, !8, !"__UNIQUE_ID_author350", i1 false, i1 false}
!8 = !{!"../drivers/staging/ks7010/ks7010_sdio.c", i32 1142, i32 1}
!9 = !{ptr @__UNIQUE_ID_description351, !10, !"__UNIQUE_ID_description351", i1 false, i1 false}
!10 = !{!"../drivers/staging/ks7010/ks7010_sdio.c", i32 1143, i32 1}
!11 = !{ptr @__UNIQUE_ID_file352, !12, !"__UNIQUE_ID_file352", i1 false, i1 false}
!12 = !{!"../drivers/staging/ks7010/ks7010_sdio.c", i32 1144, i32 1}
!13 = !{ptr @__UNIQUE_ID_license353, !12, !"__UNIQUE_ID_license353", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_firmware354, !15, !"__UNIQUE_ID_firmware354", i1 false, i1 false}
!15 = !{!"../drivers/staging/ks7010/ks7010_sdio.c", i32 1145, i32 1}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/ks7010/ks7010_sdio.c", i32 298, i32 29}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/ks7010/ks7010_sdio.c", i32 1135, i32 10}
!20 = !{ptr @ks7010_sdio_driver, !21, !"ks7010_sdio_driver", i1 false, i1 false}
!21 = !{!"../drivers/staging/ks7010/ks7010_sdio.c", i32 1134, i32 27}
!22 = !{ptr @ks7010_sdio_ids, !23, !"ks7010_sdio_ids", i1 false, i1 false}
!23 = !{!"../drivers/staging/ks7010/ks7010_sdio.c", i32 1127, i32 36}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/ks7010/ks7010_sdio.c", i32 972, i32 2}
!26 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ks7010_sdio_probe.__UNIQUE_ID_ddebug347, !25, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/staging/ks7010/ks7010_sdio.c", i32 987, i32 2}
!32 = !{ptr @ks7010_sdio_probe.__UNIQUE_ID_ddebug348, !31, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/staging/ks7010/ks7010_sdio.c", i32 993, i32 3}
!35 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @ks7010_sdio_probe._entry, !34, !"_entry", i1 false, i1 false}
!38 = !{ptr @ks7010_sdio_probe._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/staging/ks7010/ks7010_sdio.c", i32 997, i32 31}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/staging/ks7010/ks7010_sdio.c", i32 999, i32 3}
!43 = !{ptr @ks7010_sdio_probe._entry.13, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @ks7010_sdio_probe._entry_ptr.15, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/staging/ks7010/ks7010_sdio.c", i32 1013, i32 7}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/staging/ks7010/ks7010_sdio.c", i32 1021, i32 29}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/staging/ks7010/ks7010_sdio.c", i32 1023, i32 29}
!51 = !{ptr @ks7010_sdio_probe.__key, !52, !"__key", i1 false, i1 false}
!52 = !{!"../drivers/staging/ks7010/ks7010_sdio.c", i32 1027, i32 2}
!53 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @ks7010_sdio_probe.__key.20, !52, !"__key", i1 false, i1 false}
!55 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/staging/ks7010/ks7010_sdio.c", i32 556, i32 29}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/staging/ks7010/ks7010_sdio.c", i32 569, i32 30}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/staging/ks7010/ks7010_sdio.c", i32 585, i32 30}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/staging/ks7010/ks7010_sdio.c", i32 432, i32 29}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/staging/ks7010/ks7010_sdio.c", i32 452, i32 30}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/staging/ks7010/ks7010_sdio.c", i32 468, i32 3}
!68 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @ks_wlan_hw_rx.__UNIQUE_ID_ddebug340, !67, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/staging/ks7010/ks7010_sdio.c", i32 364, i32 8}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/staging/ks7010/ks7010_sdio.c", i32 337, i32 29}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/staging/ks7010/ks7010_sdio.c", i32 343, i32 29}
!76 = !{ptr @trx_device_init.__key, !77, !"__key", i1 false, i1 false}
!77 = !{!"../drivers/staging/ks7010/ks7010_sdio.c", i32 618, i32 2}
!78 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @trx_device_init.__key.33, !80, !"__key", i1 false, i1 false}
!80 = !{!"../drivers/staging/ks7010/ks7010_sdio.c", i32 619, i32 2}
!81 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/staging/ks7010/ks7010_sdio.c", i32 767, i32 3}
!84 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @ks7010_upload_firmware.__UNIQUE_ID_ddebug343, !83, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!86 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/staging/ks7010/ks7010_sdio.c", i32 772, i32 36}
!88 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/staging/ks7010/ks7010_sdio.c", i32 792, i32 29}
!90 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/staging/ks7010/ks7010_sdio.c", i32 684, i32 29}
!92 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/staging/ks7010/ks7010_sdio.c", i32 914, i32 29}
!94 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/staging/ks7010/ks7010_sdio.c", i32 922, i32 29}
!96 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/staging/ks7010/ks7010_sdio.c", i32 486, i32 3}
!98 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @ks7010_rw_function.__UNIQUE_ID_ddebug341, !97, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!100 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/staging/ks7010/ks7010_sdio.c", i32 493, i32 3}
!102 = !{ptr @ks7010_rw_function.__UNIQUE_ID_ddebug342, !101, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/staging/ks7010/ks7010_sdio.c", i32 494, i32 3}
!105 = !{ptr @.str.46, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @ks7010_rw_function._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @ks7010_rw_function._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.47, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/staging/ks7010/ks7010_sdio.c", i32 524, i32 29}
!110 = !{ptr @.str.48, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/staging/ks7010/ks7010_sdio.c", i32 171, i32 30}
!112 = !{ptr @.str.49, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/staging/ks7010/ks7010_sdio.c", i32 238, i32 2}
!114 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @_ks_wlan_hw_power_save.__UNIQUE_ID_ddebug339, !113, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!116 = !{ptr @.str.51, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/staging/ks7010/ks7010_sdio.c", i32 833, i32 3}
!118 = !{ptr @.str.52, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @ks7010_card_init.__UNIQUE_ID_ddebug344, !117, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!120 = !{ptr @.str.53, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/staging/ks7010/ks7010_sdio.c", i32 843, i32 3}
!122 = !{ptr @ks7010_card_init.__UNIQUE_ID_ddebug345, !121, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!123 = !{ptr @.str.54, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/staging/ks7010/ks7010_sdio.c", i32 847, i32 3}
!125 = !{ptr @ks7010_card_init.__UNIQUE_ID_ddebug346, !124, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!126 = !{ptr @init_completion.__key, !127, !"__key", i1 false, i1 false}
!127 = !{!"../include/linux/completion.h", i32 87, i32 2}
!128 = !{ptr @.str.55, !127, !"<string literal>", i1 false, i1 false}
!129 = distinct !{null, !130, !"init_events", i1 false, i1 false}
!130 = !{!"../drivers/staging/ks7010/ks7010_sdio.c", i32 809, i32 19}
!131 = !{i32 1, !"wchar_size", i32 2}
!132 = !{i32 1, !"min_enum_size", i32 4}
!133 = !{i32 8, !"branch-target-enforcement", i32 0}
!134 = !{i32 8, !"sign-return-address", i32 0}
!135 = !{i32 8, !"sign-return-address-all", i32 0}
!136 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!137 = !{i32 7, !"uwtable", i32 1}
!138 = !{i32 7, !"frame-pointer", i32 2}
!139 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!140 = !{!"auto-init"}
!141 = !{i64 2148623063, i64 2148623068, i64 2148623081, i64 2148623125, i64 2148623159, i64 2148623180}
!142 = !{i8 0, i8 2}
!143 = !{i64 2148146397, i64 2148146423, i64 2148146452, i64 2148146486, i64 2148146517, i64 2148146540}
