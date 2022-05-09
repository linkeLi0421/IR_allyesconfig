; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/microchip/wilc1000/sdio.c_pt.bc'
source_filename = "../drivers/net/wireless/microchip/wilc1000/sdio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sdio_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdio_device_id = type { i8, i16, i16, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wilc_hif_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sdio_func = type { ptr, %struct.device, ptr, i32, i8, i16, i16, i32, i32, i32, i32, ptr, i8, i8, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
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
%struct.wilc = type { ptr, ptr, i32, i8, ptr, i8, i32, i8, i32, i32, i8, %struct.list_head, %struct.mutex, %struct.srcu_struct, i8, %struct.mutex, %struct.spinlock, %struct.mutex, %struct.mutex, %struct.completion, %struct.completion, %struct.completion, %struct.completion, ptr, i32, %struct.mutex, %struct.wilc_cfg_frame, i32, i8, ptr, i32, ptr, [4 x %struct.txq_handle], i32, %struct.wilc_tx_queue_status, %struct.rxq_entry_t, ptr, ptr, i8, ptr, %struct.wilc_cfg, ptr, ptr, %struct.mutex, i8, i8, [14 x %struct.ieee80211_channel], [12 x %struct.ieee80211_rate], %struct.ieee80211_supported_band, [5 x i32] }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.wilc_cfg_frame = type { %struct.wilc_cfg_cmd_hdr, [1468 x i8] }
%struct.wilc_cfg_cmd_hdr = type { i8, i8, i16, i32 }
%struct.txq_handle = type { %struct.txq_entry_t, i16, %struct.txq_fw_recv_queue_stat }
%struct.txq_entry_t = type { %struct.list_head, i32, i8, i32, ptr, i32, ptr, i32, ptr, ptr }
%struct.txq_fw_recv_queue_stat = type { i8, i8 }
%struct.wilc_tx_queue_status = type { [1000 x i8], i16, [4 x i16], i16, i8 }
%struct.rxq_entry_t = type { %struct.list_head, ptr, i32 }
%struct.wilc_cfg = type { ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.sdio_cmd53 = type { i32, ptr, i32 }
%struct.sdio_cmd52 = type { i32 }
%struct.wilc_sdio = type { i8, i32, i32 }

@__initcall__kmod_wilc1000_sdio__516_1027_wilc_sdio_driver_init6 = internal global ptr @wilc_sdio_driver_init, section ".initcall6.init", align 4
@wilc_sdio_driver = internal global { %struct.sdio_driver, [36 x i8] } { %struct.sdio_driver { ptr @.str, ptr @wilc_sdio_ids, ptr @wilc_sdio_probe, ptr @wilc_sdio_remove, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @wilc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wilc_sdio_pm_ops, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_wilc_sdio_driver_exit = internal global ptr @wilc_sdio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file517 = internal constant [73 x i8] c"wilc1000_sdio.file=drivers/net/wireless/microchip/wilc1000/wilc1000-sdio\00", section ".modinfo", align 1
@__UNIQUE_ID_license518 = internal constant [26 x i8] c"wilc1000_sdio.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wilc1000_sdio\00", [18 x i8] zeroinitializer }, align 32
@wilc_sdio_ids = internal constant { [2 x %struct.sdio_device_id], [40 x i8] } { [2 x %struct.sdio_device_id] [%struct.sdio_device_id { i8 -1, i16 662, i16 21319, i32 0 }, %struct.sdio_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@wilc_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,wilc1000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@wilc_sdio_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @wilc_sdio_suspend, ptr @wilc_sdio_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@wilc_hif_sdio = internal constant { %struct.wilc_hif_func, [36 x i8] } { %struct.wilc_hif_func { ptr @wilc_sdio_init, ptr @wilc_sdio_deinit, ptr @wilc_sdio_read_reg, ptr @wilc_sdio_write_reg, ptr @wilc_sdio_read, ptr @wilc_sdio_write, ptr @wilc_sdio_read_int, ptr @wilc_sdio_clear_int_ext, ptr @wilc_sdio_read_size, ptr @wilc_sdio_write, ptr @wilc_sdio_read, ptr @wilc_sdio_sync_ext, ptr @wilc_sdio_enable_interrupt, ptr @wilc_sdio_disable_interrupt, ptr @wilc_sdio_reset }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rtc\00", [28 x i8] zeroinitializer }, align 32
@wilc_sdio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 156, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Driver Initializing success\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wilc_sdio_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/wireless/microchip/wilc1000/sdio.c\00", [49 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wilc_sdio_probe._entry_ptr = internal global ptr @wilc_sdio_probe._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@wilc_sdio_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 605, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Fail cmd 52, enable csa...\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wilc_sdio_init\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@wilc_sdio_init._entry_ptr = internal global ptr @wilc_sdio_init._entry, section ".printk_index", align 4
@wilc_sdio_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.4, i32 614, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Fail cmd 52, set func 0 block size...\0A\00", [57 x i8] zeroinitializer }, align 32
@wilc_sdio_init._entry_ptr.12 = internal global ptr @wilc_sdio_init._entry.10, section ".printk_index", align 4
@wilc_sdio_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.8, ptr @.str.4, i32 630, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Fail cmd 52, set IOE register...\0A\00", [62 x i8] zeroinitializer }, align 32
@wilc_sdio_init._entry_ptr.15 = internal global ptr @wilc_sdio_init._entry.13, section ".printk_index", align 4
@wilc_sdio_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.8, ptr @.str.4, i32 647, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Fail cmd 52, get IOR register...\0A\00", [62 x i8] zeroinitializer }, align 32
@wilc_sdio_init._entry_ptr.18 = internal global ptr @wilc_sdio_init._entry.16, section ".printk_index", align 4
@wilc_sdio_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.8, ptr @.str.4, i32 655, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Fail func 1 is not ready...\0A\00", [35 x i8] zeroinitializer }, align 32
@wilc_sdio_init._entry_ptr.21 = internal global ptr @wilc_sdio_init._entry.19, section ".printk_index", align 4
@wilc_sdio_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.8, ptr @.str.4, i32 664, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Fail set func 1 block size...\0A\00", [33 x i8] zeroinitializer }, align 32
@wilc_sdio_init._entry_ptr.24 = internal global ptr @wilc_sdio_init._entry.22, section ".printk_index", align 4
@wilc_sdio_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.8, ptr @.str.4, i32 678, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Fail cmd 52, set IEN register...\0A\00", [62 x i8] zeroinitializer }, align 32
@wilc_sdio_init._entry_ptr.27 = internal global ptr @wilc_sdio_init._entry.25, section ".printk_index", align 4
@wilc_sdio_init._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.8, ptr @.str.4, i32 690, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Fail cmd read chip id...\0A\00", [38 x i8] zeroinitializer }, align 32
@wilc_sdio_init._entry_ptr.30 = internal global ptr @wilc_sdio_init._entry.28, section ".printk_index", align 4
@wilc_sdio_init._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.8, ptr @.str.4, i32 693, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"chipid (%08x)\0A\00", [17 x i8] zeroinitializer }, align 32
@wilc_sdio_init._entry_ptr.33 = internal global ptr @wilc_sdio_init._entry.31, section ".printk_index", align 4
@wilc_sdio_init._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.8, ptr @.str.4, i32 700, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"has_thrpt_enh3 = %d...\0A\00", [40 x i8] zeroinitializer }, align 32
@wilc_sdio_init._entry_ptr.36 = internal global ptr @wilc_sdio_init._entry.34, section ".printk_index", align 4
@wilc_sdio_cmd52._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.4, i32 85, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s..failed, err(%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wilc_sdio_cmd52\00", [16 x i8] zeroinitializer }, align 32
@wilc_sdio_cmd52._entry_ptr = internal global ptr @wilc_sdio_cmd52._entry, section ".printk_index", align 4
@wilc_sdio_set_block_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.4, i32 314, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed cmd52, set %04x data...\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wilc_sdio_set_block_size\00", [39 x i8] zeroinitializer }, align 32
@wilc_sdio_set_block_size._entry_ptr = internal global ptr @wilc_sdio_set_block_size._entry, section ".printk_index", align 4
@wilc_sdio_set_block_size._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.4, i32 323, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@wilc_sdio_set_block_size._entry_ptr.42 = internal global ptr @wilc_sdio_set_block_size._entry.41, section ".printk_index", align 4
@wilc_sdio_read_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.4, i32 471, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed cmd 52, read reg (%08x) ...\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wilc_sdio_read_reg\00", [45 x i8] zeroinitializer }, align 32
@wilc_sdio_read_reg._entry_ptr = internal global ptr @wilc_sdio_read_reg._entry, section ".printk_index", align 4
@wilc_sdio_read_reg._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.4, i32 494, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed cmd53, read reg (%08x)...\0A\00", [62 x i8] zeroinitializer }, align 32
@wilc_sdio_read_reg._entry_ptr.47 = internal global ptr @wilc_sdio_read_reg._entry.45, section ".printk_index", align 4
@wilc_sdio_set_func0_csa_address._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.48, ptr @.str.4, i32 274, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"wilc_sdio_set_func0_csa_address\00", [32 x i8] zeroinitializer }, align 32
@wilc_sdio_set_func0_csa_address._entry_ptr = internal global ptr @wilc_sdio_set_func0_csa_address._entry, section ".printk_index", align 4
@wilc_sdio_set_func0_csa_address._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.48, ptr @.str.4, i32 283, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@wilc_sdio_set_func0_csa_address._entry_ptr.50 = internal global ptr @wilc_sdio_set_func0_csa_address._entry.49, section ".printk_index", align 4
@wilc_sdio_set_func0_csa_address._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.48, ptr @.str.4, i32 292, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@wilc_sdio_set_func0_csa_address._entry_ptr.52 = internal global ptr @wilc_sdio_set_func0_csa_address._entry.51, section ".printk_index", align 4
@wilc_sdio_cmd53._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.53, ptr @.str.4, i32 114, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wilc_sdio_cmd53\00", [16 x i8] zeroinitializer }, align 32
@wilc_sdio_cmd53._entry_ptr = internal global ptr @wilc_sdio_cmd53._entry, section ".printk_index", align 4
@wilc_sdio_write_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.54, ptr @.str.4, i32 354, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wilc_sdio_write_reg\00", [44 x i8] zeroinitializer }, align 32
@wilc_sdio_write_reg._entry_ptr = internal global ptr @wilc_sdio_write_reg._entry, section ".printk_index", align 4
@wilc_sdio_write_reg._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.4, i32 376, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed cmd53, write reg (%08x)...\0A\00", [61 x i8] zeroinitializer }, align 32
@wilc_sdio_write_reg._entry_ptr.57 = internal global ptr @wilc_sdio_write_reg._entry.55, section ".printk_index", align 4
@wilc_sdio_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.4, i32 544, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed cmd53 [%x], block read...\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wilc_sdio_read\00", [17 x i8] zeroinitializer }, align 32
@wilc_sdio_read._entry_ptr = internal global ptr @wilc_sdio_read._entry, section ".printk_index", align 4
@wilc_sdio_read._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.4, i32 568, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed cmd53 [%x], bytes read...\0A\00", [62 x i8] zeroinitializer }, align 32
@wilc_sdio_read._entry_ptr.62 = internal global ptr @wilc_sdio_read._entry.60, section ".printk_index", align 4
@wilc_sdio_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.4, i32 423, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed cmd53 [%x], block send...\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wilc_sdio_write\00", [16 x i8] zeroinitializer }, align 32
@wilc_sdio_write._entry_ptr = internal global ptr @wilc_sdio_write._entry, section ".printk_index", align 4
@wilc_sdio_write._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.4, i32 447, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed cmd53 [%x], bytes send...\0A\00", [62 x i8] zeroinitializer }, align 32
@wilc_sdio_write._entry_ptr.67 = internal global ptr @wilc_sdio_write._entry.65, section ".printk_index", align 4
@wilc_sdio_read_int._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.4, i32 760, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unexpected interrupt (1) int=%lx\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wilc_sdio_read_int\00", [45 x i8] zeroinitializer }, align 32
@wilc_sdio_read_int._entry_ptr = internal global ptr @wilc_sdio_read_int._entry, section ".printk_index", align 4
@wilc_sdio_clear_int_ext._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.4, i32 802, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed cmd52, set (%02x) data (%d) ...\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wilc_sdio_clear_int_ext\00", [40 x i8] zeroinitializer }, align 32
@wilc_sdio_clear_int_ext._entry_ptr = internal global ptr @wilc_sdio_clear_int_ext._entry, section ".printk_index", align 4
@wilc_sdio_clear_int_ext._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.4, i32 832, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@wilc_sdio_clear_int_ext._entry_ptr.73 = internal global ptr @wilc_sdio_clear_int_ext._entry.72, section ".printk_index", align 4
@wilc_sdio_clear_int_ext._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.71, ptr @.str.4, i32 843, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unexpected interrupt cleared %d...\0A\00", [60 x i8] zeroinitializer }, align 32
@wilc_sdio_clear_int_ext._entry_ptr.76 = internal global ptr @wilc_sdio_clear_int_ext._entry.74, section ".printk_index", align 4
@wilc_sdio_clear_int_ext._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.4, i32 872, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@wilc_sdio_clear_int_ext._entry_ptr.78 = internal global ptr @wilc_sdio_clear_int_ext._entry.77, section ".printk_index", align 4
@wilc_sdio_sync_ext._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.4, i32 886, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Too many interrupts (%d)...\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wilc_sdio_sync_ext\00", [45 x i8] zeroinitializer }, align 32
@wilc_sdio_sync_ext._entry_ptr = internal global ptr @wilc_sdio_sync_ext._entry, section ".printk_index", align 4
@wilc_sdio_sync_ext._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.4, i32 894, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed read misc reg...\0A\00", [39 x i8] zeroinitializer }, align 32
@wilc_sdio_sync_ext._entry_ptr.83 = internal global ptr @wilc_sdio_sync_ext._entry.81, section ".printk_index", align 4
@wilc_sdio_sync_ext._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.80, ptr @.str.4, i32 900, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed write misc reg...\0A\00", [38 x i8] zeroinitializer }, align 32
@wilc_sdio_sync_ext._entry_ptr.86 = internal global ptr @wilc_sdio_sync_ext._entry.84, section ".printk_index", align 4
@wilc_sdio_sync_ext._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.80, ptr @.str.4, i32 914, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed read reg (%08x)...\0A\00", [37 x i8] zeroinitializer }, align 32
@wilc_sdio_sync_ext._entry_ptr.89 = internal global ptr @wilc_sdio_sync_ext._entry.87, section ".printk_index", align 4
@wilc_sdio_sync_ext._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.80, ptr @.str.4, i32 921, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed write reg (%08x)...\0A\00", [36 x i8] zeroinitializer }, align 32
@wilc_sdio_sync_ext._entry_ptr.92 = internal global ptr @wilc_sdio_sync_ext._entry.90, section ".printk_index", align 4
@wilc_sdio_sync_ext._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.80, ptr @.str.4, i32 931, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@wilc_sdio_sync_ext._entry_ptr.94 = internal global ptr @wilc_sdio_sync_ext._entry.93, section ".printk_index", align 4
@wilc_sdio_sync_ext._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.80, ptr @.str.4, i32 940, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@wilc_sdio_sync_ext._entry_ptr.96 = internal global ptr @wilc_sdio_sync_ext._entry.95, section ".printk_index", align 4
@wilc_sdio_sync_ext._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.80, ptr @.str.4, i32 948, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@wilc_sdio_sync_ext._entry_ptr.98 = internal global ptr @wilc_sdio_sync_ext._entry.97, section ".printk_index", align 4
@wilc_sdio_sync_ext._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.80, ptr @.str.4, i32 959, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@wilc_sdio_sync_ext._entry_ptr.100 = internal global ptr @wilc_sdio_sync_ext._entry.99, section ".printk_index", align 4
@wilc_sdio_enable_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.4, i32 233, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"can't claim sdio_irq, err(%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wilc_sdio_enable_interrupt\00", [37 x i8] zeroinitializer }, align 32
@wilc_sdio_enable_interrupt._entry_ptr = internal global ptr @wilc_sdio_enable_interrupt._entry, section ".printk_index", align 4
@wilc_sdio_disable_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.4, i32 247, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"can't release sdio_irq, err(%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wilc_sdio_disable_interrupt\00", [36 x i8] zeroinitializer }, align 32
@wilc_sdio_disable_interrupt._entry_ptr = internal global ptr @wilc_sdio_disable_interrupt._entry, section ".printk_index", align 4
@wilc_sdio_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.4, i32 190, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Fail cmd 52, reset cmd ...\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wilc_sdio_reset\00", [16 x i8] zeroinitializer }, align 32
@wilc_sdio_reset._entry_ptr = internal global ptr @wilc_sdio_reset._entry, section ".printk_index", align 4
@wilc_sdio_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.4, i32 202, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sdio suspend\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wilc_sdio_suspend\00", [46 x i8] zeroinitializer }, align 32
@wilc_sdio_suspend._entry_ptr = internal global ptr @wilc_sdio_suspend._entry, section ".printk_index", align 4
@wilc_sdio_suspend._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.108, ptr @.str.4, i32 215, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Fail reset sdio\0A\00", [47 x i8] zeroinitializer }, align 32
@wilc_sdio_suspend._entry_ptr.111 = internal global ptr @wilc_sdio_suspend._entry.109, section ".printk_index", align 4
@wilc_sdio_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.4, i32 991, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sdio resume\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wilc_sdio_resume\00", [47 x i8] zeroinitializer }, align 32
@wilc_sdio_resume._entry_ptr = internal global ptr @wilc_sdio_resume._entry, section ".printk_index", align 4
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"wilc_sdio_driver\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 1015, i32 27 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 1016, i32 11 }
@___asan_gen_.120 = private unnamed_addr constant [14 x i8] c"wilc_sdio_ids\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 19, i32 36 }
@___asan_gen_.123 = private unnamed_addr constant [14 x i8] c"wilc_of_match\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 1004, i32 34 }
@___asan_gen_.126 = private unnamed_addr constant [17 x i8] c"wilc_sdio_pm_ops\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 1010, i32 32 }
@___asan_gen_.129 = private unnamed_addr constant [14 x i8] c"wilc_hif_sdio\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 968, i32 35 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 149, i32 58 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 156, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 605, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 614, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 629, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 646, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 655, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 664, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 678, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 690, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 693, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 699, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 85, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 313, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 322, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 470, i32 4 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 493, i32 4 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 273, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 282, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 291, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 114, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 353, i32 4 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 375, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 543, i32 4 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 567, i32 4 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 422, i32 4 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 446, i32 4 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 759, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 800, i32 5 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 830, i32 6 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 841, i32 5 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 870, i32 4 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 886, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 894, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 900, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 913, i32 4 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 920, i32 4 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 930, i32 4 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 939, i32 4 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 946, i32 5 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 957, i32 5 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 233, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 247, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 190, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 202, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 215, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.438 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.439 = private constant [50 x i8] c"../drivers/net/wireless/microchip/wilc1000/sdio.c\00", align 1
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 991, i32 2 }
@llvm.compiler.used = appending global [160 x ptr] [ptr @__UNIQUE_ID_file517, ptr @__UNIQUE_ID_license518, ptr @__exitcall_wilc_sdio_driver_exit, ptr @__initcall__kmod_wilc1000_sdio__516_1027_wilc_sdio_driver_init6, ptr @wilc_sdio_clear_int_ext._entry, ptr @wilc_sdio_clear_int_ext._entry.72, ptr @wilc_sdio_clear_int_ext._entry.74, ptr @wilc_sdio_clear_int_ext._entry.77, ptr @wilc_sdio_clear_int_ext._entry_ptr, ptr @wilc_sdio_clear_int_ext._entry_ptr.73, ptr @wilc_sdio_clear_int_ext._entry_ptr.76, ptr @wilc_sdio_clear_int_ext._entry_ptr.78, ptr @wilc_sdio_cmd52._entry, ptr @wilc_sdio_cmd52._entry_ptr, ptr @wilc_sdio_cmd53._entry, ptr @wilc_sdio_cmd53._entry_ptr, ptr @wilc_sdio_disable_interrupt._entry, ptr @wilc_sdio_disable_interrupt._entry_ptr, ptr @wilc_sdio_driver_exit, ptr @wilc_sdio_enable_interrupt._entry, ptr @wilc_sdio_enable_interrupt._entry_ptr, ptr @wilc_sdio_init._entry, ptr @wilc_sdio_init._entry.10, ptr @wilc_sdio_init._entry.13, ptr @wilc_sdio_init._entry.16, ptr @wilc_sdio_init._entry.19, ptr @wilc_sdio_init._entry.22, ptr @wilc_sdio_init._entry.25, ptr @wilc_sdio_init._entry.28, ptr @wilc_sdio_init._entry.31, ptr @wilc_sdio_init._entry.34, ptr @wilc_sdio_init._entry_ptr, ptr @wilc_sdio_init._entry_ptr.12, ptr @wilc_sdio_init._entry_ptr.15, ptr @wilc_sdio_init._entry_ptr.18, ptr @wilc_sdio_init._entry_ptr.21, ptr @wilc_sdio_init._entry_ptr.24, ptr @wilc_sdio_init._entry_ptr.27, ptr @wilc_sdio_init._entry_ptr.30, ptr @wilc_sdio_init._entry_ptr.33, ptr @wilc_sdio_init._entry_ptr.36, ptr @wilc_sdio_probe._entry, ptr @wilc_sdio_probe._entry_ptr, ptr @wilc_sdio_read._entry, ptr @wilc_sdio_read._entry.60, ptr @wilc_sdio_read._entry_ptr, ptr @wilc_sdio_read._entry_ptr.62, ptr @wilc_sdio_read_int._entry, ptr @wilc_sdio_read_int._entry_ptr, ptr @wilc_sdio_read_reg._entry, ptr @wilc_sdio_read_reg._entry.45, ptr @wilc_sdio_read_reg._entry_ptr, ptr @wilc_sdio_read_reg._entry_ptr.47, ptr @wilc_sdio_reset._entry, ptr @wilc_sdio_reset._entry_ptr, ptr @wilc_sdio_resume._entry, ptr @wilc_sdio_resume._entry_ptr, ptr @wilc_sdio_set_block_size._entry, ptr @wilc_sdio_set_block_size._entry.41, ptr @wilc_sdio_set_block_size._entry_ptr, ptr @wilc_sdio_set_block_size._entry_ptr.42, ptr @wilc_sdio_set_func0_csa_address._entry, ptr @wilc_sdio_set_func0_csa_address._entry.49, ptr @wilc_sdio_set_func0_csa_address._entry.51, ptr @wilc_sdio_set_func0_csa_address._entry_ptr, ptr @wilc_sdio_set_func0_csa_address._entry_ptr.50, ptr @wilc_sdio_set_func0_csa_address._entry_ptr.52, ptr @wilc_sdio_suspend._entry, ptr @wilc_sdio_suspend._entry.109, ptr @wilc_sdio_suspend._entry_ptr, ptr @wilc_sdio_suspend._entry_ptr.111, ptr @wilc_sdio_sync_ext._entry, ptr @wilc_sdio_sync_ext._entry.81, ptr @wilc_sdio_sync_ext._entry.84, ptr @wilc_sdio_sync_ext._entry.87, ptr @wilc_sdio_sync_ext._entry.90, ptr @wilc_sdio_sync_ext._entry.93, ptr @wilc_sdio_sync_ext._entry.95, ptr @wilc_sdio_sync_ext._entry.97, ptr @wilc_sdio_sync_ext._entry.99, ptr @wilc_sdio_sync_ext._entry_ptr, ptr @wilc_sdio_sync_ext._entry_ptr.100, ptr @wilc_sdio_sync_ext._entry_ptr.83, ptr @wilc_sdio_sync_ext._entry_ptr.86, ptr @wilc_sdio_sync_ext._entry_ptr.89, ptr @wilc_sdio_sync_ext._entry_ptr.92, ptr @wilc_sdio_sync_ext._entry_ptr.94, ptr @wilc_sdio_sync_ext._entry_ptr.96, ptr @wilc_sdio_sync_ext._entry_ptr.98, ptr @wilc_sdio_write._entry, ptr @wilc_sdio_write._entry.65, ptr @wilc_sdio_write._entry_ptr, ptr @wilc_sdio_write._entry_ptr.67, ptr @wilc_sdio_write_reg._entry, ptr @wilc_sdio_write_reg._entry.55, ptr @wilc_sdio_write_reg._entry_ptr, ptr @wilc_sdio_write_reg._entry_ptr.57, ptr @wilc_sdio_driver, ptr @.str, ptr @wilc_sdio_ids, ptr @wilc_of_match, ptr @wilc_sdio_pm_ops, ptr @wilc_hif_sdio, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.75, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.110, ptr @.str.112, ptr @.str.113], section "llvm.metadata"
@0 = internal global [109 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_sdio_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_sdio_ids to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_sdio_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_hif_sdio to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_sdio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_sdio_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_sdio_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_sdio_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_sdio_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_sdio_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_sdio_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_sdio_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_sdio_init._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_sdio_init._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_sdio_init._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_sdio_cmd52._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_sdio_set_block_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_sdio_set_block_size._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_sdio_read_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_sdio_read_reg._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_sdio_set_func0_csa_address._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_sdio_set_func0_csa_address._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_sdio_set_func0_csa_address._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_sdio_cmd53._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_sdio_write_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_sdio_write_reg._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_sdio_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_sdio_read._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_sdio_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_sdio_write._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_sdio_read_int._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_sdio_clear_int_ext._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_sdio_clear_int_ext._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_sdio_clear_int_ext._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_sdio_clear_int_ext._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_sdio_sync_ext._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_sdio_sync_ext._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_sdio_sync_ext._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_sdio_sync_ext._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_sdio_sync_ext._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_sdio_sync_ext._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_sdio_sync_ext._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_sdio_sync_ext._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_sdio_sync_ext._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_sdio_enable_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_sdio_disable_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_sdio_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_sdio_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_sdio_suspend._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_sdio_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wilc_sdio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sdio_register_driver(ptr noundef nonnull @wilc_sdio_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wilc_sdio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sdio_unregister_driver(ptr noundef nonnull @wilc_sdio_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wilc_sdio_probe(ptr noundef %func, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %wilc = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wilc) #9
  %0 = ptrtoint ptr %wilc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %wilc, align 4, !annotation !223
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 12) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1
  %call1 = call i32 @wilc_cfg80211_init(ptr noundef nonnull %wilc, ptr noundef %dev, i32 noundef 0, ptr noundef nonnull @wilc_hif_sdio) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.free_crit_edge

if.end.free_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %free

if.end4:                                          ; preds = %if.end
  %2 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %func, align 8
  %of_node = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 1, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call6 = call i32 @of_irq_get(ptr noundef %5, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp sgt i32 %call6, 0
  br i1 %cmp, label %if.then7, label %if.end4.if.end8_crit_edge

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %wilc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wilc, align 4
  %dev_irq_num = getelementptr inbounds %struct.wilc, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %dev_irq_num to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call6, ptr %dev_irq_num, align 4
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %call7.i.i, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end4.if.end8_crit_edge
  %10 = ptrtoint ptr %wilc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wilc, align 4
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 8
  %12 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %driver_data.i, align 4
  %bus_data = getelementptr inbounds %struct.wilc, ptr %11, i32 0, i32 41
  %13 = ptrtoint ptr %bus_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %bus_data, align 4
  %dev11 = getelementptr inbounds %struct.wilc, ptr %11, i32 0, i32 37
  %14 = ptrtoint ptr %dev11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev, ptr %dev11, align 4
  %15 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %func, align 8
  %dev13 = getelementptr inbounds %struct.mmc_card, ptr %16, i32 0, i32 1
  %call14 = call ptr @devm_clk_get_optional(ptr noundef %dev13, ptr noundef nonnull @.str.1) #9
  %17 = ptrtoint ptr %wilc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wilc, align 4
  %rtc_clk = getelementptr inbounds %struct.wilc, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %rtc_clk to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call14, ptr %rtc_clk, align 4
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %call14 to i32
  %dev_irq_num24 = getelementptr inbounds %struct.wilc, ptr %18, i32 0, i32 8
  %21 = ptrtoint ptr %dev_irq_num24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dev_irq_num24, align 4
  call void @irq_dispose_mapping(i32 noundef %22) #9
  %23 = ptrtoint ptr %wilc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wilc, align 4
  call void @wilc_netdev_cleanup(ptr noundef %24) #9
  br label %free

if.end20:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @clk_prepare_enable(ptr noundef %call14)
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.2) #13
  br label %cleanup

free:                                             ; preds = %if.then17, %if.end.free_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.free_crit_edge ], [ %20, %if.then17 ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %free, %if.end20, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %free ], [ 0, %if.end20 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wilc) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wilc_sdio_remove(ptr nocapture noundef readonly %func) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %bus_data = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 41
  %2 = ptrtoint ptr %bus_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_data, align 4
  %rtc_clk = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %rtc_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rtc_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #9
  tail call void @clk_unprepare(ptr noundef %5) #9
  tail call void @wilc_netdev_cleanup(ptr noundef %1) #9
  tail call void @kfree(ptr noundef %3) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_cfg80211_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @clk_prepare_enable(ptr noundef %clk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %clk) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wilc_netdev_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wilc_sdio_init(ptr nocapture noundef readonly %wilc, i1 noundef zeroext %resume) #2 align 64 {
entry:
  %cmd15.i = alloca %struct.sdio_cmd53, align 4
  %cmd.i211 = alloca %struct.sdio_cmd52, align 4
  %cmd.i = alloca %struct.sdio_cmd52, align 4
  %cmd = alloca %struct.sdio_cmd52, align 4
  %chipid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 37
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %bus_data = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 41
  %2 = ptrtoint ptr %bus_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chipid) #9
  %4 = ptrtoint ptr %chipid to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %chipid, align 4, !annotation !223
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1879048193, ptr %cmd, align 4
  %num = getelementptr i8, ptr %1, i32 932
  %6 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num, align 4
  %mul = shl i32 %7, 18
  %bf.value = and i32 %mul, 133955584
  %bf.set12 = or i32 %bf.value, -2013265405
  store i32 %bf.set12, ptr %cmd, align 4
  %call = call fastcc i32 @wilc_sdio_cmd52(ptr noundef %wilc, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.7) #13
  br label %cleanup170

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd.i) #9
  %10 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -2147467261, ptr %cmd.i, align 4
  %call.i = call fastcc i32 @wilc_sdio_cmd52(ptr noundef %wilc, ptr noundef nonnull %cmd.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  %11 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load24.i = load i32, ptr %cmd.i, align 4
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do.end19_crit_edge

if.end.do.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end19

if.end.i:                                         ; preds = %if.end
  %bf.clear27.i = and i32 %bf.load24.i, -134217725
  %bf.set35.i = or i32 %bf.clear27.i, 17416
  %12 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %bf.set35.i, ptr %cmd.i, align 4
  %call36.i = call fastcc i32 @wilc_sdio_cmd52(ptr noundef %wilc, ptr noundef nonnull %cmd.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %if.end21, label %do.end41.i

do.end41.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load43.i = load i32, ptr %cmd.i, align 4
  br label %do.end19

do.end19:                                         ; preds = %do.end41.i, %if.end.do.end19_crit_edge
  %bf.load43.sink.i = phi i32 [ %bf.load43.i, %do.end41.i ], [ %bf.load24.i, %if.end.do.end19_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call36.i, %do.end41.i ], [ %call.i, %if.end.do.end19_crit_edge ]
  %bf.lshr44.i = lshr i32 %bf.load43.sink.i, 10
  %bf.clear45.i = and i32 %bf.lshr44.i, 131071
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.39, i32 noundef %bf.clear45.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd.i) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.11) #13
  br label %cleanup170

if.end21:                                         ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd.i) #9
  %block_size = getelementptr inbounds %struct.wilc_sdio, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %block_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 512, ptr %block_size, align 4
  %15 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load22 = load i32, ptr %cmd, align 4
  %bf.set24 = and i32 %bf.load22, 3
  %bf.set36 = or i32 %bf.set24, -2013263864
  store i32 %bf.set36, ptr %cmd, align 4
  %call37 = call fastcc i32 @wilc_sdio_cmd52(ptr noundef %wilc, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end44, label %do.end42

do.end42:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.14) #13
  br label %cleanup170

if.end44:                                         ; preds = %if.end21
  %16 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load45 = load i32, ptr %cmd, align 4
  %bf.set56 = and i32 %bf.load45, 3
  %bf.clear59 = or i32 %bf.set56, 3072
  store i32 %bf.clear59, ptr %cmd, align 4
  %call61 = call fastcc i32 @wilc_sdio_cmd52(ptr noundef %wilc, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end68, label %if.end44.do.end66_crit_edge

if.end44.do.end66_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end66

do.end66:                                         ; preds = %do.cond73.2.do.end66_crit_edge, %do.cond73.1.do.end66_crit_edge, %do.cond73.do.end66_crit_edge, %if.end44.do.end66_crit_edge
  %call61.lcssa = phi i32 [ %call61, %if.end44.do.end66_crit_edge ], [ %call61.1, %do.cond73.do.end66_crit_edge ], [ %call61.2, %do.cond73.1.do.end66_crit_edge ], [ %call61.3, %do.cond73.2.do.end66_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.17) #13
  br label %cleanup170

if.end68:                                         ; preds = %if.end44
  %17 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %17)
  %bf.load69 = load i32, ptr %cmd, align 4
  %18 = and i32 %bf.load69, 1020
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %18)
  %cmp = icmp eq i32 %18, 8
  br i1 %cmp, label %if.end68.if.end82_crit_edge, label %do.cond73

if.end68.if.end82_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

do.cond73:                                        ; preds = %if.end68
  %19 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %19)
  %bf.load58.1 = load i32, ptr %cmd, align 4
  %bf.clear59.1 = and i32 %bf.load58.1, -1021
  store i32 %bf.clear59.1, ptr %cmd, align 4
  %call61.1 = call fastcc i32 @wilc_sdio_cmd52(ptr noundef %wilc, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.1)
  %tobool62.not.1 = icmp eq i32 %call61.1, 0
  br i1 %tobool62.not.1, label %if.end68.1, label %do.cond73.do.end66_crit_edge

do.cond73.do.end66_crit_edge:                     ; preds = %do.cond73
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end66

if.end68.1:                                       ; preds = %do.cond73
  %20 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load69.1 = load i32, ptr %cmd, align 4
  %21 = and i32 %bf.load69.1, 1020
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %21)
  %cmp.1 = icmp eq i32 %21, 8
  br i1 %cmp.1, label %if.end68.1.if.end82_crit_edge, label %do.cond73.1

if.end68.1.if.end82_crit_edge:                    ; preds = %if.end68.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

do.cond73.1:                                      ; preds = %if.end68.1
  %22 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %22)
  %bf.load58.2 = load i32, ptr %cmd, align 4
  %bf.clear59.2 = and i32 %bf.load58.2, -1021
  store i32 %bf.clear59.2, ptr %cmd, align 4
  %call61.2 = call fastcc i32 @wilc_sdio_cmd52(ptr noundef %wilc, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.2)
  %tobool62.not.2 = icmp eq i32 %call61.2, 0
  br i1 %tobool62.not.2, label %if.end68.2, label %do.cond73.1.do.end66_crit_edge

do.cond73.1.do.end66_crit_edge:                   ; preds = %do.cond73.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end66

if.end68.2:                                       ; preds = %do.cond73.1
  %23 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load69.2 = load i32, ptr %cmd, align 4
  %24 = and i32 %bf.load69.2, 1020
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %24)
  %cmp.2 = icmp eq i32 %24, 8
  br i1 %cmp.2, label %if.end68.2.if.end82_crit_edge, label %do.cond73.2

if.end68.2.if.end82_crit_edge:                    ; preds = %if.end68.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

do.cond73.2:                                      ; preds = %if.end68.2
  %25 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %25)
  %bf.load58.3 = load i32, ptr %cmd, align 4
  %bf.clear59.3 = and i32 %bf.load58.3, -1021
  store i32 %bf.clear59.3, ptr %cmd, align 4
  %call61.3 = call fastcc i32 @wilc_sdio_cmd52(ptr noundef %wilc, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.3)
  %tobool62.not.3 = icmp eq i32 %call61.3, 0
  br i1 %tobool62.not.3, label %do.end80, label %do.cond73.2.do.end66_crit_edge

do.cond73.2.do.end66_crit_edge:                   ; preds = %do.cond73.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end66

do.end80:                                         ; preds = %do.cond73.2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.20) #13
  br label %cleanup170

if.end82:                                         ; preds = %if.end68.2.if.end82_crit_edge, %if.end68.1.if.end82_crit_edge, %if.end68.if.end82_crit_edge
  %bf.load69.lcssa.ph = phi i32 [ %bf.load69.2, %if.end68.2.if.end82_crit_edge ], [ %bf.load69.1, %if.end68.1.if.end82_crit_edge ], [ %bf.load69, %if.end68.if.end82_crit_edge ]
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd.i211) #9
  %28 = ptrtoint ptr %cmd.i211 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -2147205117, ptr %cmd.i211, align 4
  %call.i213 = call fastcc i32 @wilc_sdio_cmd52(ptr noundef %wilc, ptr noundef nonnull %cmd.i211) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i213)
  %tobool.not.i214 = icmp eq i32 %call.i213, 0
  %29 = ptrtoint ptr %cmd.i211 to i32
  call void @__asan_load4_noabort(i32 %29)
  %bf.load24.i215 = load i32, ptr %cmd.i211, align 4
  br i1 %tobool.not.i214, label %if.end.i220, label %if.end82.do.end88_crit_edge

if.end82.do.end88_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end88

if.end.i220:                                      ; preds = %if.end82
  %bf.clear27.i216 = and i32 %bf.load24.i215, -134217725
  %bf.set35.i217 = or i32 %bf.clear27.i216, 279560
  %30 = ptrtoint ptr %cmd.i211 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %bf.set35.i217, ptr %cmd.i211, align 4
  %call36.i218 = call fastcc i32 @wilc_sdio_cmd52(ptr noundef %wilc, ptr noundef nonnull %cmd.i211) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i218)
  %tobool37.not.i219 = icmp eq i32 %call36.i218, 0
  br i1 %tobool37.not.i219, label %if.end90, label %do.end41.i222

do.end41.i222:                                    ; preds = %if.end.i220
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %cmd.i211 to i32
  call void @__asan_load4_noabort(i32 %31)
  %bf.load43.i221 = load i32, ptr %cmd.i211, align 4
  br label %do.end88

do.end88:                                         ; preds = %do.end41.i222, %if.end82.do.end88_crit_edge
  %bf.load43.sink.i223 = phi i32 [ %bf.load43.i221, %do.end41.i222 ], [ %bf.load24.i215, %if.end82.do.end88_crit_edge ]
  %retval.0.ph.i224 = phi i32 [ %call36.i218, %do.end41.i222 ], [ %call.i213, %if.end82.do.end88_crit_edge ]
  %bf.lshr44.i225 = lshr i32 %bf.load43.sink.i223, 10
  %bf.clear45.i226 = and i32 %bf.lshr44.i225, 131071
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.39, i32 noundef %bf.clear45.i226) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd.i211) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.23) #13
  br label %cleanup170

if.end90:                                         ; preds = %if.end.i220
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd.i211) #9
  %bf.set93 = and i32 %bf.load69.lcssa.ph, 3
  %bf.set105 = or i32 %bf.set93, -2013261812
  %32 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %bf.set105, ptr %cmd, align 4
  %call106 = call fastcc i32 @wilc_sdio_cmd52(ptr noundef %wilc, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.end113, label %do.end111

do.end111:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.26) #13
  br label %cleanup170

if.end113:                                        ; preds = %if.end90
  br i1 %resume, label %if.end113.cleanup170_crit_edge, label %if.then115

if.end113.cleanup170_crit_edge:                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup170

if.then115:                                       ; preds = %if.end113
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  %35 = ptrtoint ptr %bus_data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bus_data, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd15.i) #9
  %call16.i = tail call fastcc i32 @wilc_sdio_set_func0_csa_address(ptr noundef %wilc, i32 noundef 4096) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.then115.do.end121_crit_edge

if.then115.do.end121_crit_edge:                   ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end121

if.end19.i:                                       ; preds = %if.then115
  %37 = getelementptr inbounds %struct.sdio_cmd53, ptr %cmd15.i, i32 0, i32 2
  %38 = getelementptr inbounds %struct.sdio_cmd53, ptr %cmd15.i, i32 0, i32 1
  %39 = ptrtoint ptr %cmd15.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 67247620, ptr %cmd15.i, align 4
  %40 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %chipid, ptr %38, align 4
  %block_size.i = getelementptr inbounds %struct.wilc_sdio, ptr %36, i32 0, i32 1
  %41 = ptrtoint ptr %block_size.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %block_size.i, align 4
  %43 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %37, align 4
  %call39.i = call fastcc i32 @wilc_sdio_cmd53(ptr noundef %wilc, ptr noundef nonnull %cmd15.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %do.end126, label %do.end44.i

do.end44.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.46, i32 noundef 4096) #13
  br label %do.end121

do.end121:                                        ; preds = %do.end44.i, %if.then115.do.end121_crit_edge
  %retval.1.ph.i = phi i32 [ %call16.i, %if.then115.do.end121_crit_edge ], [ %call39.i, %do.end44.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd15.i) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.29) #13
  br label %cleanup170

do.end126:                                        ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd15.i) #9
  %44 = ptrtoint ptr %chipid to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %chipid, align 4
  %46 = call i32 @llvm.bswap.i32(i32 %45) #9
  %47 = ptrtoint ptr %chipid to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %chipid, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.32, i32 noundef %46) #13
  %48 = ptrtoint ptr %chipid to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %chipid, align 4
  %and = and i32 %49, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 672, i32 %and)
  %cmp160 = icmp ugt i32 %and, 672
  %spec.select = zext i1 %cmp160 to i32
  %50 = getelementptr inbounds %struct.wilc_sdio, ptr %3, i32 0, i32 2
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %spec.select, ptr %50, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.35, i32 noundef %spec.select) #13
  br label %cleanup170

cleanup170:                                       ; preds = %do.end126, %do.end121, %if.end113.cleanup170_crit_edge, %do.end111, %do.end88, %do.end80, %do.end66, %do.end42, %do.end19, %do.end
  %retval.1 = phi i32 [ %call, %do.end ], [ %retval.0.ph.i, %do.end19 ], [ %call37, %do.end42 ], [ %call61.lcssa, %do.end66 ], [ -22, %do.end80 ], [ %retval.0.ph.i224, %do.end88 ], [ %call106, %do.end111 ], [ %retval.1.ph.i, %do.end121 ], [ 0, %do.end126 ], [ 0, %if.end113.cleanup170_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chipid) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd) #9
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wilc_sdio_deinit(ptr nocapture noundef readnone %wilc) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wilc_sdio_read_reg(ptr nocapture noundef readonly %wilc, i32 noundef %addr, ptr noundef %data) #2 align 64 {
entry:
  %cmd = alloca %struct.sdio_cmd52, align 4
  %cmd15 = alloca %struct.sdio_cmd53, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 37
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %bus_data = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 41
  %2 = ptrtoint ptr %bus_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_data, align 4
  %4 = and i32 %addr, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %4)
  %5 = icmp eq i32 %4, 240
  br i1 %5, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd) #9
  %bf.value = shl nuw nsw i32 %addr, 10
  %bf.shl = and i32 %bf.value, 134216704
  %bf.set10 = or i32 %bf.shl, 1023
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %bf.set10, ptr %cmd, align 4
  %call = call fastcc i32 @wilc_sdio_cmd52(ptr noundef %wilc, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.43, i32 noundef %addr) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd) #9
  br label %cleanup51

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load13 = load i32, ptr %cmd, align 4
  %bf.lshr = lshr i32 %bf.load13, 2
  %bf.clear14 = and i32 %bf.lshr, 255
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %bf.clear14, ptr %data, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd) #9
  br label %if.end50

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd15) #9
  %call16 = tail call fastcc i32 @wilc_sdio_set_func0_csa_address(ptr noundef %wilc, i32 noundef %addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.else.cleanup47.thread_crit_edge

if.else.cleanup47.thread_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup47.thread

if.end19:                                         ; preds = %if.else
  %9 = getelementptr inbounds %struct.sdio_cmd53, ptr %cmd15, i32 0, i32 2
  %10 = getelementptr inbounds %struct.sdio_cmd53, ptr %cmd15, i32 0, i32 1
  %11 = ptrtoint ptr %cmd15 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 67247620, ptr %cmd15, align 4
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %data, ptr %10, align 4
  %block_size = getelementptr inbounds %struct.wilc_sdio, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %block_size, align 4
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %9, align 4
  %call39 = call fastcc i32 @wilc_sdio_cmd53(ptr noundef %wilc, ptr noundef nonnull %cmd15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %cleanup47, label %do.end44

do.end44:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.46, i32 noundef %addr) #13
  br label %cleanup47.thread

cleanup47.thread:                                 ; preds = %do.end44, %if.else.cleanup47.thread_crit_edge
  %retval.1.ph = phi i32 [ %call16, %if.else.cleanup47.thread_crit_edge ], [ %call39, %do.end44 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd15) #9
  br label %cleanup51

cleanup47:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd15) #9
  br label %if.end50

if.end50:                                         ; preds = %cleanup47, %if.end
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #9
  %19 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %data, align 4
  br label %cleanup51

cleanup51:                                        ; preds = %if.end50, %cleanup47.thread, %do.end
  %retval.2 = phi i32 [ 0, %if.end50 ], [ %call, %do.end ], [ %retval.1.ph, %cleanup47.thread ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wilc_sdio_write_reg(ptr nocapture noundef readonly %wilc, i32 noundef %addr, i32 noundef %data) #2 align 64 {
entry:
  %data.addr = alloca i32, align 4
  %cmd = alloca %struct.sdio_cmd52, align 4
  %cmd18 = alloca %struct.sdio_cmd53, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 37
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %bus_data = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 41
  %2 = ptrtoint ptr %bus_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_data, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %data) #9
  %5 = ptrtoint ptr %data.addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %data.addr, align 4
  %6 = and i32 %addr, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %6)
  %7 = icmp eq i32 %6, 240
  br i1 %7, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd) #9
  %bf.value = shl nuw nsw i32 %addr, 10
  %bf.shl = and i32 %bf.value, 134216704
  %bf.value12 = shl i32 %4, 2
  %bf.shl13 = and i32 %bf.value12, 1020
  %bf.clear14 = or i32 %bf.shl, %bf.shl13
  %bf.set15 = or i32 %bf.clear14, -2147483645
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %bf.set15, ptr %cmd, align 4
  %call = call fastcc i32 @wilc_sdio_cmd52(ptr noundef %wilc, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.43, i32 noundef %addr) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd) #9
  br label %cleanup51

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd18) #9
  %call19 = tail call fastcc i32 @wilc_sdio_set_func0_csa_address(ptr noundef %wilc, i32 noundef %addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %cleanup

if.end22:                                         ; preds = %if.else
  %9 = getelementptr inbounds %struct.sdio_cmd53, ptr %cmd18, i32 0, i32 2
  %10 = getelementptr inbounds %struct.sdio_cmd53, ptr %cmd18, i32 0, i32 1
  %11 = ptrtoint ptr %cmd18 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -2080236028, ptr %cmd18, align 4
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %data.addr, ptr %10, align 4
  %block_size = getelementptr inbounds %struct.wilc_sdio, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %block_size, align 4
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %9, align 4
  %call42 = call fastcc i32 @wilc_sdio_cmd53(ptr noundef %wilc, ptr noundef nonnull %cmd18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end22.cleanup.thread_crit_edge, label %do.end47

if.end22.cleanup.thread_crit_edge:                ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

do.end47:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.56, i32 noundef %addr) #13
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %do.end47, %if.end22.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd18) #9
  br label %cleanup51

cleanup:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd18) #9
  br label %cleanup51

cleanup51:                                        ; preds = %cleanup, %cleanup.thread, %if.end
  %retval.1 = phi i32 [ %call19, %cleanup ], [ %call, %if.end ], [ %call42, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wilc_sdio_read(ptr nocapture noundef readonly %wilc, i32 noundef %addr, ptr noundef %buf, i32 noundef %size) #2 align 64 {
entry:
  %cmd = alloca %struct.sdio_cmd53, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 37
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %bus_data = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 41
  %2 = ptrtoint ptr %bus_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_data, align 4
  %block_size1 = getelementptr inbounds %struct.wilc_sdio, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %block_size1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %block_size1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd) #9
  %6 = getelementptr inbounds %struct.sdio_cmd53, ptr %cmd, i32 0, i32 1
  %7 = getelementptr inbounds %struct.sdio_cmd53, ptr %cmd, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %addr)
  %cmp.not = icmp eq i32 %addr, 0
  %. = select i1 %cmp.not, i32 469762559, i32 201465855
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %., ptr %cmd, align 4
  %add = add i32 %size, 3
  %and = and i32 %add, -4
  %.frozen = freeze i32 %5
  %div = udiv i32 %and, %.frozen
  %9 = mul i32 %div, %.frozen
  %rem.decomposed = sub i32 %and, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div)
  %cmp14 = icmp sgt i32 %div, 0
  br i1 %cmp14, label %if.then15, label %entry.if.end42_crit_edge

entry.if.end42_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then15:                                        ; preds = %entry
  %bf.value = and i32 %div, 511
  %bf.clear23 = and i32 %., 469900800
  %bf.set24 = or i32 %bf.clear23, %bf.value
  %10 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %bf.set24, ptr %cmd, align 4
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %buf, ptr %6, align 4
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %5, ptr %7, align 4
  br i1 %cmp.not, label %if.then15.if.end30_crit_edge, label %if.then27

if.then15.if.end30_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then27:                                        ; preds = %if.then15
  %call = tail call fastcc i32 @wilc_sdio_set_func0_csa_address(ptr noundef %wilc, i32 noundef %addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then27.if.end30_crit_edge, label %if.then27.cleanup_crit_edge

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then27.if.end30_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.end30:                                         ; preds = %if.then27.if.end30_crit_edge, %if.then15.if.end30_crit_edge
  %call31 = call fastcc i32 @wilc_sdio_cmd53(ptr noundef %wilc, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end35, label %do.end

do.end:                                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.58, i32 noundef %addr) #13
  br label %cleanup

if.end35:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %mul = mul i32 %div, %5
  %add38 = add i32 %mul, %addr
  %addr.addr.0 = select i1 %cmp.not, i32 0, i32 %add38
  %add.ptr41 = getelementptr i8, ptr %buf, i32 %mul
  br label %if.end42

if.end42:                                         ; preds = %if.end35, %entry.if.end42_crit_edge
  %buf.addr.0 = phi ptr [ %add.ptr41, %if.end35 ], [ %buf, %entry.if.end42_crit_edge ]
  %addr.addr.1 = phi i32 [ %addr.addr.0, %if.end35 ], [ %addr, %entry.if.end42_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %cmp43 = icmp sgt i32 %rem.decomposed, 0
  br i1 %cmp43, label %if.then44, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then44:                                        ; preds = %if.end42
  %13 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load45 = load i32, ptr %cmd, align 4
  %bf.clear49 = and i32 %bf.load45, -201327104
  %bf.value52 = and i32 %rem.decomposed, 511
  %bf.set50 = or i32 %bf.value52, %bf.clear49
  %bf.set54 = or i32 %bf.set50, 67108864
  store i32 %bf.set54, ptr %cmd, align 4
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %buf.addr.0, ptr %6, align 4
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %5, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %addr.addr.1)
  %cmp57.not = icmp eq i32 %addr.addr.1, 0
  br i1 %cmp57.not, label %if.then44.if.end63_crit_edge, label %if.then58

if.then44.if.end63_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

if.then58:                                        ; preds = %if.then44
  %call59 = tail call fastcc i32 @wilc_sdio_set_func0_csa_address(ptr noundef %wilc, i32 noundef %addr.addr.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.then58.if.end63_crit_edge, label %if.then58.cleanup_crit_edge

if.then58.cleanup_crit_edge:                      ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then58.if.end63_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

if.end63:                                         ; preds = %if.then58.if.end63_crit_edge, %if.then44.if.end63_crit_edge
  %call64 = call fastcc i32 @wilc_sdio_cmd53(ptr noundef %wilc, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end63.cleanup_crit_edge, label %do.end69

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end69:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.61, i32 noundef %addr.addr.1) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end69, %if.end63.cleanup_crit_edge, %if.then58.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %do.end, %if.then27.cleanup_crit_edge
  %retval.0 = phi i32 [ %call31, %do.end ], [ %call64, %do.end69 ], [ %call, %if.then27.cleanup_crit_edge ], [ %call59, %if.then58.cleanup_crit_edge ], [ 0, %if.end63.cleanup_crit_edge ], [ 0, %if.end42.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wilc_sdio_write(ptr nocapture noundef readonly %wilc, i32 noundef %addr, ptr noundef %buf, i32 noundef %size) #2 align 64 {
entry:
  %cmd = alloca %struct.sdio_cmd53, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 37
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %bus_data = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 41
  %2 = ptrtoint ptr %bus_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_data, align 4
  %block_size1 = getelementptr inbounds %struct.wilc_sdio, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %block_size1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %block_size1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd) #9
  %6 = getelementptr inbounds %struct.sdio_cmd53, ptr %cmd, i32 0, i32 1
  %7 = getelementptr inbounds %struct.sdio_cmd53, ptr %cmd, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %addr)
  %cmp.not = icmp eq i32 %addr, 0
  %. = select i1 %cmp.not, i32 -1677721089, i32 -1946017793
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %., ptr %cmd, align 4
  %add = add i32 %size, 3
  %and = and i32 %add, -4
  %.frozen = freeze i32 %5
  %div = udiv i32 %and, %.frozen
  %9 = mul i32 %div, %.frozen
  %rem.decomposed = sub i32 %and, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div)
  %cmp14 = icmp sgt i32 %div, 0
  br i1 %cmp14, label %if.then15, label %entry.if.end42_crit_edge

entry.if.end42_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then15:                                        ; preds = %entry
  %bf.value = and i32 %div, 511
  %bf.clear23 = and i32 %., -1677582848
  %bf.set24 = or i32 %bf.clear23, %bf.value
  %10 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %bf.set24, ptr %cmd, align 4
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %buf, ptr %6, align 4
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %5, ptr %7, align 4
  br i1 %cmp.not, label %if.then15.if.end30_crit_edge, label %if.then27

if.then15.if.end30_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then27:                                        ; preds = %if.then15
  %call = tail call fastcc i32 @wilc_sdio_set_func0_csa_address(ptr noundef %wilc, i32 noundef %addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then27.if.end30_crit_edge, label %if.then27.cleanup_crit_edge

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then27.if.end30_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.end30:                                         ; preds = %if.then27.if.end30_crit_edge, %if.then15.if.end30_crit_edge
  %call31 = call fastcc i32 @wilc_sdio_cmd53(ptr noundef %wilc, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end35, label %do.end

do.end:                                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.63, i32 noundef %addr) #13
  br label %cleanup

if.end35:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %mul = mul i32 %div, %5
  %add38 = add i32 %mul, %addr
  %addr.addr.0 = select i1 %cmp.not, i32 0, i32 %add38
  %add.ptr41 = getelementptr i8, ptr %buf, i32 %mul
  br label %if.end42

if.end42:                                         ; preds = %if.end35, %entry.if.end42_crit_edge
  %buf.addr.0 = phi ptr [ %add.ptr41, %if.end35 ], [ %buf, %entry.if.end42_crit_edge ]
  %addr.addr.1 = phi i32 [ %addr.addr.0, %if.end35 ], [ %addr, %entry.if.end42_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %cmp43 = icmp sgt i32 %rem.decomposed, 0
  br i1 %cmp43, label %if.then44, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then44:                                        ; preds = %if.end42
  %13 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load45 = load i32, ptr %cmd, align 4
  %bf.clear49 = and i32 %bf.load45, -201327104
  %bf.value52 = and i32 %rem.decomposed, 511
  %bf.set50 = or i32 %bf.value52, %bf.clear49
  %bf.set54 = or i32 %bf.set50, 67108864
  store i32 %bf.set54, ptr %cmd, align 4
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %buf.addr.0, ptr %6, align 4
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %5, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %addr.addr.1)
  %cmp57.not = icmp eq i32 %addr.addr.1, 0
  br i1 %cmp57.not, label %if.then44.if.end63_crit_edge, label %if.then58

if.then44.if.end63_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

if.then58:                                        ; preds = %if.then44
  %call59 = tail call fastcc i32 @wilc_sdio_set_func0_csa_address(ptr noundef %wilc, i32 noundef %addr.addr.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.then58.if.end63_crit_edge, label %if.then58.cleanup_crit_edge

if.then58.cleanup_crit_edge:                      ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then58.if.end63_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

if.end63:                                         ; preds = %if.then58.if.end63_crit_edge, %if.then44.if.end63_crit_edge
  %call64 = call fastcc i32 @wilc_sdio_cmd53(ptr noundef %wilc, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end63.cleanup_crit_edge, label %do.end69

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end69:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.66, i32 noundef %addr.addr.1) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end69, %if.end63.cleanup_crit_edge, %if.then58.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %do.end, %if.then27.cleanup_crit_edge
  %retval.0 = phi i32 [ %call31, %do.end ], [ %call64, %do.end69 ], [ %call, %if.then27.cleanup_crit_edge ], [ %call59, %if.then58.cleanup_crit_edge ], [ 0, %if.end63.cleanup_crit_edge ], [ 0, %if.end42.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wilc_sdio_read_int(ptr nocapture noundef readonly %wilc, ptr nocapture noundef writeonly %int_status) #2 align 64 {
entry:
  %cmd.i = alloca %struct.sdio_cmd52, align 4
  %cmd = alloca %struct.sdio_cmd52, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 37
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %bus_data = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 41
  %2 = ptrtoint ptr %bus_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd.i) #9
  %4 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 247811, ptr %cmd.i, align 4
  %call.i = call fastcc i32 @wilc_sdio_cmd52(ptr noundef %wilc, ptr noundef nonnull %cmd.i) #9
  %5 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load13.i = load i32, ptr %cmd.i, align 4
  %bf.clear16.i = and i32 %bf.load13.i, -134217725
  %bf.set17.i = or i32 %bf.clear16.i, 248832
  store i32 %bf.set17.i, ptr %cmd.i, align 4
  %call21.i = call fastcc i32 @wilc_sdio_cmd52(ptr noundef %wilc, ptr noundef nonnull %cmd.i) #9
  %6 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load22.i = load i32, ptr %cmd.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd.i) #9
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %3, align 4, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  %spec.select = select i1 %tobool.not, i32 268439555, i32 252931
  %9 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %spec.select, ptr %cmd, align 4
  %call20 = call fastcc i32 @wilc_sdio_cmd52(ptr noundef %wilc, ptr noundef nonnull %cmd)
  %10 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load21 = load i32, ptr %cmd, align 4
  %and66 = lshr i32 %bf.load21, 3
  %shr = and i32 %and66, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %tobool67.not = icmp eq i32 %shr, 0
  br i1 %tobool67.not, label %entry.if.end92_crit_edge, label %do.end71

entry.if.end92_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

do.end71:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.68, i32 noundef %shr) #13
  br label %if.end92

if.end92:                                         ; preds = %do.end71, %entry.if.end92_crit_edge
  %11 = shl i32 %bf.load22.i, 6
  %shl.i = and i32 %11, 65280
  %bf.lshr.i = lshr i32 %bf.load13.i, 2
  %bf.clear14.i = and i32 %bf.lshr.i, 255
  %or.i = or i32 %shl.i, %bf.clear14.i
  %12 = shl i32 %bf.load21, 14
  %and48 = and i32 %12, 4128768
  %or = or i32 %or.i, %and48
  %13 = ptrtoint ptr %int_status to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or, ptr %int_status, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wilc_sdio_clear_int_ext(ptr nocapture noundef readonly %wilc, i32 noundef %val) #2 align 64 {
entry:
  %cmd = alloca %struct.sdio_cmd52, align 4
  %cmd48 = alloca %struct.sdio_cmd52, align 4
  %cmd127 = alloca %struct.sdio_cmd52, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 37
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %bus_data = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 41
  %2 = ptrtoint ptr %bus_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_data, align 4
  %has_thrpt_enh3 = getelementptr inbounds %struct.wilc_sdio, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %has_thrpt_enh3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %has_thrpt_enh3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %3, align 4, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool41.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end39, label %if.then

if.then:                                          ; preds = %entry
  %and = and i32 %val, 31
  %spec.select = select i1 %tobool41.not, i32 0, i32 %and
  %and3 = lshr i32 %val, 1
  %8 = and i32 %and3, 224
  %9 = or i32 %8, %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool17.not = icmp eq i32 %9, 0
  br i1 %tobool17.not, label %if.then.cleanup160_crit_edge, label %if.then18

if.then.cleanup160_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup160

if.then18:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd) #9
  %bf.value = shl nuw nsw i32 %9, 2
  %bf.set30 = or i32 %bf.value, -2147229693
  %10 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %bf.set30, ptr %cmd, align 4
  %call = call fastcc i32 @wilc_sdio_cmd52(ptr noundef %wilc, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool31.not = icmp eq i32 %call, 0
  br i1 %tobool31.not, label %if.end37.critedge, label %do.end

do.end:                                           ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load34 = load i32, ptr %cmd, align 4
  %bf.lshr = lshr i32 %bf.load34, 10
  %bf.clear35 = and i32 %bf.lshr, 131071
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.70, i32 noundef %bf.clear35, i32 noundef 802) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd) #9
  br label %cleanup160

if.end37.critedge:                                ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd) #9
  br label %cleanup160

if.end39:                                         ; preds = %entry
  br i1 %tobool41.not, label %if.end39.if.end109_crit_edge, label %if.then42

if.end39.if.end109_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109

if.then42:                                        ; preds = %if.end39
  %and43 = and i32 %val, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not221 = icmp eq i32 %and43, 0
  br i1 %tobool44.not221, label %if.then42.if.end109_crit_edge, label %for.body.preheader

if.then42.if.end109_crit_edge:                    ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109

for.body.preheader:                               ; preds = %if.then42
  %and45 = and i32 %val, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %for.body.preheader.for.body89_crit_edge, label %if.then47

for.body.preheader.for.body89_crit_edge:          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body89

for.cond84.preheader:                             ; preds = %if.then47
  %and79 = and i32 %val, 30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd48) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool87.not223 = icmp eq i32 %and79, 0
  br i1 %tobool87.not223, label %for.cond84.preheader.if.end109_crit_edge, label %for.cond84.preheader.for.body89_crit_edge

for.cond84.preheader.for.body89_crit_edge:        ; preds = %for.cond84.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body89

for.cond84.preheader.if.end109_crit_edge:         ; preds = %for.cond84.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109

if.then47:                                        ; preds = %for.body.preheader
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd48) #9
  %12 = ptrtoint ptr %cmd48 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -2147229689, ptr %cmd48, align 4
  %call67 = call fastcc i32 @wilc_sdio_cmd52(ptr noundef %wilc, ptr noundef nonnull %cmd48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %for.cond84.preheader, label %cleanup105

for.body89:                                       ; preds = %for.cond84.preheader.for.body89_crit_edge, %for.body.preheader.for.body89_crit_edge
  %flags.3224.ph = phi i32 [ %and79, %for.cond84.preheader.for.body89_crit_edge ], [ %and43, %for.body.preheader.for.body89_crit_edge ]
  %and91 = and i32 %flags.3224.ph, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %for.body89.for.inc102_crit_edge, label %do.end96

for.body89.for.inc102_crit_edge:                  ; preds = %for.body89
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc102

do.end96:                                         ; preds = %for.body89
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.75, i32 noundef 1) #13
  %and100 = and i32 %flags.3224.ph, 29
  br label %for.inc102

for.inc102:                                       ; preds = %do.end96, %for.body89.for.inc102_crit_edge
  %flags.4 = phi i32 [ %and100, %do.end96 ], [ %flags.3224.ph, %for.body89.for.inc102_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags.4)
  %tobool87.not = icmp eq i32 %flags.4, 0
  br i1 %tobool87.not, label %for.inc102.if.end109_crit_edge, label %for.body89.1

for.inc102.if.end109_crit_edge:                   ; preds = %for.inc102
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109

for.body89.1:                                     ; preds = %for.inc102
  %and91.1 = and i32 %flags.4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91.1)
  %tobool92.not.1 = icmp eq i32 %and91.1, 0
  br i1 %tobool92.not.1, label %for.body89.1.for.inc102.1_crit_edge, label %do.end96.1

for.body89.1.for.inc102.1_crit_edge:              ; preds = %for.body89.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc102.1

do.end96.1:                                       ; preds = %for.body89.1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.75, i32 noundef 2) #13
  %and100.1 = and i32 %flags.4, -5
  br label %for.inc102.1

for.inc102.1:                                     ; preds = %do.end96.1, %for.body89.1.for.inc102.1_crit_edge
  %flags.4.1 = phi i32 [ %and100.1, %do.end96.1 ], [ %flags.4, %for.body89.1.for.inc102.1_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags.4.1)
  %tobool87.not.1 = icmp eq i32 %flags.4.1, 0
  br i1 %tobool87.not.1, label %for.inc102.1.if.end109_crit_edge, label %for.body89.2

for.inc102.1.if.end109_crit_edge:                 ; preds = %for.inc102.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109

for.body89.2:                                     ; preds = %for.inc102.1
  %and91.2 = and i32 %flags.4.1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91.2)
  %tobool92.not.2 = icmp eq i32 %and91.2, 0
  br i1 %tobool92.not.2, label %for.body89.2.for.inc102.2_crit_edge, label %do.end96.2

for.body89.2.for.inc102.2_crit_edge:              ; preds = %for.body89.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc102.2

do.end96.2:                                       ; preds = %for.body89.2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.75, i32 noundef 3) #13
  %and100.2 = and i32 %flags.4.1, -9
  br label %for.inc102.2

for.inc102.2:                                     ; preds = %do.end96.2, %for.body89.2.for.inc102.2_crit_edge
  %flags.4.2 = phi i32 [ %and100.2, %do.end96.2 ], [ %flags.4.1, %for.body89.2.for.inc102.2_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags.4.2)
  %tobool87.not.2 = icmp eq i32 %flags.4.2, 0
  %and91.3 = and i32 %flags.4.2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91.3)
  %tobool92.not.3 = icmp eq i32 %and91.3, 0
  %or.cond = or i1 %tobool87.not.2, %tobool92.not.3
  br i1 %or.cond, label %for.inc102.2.if.end109_crit_edge, label %do.end96.3

for.inc102.2.if.end109_crit_edge:                 ; preds = %for.inc102.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109

do.end96.3:                                       ; preds = %for.inc102.2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.75, i32 noundef 4) #13
  br label %if.end109

cleanup105:                                       ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %cmd48 to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load74 = load i32, ptr %cmd48, align 4
  %bf.lshr75 = lshr i32 %bf.load74, 10
  %bf.clear76 = and i32 %bf.lshr75, 131071
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.70, i32 noundef %bf.clear76, i32 noundef 832) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd48) #9
  br label %cleanup160

if.end109:                                        ; preds = %do.end96.3, %for.inc102.2.if.end109_crit_edge, %for.inc102.1.if.end109_crit_edge, %for.inc102.if.end109_crit_edge, %for.cond84.preheader.if.end109_crit_edge, %if.then42.if.end109_crit_edge, %if.end39.if.end109_crit_edge
  %and110 = lshr i32 %val, 6
  %14 = and i32 %and110, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool125.not = icmp eq i32 %14, 0
  br i1 %tobool125.not, label %if.end109.cleanup160_crit_edge, label %if.then126

if.end109.cleanup160_crit_edge:                   ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup160

if.then126:                                       ; preds = %if.end109
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd127) #9
  %bf.value141 = shl nuw nsw i32 %14, 2
  %bf.set144 = or i32 %bf.value141, -2147231741
  %15 = ptrtoint ptr %cmd127 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %bf.set144, ptr %cmd127, align 4
  %call145 = call fastcc i32 @wilc_sdio_cmd52(ptr noundef %wilc, ptr noundef nonnull %cmd127)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %cleanup156.thread, label %cleanup156

cleanup156.thread:                                ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd127) #9
  br label %cleanup160

cleanup156:                                       ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %cmd127 to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load152 = load i32, ptr %cmd127, align 4
  %bf.lshr153 = lshr i32 %bf.load152, 10
  %bf.clear154 = and i32 %bf.lshr153, 131071
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.70, i32 noundef %bf.clear154, i32 noundef 872) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd127) #9
  br label %cleanup160

cleanup160:                                       ; preds = %cleanup156, %cleanup156.thread, %if.end109.cleanup160_crit_edge, %cleanup105, %if.end37.critedge, %do.end, %if.then.cleanup160_crit_edge
  %retval.8 = phi i32 [ %call145, %cleanup156 ], [ %call67, %cleanup105 ], [ %call, %do.end ], [ 0, %if.end37.critedge ], [ 0, %if.then.cleanup160_crit_edge ], [ 0, %cleanup156.thread ], [ 0, %if.end109.cleanup160_crit_edge ]
  ret i32 %retval.8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wilc_sdio_read_size(ptr nocapture noundef readonly %wilc, ptr nocapture noundef writeonly %size) #2 align 64 {
entry:
  %cmd = alloca %struct.sdio_cmd52, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd) #9
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 247811, ptr %cmd, align 4
  %call = call fastcc i32 @wilc_sdio_cmd52(ptr noundef %wilc, ptr noundef nonnull %cmd)
  %1 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %1)
  %bf.load13 = load i32, ptr %cmd, align 4
  %bf.lshr = lshr i32 %bf.load13, 2
  %bf.clear14 = and i32 %bf.lshr, 255
  %bf.clear16 = and i32 %bf.load13, -134217725
  %bf.set17 = or i32 %bf.clear16, 248832
  store i32 %bf.set17, ptr %cmd, align 4
  %call21 = call fastcc i32 @wilc_sdio_cmd52(ptr noundef %wilc, ptr noundef nonnull %cmd)
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load22 = load i32, ptr %cmd, align 4
  %3 = shl i32 %bf.load22, 6
  %shl = and i32 %3, 65280
  %or = or i32 %shl, %bf.clear14
  %4 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %size, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wilc_sdio_sync_ext(ptr noundef readonly %wilc, i32 noundef %nint) #2 align 64 {
entry:
  %data.addr.i209 = alloca i32, align 4
  %cmd18.i210 = alloca %struct.sdio_cmd53, align 4
  %cmd15.i194 = alloca %struct.sdio_cmd53, align 4
  %data.addr.i179 = alloca i32, align 4
  %cmd18.i180 = alloca %struct.sdio_cmd53, align 4
  %cmd15.i164 = alloca %struct.sdio_cmd53, align 4
  %data.addr.i149 = alloca i32, align 4
  %cmd18.i150 = alloca %struct.sdio_cmd53, align 4
  %cmd15.i134 = alloca %struct.sdio_cmd53, align 4
  %data.addr.i = alloca i32, align 4
  %cmd18.i = alloca %struct.sdio_cmd53, align 4
  %cmd15.i = alloca %struct.sdio_cmd53, align 4
  %reg = alloca i32, align 4
  %reg18 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 37
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %bus_data = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 41
  %2 = ptrtoint ptr %bus_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #9
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %reg, align 4, !annotation !223
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %nint)
  %cmp = icmp sgt i32 %nint, 5
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.79, i32 noundef %nint) #13
  br label %cleanup88

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd15.i) #9
  %call16.i = tail call fastcc i32 @wilc_sdio_set_func0_csa_address(ptr noundef %wilc, i32 noundef 5160) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.end.do.end5_crit_edge

if.end.do.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end5

if.end19.i:                                       ; preds = %if.end
  %5 = getelementptr inbounds %struct.sdio_cmd53, ptr %cmd15.i, i32 0, i32 2
  %6 = getelementptr inbounds %struct.sdio_cmd53, ptr %cmd15.i, i32 0, i32 1
  %7 = ptrtoint ptr %cmd15.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 67247620, ptr %cmd15.i, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %reg, ptr %6, align 4
  %block_size.i = getelementptr inbounds %struct.wilc_sdio, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %block_size.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %block_size.i, align 4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %5, align 4
  %call39.i = call fastcc i32 @wilc_sdio_cmd53(ptr noundef %wilc, ptr noundef nonnull %cmd15.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %if.end7, label %do.end44.i

do.end44.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.46, i32 noundef 5160) #13
  br label %do.end5

do.end5:                                          ; preds = %do.end44.i, %if.end.do.end5_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd15.i) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.82) #13
  br label %cleanup88

if.end7:                                          ; preds = %if.end19.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd15.i) #9
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg, align 4
  %14 = and i32 %13, -65537
  %15 = call i32 @llvm.bswap.i32(i32 %14)
  %16 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %reg, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.addr.i)
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %19 = ptrtoint ptr %bus_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus_data, align 4
  %21 = ptrtoint ptr %data.addr.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %14, ptr %data.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd18.i) #9
  %call19.i = call fastcc i32 @wilc_sdio_set_func0_csa_address(ptr noundef %wilc, i32 noundef 5160) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %wilc_sdio_write_reg.exit.thread

if.end22.i:                                       ; preds = %if.end7
  %22 = getelementptr inbounds %struct.sdio_cmd53, ptr %cmd18.i, i32 0, i32 2
  %23 = getelementptr inbounds %struct.sdio_cmd53, ptr %cmd18.i, i32 0, i32 1
  %24 = ptrtoint ptr %cmd18.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -2080236028, ptr %cmd18.i, align 4
  %25 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %data.addr.i, ptr %23, align 4
  %block_size.i133 = getelementptr inbounds %struct.wilc_sdio, ptr %20, i32 0, i32 1
  %26 = ptrtoint ptr %block_size.i133 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %block_size.i133, align 4
  %28 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %22, align 4
  %call42.i = call fastcc i32 @wilc_sdio_cmd53(ptr noundef %wilc, ptr noundef nonnull %cmd18.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %if.end15, label %wilc_sdio_write_reg.exit

wilc_sdio_write_reg.exit.thread:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd18.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.addr.i)
  br label %do.end13

wilc_sdio_write_reg.exit:                         ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.56, i32 noundef 5160) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd18.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.addr.i)
  br label %do.end13

do.end13:                                         ; preds = %wilc_sdio_write_reg.exit, %wilc_sdio_write_reg.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.85) #13
  br label %cleanup88

if.end15:                                         ; preds = %if.end22.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd18.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.addr.i)
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %3, align 4, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool16.not = icmp eq i8 %30, 0
  br i1 %tobool16.not, label %if.end15.cleanup88_crit_edge, label %if.then17

if.end15.cleanup88_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup88

if.then17:                                        ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg18) #9
  %31 = ptrtoint ptr %reg18 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %reg18, align 4, !annotation !223
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %34 = ptrtoint ptr %bus_data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bus_data, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd15.i134) #9
  %call16.i137 = call fastcc i32 @wilc_sdio_set_func0_csa_address(ptr noundef %wilc, i32 noundef 5128) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i137)
  %tobool17.not.i138 = icmp eq i32 %call16.i137, 0
  br i1 %tobool17.not.i138, label %if.end19.i142, label %if.then17.do.end24_crit_edge

if.then17.do.end24_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end24

if.end19.i142:                                    ; preds = %if.then17
  %36 = getelementptr inbounds %struct.sdio_cmd53, ptr %cmd15.i134, i32 0, i32 2
  %37 = getelementptr inbounds %struct.sdio_cmd53, ptr %cmd15.i134, i32 0, i32 1
  %38 = ptrtoint ptr %cmd15.i134 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 67247620, ptr %cmd15.i134, align 4
  %39 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %reg18, ptr %37, align 4
  %block_size.i139 = getelementptr inbounds %struct.wilc_sdio, ptr %35, i32 0, i32 1
  %40 = ptrtoint ptr %block_size.i139 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %block_size.i139, align 4
  %42 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %36, align 4
  %call39.i140 = call fastcc i32 @wilc_sdio_cmd53(ptr noundef %wilc, ptr noundef nonnull %cmd15.i134) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i140)
  %tobool40.not.i141 = icmp eq i32 %call39.i140, 0
  br i1 %tobool40.not.i141, label %if.end26, label %do.end44.i143

do.end44.i143:                                    ; preds = %if.end19.i142
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.46, i32 noundef 5128) #13
  br label %do.end24

do.end24:                                         ; preds = %do.end44.i143, %if.then17.do.end24_crit_edge
  %retval.1.ph.i144 = phi i32 [ %call16.i137, %if.then17.do.end24_crit_edge ], [ %call39.i140, %do.end44.i143 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd15.i134) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.88, i32 noundef 5128) #13
  br label %cleanup.thread

if.end26:                                         ; preds = %if.end19.i142
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd15.i134) #9
  %43 = ptrtoint ptr %reg18 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %reg18, align 4
  %45 = or i32 %44, 65536
  %46 = call i32 @llvm.bswap.i32(i32 %45)
  %47 = ptrtoint ptr %reg18 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %reg18, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.addr.i149)
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 4
  %50 = ptrtoint ptr %bus_data to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bus_data, align 4
  %52 = ptrtoint ptr %data.addr.i149 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %45, ptr %data.addr.i149, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd18.i150) #9
  %call19.i153 = call fastcc i32 @wilc_sdio_set_func0_csa_address(ptr noundef %wilc, i32 noundef 5128) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i153)
  %tobool20.not.i154 = icmp eq i32 %call19.i153, 0
  br i1 %tobool20.not.i154, label %if.end22.i158, label %wilc_sdio_write_reg.exit163.thread

if.end22.i158:                                    ; preds = %if.end26
  %53 = getelementptr inbounds %struct.sdio_cmd53, ptr %cmd18.i150, i32 0, i32 2
  %54 = getelementptr inbounds %struct.sdio_cmd53, ptr %cmd18.i150, i32 0, i32 1
  %55 = ptrtoint ptr %cmd18.i150 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -2080236028, ptr %cmd18.i150, align 4
  %56 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %data.addr.i149, ptr %54, align 4
  %block_size.i155 = getelementptr inbounds %struct.wilc_sdio, ptr %51, i32 0, i32 1
  %57 = ptrtoint ptr %block_size.i155 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %block_size.i155, align 4
  %59 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %53, align 4
  %call42.i156 = call fastcc i32 @wilc_sdio_cmd53(ptr noundef %wilc, ptr noundef nonnull %cmd18.i150) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i156)
  %tobool43.not.i157 = icmp eq i32 %call42.i156, 0
  br i1 %tobool43.not.i157, label %if.end34, label %wilc_sdio_write_reg.exit163

wilc_sdio_write_reg.exit163.thread:               ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd18.i150) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.addr.i149)
  br label %do.end32

wilc_sdio_write_reg.exit163:                      ; preds = %if.end22.i158
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.56, i32 noundef 5128) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd18.i150) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.addr.i149)
  br label %do.end32

do.end32:                                         ; preds = %wilc_sdio_write_reg.exit163, %wilc_sdio_write_reg.exit163.thread
  %retval.1.i162234 = phi i32 [ %call19.i153, %wilc_sdio_write_reg.exit163.thread ], [ %call42.i156, %wilc_sdio_write_reg.exit163 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.91, i32 noundef 5128) #13
  br label %cleanup.thread

if.end34:                                         ; preds = %if.end22.i158
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd18.i150) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.addr.i149)
  %60 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev, align 4
  %62 = ptrtoint ptr %bus_data to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bus_data, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd15.i164) #9
  %call16.i167 = call fastcc i32 @wilc_sdio_set_func0_csa_address(ptr noundef %wilc, i32 noundef 6656) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i167)
  %tobool17.not.i168 = icmp eq i32 %call16.i167, 0
  br i1 %tobool17.not.i168, label %if.end19.i172, label %if.end34.do.end40_crit_edge

if.end34.do.end40_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end40

if.end19.i172:                                    ; preds = %if.end34
  %64 = getelementptr inbounds %struct.sdio_cmd53, ptr %cmd15.i164, i32 0, i32 2
  %65 = getelementptr inbounds %struct.sdio_cmd53, ptr %cmd15.i164, i32 0, i32 1
  %66 = ptrtoint ptr %cmd15.i164 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 67247620, ptr %cmd15.i164, align 4
  %67 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %reg18, ptr %65, align 4
  %block_size.i169 = getelementptr inbounds %struct.wilc_sdio, ptr %63, i32 0, i32 1
  %68 = ptrtoint ptr %block_size.i169 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %block_size.i169, align 4
  %70 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %64, align 4
  %call39.i170 = call fastcc i32 @wilc_sdio_cmd53(ptr noundef %wilc, ptr noundef nonnull %cmd15.i164) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i170)
  %tobool40.not.i171 = icmp eq i32 %call39.i170, 0
  br i1 %tobool40.not.i171, label %wilc_sdio_read_reg.exit178, label %do.end44.i173

do.end44.i173:                                    ; preds = %if.end19.i172
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.46, i32 noundef 6656) #13
  br label %do.end40

wilc_sdio_read_reg.exit178:                       ; preds = %if.end19.i172
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd15.i164) #9
  %71 = ptrtoint ptr %reg18 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %reg18, align 4
  %73 = call i32 @llvm.bswap.i32(i32 %72) #9
  %74 = ptrtoint ptr %reg18 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %reg18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nint)
  %cmp44256 = icmp sgt i32 %nint, 0
  br i1 %cmp44256, label %for.body.preheader, label %wilc_sdio_read_reg.exit178.for.end_crit_edge

wilc_sdio_read_reg.exit178.for.end_crit_edge:     ; preds = %wilc_sdio_read_reg.exit178
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.preheader:                               ; preds = %wilc_sdio_read_reg.exit178
  %75 = add nsw i32 %nint, -1
  %or45 = or i32 %73, 134217728
  %dec = add nsw i32 %nint, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %exitcond.not = icmp eq i32 %75, 0
  br i1 %exitcond.not, label %for.body.preheader.for.cond.for.end_crit_edge_crit_edge, label %for.body.1

for.body.preheader.for.cond.for.end_crit_edge_crit_edge: ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.for.end_crit_edge

do.end40:                                         ; preds = %do.end44.i173, %if.end34.do.end40_crit_edge
  %retval.1.ph.i174 = phi i32 [ %call16.i167, %if.end34.do.end40_crit_edge ], [ %call39.i170, %do.end44.i173 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd15.i164) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.88, i32 noundef 6656) #13
  br label %cleanup.thread

for.body.1:                                       ; preds = %for.body.preheader
  %or45.1 = or i32 %73, 402653184
  %dec.1 = add nsw i32 %nint, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %75)
  %exitcond.not.1 = icmp eq i32 %75, 1
  br i1 %exitcond.not.1, label %for.body.1.for.cond.for.end_crit_edge_crit_edge, label %for.body.2

for.body.1.for.cond.for.end_crit_edge_crit_edge:  ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.for.end_crit_edge

for.body.2:                                       ; preds = %for.body.1
  %or45.2 = or i32 %73, 939524096
  %dec.2 = add nsw i32 %nint, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %75)
  %exitcond.not.2 = icmp eq i32 %75, 2
  br i1 %exitcond.not.2, label %for.body.2.for.cond.for.end_crit_edge_crit_edge, label %for.body.3

for.body.2.for.cond.for.end_crit_edge_crit_edge:  ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.for.end_crit_edge

for.body.3:                                       ; preds = %for.body.2
  %or45.3 = or i32 %73, 2013265920
  %dec.3 = add nsw i32 %nint, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %75)
  %exitcond.not.3 = icmp eq i32 %75, 3
  br i1 %exitcond.not.3, label %for.body.3.for.cond.for.end_crit_edge_crit_edge, label %for.body.4

for.body.3.for.cond.for.end_crit_edge_crit_edge:  ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.for.end_crit_edge

for.body.4:                                       ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #11
  %or45.4 = or i32 %73, -134217728
  %dec.4 = add nsw i32 %nint, -5
  br label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.body.4, %for.body.3.for.cond.for.end_crit_edge_crit_edge, %for.body.2.for.cond.for.end_crit_edge_crit_edge, %for.body.1.for.cond.for.end_crit_edge_crit_edge, %for.body.preheader.for.cond.for.end_crit_edge_crit_edge
  %or45.lcssa = phi i32 [ %or45, %for.body.preheader.for.cond.for.end_crit_edge_crit_edge ], [ %or45.1, %for.body.1.for.cond.for.end_crit_edge_crit_edge ], [ %or45.2, %for.body.2.for.cond.for.end_crit_edge_crit_edge ], [ %or45.3, %for.body.3.for.cond.for.end_crit_edge_crit_edge ], [ %or45.4, %for.body.4 ]
  %dec.lcssa = phi i32 [ %dec, %for.body.preheader.for.cond.for.end_crit_edge_crit_edge ], [ %dec.1, %for.body.1.for.cond.for.end_crit_edge_crit_edge ], [ %dec.2, %for.body.2.for.cond.for.end_crit_edge_crit_edge ], [ %dec.3, %for.body.3.for.cond.for.end_crit_edge_crit_edge ], [ %dec.4, %for.body.4 ]
  %76 = ptrtoint ptr %reg18 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %or45.lcssa, ptr %reg18, align 4
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %wilc_sdio_read_reg.exit178.for.end_crit_edge
  %nint.addr.0.lcssa = phi i32 [ %dec.lcssa, %for.cond.for.end_crit_edge ], [ %nint, %wilc_sdio_read_reg.exit178.for.end_crit_edge ]
  %77 = ptrtoint ptr %reg18 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %reg18, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.addr.i179)
  %79 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev, align 4
  %81 = ptrtoint ptr %bus_data to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %bus_data, align 4
  %83 = call i32 @llvm.bswap.i32(i32 %78) #9
  %84 = ptrtoint ptr %data.addr.i179 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %data.addr.i179, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd18.i180) #9
  %call19.i183 = call fastcc i32 @wilc_sdio_set_func0_csa_address(ptr noundef %wilc, i32 noundef 6656) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i183)
  %tobool20.not.i184 = icmp eq i32 %call19.i183, 0
  br i1 %tobool20.not.i184, label %if.end22.i188, label %wilc_sdio_write_reg.exit193.thread

if.end22.i188:                                    ; preds = %for.end
  %85 = getelementptr inbounds %struct.sdio_cmd53, ptr %cmd18.i180, i32 0, i32 2
  %86 = getelementptr inbounds %struct.sdio_cmd53, ptr %cmd18.i180, i32 0, i32 1
  %87 = ptrtoint ptr %cmd18.i180 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 -2080236028, ptr %cmd18.i180, align 4
  %88 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %data.addr.i179, ptr %86, align 4
  %block_size.i185 = getelementptr inbounds %struct.wilc_sdio, ptr %82, i32 0, i32 1
  %89 = ptrtoint ptr %block_size.i185 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %block_size.i185, align 4
  %91 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %85, align 4
  %call42.i186 = call fastcc i32 @wilc_sdio_cmd53(ptr noundef %wilc, ptr noundef nonnull %cmd18.i180) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i186)
  %tobool43.not.i187 = icmp eq i32 %call42.i186, 0
  br i1 %tobool43.not.i187, label %if.end53, label %wilc_sdio_write_reg.exit193

wilc_sdio_write_reg.exit193.thread:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd18.i180) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.addr.i179)
  br label %do.end51

wilc_sdio_write_reg.exit193:                      ; preds = %if.end22.i188
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.56, i32 noundef 6656) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd18.i180) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.addr.i179)
  br label %do.end51

do.end51:                                         ; preds = %wilc_sdio_write_reg.exit193, %wilc_sdio_write_reg.exit193.thread
  %retval.1.i192242 = phi i32 [ %call19.i183, %wilc_sdio_write_reg.exit193.thread ], [ %call42.i186, %wilc_sdio_write_reg.exit193 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.91, i32 noundef 6656) #13
  br label %cleanup.thread

if.end53:                                         ; preds = %if.end22.i188
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd18.i180) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.addr.i179)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nint.addr.0.lcssa)
  %tobool54.not = icmp eq i32 %nint.addr.0.lcssa, 0
  br i1 %tobool54.not, label %if.end53.cleanup_crit_edge, label %if.then55

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then55:                                        ; preds = %if.end53
  %92 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev, align 4
  %94 = ptrtoint ptr %bus_data to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %bus_data, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd15.i194) #9
  %call16.i197 = call fastcc i32 @wilc_sdio_set_func0_csa_address(ptr noundef %wilc, i32 noundef 6660) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i197)
  %tobool17.not.i198 = icmp eq i32 %call16.i197, 0
  br i1 %tobool17.not.i198, label %if.end19.i202, label %if.then55.do.end61_crit_edge

if.then55.do.end61_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end61

if.end19.i202:                                    ; preds = %if.then55
  %96 = getelementptr inbounds %struct.sdio_cmd53, ptr %cmd15.i194, i32 0, i32 2
  %97 = getelementptr inbounds %struct.sdio_cmd53, ptr %cmd15.i194, i32 0, i32 1
  %98 = ptrtoint ptr %cmd15.i194 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 67247620, ptr %cmd15.i194, align 4
  %99 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %reg18, ptr %97, align 4
  %block_size.i199 = getelementptr inbounds %struct.wilc_sdio, ptr %95, i32 0, i32 1
  %100 = ptrtoint ptr %block_size.i199 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %block_size.i199, align 4
  %102 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %96, align 4
  %call39.i200 = call fastcc i32 @wilc_sdio_cmd53(ptr noundef %wilc, ptr noundef nonnull %cmd15.i194) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i200)
  %tobool40.not.i201 = icmp eq i32 %call39.i200, 0
  br i1 %tobool40.not.i201, label %wilc_sdio_read_reg.exit208, label %do.end44.i203

do.end44.i203:                                    ; preds = %if.end19.i202
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.46, i32 noundef 6660) #13
  br label %do.end61

wilc_sdio_read_reg.exit208:                       ; preds = %if.end19.i202
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd15.i194) #9
  %103 = ptrtoint ptr %reg18 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %reg18, align 4
  %105 = call i32 @llvm.bswap.i32(i32 %104) #9
  %106 = ptrtoint ptr %reg18 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %reg18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nint.addr.0.lcssa)
  %cmp67263 = icmp sgt i32 %nint.addr.0.lcssa, 0
  br i1 %cmp67263, label %for.body69.preheader, label %wilc_sdio_read_reg.exit208.for.end75_crit_edge

wilc_sdio_read_reg.exit208.for.end75_crit_edge:   ; preds = %wilc_sdio_read_reg.exit208
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end75

for.body69.preheader:                             ; preds = %wilc_sdio_read_reg.exit208
  call void @__sanitizer_cov_trace_pc() #11
  %107 = add nsw i32 %nint.addr.0.lcssa, -1
  %umin268 = call i32 @llvm.umin.i32(i32 %107, i32 2)
  %or71 = or i32 %105, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %umin268)
  %exitcond269.not = icmp eq i32 %umin268, 0
  %or71.1 = or i32 %105, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %umin268)
  %exitcond269.not.1 = icmp eq i32 %umin268, 1
  %or71.2 = or i32 %105, 7
  %spec.select = select i1 %exitcond269.not.1, i32 %or71.1, i32 %or71.2
  %or71.lcssa = select i1 %exitcond269.not, i32 %or71, i32 %spec.select
  %108 = ptrtoint ptr %reg18 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %or71.lcssa, ptr %reg18, align 4
  br label %for.end75

do.end61:                                         ; preds = %do.end44.i203, %if.then55.do.end61_crit_edge
  %retval.1.ph.i204 = phi i32 [ %call16.i197, %if.then55.do.end61_crit_edge ], [ %call39.i200, %do.end44.i203 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd15.i194) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.88, i32 noundef 6660) #13
  br label %cleanup.thread

for.end75:                                        ; preds = %for.body69.preheader, %wilc_sdio_read_reg.exit208.for.end75_crit_edge
  %109 = ptrtoint ptr %reg18 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %reg18, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.addr.i209)
  %111 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev, align 4
  %113 = ptrtoint ptr %bus_data to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %bus_data, align 4
  %115 = call i32 @llvm.bswap.i32(i32 %110) #9
  %116 = ptrtoint ptr %data.addr.i209 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %data.addr.i209, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd18.i210) #9
  %call19.i213 = call fastcc i32 @wilc_sdio_set_func0_csa_address(ptr noundef %wilc, i32 noundef 6660) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i213)
  %tobool20.not.i214 = icmp eq i32 %call19.i213, 0
  br i1 %tobool20.not.i214, label %if.end22.i218, label %wilc_sdio_write_reg.exit223.thread

if.end22.i218:                                    ; preds = %for.end75
  %117 = getelementptr inbounds %struct.sdio_cmd53, ptr %cmd18.i210, i32 0, i32 2
  %118 = getelementptr inbounds %struct.sdio_cmd53, ptr %cmd18.i210, i32 0, i32 1
  %119 = ptrtoint ptr %cmd18.i210 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 -2080236028, ptr %cmd18.i210, align 4
  %120 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %data.addr.i209, ptr %118, align 4
  %block_size.i215 = getelementptr inbounds %struct.wilc_sdio, ptr %114, i32 0, i32 1
  %121 = ptrtoint ptr %block_size.i215 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %block_size.i215, align 4
  %123 = ptrtoint ptr %117 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %117, align 4
  %call42.i216 = call fastcc i32 @wilc_sdio_cmd53(ptr noundef %wilc, ptr noundef nonnull %cmd18.i210) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i216)
  %tobool43.not.i217 = icmp eq i32 %call42.i216, 0
  br i1 %tobool43.not.i217, label %wilc_sdio_write_reg.exit223.thread251, label %wilc_sdio_write_reg.exit223

wilc_sdio_write_reg.exit223.thread251:            ; preds = %if.end22.i218
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd18.i210) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.addr.i209)
  br label %cleanup

wilc_sdio_write_reg.exit223.thread:               ; preds = %for.end75
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd18.i210) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.addr.i209)
  br label %do.end81

wilc_sdio_write_reg.exit223:                      ; preds = %if.end22.i218
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %112, ptr noundef nonnull @.str.56, i32 noundef 6660) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd18.i210) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.addr.i209)
  br label %do.end81

do.end81:                                         ; preds = %wilc_sdio_write_reg.exit223, %wilc_sdio_write_reg.exit223.thread
  %retval.1.i222250 = phi i32 [ %call19.i213, %wilc_sdio_write_reg.exit223.thread ], [ %call42.i216, %wilc_sdio_write_reg.exit223 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.91, i32 noundef 6660) #13
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %do.end81, %do.end61, %do.end51, %do.end40, %do.end32, %do.end24
  %retval.0.ph = phi i32 [ %retval.1.i222250, %do.end81 ], [ %retval.1.ph.i204, %do.end61 ], [ %retval.1.i192242, %do.end51 ], [ %retval.1.ph.i174, %do.end40 ], [ %retval.1.i162234, %do.end32 ], [ %retval.1.ph.i144, %do.end24 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg18) #9
  br label %cleanup88

cleanup:                                          ; preds = %wilc_sdio_write_reg.exit223.thread251, %if.end53.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg18) #9
  br label %cleanup88

cleanup88:                                        ; preds = %cleanup, %cleanup.thread, %if.end15.cleanup88_crit_edge, %do.end13, %do.end5, %do.end
  %retval.1 = phi i32 [ -22, %do.end ], [ -22, %do.end5 ], [ -22, %do.end13 ], [ %retval.0.ph, %cleanup.thread ], [ 0, %cleanup ], [ 0, %if.end15.cleanup88_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #9
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wilc_sdio_enable_interrupt(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.wilc, ptr %dev, i32 0, i32 37
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -8
  tail call void @sdio_claim_host(ptr noundef %add.ptr) #9
  %call = tail call i32 @sdio_claim_irq(ptr noundef %add.ptr, ptr noundef nonnull @wilc_sdio_interrupt) #9
  tail call void @sdio_release_host(ptr noundef %add.ptr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.101, i32 noundef %call) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ -5, %do.end ], [ %call, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wilc_sdio_disable_interrupt(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.wilc, ptr %dev, i32 0, i32 37
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -8
  tail call void @sdio_claim_host(ptr noundef %add.ptr) #9
  %call = tail call i32 @sdio_release_irq(ptr noundef %add.ptr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.103, i32 noundef %call) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @sdio_release_host(ptr noundef %add.ptr) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wilc_sdio_reset(ptr nocapture noundef readonly %wilc) #2 align 64 {
entry:
  %cmd = alloca %struct.sdio_cmd52, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd) #9
  %dev = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 37
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -2147477469, ptr %cmd, align 4
  %call = call fastcc i32 @wilc_sdio_cmd52(ptr noundef %wilc, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.105) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wilc_sdio_cmd52(ptr nocapture noundef readonly %wilc, ptr nocapture noundef %cmd) unnamed_addr #2 align 64 {
entry:
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 37
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #9
  %2 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ret, align 4, !annotation !223
  tail call void @sdio_claim_host(ptr noundef %add.ptr) #9
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load = load i32, ptr %cmd, align 4
  %bf.lshr = lshr i32 %bf.load, 28
  %bf.clear = and i32 %bf.lshr, 7
  %num = getelementptr i8, ptr %1, i32 932
  %4 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %bf.clear, ptr %num, align 4
  %bf.load1 = load i32, ptr %cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load1)
  %tobool.not = icmp sgt i32 %bf.load1, -1
  br i1 %tobool.not, label %entry.if.end38.sink.split_crit_edge, label %if.then

entry.if.end38.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.sink.split

if.then:                                          ; preds = %entry
  %5 = and i32 %bf.load1, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not = icmp eq i32 %5, 0
  %bf.lshr21 = lshr i32 %bf.load1, 2
  %conv23 = trunc i32 %bf.lshr21 to i8
  %bf.lshr25 = lshr i32 %bf.load1, 10
  %bf.clear26 = and i32 %bf.lshr25, 131071
  call void @sdio_writeb(ptr noundef %add.ptr, i8 noundef zeroext %conv23, i32 noundef %bf.clear26, ptr noundef nonnull %ret) #9
  br i1 %tobool6.not, label %if.then.if.end38_crit_edge, label %if.then7

if.then.if.end38_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load14 = load i32, ptr %cmd, align 4
  br label %if.end38.sink.split

if.end38.sink.split:                              ; preds = %if.then7, %entry.if.end38.sink.split_crit_edge
  %bf.load14.sink = phi i32 [ %bf.load14, %if.then7 ], [ %bf.load1, %entry.if.end38.sink.split_crit_edge ]
  %bf.lshr15 = lshr i32 %bf.load14.sink, 10
  %bf.clear16 = and i32 %bf.lshr15, 131071
  %call = call zeroext i8 @sdio_readb(ptr noundef %add.ptr, i32 noundef %bf.clear16, ptr noundef nonnull %ret) #9
  %conv17 = zext i8 %call to i32
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load18 = load i32, ptr %cmd, align 4
  %bf.shl = shl nuw nsw i32 %conv17, 2
  %bf.clear19 = and i32 %bf.load18, -1021
  %bf.set = or i32 %bf.clear19, %bf.shl
  store i32 %bf.set, ptr %cmd, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.end38.sink.split, %if.then.if.end38_crit_edge
  call void @sdio_release_host(ptr noundef %add.ptr) #9
  %8 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool39.not = icmp eq i32 %9, 0
  br i1 %tobool39.not, label %if.end38.if.end42_crit_edge, label %do.end

if.end38.if.end42_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

do.end:                                           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef %9) #13
  br label %if.end42

if.end42:                                         ; preds = %do.end, %if.end38.if.end42_crit_edge
  %10 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ret, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #9
  ret i32 %11
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_claim_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_writeb(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @sdio_readb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_release_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wilc_sdio_set_func0_csa_address(ptr nocapture noundef readonly %wilc, i32 noundef %adr) unnamed_addr #2 align 64 {
entry:
  %cmd = alloca %struct.sdio_cmd52, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 37
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd) #9
  %conv10 = shl i32 %adr, 2
  %bf.shl = and i32 %conv10, 1020
  %bf.set13 = or i32 %bf.shl, -2147209213
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %bf.set13, ptr %cmd, align 4
  %call = call fastcc i32 @wilc_sdio_cmd52(ptr noundef %wilc, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load17 = load i32, ptr %cmd, align 4
  br i1 %tobool.not, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %bf.clear18 = and i32 %bf.load17, -134217725
  %4 = lshr i32 %adr, 6
  %bf.shl24 = and i32 %4, 1020
  %bf.set19 = or i32 %bf.shl24, %bf.clear18
  %bf.set26 = or i32 %bf.set19, 275456
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %bf.set26, ptr %cmd, align 4
  %call27 = call fastcc i32 @wilc_sdio_cmd52(ptr noundef %wilc, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load38 = load i32, ptr %cmd, align 4
  br i1 %tobool28.not, label %if.end37, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end37:                                         ; preds = %if.end
  %bf.clear39 = and i32 %bf.load38, -134217725
  %7 = lshr i32 %adr, 14
  %bf.shl46 = and i32 %7, 1020
  %bf.set40 = or i32 %bf.shl46, %bf.clear39
  %bf.set48 = or i32 %bf.set40, 276480
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %bf.set48, ptr %cmd, align 4
  %call49 = call fastcc i32 @wilc_sdio_cmd52(ptr noundef %wilc, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end37.cleanup_crit_edge, label %do.end54

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end54:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load56 = load i32, ptr %cmd, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end54, %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %bf.load56.sink = phi i32 [ %bf.load56, %do.end54 ], [ %bf.load17, %entry.cleanup.sink.split_crit_edge ], [ %bf.load38, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call49, %do.end54 ], [ %call, %entry.cleanup.sink.split_crit_edge ], [ %call27, %if.end.cleanup.sink.split_crit_edge ]
  %bf.lshr57 = lshr i32 %bf.load56.sink, 10
  %bf.clear58 = and i32 %bf.lshr57, 131071
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.39, i32 noundef %bf.clear58) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end37.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end37.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wilc_sdio_cmd53(ptr nocapture noundef readonly %wilc, ptr nocapture noundef readonly %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 37
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -8
  tail call void @sdio_claim_host(ptr noundef %add.ptr) #9
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %cmd, align 4
  %bf.lshr = lshr i32 %bf.load, 28
  %bf.clear = and i32 %bf.lshr, 7
  %num = getelementptr i8, ptr %1, i32 932
  %3 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %bf.clear, ptr %num, align 4
  %block_size = getelementptr inbounds %struct.sdio_cmd53, ptr %cmd, i32 0, i32 2
  %4 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %block_size, align 4
  %cur_blksize = getelementptr i8, ptr %1, i32 948
  %6 = ptrtoint ptr %cur_blksize to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %cur_blksize, align 4
  %bf.load1 = load i32, ptr %cmd, align 4
  %7 = and i32 %bf.load1, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %bf.clear8 = and i32 %bf.load1, 511
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %block_size, align 4
  %mul = mul i32 %9, %bf.clear8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %size.0 = phi i32 [ %mul, %if.then ], [ %bf.clear8, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load1)
  %tobool11.not = icmp sgt i32 %bf.load1, -1
  br i1 %tobool11.not, label %if.else16, label %if.then12

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %bf.lshr14 = lshr i32 %bf.load1, 9
  %bf.clear15 = and i32 %bf.lshr14, 131071
  %buffer = getelementptr inbounds %struct.sdio_cmd53, ptr %cmd, i32 0, i32 1
  %10 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer, align 4
  %call = tail call i32 @sdio_memcpy_toio(ptr noundef %add.ptr, i32 noundef %bf.clear15, ptr noundef %11, i32 noundef %size.0) #9
  br label %if.end22

if.else16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %buffer17 = getelementptr inbounds %struct.sdio_cmd53, ptr %cmd, i32 0, i32 1
  %12 = ptrtoint ptr %buffer17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buffer17, align 4
  %bf.lshr19 = lshr i32 %bf.load1, 9
  %bf.clear20 = and i32 %bf.lshr19, 131071
  %call21 = tail call i32 @sdio_memcpy_fromio(ptr noundef %add.ptr, ptr noundef %13, i32 noundef %bf.clear20, i32 noundef %size.0) #9
  br label %if.end22

if.end22:                                         ; preds = %if.else16, %if.then12
  %ret.0 = phi i32 [ %call, %if.then12 ], [ %call21, %if.else16 ]
  tail call void @sdio_release_host(ptr noundef %add.ptr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool23.not = icmp eq i32 %ret.0, 0
  br i1 %tobool23.not, label %if.end22.if.end26_crit_edge, label %do.end

if.end22.if.end26_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

do.end:                                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.53, i32 noundef %ret.0) #13
  br label %if.end26

if.end26:                                         ; preds = %do.end, %if.end22.if.end26_crit_edge
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_memcpy_toio(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_memcpy_fromio(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_claim_irq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wilc_sdio_interrupt(ptr noundef %func) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sdio_release_host(ptr noundef %func) #9
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @wilc_handle_isr(ptr noundef %1) #9
  tail call void @sdio_claim_host(ptr noundef %func) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wilc_handle_isr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_release_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wilc_sdio_suspend(ptr noundef %dev) #2 align 64 {
entry:
  %cmd.i = alloca %struct.sdio_cmd52, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.107) #13
  tail call void @chip_wakeup(ptr noundef %1) #9
  %rtc_clk = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %rtc_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtc_clk, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_disable(ptr noundef %3) #9
  tail call void @clk_unprepare(ptr noundef %3) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %suspend_event = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 38
  %4 = ptrtoint ptr %suspend_event to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %suspend_event, align 4, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @host_sleep_notify(ptr noundef %1) #9
  tail call void @chip_allow_sleep(ptr noundef %1) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd.i) #9
  %dev.i = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 37
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %8 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -2147477469, ptr %cmd.i, align 4
  %call.i = call fastcc i32 @wilc_sdio_cmd52(ptr noundef %1, ptr noundef nonnull %cmd.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end13, label %do.end11

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.105) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd.i) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.110) #13
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd.i) #9
  tail call void @sdio_claim_host(ptr noundef %add.ptr) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wilc_sdio_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.112) #13
  tail call void @sdio_release_host(ptr noundef %add.ptr) #9
  tail call void @chip_wakeup(ptr noundef %1) #9
  %call2 = tail call i32 @wilc_sdio_init(ptr noundef %1, i1 noundef zeroext true)
  %suspend_event = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %suspend_event to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %suspend_event, align 4, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @host_wakeup_notify(ptr noundef %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @chip_allow_sleep(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @chip_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @host_sleep_notify(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @chip_allow_sleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @host_wakeup_notify(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 109)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 109)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !76, !78, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !115, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !130, !131, !132, !133, !135, !136, !137, !138, !140, !141, !143, !144, !145, !147, !148, !150, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168, !169, !171, !172, !174, !175, !177, !178, !180, !181, !183, !184, !185, !186, !188, !189, !190, !191, !193, !194, !195, !196, !198, !200, !202, !203, !204, !205, !207, !208, !209, !211, !212, !213}
!llvm.module.flags = !{!214, !215, !216, !217, !218, !219, !220, !221}
!llvm.ident = !{!222}

!0 = !{ptr @__initcall__kmod_wilc1000_sdio__516_1027_wilc_sdio_driver_init6, !1, !"__initcall__kmod_wilc1000_sdio__516_1027_wilc_sdio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 1025, i32 1}
!2 = !{ptr @__exitcall_wilc_sdio_driver_exit, !1, !"__exitcall_wilc_sdio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file517, !4, !"__UNIQUE_ID_file517", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 1028, i32 1}
!5 = !{ptr @__UNIQUE_ID_license518, !4, !"__UNIQUE_ID_license518", i1 false, i1 false}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 1016, i32 11}
!8 = !{ptr @wilc_sdio_driver, !9, !"wilc_sdio_driver", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 1015, i32 27}
!10 = !{ptr @wilc_sdio_ids, !11, !"wilc_sdio_ids", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 19, i32 36}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 149, i32 58}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 156, i32 2}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @wilc_sdio_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @wilc_sdio_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @wilc_hif_sdio, !23, !"wilc_hif_sdio", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 968, i32 35}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 605, i32 3}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @wilc_sdio_init._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @wilc_sdio_init._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 614, i32 3}
!32 = !{ptr @wilc_sdio_init._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @wilc_sdio_init._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 629, i32 3}
!36 = !{ptr @wilc_sdio_init._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @wilc_sdio_init._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 646, i32 4}
!40 = !{ptr @wilc_sdio_init._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @wilc_sdio_init._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 655, i32 3}
!44 = !{ptr @wilc_sdio_init._entry.19, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @wilc_sdio_init._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 664, i32 3}
!48 = !{ptr @wilc_sdio_init._entry.22, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @wilc_sdio_init._entry_ptr.24, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 678, i32 3}
!52 = !{ptr @wilc_sdio_init._entry.25, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @wilc_sdio_init._entry_ptr.27, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 690, i32 4}
!56 = !{ptr @wilc_sdio_init._entry.28, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @wilc_sdio_init._entry_ptr.30, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 693, i32 3}
!60 = !{ptr @wilc_sdio_init._entry.31, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @wilc_sdio_init._entry_ptr.33, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.35, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 699, i32 3}
!64 = !{ptr @wilc_sdio_init._entry.34, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @wilc_sdio_init._entry_ptr.36, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.37, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 85, i32 3}
!68 = !{ptr @.str.38, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @wilc_sdio_cmd52._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @wilc_sdio_cmd52._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 313, i32 3}
!73 = !{ptr @.str.40, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @wilc_sdio_set_block_size._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @wilc_sdio_set_block_size._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @wilc_sdio_set_block_size._entry.41, !77, !"_entry", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 322, i32 3}
!78 = !{ptr @wilc_sdio_set_block_size._entry_ptr.42, !77, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.43, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 470, i32 4}
!81 = !{ptr @.str.44, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @wilc_sdio_read_reg._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @wilc_sdio_read_reg._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.46, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 493, i32 4}
!86 = !{ptr @wilc_sdio_read_reg._entry.45, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @wilc_sdio_read_reg._entry_ptr.47, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.48, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 273, i32 3}
!90 = !{ptr @wilc_sdio_set_func0_csa_address._entry, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @wilc_sdio_set_func0_csa_address._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @wilc_sdio_set_func0_csa_address._entry.49, !93, !"_entry", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 282, i32 3}
!94 = !{ptr @wilc_sdio_set_func0_csa_address._entry_ptr.50, !93, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @wilc_sdio_set_func0_csa_address._entry.51, !96, !"_entry", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 291, i32 3}
!97 = !{ptr @wilc_sdio_set_func0_csa_address._entry_ptr.52, !96, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.53, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 114, i32 3}
!100 = !{ptr @wilc_sdio_cmd53._entry, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @wilc_sdio_cmd53._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.54, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 353, i32 4}
!104 = !{ptr @wilc_sdio_write_reg._entry, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @wilc_sdio_write_reg._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.56, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 375, i32 4}
!108 = !{ptr @wilc_sdio_write_reg._entry.55, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @wilc_sdio_write_reg._entry_ptr.57, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.58, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 543, i32 4}
!112 = !{ptr @.str.59, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @wilc_sdio_read._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @wilc_sdio_read._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.61, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 567, i32 4}
!117 = !{ptr @wilc_sdio_read._entry.60, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @wilc_sdio_read._entry_ptr.62, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.63, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 422, i32 4}
!121 = !{ptr @.str.64, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @wilc_sdio_write._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @wilc_sdio_write._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.66, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 446, i32 4}
!126 = !{ptr @wilc_sdio_write._entry.65, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @wilc_sdio_write._entry_ptr.67, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.68, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 759, i32 3}
!130 = !{ptr @.str.69, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @wilc_sdio_read_int._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @wilc_sdio_read_int._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.70, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 800, i32 5}
!135 = !{ptr @.str.71, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @wilc_sdio_clear_int_ext._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @wilc_sdio_clear_int_ext._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @wilc_sdio_clear_int_ext._entry.72, !139, !"_entry", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 830, i32 6}
!140 = !{ptr @wilc_sdio_clear_int_ext._entry_ptr.73, !139, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.75, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 841, i32 5}
!143 = !{ptr @wilc_sdio_clear_int_ext._entry.74, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @wilc_sdio_clear_int_ext._entry_ptr.76, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @wilc_sdio_clear_int_ext._entry.77, !146, !"_entry", i1 false, i1 false}
!146 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 870, i32 4}
!147 = !{ptr @wilc_sdio_clear_int_ext._entry_ptr.78, !146, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.79, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 886, i32 3}
!150 = !{ptr @.str.80, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @wilc_sdio_sync_ext._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @wilc_sdio_sync_ext._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.82, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 894, i32 3}
!155 = !{ptr @wilc_sdio_sync_ext._entry.81, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @wilc_sdio_sync_ext._entry_ptr.83, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.85, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 900, i32 3}
!159 = !{ptr @wilc_sdio_sync_ext._entry.84, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @wilc_sdio_sync_ext._entry_ptr.86, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.88, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 913, i32 4}
!163 = !{ptr @wilc_sdio_sync_ext._entry.87, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @wilc_sdio_sync_ext._entry_ptr.89, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.91, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 920, i32 4}
!167 = !{ptr @wilc_sdio_sync_ext._entry.90, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @wilc_sdio_sync_ext._entry_ptr.92, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @wilc_sdio_sync_ext._entry.93, !170, !"_entry", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 930, i32 4}
!171 = !{ptr @wilc_sdio_sync_ext._entry_ptr.94, !170, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @wilc_sdio_sync_ext._entry.95, !173, !"_entry", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 939, i32 4}
!174 = !{ptr @wilc_sdio_sync_ext._entry_ptr.96, !173, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @wilc_sdio_sync_ext._entry.97, !176, !"_entry", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 946, i32 5}
!177 = !{ptr @wilc_sdio_sync_ext._entry_ptr.98, !176, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @wilc_sdio_sync_ext._entry.99, !179, !"_entry", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 957, i32 5}
!180 = !{ptr @wilc_sdio_sync_ext._entry_ptr.100, !179, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.101, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 233, i32 3}
!183 = !{ptr @.str.102, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @wilc_sdio_enable_interrupt._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @wilc_sdio_enable_interrupt._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.103, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 247, i32 3}
!188 = !{ptr @.str.104, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @wilc_sdio_disable_interrupt._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @wilc_sdio_disable_interrupt._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.105, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 190, i32 3}
!193 = !{ptr @.str.106, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @wilc_sdio_reset._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @wilc_sdio_reset._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @wilc_of_match, !197, !"wilc_of_match", i1 false, i1 false}
!197 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 1004, i32 34}
!198 = !{ptr @wilc_sdio_pm_ops, !199, !"wilc_sdio_pm_ops", i1 false, i1 false}
!199 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 1010, i32 32}
!200 = !{ptr @.str.107, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 202, i32 2}
!202 = !{ptr @.str.108, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @wilc_sdio_suspend._entry, !201, !"_entry", i1 false, i1 false}
!204 = !{ptr @wilc_sdio_suspend._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.110, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 215, i32 3}
!207 = !{ptr @wilc_sdio_suspend._entry.109, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @wilc_sdio_suspend._entry_ptr.111, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.112, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/wireless/microchip/wilc1000/sdio.c", i32 991, i32 2}
!211 = !{ptr @.str.113, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @wilc_sdio_resume._entry, !210, !"_entry", i1 false, i1 false}
!213 = !{ptr @wilc_sdio_resume._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!214 = !{i32 1, !"wchar_size", i32 2}
!215 = !{i32 1, !"min_enum_size", i32 4}
!216 = !{i32 8, !"branch-target-enforcement", i32 0}
!217 = !{i32 8, !"sign-return-address", i32 0}
!218 = !{i32 8, !"sign-return-address-all", i32 0}
!219 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!220 = !{i32 7, !"uwtable", i32 1}
!221 = !{i32 7, !"frame-pointer", i32 2}
!222 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!223 = !{!"auto-init"}
!224 = !{i8 0, i8 2}
